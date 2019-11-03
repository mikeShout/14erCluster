#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Commodities Future Curve"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      p("Create a commodity futures curve chart"),
      # Commodity Selector
      selectInput("selectedCommodity", h3("Choose a commodity to display"), 
                  choices = list("Cocoa" = 1, "Sugar" = 2,
                                 "Coffee" = 3), selected = 1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      textOutput("selected_C"), 
      
      plotOutput("distPlot")
    
    )
  )
))
