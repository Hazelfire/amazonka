{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputLossActionForRtmpOut
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossActionForRtmpOut
  ( InputLossActionForRtmpOut
      ( InputLossActionForRtmpOut',
        InputLossActionForRtmpOutEmitOutput,
        InputLossActionForRtmpOutPauseOutput,
        fromInputLossActionForRtmpOut
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | Input Loss Action For Rtmp Out
newtype InputLossActionForRtmpOut = InputLossActionForRtmpOut'
  { fromInputLossActionForRtmpOut ::
      Core.Text
  }
  deriving stock
    ( Core.Eq,
      Core.Ord,
      Core.Read,
      Core.Show,
      Core.Generic
    )
  deriving newtype
    ( Core.IsString,
      Core.Hashable,
      Core.NFData,
      Core.ToJSONKey,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.FromJSON,
      Core.ToXML,
      Core.FromXML,
      Core.ToText,
      Core.FromText,
      Core.ToByteString,
      Core.ToQuery,
      Core.ToHeader
    )

pattern InputLossActionForRtmpOutEmitOutput :: InputLossActionForRtmpOut
pattern InputLossActionForRtmpOutEmitOutput = InputLossActionForRtmpOut' "EMIT_OUTPUT"

pattern InputLossActionForRtmpOutPauseOutput :: InputLossActionForRtmpOut
pattern InputLossActionForRtmpOutPauseOutput = InputLossActionForRtmpOut' "PAUSE_OUTPUT"

{-# COMPLETE
  InputLossActionForRtmpOutEmitOutput,
  InputLossActionForRtmpOutPauseOutput,
  InputLossActionForRtmpOut'
  #-}