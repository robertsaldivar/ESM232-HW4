#' Dynamic model of forest growth
#' 
#' 
#' 
#' @author Robert Saldivar
#' @author Madeline Gorchels
#' r, g, c_closure, carry_capacity, air_temp

forest_growth = function(time, initialC, parms) {
  
   C = initialC*dC_dt+initialC
  
  if(C <= parms$c_closure) {
    dC_dt=initialC*parms$r}
   else{
     dC_dt=parms$g
   }
  # if (parms$air_temp <= 0) {
  # dC_dt=0}
  #if (C=parms$carry_capacity) {
  # dC_dt=0}
  
  return(list(C))
   }

