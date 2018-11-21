install.packages("RcmdrPlugin.IPSUR", repos="http://cran.r-project.org", dep=TRUE)
library("RcmdrPlugin.IPSUR")
library(dplyr)   
library(magrittr)

data(RcmdrTestDrive)
View(RcmdrTestDrive)

dim(RcmdrTestDrive)

x<-RcmdrTestDrive

#a. Calculate the average salary by gender and smoking status.
 x %>%
   group_by(gender) %>%
   summarise(avg_sal=mean(salary))
 
 x %>%
   group_by(smoking) %>%
   summarise(avg_sal=mean(salary))
 
#b. Which gender has the highest mean salary?
#Answer: Male
  
#c. Report the highest mean salary
#Highest Mean Salary = 743
 
#d. Compare the spreads for the genders by calculating the standard deviation of salary by gender.
 x %>%
   group_by(gender) %>%
   summarise(standarddeviation_sal=sd(salary))
 