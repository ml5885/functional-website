module Components.Experience exposing (experience)

import Html exposing (Html, div, p, text)
import Html.Attributes exposing (style)
import Components.Shared exposing (boldText)

experience : Html msg
experience =
    div []
        [ boldText "Experience"
        , p [] [ text "Placeholder for experience" ]
        ]
