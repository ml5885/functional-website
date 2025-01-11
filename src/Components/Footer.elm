module Components.Footer exposing (footer)

import Html.Styled exposing (Html, footer, div, p, text)
import Html.Styled.Attributes exposing (css)
import Css exposing (px, backgroundColor, hex, padding, width, pct)
import Components.Shared exposing (boldText)
import Css exposing (padding4)


footer : Html msg
footer =
  Html.Styled.footer
    [ css
      [ padding4 (px 20) (px 0) (px 20) (px 0)
      , width (pct 100)
      ]
    ]
    [ div []
      [ p [] [ text "Built with Elm" ]
      ]
    ]