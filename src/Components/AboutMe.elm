module Components.AboutMe exposing (aboutMe)

import Html.Styled exposing (Html, div, p, text)
import Html.Styled.Attributes exposing (css)
import Css exposing (px, marginBottom)
import Components.Shared exposing (boldText, link)


aboutMe : Html msg
aboutMe =
    div [ css [ marginBottom (px 30) ] ]
        [ boldText "About"
        , p []
            [ text "Hi, I'm Michael. I'm studying computer science, statistics and machine learning at Carnegie Mellon University. "
            , text "Outside of school, I enjoy "
            , link "https://devpost.com/bearseascape" "hackathons"
            , text ", "
            , link "https://www.youtube.com/watch?v=1yjtBMZ6ZhU" "playing the piano"
            , text " and speed-solving Rubik's cubes."
            ]
        ]