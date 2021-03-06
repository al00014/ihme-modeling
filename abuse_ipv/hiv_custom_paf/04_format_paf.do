// *********************************************************************************************************************************************************************
// *********************************************************************************************************************************************************************
// Date: 			8 July 2014
// Project:		RISK
// Purpose:		Format PAFs for central machinery
** **************************************************************************
** RUNTIME CONFIGURATION
** **************************************************************************
// Set preferences for STATA
	// Clear memory and set memory and variable limits
		clear all
		set max_memory 32g
	// Set to run all selected code without pausing
		set more off
	// Set graph output color scheme
		set scheme s1color
	// Remove previous restores
		cap restore, not
	// Reset timer (?)
		timer clear	
	// Define J drive (data) for cluster (UNIX) and Windows (Windows)
		if c(os) == "Unix" {
			global prefix "/home/j"
			set odbcmgr unixodbc
		}
		else if c(os) == "Windows" {
			global prefix "J:"
		}
	// Close previous logs
		cap log close

// Pass in arguments from launch script	
	local version `1'
	local iso3 `2'


// Log 
	log using "/share/epi/risk/temp/ipv_hiv_pafs/logs_compile/version`version'_`iso3'.smcl", replace 

// Set locals 
	local age_groups "/share/epi/risk/temp/ipv_hiv_pafs"
	//local age_groups "C:/Users/lalexan1/Desktop"
	local out_dir "/share/epi/risk/temp/ipv_hiv_pafs/finalized_pafs"
	local data_dir "/share/epi/risk/temp/ipv_hiv_pafs/v`version'/`iso3'"


// Merge draw files to make master PAF file for all countries & years

	use "`data_dir'/paf_draw_`iso3'_draw_0.dta", clear
	forvalues d = 100(100)900 {
		qui: merge 1:1 iso3 year age sex using "`data_dir'/paf_draw_`iso3'_draw_`d'.dta", nogen
	}

	rename age age_start 

	tempfile pafs
	save `pafs', replace
	
	insheet using "`age_groups'/convert_to_new_age_ids.csv", comma names clear 
	merge 1:m age_start using `pafs', keep(3) nogen
	drop age_start 

	rename iso3 location_id 
	rename year year_id 
	rename sex sex_id

	save `pafs', replace 

	levelsof year_id, local(years)

	// Save on clustertmp as country, year and sex specific files
		foreach year of local years {

		di in red "ISO3: `iso3' YEAR: `year'"

				// Make a dataset that contains PAF draws equal to zero for age groups for which we do not attribute YLLS or YLDs to IPV
				clear 
				local ages 2 3 4 5 6 7 
				local n_obs: word count `ages'
				set obs `n_obs'

				// Make variables
						gen age_group_id = .
						forvalues i = 1/`n_obs' {
							local value: word `i' of `ages'
							replace age_group_id = `value' in `i'
							
						}

						forvalues d = 0/999 {
							gen draw_`d' = 0
						}
						gen location_id = `iso3'
						gen year_id = `year'
						gen sex_id = 2
					
					tempfile extra_ages
					save `extra_ages', replace
						
					// Bring in calculated PAF draws for ages 15+
						use `pafs' if year_id == `year', clear 
						append using `extra_ages'
						order location_id year_id sex_id age_group_id 
						sort age_group_id

						tempfile ready 
						save `ready', replace

						foreach mortype in yll yld {

						use `ready', clear
						// Prep for save results 
						keep if year_id == `year'
						gen rei_id = 201 
						gen cause_id = 298 
						gen modelable_entity_id = 8824

						renpfix draw paf 
						order age_group_id rei_id location_id sex_id cause_id modelable_entity_id paf_* 
						sort age_group_id rei_id location_id sex_id cause_id modelable_entity_id paf_*
						
						outsheet using "`out_dir'/paf_`mortype'_`iso3'_`year'_2.csv", comma replace 

						}
					}

				
			
				
