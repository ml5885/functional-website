module Main exposing (main)

import Browser
import Html.Styled exposing (div, toUnstyled)
import Html.Styled.Attributes exposing (css)
import GlobalStyles exposing (globalStyles, containerStyles)
import Components.AboutMe exposing (aboutMe)
import Components.Projects exposing (projects)
import Components.Experience exposing (experience)
import Components.Footer exposing (footer)

main : Program () () msg
main =
    Browser.sandbox
        { init = ()
        , update = \_ model -> model
        , view = \_ ->
            toUnstyled <|
                div []
                    [
                      globalStyles
                    , div [ css containerStyles ]
                        [ aboutMe
                        , projects
                        , experience
                        , footer
                        ]
                    ]
        }