module Story.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (Msg)
import Story.Types exposing (StoryModel)

storyView: StoryModel -> Html Msg
storyView model =
  article
    []
    [ h1
      [ storyTitleStyle ]
      [ text model.storyTitle ]
    , img
      [ storyImgStyle
      , src model.storyImgSrc
      ]
      []
    , section
      [ storyParagraphContainerStyle ]
      [ p
        [ storyParagraphStyle]
        [ text model.storyParagraph ]
      ]
    ]

storyTitleStyle : Attribute msg
storyTitleStyle =
  style
    []

storyImgStyle : Attribute msg
storyImgStyle =
  style
    []

storyParagraphContainerStyle : Attribute msg
storyParagraphContainerStyle =
  style
    []

storyParagraphStyle : Attribute msg
storyParagraphStyle =
  style
    []
