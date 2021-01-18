{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputCodec
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputCodec
  ( InputCodec
      ( InputCodec',
        InputCodecMPEG2,
        InputCodecAvc,
        InputCodecHevc,
        fromInputCodec
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | codec in increasing order of complexity
newtype InputCodec = InputCodec' {fromInputCodec :: Core.Text}
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

pattern InputCodecMPEG2 :: InputCodec
pattern InputCodecMPEG2 = InputCodec' "MPEG2"

pattern InputCodecAvc :: InputCodec
pattern InputCodecAvc = InputCodec' "AVC"

pattern InputCodecHevc :: InputCodec
pattern InputCodecHevc = InputCodec' "HEVC"

{-# COMPLETE
  InputCodecMPEG2,
  InputCodecAvc,
  InputCodecHevc,
  InputCodec'
  #-}