library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Iris dataset exploration for beginners
    titlePanel("Iris Dataset for Beginners"),

    # Sidebar with options related to scatter plot
    sidebarLayout(
        sidebarPanel(
            selectInput("variable", "Length:",
                        list("Sepal length" = "Sepal.Length",
                             "Petal length" = "Petal.Length")),
            
            selectInput("variable2", "Width:",
                        list("Sepal width"  = "Sepal.Width",
                             "Petal width"  = "Petal.Width"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Length vs Width in Iris Species Dataset"),
            plotOutput("plot")
        )
    ))
)