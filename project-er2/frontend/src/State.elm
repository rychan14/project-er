module State exposing (..)

import Types exposing (..)
import Cover.State exposing (coverInit)
import Story.State exposing (storyInit)

init : (Model, Cmd Msg)
init =
  ( { cover = coverInit
    , story = storyInit
    }
  , Cmd.none
  )

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  (model, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none
