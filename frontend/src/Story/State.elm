module Story.State exposing (..)

import Story.Types exposing (StoryModel)

storyInit : StoryModel
storyInit =
  { storyTitle = ""
  , storyImgSrc = ""
  , storyParagraph = ""
  }
