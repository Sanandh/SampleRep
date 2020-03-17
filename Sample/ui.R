library(shiny)
library(shiny.semantic)
library(data.table)
library(recoder)
library(DT)

#singleton(tags$head(tags$script(src='myscript.js'))),
  
#### UI ####
semanticPage(
    singleton(tags$head(tags$script(src='myscript.js'))),
    singleton(tags$head(tags$script(src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'))),# Js for popup
    title = "R Shiny Millionaire - Who Wants To Be a Millionaire?",
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css"),
    tags$link(rel = "stylesheet",  href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"),
    suppressDependencies("bootstrap"),
    div
    (
        class="topbar",
        tags$a(href = "shiny.rstudio.com/tutorial", "Click Here!")
    ),
    div
    (
        class="container",
        div
        (
            img(src = "logo.png", width = "20%", height = "15%"),
            style = "text-align: center",
            h1 
            (class="gamename",
                "Who Wants To Be a Millionaire"
            ),
            tags$a
            (style="margin-top:10px;",
                href="?startover=yes" ,
                class="btn btn-default",
                "Start This Game Over"
            ),
         
        ),
        tags$br(),
        div
        (class="row",
        div 
        (class="col-md-8",
            div
                (id="qbox1",
                    class="millbox1",
                    #textOutput("SelectedQuestions")
                    "Which is the longest bridge in the world?"
                    
                 ),
            tags$br(),  

        div
        (class="row",
            div
                (
                class="col-md-6",
                div
                    (
                        id="choice1", class="millbox2",
                        'data-toggle' = "modal", 
                        'data-target' = '#myModala',
                        #textOutput("OptionA"),
                        "Manchac Swamp Bridge in the United",
                        onclick='PlaySound("choicea.mp3")'
                        
                     )
                ),
            div
                (
                class="col-md-6",
                div
                (
                    id="choice2",class="millbox2",
                    #textOutput("OptionB"),
                    "Danyang–Kunshan Grand Bridge in China",
                    onclick='PlaySound("choicea.mp3")',
                    'data-toggle' = "modal", 
                    'data-target' = '#myModalb'
                    
                )
                ),
            div
                (
                class="col-md-6",
                div
                (
                    id="choice3",class="millbox2",
                    #textOutput("OptionC"),
                    "Danyang–Kunshan Grand Bridge in China",
                    onclick='PlaySound("choicea.mp3")',
                    'data-toggle' = "modal", 
                    'data-target' = '#myModalc'
                )
                ),
            div
                (
                class="col-md-6",
                div
                (
                    id="choice4",class="millbox2",
                    #textOutput("OptionD"),
                    "Dhola-Sadiya bridge in India",
                    onclick='PlaySound("choicea.mp3")',
                    'data-toggle' = "modal", 
                    'data-target' = '#myModald'
                )
                )
           
        )
        ),#End of Question col-md-8 classs
        div
            (class="col-md-4",  
                div 
                (class="lifelines",
                    style = "text-align: center",
                    "Lifelines", tags$br(),
                        img( id ="ll5050",style="max-width:30%;",
                             src = "5050.png", width = "20%", height = "15%",
                             onclick="PlaySound('beep.wav');FiftyFifty();
                             $('#urlcatcher').load('lifeline.php?type=5050'); 
                             this.src='5050used.png';"),
                        img( id ="llask",style="max-width:30%;",
                         src = "audience.png", width = "20%", height = "15%",
                    'data-toggle'="modal", 'data-target'="#myModalaudience",
                    onclick="PlaySound('beep.wav');
                             $('#urlcatcher').load('lifeline.php?type=audience'); 
                             this.src='audienceused.png';"),
                    
                        img( id ="llskip",style="max-width:30%;",
                         src = "skip.png", width = "20%", height = "15%",
                         onclick="PlaySound('beep.wav');SkipQ();
                             $('#urlcatcher').load('lifeline.php?type=skip'); 
                             this.src='skipused.png';"
                         )
                ) ,#End of div lifeline
                div
                (
                    class="prizes",
                    div
                    (
                        class="openround",
                        "Question 15",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$1000000"
                        )
                    ), # End of question 15 prize
                    div
                    (
                        class="openround",
                        "Question 14",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$500000"
                        )
                    ), # End of question 14 prize
                    div
                    (
                        class="openround",
                        "Question 13",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$250000"
                        )
                    ), # End of question 13 prize
                    div
                    (
                        class="openround",
                        "Question 12",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$125000"
                        )
                    ),# End of question 12 prize
                    div
                    (
                        class="openround",
                        "Question 11",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$64000"
                        )
                    ),# End of question 11 prize
                    div
                    (
                        class="openround",
                        "Question 10",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$32000"
                        )
                    ),# End of question 10 prize
                    div
                    (
                        class="openround",
                        "Question 9",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$16000"
                        )
                    ),# End of question 9 prize
                    div
                    (
                        class="openround",
                        "Question 8",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$8000"
                        )
                    ),# End of question 8 prize
                    div
                    (
                        class="openround",
                        "Question 7",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$4000"
                        )
                    ),# End of question 7 prize
                    div
                    (
                        class="openround",
                        "Question 6",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$2000"
                        )
                    ),# End of question 6 prize
                    div
                    (
                        class="openround",
                        "Question 5",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$1000"
                        )
                    ),# End of question 5 prize
                    div
                    (
                        class="openround",
                        "Question 4",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$500"
                        )
                    ),# End of question 4 prize 
                    div
                    (
                        class="openround",
                        "Question 3",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$300"
                        )
                    ),# End of question 3 prize 
                    div
                    (
                        class="openround",
                        "Question 2",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoney",
                            "$200"
                        )
                    ),# End of question 2 prize 
                    div
                    (
                        class="currentround",
                        "Question 1",
                        HTML('&nbsp;&nbsp;&nbsp;&nbsp;'),
                        span
                        (class="prizemoneycurrent",
                            "$100"
                        ),
                    ),# End of question 1 prize 
                ) #End of Div Class Prizes
            ) #End of div col md4
                 
        ), #End of row classs
        div 
        (id="results" ,
            style="visibility:hidden;"
        ),
        singleton(tags$head(tags$script(src='myscript.js')))
    ), #End of container
    div
    (
        id="QuestionId",
        "1"
    ),
    #Starts Modal A
    div(
        class="modal fade",
        id="myModala",
        tabindex="-1",
        role="dialog" ,
        'aria-labelledby'="myModalLabel",
        div
        (
            class="modal-dialog",
            role="document",
            div
            (class="modal-content",
                style="border:10px solid red; background-color:#FB5F0F;",
                div 
                (class="modal-body", style="text-align:center; font-size:36px;",
                    "Is That Your Final Answer?"
                ),
                div
                (class="modal-footer", style="text-align:center;",
                    tags$button
                    (
                        type="button",
                        'data-dismiss'="modal",
                        class="btn-lg btn-primary",
                        "Yes",
                        onclick="answerCheck('a')"
                    ), #End of Yes button
                    tags$button
                    (
                        type="button",
                        'data-dismiss'="modal",
                        class="btn-lg btn-primary",
                        "No"
                    ) #End of No button    
                    
                )
            )
        )
       
    ),  # End of A model
    div(
        class="modal fade",
        id="myModalb",
        tabindex="-1",
        role="dialog" ,
        'aria-labelledby'="myModalLabel",
        div
        (
            class="modal-dialog",
            role="document",
            div
            (class="modal-content",
                style="border:10px solid red; background-color:#FB5F0F;",
                div 
                (class="modal-body", style="text-align:center; font-size:36px;",
                    "Is That Your Final Answer?"
                ),
                div
                (class="modal-footer", style="text-align:center;",
                    tags$button
                    (
                        type="button",
                        'data-dismiss'="modal",
                        class="btn-lg btn-primary",
                        "Yes",
                        onclick="answerCheck('b')"
                    ), #End of Yes button
                    tags$button
                    (
                        type="button",
                        'data-dismiss'="modal",
                        class="btn-lg btn-primary",
                        "No"
                    ) #End of No button    
                    
                )
            )
        )
        
    ), #End of B model
    div(
        class="modal fade",
        id="myModalc",
        tabindex="-1",
        role="dialog" ,
        'aria-labelledby'="myModalLabel",
        div
        (
            class="modal-dialog",
            role="document",
            div
            (class="modal-content",
                style="border:10px solid red; background-color:#FB5F0F;",
                div 
                (class="modal-body", style="text-align:center; font-size:36px;",
                    "Is That Your Final Answer?"
                ),
                div
                (class="modal-footer", style="text-align:center;",
                    tags$button
                    (
                        type="button",
                        'data-dismiss'="modal",
                        class="btn-lg btn-primary",
                        "Yes",
                        onclick="answerCheck('c')"
                    ), #End of Yes button
                    tags$button
                    (
                        type="button",
                        'data-dismiss'="modal",
                        class="btn-lg btn-primary",
                        "No"
                    ) #End of No button    
                    
                )
            )
        )
        
    ), #End of c model
    
    div(
        class="modal fade",
        id="myModald",
        tabindex="-1",
        role="dialog" ,
        'aria-labelledby'="myModalLabel",
        div
        (
            class="modal-dialog",
            role="document",
            div
            (class="modal-content",
                style="border:10px solid red; background-color:#FB5F0F;",
                div 
                (class="modal-body", style="text-align:center; font-size:36px;",
                    "Is That Your Final Answer?"
                ),
                div
                (class="modal-footer", style="text-align:center;",
                    tags$button
                    (
                        type="button",
                        'data-dismiss'="modal",
                        class="btn-lg btn-primary",
                        "Yes",
                        onclick="answerCheck('d')"
                    ), #End of Yes button
                    tags$button
                    (
                        type="button",
                        'data-dismiss'="modal",
                        class="btn-lg btn-primary",
                        "No"
                    ) #End of No button    
                    
                )
            )
        )
        
    ),#End of D model
    
    div(
        class="modal fade",
        id="myModalaudience",
        tabindex="-1",
        role="dialog" ,
        'aria-labelledby'="myModalLabel",
        div
        (
            class="modal-dialog",
            role="document",
            div
            (class="modal-content",
                style="border:10px solid red; background-color:#FB5F0F;",
                div 
                (class="modal-body", style="text-align:center; font-size:36px;",
                    "Ask the Audience",
                    tags$br(),
                    img( style="max-width:100%;",
                         src = "choicec1.png")
                ),
                div
                (class="modal-footer", style="text-align:center;",
                  
                    tags$button
                    (
                        type="button",
                        'data-dismiss'="modal",
                        class=" btn-lg btn-default",
                        "Ok"
                    ) #End of No button    
                    
                )
            )
        )
        
    )#End of Audiance model
  
)  ##end of semantic page
 
