{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M3u8NielsenId3Behavior
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M3u8NielsenId3Behavior
  ( M3u8NielsenId3Behavior
      ( M3u8NielsenId3Behavior',
        M3u8NielsenId3BehaviorNoPassthrough,
        M3u8NielsenId3BehaviorPassthrough,
        fromM3u8NielsenId3Behavior
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | M3u8 Nielsen Id3 Behavior
newtype M3u8NielsenId3Behavior = M3u8NielsenId3Behavior'
  { fromM3u8NielsenId3Behavior ::
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

pattern M3u8NielsenId3BehaviorNoPassthrough :: M3u8NielsenId3Behavior
pattern M3u8NielsenId3BehaviorNoPassthrough = M3u8NielsenId3Behavior' "NO_PASSTHROUGH"

pattern M3u8NielsenId3BehaviorPassthrough :: M3u8NielsenId3Behavior
pattern M3u8NielsenId3BehaviorPassthrough = M3u8NielsenId3Behavior' "PASSTHROUGH"

{-# COMPLETE
  M3u8NielsenId3BehaviorNoPassthrough,
  M3u8NielsenId3BehaviorPassthrough,
  M3u8NielsenId3Behavior'
  #-}