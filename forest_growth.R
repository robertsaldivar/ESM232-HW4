#' Dynamic model of forest growth
#' 
#' 
#' 
#' @author Robert Saldivar
#' @author Madeline Gorchels
#' 

forest_growth = function(time, initialC, r, g, c_closure, carry_capacity, air_temp) {
  
   C = initialC*dC_dt+initialC
  
  if(C <= c_closure) {
    dC_dt=initialC*r}
   else{
     dC_dt=g
   }
  # if (air_temp <= 0) {
  # dC_dt=0}
  #if (C=carry_capacity) {
  # dC_dt=0}
  
  return(list(C))
   }

