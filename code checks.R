library(tidyverse)

cases <- tribble(
        ~Country, ~"2011", ~"2012", ~"2013",
        "FR",    7000,    6900,    7000,
        "DE",    5800,    6000,    6200,
        "US",   15000,   14000,   13000
)


pollution <- tribble(
        ~city, ~size, ~amount,
        "New York", "large",      23,
        "New York", "small",      14,
        "London", "large",      22,
        "London", "small",      16,
        "Beijing", "large",     121,
        "Beijing", "small",     121
)



cases %>% 
        pivot_longer(2:4, "year", "n")

cases %>% 
        pivot_longer(c("2011", "2012", "2013"), "year", "n")

cases %>% 
        pivot_longer(-Country, "year", "n")

cases %>% 
        pivot_longer(starts_with("201"), "year", "n")



table4a %>% 
        pivot_longer(2:3, names_to = "year", values_to = "n")

table4a %>% 
        pivot_longer(2:3, names_to = "year", values_to = "n", 
                     names_ptypes = list(year = integer()))  

table4a %>% 
        pivot_longer(2:3, names_to = "year", values_to = "n", names_ptypes = list(year = integer())) 

pollution %>% 
        pivot_wider(names_from = size, values_from = amount)

pollution %>% 
        pivot_wider(size, amount)   # nope


table2 %>% 
        pivot_wider(names_from = type, values_from = count)
