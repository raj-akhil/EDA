#code created 10/12/2022
#code updated 11/10/2022   #renaming
#create.project("MOOC_Assignment")
#program start
#pre-processing starting
#library(ProjectTemplate)
#load.project()
#library(tidyverse)

#loading the all the data to a data frame

cyber_s_e_1=cyber.security.1_enrolments
cyber_s_e_2=cyber.security.2_enrolments
cyber_s_e_3=cyber.security.3_enrolments
cyber_s_e_4=cyber.security.4_enrolments
cyber_s_e_5=cyber.security.5_enrolments
cyber_s_e_6=cyber.security.6_enrolments
cyber_s_e_7=cyber.security.7_enrolments

#adding a column "year" to all the data frames for representing the year.

cyber_s_e_1=cyber_s_e_1 %>% mutate(run=1)
cyber_s_e_2=cyber_s_e_2 %>% mutate(run=2)
cyber_s_e_3=cyber_s_e_3 %>% mutate(run=3)
cyber_s_e_4=cyber_s_e_4 %>% mutate(run=4)
cyber_s_e_5=cyber_s_e_5 %>% mutate(run=5)
cyber_s_e_6=cyber_s_e_6 %>% mutate(run=6)
cyber_s_e_7=cyber_s_e_7 %>% mutate(run=7)

#Appending all the data to a single data frame for easy processing


cyber_s_e_all=rbind(cyber_s_e_1,cyber_s_e_2,cyber_s_e_3,cyber_s_e_4,cyber_s_e_5,cyber_s_e_6,cyber_s_e_7)

#checking for duplicates and no duplicate were found

count(unique(cyber_s_e_all))

count(cyber_s_e_all) # they are equal

#renaming table names 


names(cyber_s_e_all)[names(cyber_s_e_all) == 'enrolled_at'] <- 'enrolled_dttm'
names(cyber_s_e_all)[names(cyber_s_e_all) == 'unenrolled_at'] <- 'unenrolled_dttm'
names(cyber_s_e_all)[names(cyber_s_e_all) == 'fully_participated_at'] <- 'fully_participated_dttm'
names(cyber_s_e_all)[names(cyber_s_e_all) == 'purchased_statement_at'] <- 'purchased_statement_dttm'
names(cyber_s_e_all)[names(cyber_s_e_all) == 'gender'] <- 'sex'


#data cleaning by removing unwanted spaces and removing ambigous values

cyber_s_e_all$unenrolled_dttm <- trimws(cyber_s_e_all$unenrolled_dttm, which = c("both"))
cyber_s_e_all$learner_id <- trimws(cyber_s_e_all$learner_id, which = c("both"))
cyber_s_e_all$role <- trimws(cyber_s_e_all$role, which = c("both"))
cyber_s_e_all$sex <- trimws(cyber_s_e_all$sex, which = c("both"))
cyber_s_e_all$country <- trimws(cyber_s_e_all$country, which = c("both"))
cyber_s_e_all$age_range <- trimws(cyber_s_e_all$age_range, which = c("both"))
cyber_s_e_all$highest_education_level <- trimws(cyber_s_e_all$highest_education_level, which = c("both"))
cyber_s_e_all$employment_status <- trimws(cyber_s_e_all$employment_status, which = c("both"))
cyber_s_e_all$employment_area <- trimws(cyber_s_e_all$employment_area, which = c("both"))
cyber_s_e_all$detected_country <- trimws(cyber_s_e_all$detected_country, which = c("both"))

cyber_s_e_all["unenrolled_dttm"][cyber_s_e_all["unenrolled_dttm"] == ""] <- "9999-12-31 00:00:00 UTC"
cyber_s_e_all["fully_participated_dttm"][cyber_s_e_all["fully_participated_dttm"] == ""] <- "9999-12-31 00:00:00 UTC"
cyber_s_e_all["purchased_statement_dttm"][cyber_s_e_all["purchased_statement_dttm"] == ""] <- "9999-12-31 00:00:00 UTC"





#data type changing
cyber_s_e_all$run<-as.numeric(cyber_s_e_all$run)
cyber_s_e_all$enrolled_dttm<- as.POSIXct( cyber_s_e_all$enrolled_dttm, tz = "UTC" )
cyber_s_e_all$unenrolled_dttm<- as.POSIXct( cyber_s_e_all$unenrolled_dttm, tz = "UTC" )
cyber_s_e_all$fully_participated_dttm<- as.POSIXct( cyber_s_e_all$fully_participated_dttm, tz = "UTC" )
cyber_s_e_all$purchased_statement_dttm<- as.POSIXct( cyber_s_e_all$purchased_statement_dttm, tz = "UTC" )


print("muching completed without any error")
