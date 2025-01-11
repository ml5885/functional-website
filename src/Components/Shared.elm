module Components.Shared exposing (boldText, link)

import Css exposing (..)
import Css.Transitions exposing (transition)
import Html.Styled exposing (Html, a, strong, text)
import Html.Styled.Attributes as StyledAttributes exposing (css, href)

boldTextStyle : Style
boldTextStyle =
    batch
        [ fontSize (px 30)
        , display block
        , marginBottom (px 10)
        ]

linkStyle : Style
linkStyle =
    batch
        [ display inlineBlock
        , textDecoration underline
        , color (hex "000000")
        , cursor pointer
        , transition
            [ Css.Transitions.transform3 0.5 0 Css.Transitions.ease ]
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
        , StyledAttributes.target "_blank"
        , css [ linkStyle ]
        ]
        [ text label ]