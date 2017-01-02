module Story.Types exposing (..)

type alias StoryModel =
  { storyTitle : String
  , storyImgSrc : String
  , storyParagraph : String
  }

type Msg
  = NoOp
