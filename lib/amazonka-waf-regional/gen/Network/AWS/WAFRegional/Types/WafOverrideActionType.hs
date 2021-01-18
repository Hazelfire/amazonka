{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.WafOverrideActionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.WafOverrideActionType
  ( WafOverrideActionType
      ( WafOverrideActionType',
        WafOverrideActionTypeNone,
        WafOverrideActionTypeCount,
        fromWafOverrideActionType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype WafOverrideActionType = WafOverrideActionType'
  { fromWafOverrideActionType ::
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

pattern WafOverrideActionTypeNone :: WafOverrideActionType
pattern WafOverrideActionTypeNone = WafOverrideActionType' "NONE"

pattern WafOverrideActionTypeCount :: WafOverrideActionType
pattern WafOverrideActionTypeCount = WafOverrideActionType' "COUNT"

{-# COMPLETE
  WafOverrideActionTypeNone,
  WafOverrideActionTypeCount,
  WafOverrideActionType'
  #-}