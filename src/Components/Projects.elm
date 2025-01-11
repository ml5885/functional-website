module Components.Projects exposing (projects)

import Html.Styled exposing (Html, div, p, text)
import Html.Styled.Attributes exposing (css)
import Css exposing (marginBottom, px)
import Components.Shared exposing (boldText)


projects : Html msg
projects =
    div [ css [ marginBottom (px 30) ] ]
        [ boldText "Projects"
        , p []
            [ text "Placeholder for projects" ]
        ]