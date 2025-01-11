module GlobalStyles exposing (globalStyles, containerStyles)

import Css exposing (..)
import Css.Global exposing (global, body, selector)

globalStyles =
    global
        [ body
            [ backgroundColor (hex "f0efea")
            , margin zero
            , padding zero
            ]
        , selector "a:hover"
            [ fontStyle italic
            ]
        ]

containerStyles =
    [ margin2 zero auto
    , maxWidth (px 800)
    , padding (px 50)
    , fontFamilies [ "Arial", .value sansSerif ]
    , fontSize (px 18)
    , backgroundColor (hex "f0efea")
    ]