dashboardPage(
  dashboardHeader(disable = TRUE),
  dashboardSidebar(disable = TRUE),
  dashboardBody(
    includeCSS("www/custom.css"),
    fluidRow(
      # Colonne gauche ----------------------------------------------------------
      
      column(
        width = 3,
        box(
          width = 12,
          boxProfile(
            title = "Aurélie Fréchet",
            subtitle = "Data Scientist",
            src = "https://raw.githubusercontent.com/AurelieFrechet/monCVshiny/master/www/images/portrait.png",
            dashboardLabel("Data Visualisation", status = "success"),
            dashboardLabel("Rshiny", status = "warning"),
            dashboardLabel("CSS", status = "warning"),
            dashboardLabel("HTML", status = "warning"),
            dashboardLabel("Data Science", status = "danger"),
            blockQuote(
              "Jeune data Scientist avec un fort côté artistique,
              je profite de deux ans d'expérience en tant que consultante.
              Je suis passionnée par le web design et espère m'orienter vers le métier de Data Designer."
            )
            
            )
          ),
        br(),
        box(
          width = 12,
          title = "Contact",
          solidHeader = TRUE,
          boxProfileItemList(
            bordered = TRUE,
            boxProfileItem(title = "Téléphone",
                           description = "06 68 00 17 15"),
            boxProfileItem(title = "Mail",
                           description = "aurelie.frechet@gmail.com"),
            boxProfileItem(title = "Github",
                           description = "https://github.com/AurelieFrechet")
            
          )
        )
        ),
      
      # Colonne centrale --------------------------------------------------------
      column(
        width = 6,
        tabBox(
          width = 12,
          height = "250px",
          
          
          # Expérience --------------------------------------------------------------
          tabPanel(
            title = "Expérience",
            icon  = icon("briefcase"),
            timelineBlock(
              timelineEnd(color = "danger"),
              timelineLabel("Lincoln", color = "marroon"),
              timelineItem(
                title = "Préparaton de formation",
                icon = "pen",
                time = "now",
                "Création de slides, exercices et corrections pour une formation R pour la Data Science"
              ),
              timelineItem(
                title = "Analyste chez EDF",
                time = "juin 2018 - mars 2019",
                icon = "chart-bar",
                "Nettoyage de base de données, optimisation de code, création d'application avec Rshiny et d'outils pour l'équipe."
              ),
              timelineItem(
                title = "Chargée de formation",
                time = "septembre 2018",
                "Animatrice d'une formation de deux jours sur R (niveau intermédiaire)"
              ),
              timelineItem(
                title = "Design du chatbot interne",
                time = "avril 2018",
                icon = "paint-brush",
                "Dessin et animation du Chatbot interne en CSS, HTML et JS"
              ),
              timelineItem(
                title = "Data Scientist chez SNCF",
                time = "novembre 2017 - avril 2018",
                icon = "chart-bar",
                "Création d'indicateurs, modélisation et visualisation des déplacements des usagers sur le réseau Transilien"
              ),
              timelineLabel("EDF", color = "marroon"),
              timelineItem(
                title = "Stagiaire Data Scientist",
                time = "mars 2017 - septembre 2017",
                icon = "chart-bar",
                "Réalisation d'un application de visualisation de la prédiction de la disponibilité des vélos en libre service présents en bornes.
                Création et gestion d'une base de données, modélisation et machine learning, Rshiny et CSS."
              ),
              timelineStart(color = "gray")
              )
          ),
          
          # Formation ------------------------------------------------------------------
          
          tabPanel(
            title = "Formation",
            icon  = icon("graduation-cap"),
            userPost(
              id = 2,
              src = "http://www.ensai.fr/files/ensai/images/facebook.png",
              author = "Ecole Nationale de la Statistique et de l'Analyse de l'Information (ENSAI)",
              description = "2014 - 2017",
              userPostToolItemList(
                userPostToolItem(dashboardLabel("SAS", status = "warning")),
                userPostToolItem(dashboardLabel("R", status = "success")),
                userPostToolItem(dashboardLabel("Analyse multivariée", status = "danger")),
                userPostToolItem(dashboardLabel("Modélisation", status = "danger")),
                userPostToolItem(dashboardLabel("Séries Temporelles", status = "danger")),
                userPostToolItem(dashboardLabel("C++", status = "success"))
              )
            ),
            userPost(
              id = 1,
              src = "http://www.iut.parisdescartes.fr/var/parisdescartes/storage/images/media/iut/images/logo-2012-iut-paris-descartes/76090-1-fre-FR/logo-2012-IUT-Paris-Descartes_reference.jpg",
              author = "DUT Statististique et Informatique Décisionnelle (STID) - Paris Descartes",
              description = "2012 - 2014",
              userPostToolItemList(
                userPostToolItem(dashboardLabel("Excel", status = "warning")),
                userPostToolItem(dashboardLabel("VBA", status = "warning")),
                userPostToolItem(dashboardLabel("SAS", status = "warning")),
                userPostToolItem(dashboardLabel("R", status = "success")),
                userPostToolItem(dashboardLabel("Programmation orientée objet", status = "success")),
                userPostToolItem(dashboardLabel("SQL", status = "success"))
              )
            )
          ),
          
          # Projets -----------------------------------------------------------------
          
          tabPanel(
            title = "Projets",
            icon  = icon("archive"),
            productList(
              productListItem(
                src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTweIdLqMROA1376btx1QkgWj3KpMC7OIW6jqTxu9_D5GpIF93ykQ",
                productTitle = "World Happiness",
                productPrice = "en cours",
                priceColor = "warning",
                "https://github.com/AurelieFrechet/world_happiness"
              ),
              productListItem(
                src = "https://le-datascientist.fr/wp-content/uploads/2019/03/cropped-rstudio.png",
                productTitle = "Accidents circulation",
                productPrice = "en cours",
                priceColor = "warning",
                "https://github.com/AurelieFrechet/accidents_circulation"
              ),
              productListItem(
                src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTweIdLqMROA1376btx1QkgWj3KpMC7OIW6jqTxu9_D5GpIF93ykQ",
                productTitle = "JO2024",
                productPrice = "terminé",
                priceColor = "success",
                "https://aureliefrechet.shinyapps.io/jo2024/"
              ),
              productListItem(
                src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTweIdLqMROA1376btx1QkgWj3KpMC7OIW6jqTxu9_D5GpIF93ykQ",
                productTitle = "Herbier Fractales",
                productPrice = "en cours",
                priceColor = "warning",
                "https://github.com/AurelieFrechet/herbier_fractales"
              ),
              productListItem(
                src = "https://le-datascientist.fr/wp-content/uploads/2019/03/cropped-rstudio.png",
                productTitle = "Accès financier aux soins",
                productPrice = "en cours",
                priceColor = "warning",
                "https://github.com/AurelieFrechet/acces_financier_soins"
              )
            )
          )
          )
        ),
      
      # Colonne de droite -------------------------------------------------------
      
      column(
        width = 3,
        tabBox(
          width = 12,
          height = "300px",
          tabPanel(
            title = "Compétences",
            value = "Tab content 1",
            icon  = icon("star"),
            align = "center",
            hc_radar(competences_notes)
          ),
          tabPanel(
            title = "Intérêts",
            value = "Tab content 2",
            icon  = icon("heart"),
            align = "center",
            hc_radar(interets_notes)
          )
        ),
        br(),
        box(
          width = 12,
          title = "Mon petit plus : je dessine",
          userList(
            userListItem(
              src = "https://raw.githubusercontent.com/AurelieFrechet/monCVshiny/master/www/images/viztapoubelle_logo.png",
              user_name = "Viz Ta Poubelle",
              description = "Logo du Challenge 2018"
            ),
            userListItem(
              src = "https://raw.githubusercontent.com/AurelieFrechet/monCVshiny/master/www/images/lighbot.PNG",
              user_name = "LightBot",
              description = "Chatbot interne de Lincoln"
            ),
            userListItem(
              src = "https://raw.githubusercontent.com/AurelieFrechet/monCVshiny/master/www/images/logo%20lama.png",
              user_name = "LamaRtist",
              description = "Logo Personnel"
            )
          )
        )
      )
        ))
  )