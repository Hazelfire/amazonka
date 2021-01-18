{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsEbpPlacement
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsEbpPlacement
  ( M2tsEbpPlacement
      ( M2tsEbpPlacement',
        M2tsEbpPlacementVideoAndAudioPids,
        M2tsEbpPlacementVideoPid,
        fromM2tsEbpPlacement
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | M2ts Ebp Placement
newtype M2tsEbpPlacement = M2tsEbpPlacement'
  { fromM2tsEbpPlacement ::
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

pattern M2tsEbpPlacementVideoAndAudioPids :: M2tsEbpPlacement
pattern M2tsEbpPlacementVideoAndAudioPids = M2tsEbpPlacement' "VIDEO_AND_AUDIO_PIDS"

pattern M2tsEbpPlacementVideoPid :: M2tsEbpPlacement
pattern M2tsEbpPlacementVideoPid = M2tsEbpPlacement' "VIDEO_PID"

{-# COMPLETE
  M2tsEbpPlacementVideoAndAudioPids,
  M2tsEbpPlacementVideoPid,
  M2tsEbpPlacement'
  #-}