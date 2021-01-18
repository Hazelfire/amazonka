{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ActionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ActionType
  ( ActionType
      ( ActionType',
        ActionTypeRestoreCluster,
        ActionTypeRecommendNodeConfig,
        ActionTypeResizeCluster,
        fromActionType
      ),
  )
where

import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Redshift.Internal as Types

newtype ActionType = ActionType' {fromActionType :: Core.Text}
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

pattern ActionTypeRestoreCluster :: ActionType
pattern ActionTypeRestoreCluster = ActionType' "restore-cluster"

pattern ActionTypeRecommendNodeConfig :: ActionType
pattern ActionTypeRecommendNodeConfig = ActionType' "recommend-node-config"

pattern ActionTypeResizeCluster :: ActionType
pattern ActionTypeResizeCluster = ActionType' "resize-cluster"

{-# COMPLETE
  ActionTypeRestoreCluster,
  ActionTypeRecommendNodeConfig,
  ActionTypeResizeCluster,
  ActionType'
  #-}