library(WebRBookTemplate)
library(shiny)

shiny::shinyApp(ui = WebRBookTemplate::loess_shiny_ui,
				server = WebRBookTemplate::loess_shiny_server)
