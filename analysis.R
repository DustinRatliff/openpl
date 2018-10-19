library(tidyverse)

openpl <- read_csv("data/openpowerlifting.csv")

openpl %>%
        select(-"Squat1Kg", -"Squat2Kg", -"Squat3Kg", -"Squat4Kg", -"Bench1Kg", -"Bench2Kg", -"Bench3Kg", -"Bench4Kg", -"Deadlift1Kg", -"Deadlift2Kg", -"Deadlift3Kg", -"Deadlift4Kg", -"TotalKg", -"Wilks", -"McCulloch", -"Glossbrenner"
        ) %>% 
        rename(Squat = Best3SquatKg) %>%
        rename(Bench = Best3BenchKg) %>%
        rename(Deadlift = Best3DeadliftKg) %>%
gather(key = Lift,
       value = LiftKG,
       Squat,
       Bench,
       Deadlift)

        
        
        
        
        filter(tested == "Yes") %>%
        filter(Sex == "F") %>%
        filter(WeightClassKg == 90) %>%
                
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