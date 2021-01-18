{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.CachePolicyQueryStringBehavior
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyQueryStringBehavior
  ( CachePolicyQueryStringBehavior
      ( CachePolicyQueryStringBehavior',
        CachePolicyQueryStringBehaviorNone,
        CachePolicyQueryStringBehaviorWhitelist,
        CachePolicyQueryStringBehaviorAllExcept,
        CachePolicyQueryStringBehaviorAll,
        fromCachePolicyQueryStringBehavior
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype CachePolicyQueryStringBehavior = CachePolicyQueryStringBehavior'
  { fromCachePolicyQueryStringBehavior ::
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

pattern CachePolicyQueryStringBehaviorNone :: CachePolicyQueryStringBehavior
pattern CachePolicyQueryStringBehaviorNone = CachePolicyQueryStringBehavior' "none"

pattern CachePolicyQueryStringBehaviorWhitelist :: CachePolicyQueryStringBehavior
pattern CachePolicyQueryStringBehaviorWhitelist = CachePolicyQueryStringBehavior' "whitelist"

pattern CachePolicyQueryStringBehaviorAllExcept :: CachePolicyQueryStringBehavior
pattern CachePolicyQueryStringBehaviorAllExcept = CachePolicyQueryStringBehavior' "allExcept"

pattern CachePolicyQueryStringBehaviorAll :: CachePolicyQueryStringBehavior
pattern CachePolicyQueryStringBehaviorAll = CachePolicyQueryStringBehavior' "all"

{-# COMPLETE
  CachePolicyQueryStringBehaviorNone,
  CachePolicyQueryStringBehaviorWhitelist,
  CachePolicyQueryStringBehaviorAllExcept,
  CachePolicyQueryStringBehaviorAll,
  CachePolicyQueryStringBehavior'
  #-}