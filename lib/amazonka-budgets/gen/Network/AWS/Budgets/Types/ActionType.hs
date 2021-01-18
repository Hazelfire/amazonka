{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ActionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ActionType
  ( ActionType
      ( ActionType',
        ActionTypeApplyIamPolicy,
        ActionTypeApplyScpPolicy,
        ActionTypeRunSsmDocuments,
        fromActionType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

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

pattern ActionTypeApplyIamPolicy :: ActionType
pattern ActionTypeApplyIamPolicy = ActionType' "APPLY_IAM_POLICY"

pattern ActionTypeApplyScpPolicy :: ActionType
pattern ActionTypeApplyScpPolicy = ActionType' "APPLY_SCP_POLICY"

pattern ActionTypeRunSsmDocuments :: ActionType
pattern ActionTypeRunSsmDocuments = ActionType' "RUN_SSM_DOCUMENTS"

{-# COMPLETE
  ActionTypeApplyIamPolicy,
  ActionTypeApplyScpPolicy,
  ActionTypeRunSsmDocuments,
  ActionType'
  #-}