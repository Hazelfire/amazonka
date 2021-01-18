{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsAudioBufferModel
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAudioBufferModel
  ( M2tsAudioBufferModel
      ( M2tsAudioBufferModel',
        M2tsAudioBufferModelAtsc,
        M2tsAudioBufferModelDvb,
        fromM2tsAudioBufferModel
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | M2ts Audio Buffer Model
newtype M2tsAudioBufferModel = M2tsAudioBufferModel'
  { fromM2tsAudioBufferModel ::
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

pattern M2tsAudioBufferModelAtsc :: M2tsAudioBufferModel
pattern M2tsAudioBufferModelAtsc = M2tsAudioBufferModel' "ATSC"

pattern M2tsAudioBufferModelDvb :: M2tsAudioBufferModel
pattern M2tsAudioBufferModelDvb = M2tsAudioBufferModel' "DVB"

{-# COMPLETE
  M2tsAudioBufferModelAtsc,
  M2tsAudioBufferModelDvb,
  M2tsAudioBufferModel'
  #-}