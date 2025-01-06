module Components.Shared exposing (boldText, link)

import Html exposing (Html, strong, a, text)
import Html.Attributes exposing (style, href, target)

boldText : String -> Html msg
boldText str =
    strong
        [ style "font-size" "30px"
        , style "display" "block"
        , style "margin-bottom" "10px"
        ]
        [ text str ]

link : String -> String -> Html msg
link url str =
    a
        [ href url
        , target "_blank"
        , style "text-decoration" "none"
        , style "color" "black"
        ]
        [ text str ]
