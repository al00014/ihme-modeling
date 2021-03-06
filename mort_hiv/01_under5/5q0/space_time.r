################################################################################
## Description: Defines the space-time model (2nd stage prediction model)
## Date Created: 05 April 2012
################################################################################

logit <- function(x) log(x/(1-x))

inv.logit <- function(x) exp(x)/(1+exp(x))
  
resid_space_time <- function(data, region=NULL, lambda=.6, zeta=.99, min_year=1950, max_year=2015) {
  
  root <- ifelse(Sys.info()[1]=="Windows","","")
  ## set up data frame to hold results
  preds <- NULL
  count <- 0
  
  ## calculate the data density
  data_density <- unlist(lapply(unique(data$ihme_loc_id), function(x) sum(data$ihme_loc_id == x & !is.na(data$resid))))
  data_dens_denom <- unlist(lapply(unique(data$ihme_loc_id), function(x) sum(data$ihme_loc_id == x)))
  names(data_density) <- unique(data$ihme_loc_id)
  data_density <- data_density/data_dens_denom  
  
  params <- read.csv(paste0(root, "selected_parameters.txt"))
  
  ## loop through regions
  if (is.null(region)) region <- sort(unique(data$region_name))
  for (rr in region) {
    cat(paste(rr, "\n")); flush.console()
    region.data <- data[data$region_name == rr & !is.na(data$resid),]
      
  ## loop through country
      countries <- sort(unique(data$ihme_loc_id[data$region_name==rr]))
      for (cc in countries) {
        in.country <- (region.data$ihme_loc_id == cc)
        other.resids <- (sum(!in.country)>0)
        
        # for countries with data, find the first and last year of that data, for countries without data, find the first and last year of data in the region 
        if (sum(in.country)>0) in.sample <- range(region.data$year[in.country]) else in.sample <- range(region.data$year)
        
        # get lambda and zeta values

        lambda <- unique(params[params$ihme_loc_id==cc & params$best==1,]$lambda)
        zeta <- unique(params[params$ihme_loc_id==cc & params$best==1,]$zeta)

        lambda2 <- lambda
        print(cc)
        print(paste0("lambda is ", lambda2))
        print(paste0("zeta is ", zeta))

    ## loop through years
        for (yy in min_year:max_year) {
          count <- count + 1
          year <- yy + 0.5

          # calculate time weights
          t <- abs(region.data$year - year)
          w <- (1-(t/(1+max(t)))^lambda2)^3
          
          # calculate space weights
          if (zeta < 1){
            if (other.resids) w[in.country] <- (zeta/(1-zeta))*(sum(w[!in.country])/sum(w[in.country]))*w[in.country]
          } else w[!in.country] <- 0

          # fit variant 1: linear local regression
          model.data <- data.frame(resid=region.data$resid, year=region.data$year, dd=as.numeric(in.country), w=w)
          if (sum(in.country)==0) {
            linear <- predict(lm(resid ~ year, weights=w, data=model.data),
                              newdata=data.frame(year=year))
          } else {

            linear <- predict(lm(resid ~ year + dd, weights=w, data=model.data),
                              newdata=data.frame(year=year, dd=1))
          }

          # fit variant 2: fixed effects local regression
          constant <- region.data$resid %*% (w/sum(w))
          
          # combine variants
          combined <- linear*data_density[cc] + constant*(1-data_density[cc])
          preds[[count]] <- data.frame(ihme_loc_id=cc, year=(yy+.5), pred.2.resid=combined, weight=w[count], stringsAsFactors=F)

        } # close year loop
      } # close country loop
  } # close region loop

  preds <- do.call("rbind", preds)
} # close function

loess_resid <- function(data) {
  for (cc in unique(data$ihme_loc_id)) {
    ii <- (data$ihme_loc_id == cc)
    data$pred.2.final[ii] <- predict(loess(pred.2.raw ~ year, span=.3, data=data[ii,]))
  }
  data
}
