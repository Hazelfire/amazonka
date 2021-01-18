{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsForceTsVideoEbpOrder
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsForceTsVideoEbpOrder
  ( M2tsForceTsVideoEbpOrder
      ( M2tsForceTsVideoEbpOrder',
        M2tsForceTsVideoEbpOrderForce,
        M2tsForceTsVideoEbpOrderDefault,
        fromM2tsForceTsVideoEbpOrder
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | Keep the default value (DEFAULT) unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force (FORCE).
newtype M2tsForceTsVideoEbpOrder = M2tsForceTsVideoEbpOrder'
  { fromM2tsForceTsVideoEbpOrder ::
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

pattern M2tsForceTsVideoEbpOrderForce :: M2tsForceTsVideoEbpOrder
pattern M2tsForceTsVideoEbpOrderForce = M2tsForceTsVideoEbpOrder' "FORCE"

pattern M2tsForceTsVideoEbpOrderDefault :: M2tsForceTsVideoEbpOrder
pattern M2tsForceTsVideoEbpOrderDefault = M2tsForceTsVideoEbpOrder' "DEFAULT"

{-# COMPLETE
  M2tsForceTsVideoEbpOrderForce,
  M2tsForceTsVideoEbpOrderDefault,
  M2tsForceTsVideoEbpOrder'
  #-}