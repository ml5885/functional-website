module Components.Projects exposing (projects)

import Html exposing (Html, div, p, text)
import Html.Attributes exposing (style)
import Components.Shared exposing (boldText)

projects : Html msg
projects =
    div [ style "margin-bottom" "30px" ]
        [ boldText "Projects"
        , p [] [ text "Placeholder for projects" ]
        ]