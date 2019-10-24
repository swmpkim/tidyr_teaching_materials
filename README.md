# Updated materials with pivot() functions  

Mainly this repo exists because I updated the 03-Tidy-Data pptx from https://github.com/rstudio-education/master-the-tidyverse-instructors to incorporate the pivot functions, and I don't really know where to put it so it's available to others :-)

Here are all the places I made changes. I believe everything is correct and working (see "code checks.R" in this repo) but if you find any issues, let me know. 


`gather()` to `pivot_longer()`:  
slide 21  
slide 38 - also had to reduce font size from 70 to 60  
slide 42 - changed a lot of this around to represent pivot_longer. the curve of the upper right corner on the gray box for values_to isn't quite right.  
slides 43 - 48 updated appropriately  
slide 49 - `convert = TRUE` changed to `names_ptypes`  


`spread()` to `pivot_wider()`:  
slide 50  
slide 64 - also had to reduce font size from 70 to 63  
slide 68  
slide 69 - added names_from and values_from because leaving them out caused an error:  
`pollution %>% pivot_wider(size, amount)`  
Error in `$<-.data.frame`(`*tmp*`, ".name", value = "_") :   
  replacement has 1 row, data has 0  
  
slide 69 - also took out text boxes and copied the tables from a previous slide. made sure animation still worked the same.  
slides 70 - 71 updated appropriately  


key/value stuff:  
slide 40 - changed `key (former column names)` to `names_to (former column names)`  
slide 41 - removed `key`; changed `value` to `values_to`  
slide 66 - `key` to `names_from`  
slide 67 - removed `key`; changed `value` to `values_from`  



