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