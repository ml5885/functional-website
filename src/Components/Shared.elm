module Components.Shared exposing (boldText, link, cssGlobalStyles)

import Css exposing (..)
import Css.Global exposing (global)
import Html.Styled as Styled exposing (Html, a, strong, text)
import Html.Styled.Attributes exposing (css, href)

-- Global Hover Style
cssGlobalStyles : Html msg
cssGlobalStyles =
    global
        [ Css.Global.selector "a:hover"
            [ fontStyle italic
            ]
        ]

-- Bold heading style
boldTextStyle : Style
boldTextStyle =
    batch
        [ fontSize (px 30)
        , display block
        , marginBottom (px 10)
        ]

-- Link style
linkStyle : Style
linkStyle =
    batch
        [ textDecoration none
        , color (hex "000000")
        , cursor pointer
        ]

boldText : String -> Html msg
boldText str =
    strong
        [ css [ boldTextStyle ] ]
        [ text str ]

link : String -> String -> Html msg
link url label =
    a
        [ href url
        , Html.Styled.Attributes.target "_blank"
        , css [ linkStyle ]
        ]
        [ text label ]