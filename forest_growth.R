#' Dynamic model of forest growth
#' 
#' 
#' 
#' @author Robert Saldivar
#' @author Madeline Gorchels
#' 

forest_growth = function(initialC, r, g, carry_capacity, air_temp, canopy_closure) {
  
   C = initialC*dC_dt+initialC
  
  if(C <= canopy_closure) {
    dC_dt=initialC*r}
   else{
     dC_dt=g
   }
  # if (air_temp <= 0) {
  # dC_dt=0}
  #if (C=carry_capacity) {
  # dC_dt=0}
  
  return(C)
   }

