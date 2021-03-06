## U5 pop iterations and regen age-sex under-5 results


rm(list=ls()); library(foreign)
if (Sys.info()[1] == 'Windows') {
  username <- "StrUser"
  root <- "StrPath"
  workdir <-  paste("StrPath",username,"StrPath",sep="")
  source("StrPath/get_locations.r")
} else {
  username <- Sys.getenv("USER")
  root <- "StrPath"
  workdir <- paste("StrPath",username,"StrPath",sep="")
  source("StrPath/get_locations.r")
}
 

locs <- get_locations(level="estimate")
locs <- locs[locs$level_all == 1,c("ihme_loc_id")]

start <- 1
fin <- 3
test <- F
err_out <- T

errout_dir <- paste0("StrPath",username,"StrPath",username,"StrPath")

# 
if (!test) {
  setwd("StrPath")
  if (start<=1 & fin >=1) for (ff in dir("StrPath")) {
    if(ff!="archive") file.remove(paste("StrPath", ff, sep=""))  
  } 
  setwd("StrPaths")
  if (start<=1 & fin >=1) for (ff in dir("StrPath")) {
    if(ff!="archive") file.remove(paste("StrPath", ff, sep=""))  
  } 
  setwd("StrPath")
  if (start<=1 & fin >=1) for (ff in dir("StrPath")) {
    if(ff!="archive") file.remove(paste("StrPath", ff, sep=""))  
  } 
  
  setwd("StrPath")
  if (start<=2 & fin >=2) for (ff in dir("StrPath")) {
    if(ff!="archive" & grepl("u5_pop_iteration",ff)) file.remove(paste("StrPath", ff, sep=""))  
  } 
  setwd("StrPath")
  if (start<=2 & fin >=2) for (ff in dir("StrPath")) {
    if(ff!="archive" & grepl("u5_pop_iteration",ff)) file.remove(paste("StrPath", ff, sep=""))  
  } 

  setwd("StrPath")
  if (start<=3 & fin >=3) for (ff in dir("StrPath")) {
    if(ff!="archive" & grepl("u5_agesex_summary",ff)) file.remove(paste("StrPath", ff, sep=""))  
  } 
  setwd("StrPath")
  if (start<=3 & fin >=3) for (ff in dir("StrPath")) {
    if(ff!="archive" & grepl("u5_agesex_summary",ff)) file.remove(paste("StrPath", ff, sep=""))  
  } 
  
  
  
}

setwd(workdir)

jobids1 <- c()

if (start <= 1 & fin >= 1) {
  slots <- 5
  mem <- slots*2
  holds <- "as04"
  
  for (i in locs) {
    jname <- paste0("u5p_",i)
    sys.sub <- paste0("qsub ",ifelse(err_out,errout_dir,"")," -P proj_mortenvelope -cwd -N ",jname," -pe multi_slot ",slots," -l mem_free=",mem,"G -hold_jid ",holds," ")
    args <- paste0(i," ",workdir)
    shell <- "stata_shell.sh"
    script <- "01_u5pop_loc.do"
    system(paste(sys.sub, shell, script, "\"", args, "\""))
    jobids1 <- c(jobids1,jname)
  } 
} 


if (start <= 2 & fin >= 2) {
  slots <- 2
  mem <- slots*2
  if (start < 2) {
    holds <- paste("-hold_jid \"",paste(jobids1,collapse=","),"\"",sep="")
  } else {
    holds <- "-hold_jid \"nothing\""
  }
  
  jname <- paste0("u5p_compile")
  sys.sub <- paste0("qsub ",ifelse(err_out,errout_dir,"")," -P proj_mortenvelope -cwd -N ",jname," -pe multi_slot ",slots," -l mem_free=",mem,"G ",holds," ")
  args <- paste0(workdir)
  shell <- "stata_shell.sh"
  script <- "02_compile_u5pop.do"
  system(paste(sys.sub, shell, script, "\"", args, "\""))
}


if (start <= 3 & fin >= 3) {
  slots <- 2
  mem <- slots*2
  if (start < 2) {
    holds <- paste("-hold_jid \"",paste(jobids1,collapse=","),"\"",sep="")
  } else {
    holds <- "-hold_jid \"nothing\""
  }
  
  jname <- paste0("u5m_compile")
  sys.sub <- paste0("qsub ",ifelse(err_out,errout_dir,"")," -P proj_mortenvelope -cwd -N ",jname," -pe multi_slot ",slots," -l mem_free=",mem,"G ",holds," ")
  args <- paste0(workdir)
  shell <- "stata_shell.sh"
  script <- "03_compile_u5_agesex_regen.do"
  system(paste(sys.sub, shell, script, "\"", args, "\""))
}


