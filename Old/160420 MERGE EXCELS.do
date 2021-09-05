




cd "C:\Users\David\Desktop\Macroencasa\isco 88\\"

global a "1_Do"
global b "2_BD"
global c "3_Temp"
global d "4_Tablas"


import excel using  "$b\\isco_soc.xlsx", firstrow clear
save "$b\\isco_soc.dta", replace 

import excel using  "$b\\puntaje_soc.xlsx", firstrow clear
save "$b\\puntaje_soc.dta", replace 

* Merge ISCO_SOC_Crosswalk.xls y BlogTables_SocialDistancingContactIntensiveOccupations (appendix)
use "$b\\isco_soc.dta", clear 
merge m:1 soc_2010_4d using "$b\\puntaje_soc.dta"



