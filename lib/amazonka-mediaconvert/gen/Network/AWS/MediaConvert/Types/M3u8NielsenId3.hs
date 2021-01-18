{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M3u8NielsenId3
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M3u8NielsenId3
  ( M3u8NielsenId3
      ( M3u8NielsenId3',
        M3u8NielsenId3Insert,
        M3u8NielsenId3None,
        fromM3u8NielsenId3
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
newtype M3u8NielsenId3 = M3u8NielsenId3'
  { fromM3u8NielsenId3 ::
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

pattern M3u8NielsenId3Insert :: M3u8NielsenId3
pattern M3u8NielsenId3Insert = M3u8NielsenId3' "INSERT"

pattern M3u8NielsenId3None :: M3u8NielsenId3
pattern M3u8NielsenId3None = M3u8NielsenId3' "NONE"

{-# COMPLETE
  M3u8NielsenId3Insert,
  M3u8NielsenId3None,
  M3u8NielsenId3'
  #-}