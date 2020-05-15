forest_growth_1 = function(time, initialC, parms) {
  
  C = (initialC*dC_dt)+initialC
  
  if (initialC>parms$carry_capacity) {
    dC_dt = 0
  }
  dC_dt = ifelse(C <= parms$c_closure,
                              initialC*parms$r, 
                              parms$g)
           
  
  return(list(C))
}