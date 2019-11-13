obesityEducationTab <- list(
            
            titlePanel("Education & Obesity"),
                 sidebarPanel(
                 checkboxGroupInput(
                 "educationInput", "Choose Education Level:",
                  choices = list(
                  "College Graduate"     = "College graduate",
                  "Highschool Graduate"  = "High school graduate",
                  "Less than Highschool" = "Less than high school",
                  "Technical School"     = "Some college or technical school"
                )
                ),
              textOutput("checkEdu"),
              
              selectInput(inputId = "location",
                          label = "Choose States:",
                          choices = list(
                            "AK", "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "GA",
                            "GU", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD",
                            "ME", "MI", "MN", "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ",
                            "NM", "NV", "NY", "OH", "OK", "OR", "PA", "PR", "RI", "SC", "SD",
                            "TN", "TX", "US", "UT", "VA", "VI", "VT", "WA", "WI", "WV", "WY"
                          ),
                          selectize = TRUE,
                          multiple = TRUE
                          
              ),
              textOutput("stateResult"),
              mainPanel(plotOutput("barPlotEdu")
              )
            )
  )

<<<<<<< HEAD
=======

>>>>>>> c3a3f32f6c089d2c6d9bafffeccc47c23cd8f2bb
#data manipulation for education
library(tidyverse)
library(dplyr)

#tidy table
obesityEducation <- obesityData                                                   %>%
  select(1,3,8,11,17,20)                                                          %>%
  filter(Education               != "N/A",
         YearStart               == "2018",
         Question                == 
                    "Percent of adults aged 18 years and older who have obesity")

colnames(obesityEducation) [1] <- "year"
colnames(obesityEducation) [2] <- "location"
colnames(obesityEducation) [3] <- "question"
colnames(obesityEducation) [4] <- "percent"
colnames(obesityEducation) [5] <- "sampleSize"
colnames(obesityEducation) [6] <- "educationLevel"

#calculations
obesityEducationData <- obesityEducation     %>%
  as_tibble()                                %>% 
  mutate(
  numberObese = sampleSize*(percent/100))

obesityEducationData$location <- as.factor(obesityEducationData$location)
obesityEducationData$year <- as.factor(obesityEducationData$year)
obesityEducationData$educationLevel <- as.factor(obesityEducationData$educationLevel)


obesityEducationTotals <- obesityEducationData                       %>%
  as_tibble()                                                        %>% 
  mutate(
  obesePercent = (numberObese/sampleSize)*100)




<<<<<<< HEAD

obesityEducation <- list(
  
  titlePanel("Education & Obesity in the United States"),

#fluidPage(
  
  
 # title = "Obesity & Education",
  #titlePanel("Education & Obesity"),

  
#  sidebarLayout(
#    sidebarPanel(
 #     checkboxInput(
#       inputId = "col",
 #       label = "College Graduate",
  #      value = TRUE
  #    ),
   #   checkboxInput(
    #    inputId = "hs",
     #   label = "High School Graduate",
      #  value = TRUE
      #),    
      #checkboxInput(
       # inputId = "lessHs",
      #  label = "Less Than High School",
       # value = TRUE
    #  ),     
     # checkboxInput(
      #  inputId = "someCol",
       # label = "Some College or Technical School",
      #  value = TRUE
    #  ),     
    
    

    #mainPanel(
      #plotOutput("barPlotEdu"))
  #)
 #)
#)

 #   mainPanel(
 #     plotOutput("barPlotEdu")
 #   )
#  )
# )
)

=======
>>>>>>> c3a3f32f6c089d2c6d9bafffeccc47c23cd8f2bb

