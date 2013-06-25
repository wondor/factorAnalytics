#' predict method for TimeSeriesModel object.
#' 
#' Generic function of predict method for fitTimeSeriesFactorModel. It utilizes
#' function \code{predict.lm}.
#' 
#' @param fit "TimeSeriesFactorModel" object created by fitTimeSeiresFactorModel.
#' @param newdata An optional data frame in which to look for variables with which to predict. 
#' If omitted, the fitted values are used.
#' @param ... Any other arguments used in \code{predict.lm}
#' @author Yi-An Chen.
#' ' 
#' @examples
#' 
#' # load data from the database
#' data(managers.df)
#' ret.assets = managers.df[,(1:6)]
#' # fit the factor model with OLS
#' fit <- fitTimeseriesFactorModel(assets.names=colnames(managers.df[,(1:6)]),
#'                                factors.names=c("EDHEC.LS.EQ","SP500.TR"),
#'                                data=managers.df,fit.method="OLS")
#' 
#' predict(fit)
#' predict(fit,newdata,interval="confidence")
#' 
#' @export
#' 

predict.TimeSeriesFactorModel <- function(fit,...){
  lapply(fit[[1]], predict,...)
}