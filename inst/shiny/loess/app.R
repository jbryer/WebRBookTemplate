if(require(webr)) {
	webr::install("WebRBookTemplate", repos = c("https://jbryer.github.io/WebRBookTemplate/", "https://repo.r-wasm.org/"))
}
library(WebRBookTemplate)
library(shiny)

shiny::shinyApp(ui = WebRBookTemplate::loess_shiny_ui,
				server = WebRBookTemplate::loess_shiny_server)
