library(tidyverse)

openpl <- read_csv("data/openpowerlifting.csv")

openpl_tidy <- openpl %>%
        select(-"Squat1Kg", -"Squat2Kg", -"Squat3Kg", -"Squat4Kg", -"Bench1Kg", -"Bench2Kg", -"Bench3Kg", -"Bench4Kg", -"Deadlift1Kg", -"Deadlift2Kg", -"Deadlift3Kg", -"Deadlift4Kg", -"Wilks", -"McCulloch", -"Glossbrenner"
        ) %>% 
        rename(Squat = Best3SquatKg) %>%
        rename(Bench = Best3BenchKg) %>%
        rename(Deadlift = Best3DeadliftKg) %>%
        rename(Total = TotalKg) %>%
gather(key = Lift,
       value = LiftKg,
       Squat,
       Bench,
       Deadlift,
       Total) %>%
        mutate(LiftKg = replace(LiftKg, LiftKg < 0 , NA))

openpl_tidy %>%
        # filter(Tested == "Yes") %>%
        filter(Sex == "M") %>%
        filter(WeightClassKg == "82.5") %>%
        select(Lift, Equipment, LiftKg) %>%
na.omit() %>%
        group_by(Lift, Equipment) %>%
        summarise(meankg=mean(LiftKg),
                  mediankg =median(LiftKg)) %>%
        mutate(meanlbs = meankg*2.2046226218,
               medianlbs = mediankg*2.2046226218) %>%
        filter(Equipment == "Raw")

       
                
                
                
                
                
                 #         "Name", 
        # "Sex", 
        # "Event", 
        # "Equipment", 
        # "Age", 
        # "Division", 
        # "BodyweightKg",    
        # "WeightClassKg"
        # "Squat1Kg",
        # "Squat2Kg",
        # "Squat3Kg",
        # "Squat4Kg",
        # "Best3SquatKg",
        # "Bench1Kg",
        # "Bench2Kg",
        # "Bench3Kg",
        # "Bench4Kg",
        # "Best3BenchKg",
        # "Deadlift1Kg",
        # "Deadlift2Kg",
        # "Deadlift3Kg",
        # "Deadlift4Kg",
        # "Best3DeadliftKg",
        # "TotalKg",
        # "Place",
        # "Wilks",
        # "McCulloch",
        # "Tested",
        # "AgeClass",
        # "Country",
        # "Glossbrenner",
        # "Federation",
        # "Date",
        # "MeetCountry",
        # "MeetState",
        # "MeetName"