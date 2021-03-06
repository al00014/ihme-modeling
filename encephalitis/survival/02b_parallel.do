// *********************************************************************************************************************************************************************
// *********************************************************************************************************************************************************************
// Purpose:		This sub-step template is for parallelized jobs submitted from main step code
// Description:	Parallelization of 02b_acute_survive

// *********************************************************************************************************************************************************************
// *********************************************************************************************************************************************************************
// LOAD SETTINGS FROM STEP CODE (NO NEED TO EDIT THIS SECTION)

// prep stata
	clear all
	set more off
	set maxvar 32000
	if c(os) == "Unix" {
		global prefix "/home/j"
		set odbcmgr unixodbc
	}
	else if c(os) == "Windows" {
		global prefix "J:"
	}

// define locals from qsub command
	local date 			`1'
	local step_num 		`2'
	local step_name		`3'
	local location 		`4'
	local code_dir 		`5'
	local in_dir 		`6'
	local out_dir 		`7'
	local tmp_dir 		`8'
	local root_tmp_dir 	`9'
	local root_j_dir 	`10'


// define other locals
	// directory for standard code files
	adopath + "$prefix/WORK/10_gbd/00_library/functions"
	// functional
	local functional "encephalitis"
	// directory from 02a
	local pull_dir_02a "`root_tmp_dir'/03_steps/`date'/02a_cfr_draws/03_outputs/01_draws"

	// get locals from demographics
	get_demographics, gbd_team(epi) clear
	local years = "$year_ids"
	local sexes = "$sex_ids"

// write log if running in parallel and log is not already open
	cap log using "`out_dir'/02_temp/02_logs/`step_num'_`location'.smcl", replace
	if !_rc local close 1
	else local close 0

// *********************************************************************************************************************************************************************
// *********************************************************************************************************************************************************************
// WRITE CODE HERE
** Pull in the encephalitis incidence results from DisMod
	get_draws, gbd_id_field(modelable_entity_id) gbd_id(1419) measure_ids(6) location_ids(`location') source(epi) status(best) clear
	drop if age_group_id >= 22
	drop model_version_id

	foreach year of local years {
		foreach sex of local sexes {
			preserve
			keep if year_id == `year' & sex_id == `sex'
			drop measure_id
			merge 1:1 age_group_id using "`pull_dir_02a'/dm-`functional'-survive-`location'_`year'_`sex'.dta", nogen

			forvalues c = 0/999 {
				qui replace draw_`c' = draw_`c' * v_`c'
				qui drop v_`c'
			}

			order modelable_entity_id location_id year_id age_group_id sex_id draw_*

			save "`tmp_dir'/03_outputs/01_draws/survive_`location'_`year'_`sex'.dta", replace
			restore
		}
	}

// write check here
	file open finished using "`tmp_dir'/02_temp/01_code/checks/finished_loc`location'.txt", replace write
	file close finished

// close logs
	if `close' log close
	clear

		