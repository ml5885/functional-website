module Components.Experience exposing (experience)

import Html.Styled as Styled exposing (Html, div, p, text)
import Html.Styled.Attributes exposing (css)
import Css exposing (px)
import Components.Shared exposing (boldText)


experience : Html msg
experience =
    div []
        [ boldText "Experience"
        , p []
            [ text "Placeholder for experience" ]
        ]