#' Dynamic model of forest growth
#' 
#' 
#' 
#' @author Robert Saldivar
#' @author Madeline Gorchels
#' 

forest_growth = function(initialC, r, g, carry_capacity, air_temp, dt, dc) {
  if(C <= canopy_closure)
    
  if(C >= canopy_closure)
    dt=g
  if(air_temp <= 0)
    dt=0
  if(C=carry_capacity)
     dt=0
}