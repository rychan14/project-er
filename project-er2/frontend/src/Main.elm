module Main exposing (..)

import Html exposing (program)
import State exposing (..)
import Types exposing (..)
import View exposing (..)

main : Program Never Model Msg
main =
  program
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = rootView
    }
