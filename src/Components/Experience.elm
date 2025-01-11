module Components.Experience exposing (experience)

import Html.Styled exposing (Html, div, p, text)
import Html.Styled.Attributes exposing (css)
import Css exposing (px)
import Components.Shared exposing (boldText, link)

type alias ExperienceData =
  { title : String
  , company : String
  , companyUrl : String
  , date : String
  , description : String
  , links : List (String, String)
  }

experiences : List ExperienceData
experiences =
  [ ExperienceData 
    "Machine Learning Engineering Intern"
    "Epirus"
    "https://www.epirusinc.com/"
    "(June 2024 - August 2024)"
    "Engineered real-time drone simulations in Python and used PyTorch to train a reinforcement learning agent with Proximal Policy Optimization to optimally engage unknown drone swarms, leading to significant improvements over baseline methods."
    []
  , ExperienceData
    "Full Stack Engineering Intern"
    "Beaver Health"
    "https://www.beaverhealth.org/"
    "(May 2023 - August 2023)"
    "Developed a generative AI dialogue framework using GPT-4 and TypeScript to digitize evidence-based health interventions for Alzheimer's patients. Backed by National Institute on Aging & Harvard Innovation Labs."
    []
  , ExperienceData
    "Researcher"
    "University of Victoria"
    ""
    "(July 2022 - May 2023)"
    "Designed and implemented Temporal Convolutional Networks (TCNs) for predicting COVID-19 outcomes, outperforming CDC benchmarks by a significant margin in predictive accuracy and timeliness."
    [ ("Paper", "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10208648/")
    , ("Research Poster", "./BioGENEius_2022_Poster.pdf")
    , ("Slides", "./CSEF_2022_Presentation.pdf")
    ]
  ]

experienceItem : ExperienceData -> Html msg
experienceItem data =
  div
    [ css
      [ Css.marginBottom (px 30)
      , Css.marginTop (px 30)
      ]
    ]
    [ div
      [ css
        [ Css.fontSize (px 18)
        , Css.fontWeight Css.bold
        , Css.marginBottom (px 5)
        ]
      ]
      [ text (data.title ++ ", ")
      , if String.isEmpty data.companyUrl then text data.company else link data.companyUrl data.company
      ]
    , div
      [ css
        [ Css.color (Css.hex "666666")
        , Css.marginBottom (px 10)
        ]
      ]
      [ text data.date ]
    , p
      [ css
        [ Css.lineHeight (Css.em 1.6)
        , Css.margin (px 0)
        ]
      ]
      [ text data.description ]
    , if List.isEmpty data.links then
        text ""
      else
        div
          [ css [ Css.marginTop (px 10) ] ]
          (List.map (\(label, url) -> 
            div [ css [ Css.marginRight (px 15), Css.display Css.inline ] ] 
                [ link url label ]) 
           data.links)
    ]

experience : Html msg
experience =
  div
    [ css
      [ Css.maxWidth (px 800)
      , Css.margin2 (px 0) Css.auto
      ]
    ]
    (boldText "Experience" :: List.map experienceItem experiences)
