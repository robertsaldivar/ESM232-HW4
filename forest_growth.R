#' Dynamic model of forest growth
#' 
#' 
#' 
#' @author Robert Saldivar
#' @author Madeline Gorchels
#' r, g, c_closure, carry_capacity, air_temp

forest_growth = function(time, initialC, parms) {
  
   C = (initialC*dC_dt)+initialC
  
  
 dC_dt = ifelse(C>=parms$carry_capacity,
                0,
                 ifelse(parms$air_temp <= 0, 
                        0,
                        if(C <= parms$c_closure) {
                          dC_dt== initialC*parms$r}
                        else{
                          dC_dt==parms$g
                 }))
  
  return(list(C))
   }


