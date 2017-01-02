module Types exposing (..)

import Cover.Types exposing (CoverModel)
import Story.Types exposing (StoryModel)

type alias Model =
  { cover : CoverModel
  , story: StoryModel
  }

type Msg
  = NoOp
