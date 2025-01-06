module Main exposing (main)

import Browser
import Html.Styled as Styled exposing (Html, div, toUnstyled)
import Html.Styled.Attributes exposing (css)
import Css exposing (..)
import Css.Global exposing (global, body)
import Components.AboutMe exposing (aboutMe)
import Components.Projects exposing (projects)
import Components.Experience exposing (experience)
import Components.Shared exposing (cssGlobalStyles)
import Browser.Navigation exposing (back)


main : Program () () msg
main =
  Browser.sandbox
    { init = ()
    , update = \_ model -> model
    , view = \_ ->
      toUnstyled <|
        div []
          [ global
              [ body
                  [ backgroundColor (hex "f0efea")
                  , margin zero
                  , padding zero
                  ]
              ]
          , div
              [ css
                [ margin2 zero auto
                , maxWidth (px 800)
                , padding (px 50)
                , fontFamilies [ "Arial", .value sansSerif ]
                , fontSize (px 18)
                , backgroundColor (hex "f0efea")
                , minHeight (vh 100)
                ]
              ]
              [ cssGlobalStyles
              , aboutMe
              , projects
              , experience
              ]
          ]
    }