shinyUI(fluidPage(
  titlePanel("Overweight Alarm"),
  
  sidebarLayout(
     sidebarPanel(
    
      helpText("Overweight is having more body fat than is optimally healthy. Being overweight is a common condition, especially where food supplies are plentiful and lifestyles are sedentary. Excess weight has reached epidemic proportions globally, with more than 1 billion adults being either overweight or obese in 2003. In 2013 this increased to more than 2 billion. Increases have been observed across all age groups. It is defined as the individual's body mass divided by the square of their height."),
    
    radioButtons(
      inputId  = "units",
      label    = "Units:",
      choices  = c("Metric (Kg & m)" = 1, "Imperial (Lb & In)" = 2),
      selected = 1
    ),
    
    numericInput(
      inputId = "mass",
      label = strong("Weight:"),
      value = 100
    ),
    
    numericInput(
      inputId = "height",
      label = strong("Height:"),
      value = 1.80,
      step  = 0.10
    )
    ),
    
    mainPanel(
      uiOutput("input"),
      uiOutput("result"),
      uiOutput("graph"),
      uiOutput("fork")
    ))
  ))