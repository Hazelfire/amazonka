{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsKeyProviderType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsKeyProviderType
  ( HlsKeyProviderType
      ( HlsKeyProviderType',
        HlsKeyProviderTypeSpeke,
        HlsKeyProviderTypeStaticKey,
        fromHlsKeyProviderType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.
newtype HlsKeyProviderType = HlsKeyProviderType'
  { fromHlsKeyProviderType ::
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

pattern HlsKeyProviderTypeSpeke :: HlsKeyProviderType
pattern HlsKeyProviderTypeSpeke = HlsKeyProviderType' "SPEKE"

pattern HlsKeyProviderTypeStaticKey :: HlsKeyProviderType
pattern HlsKeyProviderTypeStaticKey = HlsKeyProviderType' "STATIC_KEY"

{-# COMPLETE
  HlsKeyProviderTypeSpeke,
  HlsKeyProviderTypeStaticKey,
  HlsKeyProviderType'
  #-}