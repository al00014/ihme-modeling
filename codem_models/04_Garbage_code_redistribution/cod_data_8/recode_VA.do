** ****************************************************
** Purpose: Recode causes which are too detailed for VA to parent cause
** ****************************************************

replace acause = "_hivtb" if acause == "hiv_tb" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "hiv" if acause == "hiv_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_cholera" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_salmonella" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_shigellosis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_epec" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_etec" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_campylobac" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_amoebiasis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_cryptospor" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_rotavirus" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_aeromonas" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_clostridium" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_norovirus" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_adenovirus" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_foodborne" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "diarrhea" if acause == "diarrhea_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "intest" if acause == "intest_typhoid" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "intest" if acause == "intest_paratyph" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "intest" if acause == "intest_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "lri" if acause == "lri_flu" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "lri" if acause == "lri_pneumo" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "lri" if acause == "lri_hib" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "lri" if acause == "lri_rsv" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "lri" if acause == "lri_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "uri" if acause == "strep" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "infectious" if acause == "mono" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "meningitis" if acause == "meningitis_pneumo" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "meningitis" if acause == "meningitis_hib" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "meningitis" if acause == "meningitis_meningo" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "meningitis" if acause == "meningitis_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "infectious" if acause == "varicella" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "infectious" if acause == "mumps" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cc_code" if acause == "ntd_lf" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cc_code" if acause == "ntd_oncho" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cc_code" if acause == "ntd_trachoma" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "ntd_nema" if acause == "ntd_nema_ascar" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "ntd_nema" if acause == "ntd_nema_trichur" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "ntd_nema" if acause == "ntd_nema_hook" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "maternal_abort" if acause == "maternal_abort_spont" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "maternal_abort" if acause == "maternal_abort_induc" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "maternal_abort" if acause == "maternal_abort_ectopic" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "maternal" if acause == "maternal_delivery" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "maternal" if acause == "maternal_pregnancy" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "maternal" if acause == "maternal_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "nutrition" if acause == "nutrition_iodine" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "nutrition" if acause == "nutrition_vitamina" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "std" if acause == "std_chlamydia" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "std" if acause == "std_gonnorhea" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "std" if acause == "std_tricho" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "std" if acause == "std_herpes" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "std" if acause == "std_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "hepatitis" if acause == "hepatitis_a" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "hepatitis" if acause == "hepatitis_b" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "hepatitis" if acause == "hepatitis_c" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "infectious" if acause == "hepatitis_e" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "infectious" if acause == "leprosy" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "infectious" if acause == "zoonotic" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "infectious" if acause == "herpes" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_esophageal_cancer" if acause == "neo_esophageal_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_stomach_cancer" if acause == "neo_stomach_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_liver" if acause == "neo_liver_hepb" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_liver" if acause == "neo_liver_hepc" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_liver" if acause == "neo_liver_alcohol" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_liver" if acause == "neo_liver_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_liver" if acause == "neo_liver_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_larynx_cancer" if acause == "neo_larynx_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_lung_cancer" if acause == "neo_lung_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_breast_cancer" if acause == "neo_breast_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_cervical_cancer" if acause == "neo_cervical_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_uterine_cancer" if acause == "neo_uterine_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_prostate_cancer" if acause == "neo_prostate_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_colorectal_cancer" if acause == "neo_colorectal_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_mouth_cancer" if acause == "neo_mouth_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_nasopharynx_cancer" if acause == "neo_nasopharynx_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_otherpharynx_cancer" if acause == "neo_otherpharynx_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_gallbladder_cancer" if acause == "neo_gallbladder_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_pancreas_cancer" if acause == "neo_pancreas_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_melanoma_cancer" if acause == "neo_melanoma_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_nmsc" if acause == "neo_nmsc_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_ovarian_cancer" if acause == "neo_ovarian_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_testicular_cancer" if acause == "neo_testicular_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_kidney_cancer" if acause == "neo_kidney_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_bladder_cancer" if acause == "neo_bladder_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_brain_cancer" if acause == "neo_brain_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_thyroid_cancer" if acause == "neo_thyroid_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "neo_other_cancer" if acause == "neo_other_benign" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd_stroke" if acause == "cvd_stroke_isch" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd_stroke" if acause == "cvd_stroke_cerhem" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd_stroke" if acause == "cvd_stroke_subhem" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_rhd" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_cmp" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_htn" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_afib" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_aortic" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_pvd" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_endo" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_valvu" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_phlebitis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_varicose" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cvd" if acause == "cvd_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_pneum" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_pneum_silico" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_pneum_asbest" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_pneum_coal" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_pneum_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_interstitial" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_upper" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_allergic" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_apnea" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "resp" if acause == "resp_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cirrhosis" if acause == "cirrhosis_hepb" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cirrhosis" if acause == "cirrhosis_hepc" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cirrhosis" if acause == "cirrhosis_alcohol" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cirrhosis" if acause == "cirrhosis_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_pud" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_gastrititis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_ibd" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_vascular" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_bile" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_pancreatitis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_gerd" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_diverticular" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_constipation" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_hemorrhoids" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_celiac" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "digest" if acause == "digest_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_dementia" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_ms" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_migraine" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_tensache" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_medache" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_carpal" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_pathy" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_pathy_bells" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_pathy_nerve" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_neurone" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_fibromyalgia" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_dystrophy" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_neuro" if acause == "neuro_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_schizo" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "mental_drug" if acause == "mental_drug_opioids" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "mental_drug" if acause == "mental_drug_cocaine" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "mental_drug" if acause == "mental_drug_amphet" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "mental_drug" if acause == "mental_drug_cannabis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "mental_drug" if acause == "mental_drug_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_unipolar" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_unipolar_mdd" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_unipolar_dys" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_bipolar" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_anxiety" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_eating" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_eating_anorexia" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_eating_bulimia" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_pdd" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_pdd_autism" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_pdd_aspergers" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_adhd" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_conduct" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_conduct_antisocial" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_conduct_borderline" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_id" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_somatoform" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_insomnia" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_mental" if acause == "mental_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "ckd" if acause == "ckd_diabetes" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "ckd" if acause == "ckd_htn" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "ckd" if acause == "ckd_glomerulo" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "ckd" if acause == "ckd_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "urinary" if acause == "urinary_nephritis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "urinary" if acause == "urinary_urolithiasis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "urinary" if acause == "urinary_bph" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "urinary" if acause == "urinary_maleinfert" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "urinary" if acause == "urinary_prostatitis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "urinary" if acause == "urinary_stricture" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "urinary" if acause == "urinary_incontinence" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "urinary" if acause == "urinary_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_fibroids" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_polycystic" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_femaleinfert" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_endometr" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_prolapse" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_pms" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_inflamm" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_ovarcysts" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "gyne" if acause == "gyne_candidiasis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "hemog" if acause == "hemog_g6pd" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "hemog" if acause == "hemog_aplastic" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "hemog" if acause == "hemog_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "endo" if acause == "endo_hypothyroid" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "endo" if acause == "endo_hyperthyroid" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "endo" if acause == "endo_obesity" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "endo" if acause == "endo_lipoprotein" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "endo" if acause == "endo_procedural" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "endo" if acause == "endo_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_rheumarthritis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_osteoarthritis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_gout" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_oestoporosis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_pyoarthritis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_lupus" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_shoulderlesion" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_osteomyelitis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_myositis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "msk" if acause == "msk_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_neural" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_heart" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_cleft" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_downs" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_turner" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_klinefelter" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_chromo" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_msk" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_urogenital" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_digestive" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "cong" if acause == "cong_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_eczema" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_psoriasis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_cellulitis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_bacterial" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_scabies" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_fungal" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_viral" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_acne" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_alopecia" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_pruritus" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_urticaria" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_decubitus" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_keratosis" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_vitiligo" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "skin" if acause == "skin_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_glaucoma" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_cataract" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_macular" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_refraction" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_hearing" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_vision" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_conjunct" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_externear" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_vertigo" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_sense" if acause == "sense_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_oral" if acause == "oral_decidcaries" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_oral" if acause == "oral_permcaries" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_oral" if acause == "oral_perio" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_oral" if acause == "oral_edent" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "_oral" if acause == "oral_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "inj_suicide" if acause == "inj_suicide_hang" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "inj_suicide" if acause == "inj_suicide_fire" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "inj_suicide" if acause == "inj_suicide_firearm" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "inj_suicide" if acause == "inj_suicide_pesti" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))
replace acause = "inj_suicide" if acause == "inj_suicide_other" & ((substr(source_type, 1, 2) == "VA") | index(source_type,"Verbal Autopsy"))


