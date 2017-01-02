module View exposing (..)

import Html exposing (..)
import Types exposing (..)
import Cover.View exposing (coverView)
import Story.View exposing (storyView)

rootView : Model -> Html Msg
rootView model =
  div
    []
    [ coverView model.cover
    , storyView model.story
    ]
