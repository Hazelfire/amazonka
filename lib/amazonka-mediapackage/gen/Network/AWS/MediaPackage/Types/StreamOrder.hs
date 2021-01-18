{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.StreamOrder
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.StreamOrder
  ( StreamOrder
      ( StreamOrder',
        StreamOrderOriginal,
        StreamOrderVideoBitrateAscending,
        StreamOrderVideoBitrateDescending,
        fromStreamOrder
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype StreamOrder = StreamOrder' {fromStreamOrder :: Core.Text}
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

pattern StreamOrderOriginal :: StreamOrder
pattern StreamOrderOriginal = StreamOrder' "ORIGINAL"

pattern StreamOrderVideoBitrateAscending :: StreamOrder
pattern StreamOrderVideoBitrateAscending = StreamOrder' "VIDEO_BITRATE_ASCENDING"

pattern StreamOrderVideoBitrateDescending :: StreamOrder
pattern StreamOrderVideoBitrateDescending = StreamOrder' "VIDEO_BITRATE_DESCENDING"

{-# COMPLETE
  StreamOrderOriginal,
  StreamOrderVideoBitrateAscending,
  StreamOrderVideoBitrateDescending,
  StreamOrder'
  #-}