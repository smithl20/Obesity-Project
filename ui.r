library(shiny)
library(shinydashboard)
library(leaflet)
library(ggplot2)
library(rgdal)
library(dplyr)
library(tidyverse)
library(htmltools)

shiny::tags

#call csv data files
obesityIncomeTotals    <- read.csv("obesityIncomeTotals.csv")
obesityEducationTotals <- read.csv("obesityEducationTotals.csv")
obeseTotal             <- read.csv("obeseTotal.csv")
usaState2018Merge      <- read.csv("usaState2018Merge.csv")

#source each tab into the general ui.r
source("introductionPage.r")
source("obesityHeatMap.r")
source("obesityEducation.r")
source("obesityIncome.r")
source("aboutTab.r")

fluidPage(
  dashboardPage(skin = "black",
    dashboardHeader(title      = span("Obesity in the USA", 
                    style      = "font-weight: bold"),
                    titleWidth = "300px"),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Introduction", tabName                  = "introductionTab"),
        menuItem("Obesity in America", tabName            = "obesityHeatTab"),
        menuItem("Obesity and Education in 2018", tabName = "obesityEducationTab"),
        menuItem("Obesity and Income in 2018", tabName    = "obesityIncomeTab"),
        menuItem("About", tabName                         = "aboutTab")
        )
      ),

#creating tabs in the app
dashboardBody(
  tabItems(
    tabItem(tabName = "introductionTab", introductionTab),
    tabItem(tabName = "obesityHeatTab", obesityHeatTab),
    tabItem(tabName = "obesityEducationTab", obesityEducationTab),
    tabItem(tabName = "obesityIncomeTab", obesityIncomeTab),
    tabItem(tabName = "aboutTab", aboutTab)
    )
  )
)
)
