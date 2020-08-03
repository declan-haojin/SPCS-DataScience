library(shiny)
library(ggplot2)
library(ggpubr)
ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      titlePanel(h5('Please select your variables')),
      selectInput(inputId = 'X',
                  label = 'X',
                  choices = names(iris),
                  selected = 'Sepal.Width'),
      selectInput(inputId = 'Y',
                  label = 'Y',
                  choices = names(iris)),
      selectInput(inputId = 'color',
                  label = 'Species',
                  choices = 'Species')
    ),
    mainPanel(
      titlePanel('Two experimental plots'),
      fluidRow(
        column(6, plotOutput('ggplot_1')),
        column(6, plotOutput('ggplot_2'))
      )
    )
  )
)

server <- function(input, output){
  output$ggplot_1 <- renderPlot({
    ggplot(iris, aes_string(x = input$X, y = input$Y, color = input$color)) + geom_point() + 
      theme_bw() + 
      theme(panel.grid = element_blank(),
            axis.title = element_text(size = rel(1.5), face = 4),
            axis.text = element_text(size = rel(1.2)))
  })
  output$ggplot_2 <- renderPlot({
    mycomparision <- list(c('setosa', 'versicolor'), c('setosa', 'virginica'), c('versicolor', 'virginica'))
    ggplot(iris,aes_string(input$color, input$X, color = input$color)) +
      geom_violin(fill = 'white', trim = F) + 
      stat_boxplot(geom = 'errorbar', width = 0.05, color = 'black') + 
      geom_boxplot(fill = 'black', color = 'black', width = 0.1) + 
      stat_summary(fun.y = median, geom = 'point', size = rel(3), color = 'white') + 
      geom_jitter() +  
      guides(color = F) + 
      labs(title = paste('The ', input$X ,'of Different Species')) + 
      theme_bw() + 
      theme(panel.grid = element_blank()) + 
      scale_fill_brewer(palette = 'Set2') + 
      scale_color_brewer(palette = 'Set2') + 
      theme(plot.title = element_text(face = 4, size = rel(2)),
            axis.title = element_text(face = 4, size = rel(1.5)),
            axis.text = element_text(size = rel(1.2))) + 
      stat_compare_means(method = 'wilcox.test', comparisons = mycomparision, label = 'p.signif')
  })
}
shinyApp(ui, server)
