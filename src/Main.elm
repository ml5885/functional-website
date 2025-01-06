module Main exposing (main)

import Html exposing (Html, div)
import Html.Attributes exposing (style)
import Components.AboutMe exposing (aboutMe)
import Components.Projects exposing (projects)
import Components.Experience exposing (experience)

main : Html msg
main =
    div
        [ style "margin" "0 auto"
        , style "max-width" "800px"
        , style "padding" "50px"
        , style "font-family" "Arial, sans-serif"
        , style "font-size" "18px"
        ]
        [ aboutMe, projects, experience ]