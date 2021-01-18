{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264GopBReference
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264GopBReference
  ( H264GopBReference
      ( H264GopBReference',
        H264GopBReferenceDisabled,
        H264GopBReferenceEnabled,
        fromH264GopBReference
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | If enable, use reference B frames for GOP structures that have B frames > 1.
newtype H264GopBReference = H264GopBReference'
  { fromH264GopBReference ::
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

pattern H264GopBReferenceDisabled :: H264GopBReference
pattern H264GopBReferenceDisabled = H264GopBReference' "DISABLED"

pattern H264GopBReferenceEnabled :: H264GopBReference
pattern H264GopBReferenceEnabled = H264GopBReference' "ENABLED"

{-# COMPLETE
  H264GopBReferenceDisabled,
  H264GopBReferenceEnabled,
  H264GopBReference'
  #-}