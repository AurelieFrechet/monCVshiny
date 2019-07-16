
# 1 - Libraries -----------------------------------------------------------

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(highcharter)


# 2 - Table données -------------------------------------------------------


competences_char <- c("R",
                      "Rshiny",
                      "CSS",
                      "JS",
                      "HTML",
                      "SAS",
                      "Tableau",
                      "SQL")

competences_notes <- c(9.5, 8.5, 4, 3, 5, 7, 6.5, 8)
interets_notes    <- c(10, 10, 9, 10, 8, 3, 5, 6)


# 3 - Fonctions -----------------------------------------------------------

hc_radar <- function(notes){
  highchart() %>%
    hc_chart(polar = TRUE, 
             type  = "area",
             width = 250 ,
             height = 250) %>%
    hc_xAxis(categories = competences_char,
             tickmarkPlacement = 'on',
             lineWidth = 0) %>%
    hc_yAxis(gridLineInterpolation = 'polygon',
             lineWidth = 0,
             min = 0,
             max = 10
    ) %>%
    hc_add_series(name = "Compétence",
                  data = notes,
                  color = "#8b104e",
                  showInLegend =  FALSE)
}
