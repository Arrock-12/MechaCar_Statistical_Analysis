library(dplyr)

# Deliverable 1 Linear Regression on MechaCar MPG
MechaCar <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F) #read in csv file
head(MechaCar)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar) #create linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar)) #summarize linear model

# Deliverable 2 Visualizations of statistical summaries
suspension_coil_table <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)# read in csv as table
total_summary <- suspension_coil_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #creates a statistical summary
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Deliverable 3 T-Tests on Suspension Coils

sample <- suspension_coil_table %>% sample_n(75) #select random 75 from total population
t.test(suspension_coil_table$PSI, mu = 1500) # compare means of population with population mean
t.test(sample$PSI, mu = 1500) # sample of population compared with population mean of 1500 PSI

# T-Test for Lot 1
t.test(subset(suspension_coil_table$PSI,suspension_coil_table$Manufacturing_Lot == "Lot1"),mu=1500)
#T-Test for Lot 2
t.test(subset(suspension_coil_table$PSI,suspension_coil_table$Manufacturing_Lot == "Lot2"),mu=1500)
# T-Test for Lot 3
t.test(subset(suspension_coil_table$PSI,suspension_coil_table$Manufacturing_Lot == "Lot3"),mu=1500)
                                                                                   