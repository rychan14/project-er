module Cover.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (Msg)
import Utils exposing (..)
import Cover.Types exposing (CoverModel)

coverView: CoverModel -> Html Msg
coverView model =
  section
    [ coverStyle ]
    [ h1
      [ coverTitleStyle ]
      [ span
        []
        [ text "Ryan" ]
      , i
          [ heartStyle
          , class "fa fa-heart"
          ]
          []
      , span
          []
          [ text "Erica" ]
      ]
    , h2
      [ coverSubtitleStyle ]
      [ text model.coverSubtitle ]
    ]

coverStyle : Attribute msg
coverStyle =
  style
    [ "align-items" => "center"
    , "background-attachment" => "fixed"
    , "background-image" => "url(\"dist/assets/Us.jpg\")"
    , "background-position" => "center"
    , "background-size" => "cover"
    , "color" => "#FFF"
    , "display" => "flex"
    , "flex-flow" => "column"
    , "font-family" => "Montserrat"
    , "font-size" => "3em"
    , "height" => "100vh"
    , "justify-content" => "center"
    ]

coverTitleStyle : Attribute msg
coverTitleStyle =
  style
    [ "align-items" => "center"
    , "display" => "flex"
    , "flex-flow" => "column"
    ]

heartStyle : Attribute msg
heartStyle =
  style
    [ "font-size" => "0.7em"
    , "color" => "#f08080"
    ]

coverSubtitleStyle : Attribute msg
coverSubtitleStyle =
  style
    [ "font-family" => "Roboto Slab"
    , "font-size" => "0.6em"
    ]
