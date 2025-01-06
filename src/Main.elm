module Main exposing (..)

import Element exposing (Element, el, text, column, paragraph, fill, width, spacing, centerX, paddingXY)
import Element.Font as Font

main = 
  Element.layout []
    content

content : Element msg
content =
  column [ width fill, centerX, spacing 30, paddingXY 350 50 ]
    [ aboutMe
    , projects
    , experience
    ]

aboutMe : Element msg
aboutMe =
  column [ spacing 20 ]
    [ boldText "About"
    , paragraph []
      [ text "Hi, I'm Michael. I'm studying computer science, statistics and machine learning at Carnegie Mellon University. I'm generally interested in the field of machine learning, particularly in understanding how deep neural networks work. "
      , text "Outside of school, I enjoy hackathons, playing the piano and speed-solving Rubik’s cubes. "
      ]
    ]

projects : Element msg
projects =
  column [ spacing 20 ]
    [ boldText "Projects"
    , paragraph []
      [ text "Placeholder for projects"
      ]
    ]

experience : Element msg
experience =
  column [ spacing 20 ]
  [ boldText "Experience"
  , paragraph []
    [ text "Placeholder for experience"
    ]
  ]

boldText : String -> Element msg
boldText str =
  el [ Font.bold, Font.size 30 ] (text str)
