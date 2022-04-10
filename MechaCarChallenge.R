# Deliverable 1: Linear Regression to Predict MPG

library(dplyr)
library(tidyverse)

mecha_car_mpg <- read.csv(file='./MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg)) 


# Deliverable 2: Create Visualizations for the Trip Analysis

suspension_coil_data <- read.csv(file='./Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

total_summary <- suspension_coil_data %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups='keep')

lot_summary <- suspension_coil_data  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups ='keep')

# Deliverable 3: T-Tests on Suspension Coils

t.test(suspension_coil_data$PSI, mu=1500)

lot1 <- subset(suspension_coil_data, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil_data, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil_data, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)