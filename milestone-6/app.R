#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
    plotOutput("plot1")
)

# I had the server function output a plot called plot 1. To do this I needed to render the image, which was achieved using a list. 
# Within the list function I specified the filename and dimensions. 
# I added deleteFile = FALSE so it would not delete the file each time, which allowed me to experiment with various dimensions. 

server <- function(input, output, session) {
    output$plot1 <- renderImage({
        list(src = "ore_pct_rural.png",
             width="850", 
             height="850")
    }, deleteFile = FALSE)
    
}

# Running the application 

shinyApp(ui = ui, server = server)