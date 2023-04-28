library(shiny)

BACKEND_URL <- "http://localhost:5000"

ui <- fluidPage(
  fluidRow(
    column(2,
      actionButton("up", icon("arrow-up")),
      align = "center"
    )
  ),
  fluidRow(
    column(2,
      actionButton("left", icon("arrow-left")),
      actionButton("down", icon("arrow-down")),
      actionButton("right", icon("arrow-right")),
      align = "center"
    )
  ),
  fluidRow(
    column(2,
      actionButton("takeoff", "Takeoff"),
      actionButton("land", "Land"),
      align = "center"
    )
  )
)

server <- function(input, output) {
  observeEvent(input$up, {
    httr::POST(
      url = paste0(BACKEND_URL, "/command/up"),
      body = list(),
      encode = "json"
    )
  })
  observeEvent(input$left, {
    httr::POST(
      url = paste0(BACKEND_URL, "/command/left"),
      body = list(),
      encode = "json"
    )
  })
  observeEvent(input$down, {
    httr::POST(
      url = paste0(BACKEND_URL, "/command/down"),
      body = list(),
      encode = "json"
    )
  })
  observeEvent(input$right, {
    httr::POST(
      url = paste0(BACKEND_URL, "/command/right"),
      body = list(),
      encode = "json"
    )
  })
  observeEvent(input$takeoff, {
    httr::POST(
      url = paste0(BACKEND_URL, "/command/takeoff"),
      body = list(),
      encode = "json"
    )
  })
  observeEvent(input$land, {
    httr::POST(
      url = paste0(BACKEND_URL, "/command/land"),
      body = list(),
      encode = "json"
    )
  })
}

shinyApp(ui = ui, server = server)
