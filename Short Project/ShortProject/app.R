library(shinydashboard)
library(shiny)
library(ggplot2)
library(DT)
library(readr)
library(ggpubr)
latimes_state_totals <- read.csv("latimes-state-totals.csv")

variable_data = row.names(latimes_state_totals)

latimes_state_totals$date <- as.Date(latimes_state_totals$date, "%Y-%m-%d")
                                   

shinyApp(
    ui = dashboardPage(
        dashboardHeader(
            title = "COVID-19 Data Dashboard", 
            #titleWidth = 100,
            dropdownMenu(type = "messages", badgeStatus = "success",
                 messageItem(from = "Declan",
                             message = "Welcome to my Dashboard!",
                             time = "3 hours",
                             href = "https://lihaojin.cn/"
                 )
            )
        
        ),
        dashboardSidebar(
            menuItem("Plot1", tabName = "Plot1", icon = icon("bar-chart-o")),
            selectInput("x", "The X variable of Plot:",
                        c("confirmed cases" = "confirmed_cases",
                          "deaths" = "deaths",
                          "new confirmed cases" = "new_confirmed_cases",
                          "new deaths" = "new_deaths",
                          "date" = "date")
            ),
            selectInput("y", "The Y variable of Plot:",
                        c("confirmed cases" = "confirmed_cases",
                          "deaths" = "deaths",
                          "new confirmed cases" = "new_confirmed_cases",
                          "new deaths" = "new_deaths",
                          "date" = "date"),
            ),
            selectInput("z", "point / line:",
                        c("point"="point", "line"="line"),
            ),
            menuItem("Plot2", tabName = "Plot2", icon = icon("bar-chart-o")),
            dateRangeInput("daterange","Date", 
                           start = "2020-01-26", end = "2020-07-26",
                           min = "2020-01-26", max = "2020-07-26",
            ),
            menuItem("Data", tabName = "Data", icon = icon("dashboard")),
            menuItem("Summary", tabName = "Summary",icon = icon("th"), badgeColor = "green")
     
            
        
        ),

        dashboardBody(
            fluidRow(
                
                infoBox("Plot1", value = "Click `Plot1` on the left sidebar. You can set axises and point/line in plot1 tab",icon = icon("list"), width = 6),
                
                infoBox("Plot2", value = "Click `Plot2` on the left sidebar. You can select the date range in plot2 tab",icon = icon("list"), width = 6),
            ),
            tabItems(
                tabItem(tabName = "Plot1", plotOutput("Plot")),
                tabItem(tabName = "Plot2", plotOutput("Plot1")),
                tabItem(tabName = "Data", box(dataTableOutput("Data"), width = 200)),
                tabItem(tabName = "Summary",verbatimTextOutput("Summary"))
            )
        
        
        )
    ),

    server = function(input, output) {
        output$Plot <- renderPlot({
            if(input$z == "point") ggplot(latimes_state_totals, aes_string(x = input$x, y = input$y)) + geom_point(size = 1.5, color = 2)+geom_smooth(method = "lm", colour = "purple")
            else ggplot(latimes_state_totals, aes_string(x = input$x, y = input$y, color = input$color)) + geom_line(size = 1.5, color = 2)
        })
        
        output$Plot1 <- renderPlot({
            #ggplot(latimes_state_totals, aes_string(x = latimes_state_totals$date, y = latimes_state_totals$confirmed_cases))+ geom_point()+scale_x_date()
            #set.seed(1726)
            ggplot(latimes_state_totals, aes(x = date))+scale_x_continuous(name="date range", limits=c(input$daterange[1], input$daterange[2]))+geom_line(aes(y = new_confirmed_cases),size=1,color=3)+geom_line(aes(y = deaths),size=1,color=1)+geom_line(aes(y = new_deaths),size=1,color=5)
            
        })
    
        output$Data <- renderDataTable({datatable(latimes_state_totals)}) 
        output$Summary <- renderPrint({str(latimes_state_totals)})
        
    }
)