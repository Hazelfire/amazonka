{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.CancelWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.CancelWorkflowExecutionFailedCause
  ( CancelWorkflowExecutionFailedCause
      ( CancelWorkflowExecutionFailedCause',
        CancelWorkflowExecutionFailedCauseUnhandledDecision,
        CancelWorkflowExecutionFailedCauseOperationNotPermitted,
        fromCancelWorkflowExecutionFailedCause
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype CancelWorkflowExecutionFailedCause = CancelWorkflowExecutionFailedCause'
  { fromCancelWorkflowExecutionFailedCause ::
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

pattern CancelWorkflowExecutionFailedCauseUnhandledDecision :: CancelWorkflowExecutionFailedCause
pattern CancelWorkflowExecutionFailedCauseUnhandledDecision = CancelWorkflowExecutionFailedCause' "UNHANDLED_DECISION"

pattern CancelWorkflowExecutionFailedCauseOperationNotPermitted :: CancelWorkflowExecutionFailedCause
pattern CancelWorkflowExecutionFailedCauseOperationNotPermitted = CancelWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  CancelWorkflowExecutionFailedCauseUnhandledDecision,
  CancelWorkflowExecutionFailedCauseOperationNotPermitted,
  CancelWorkflowExecutionFailedCause'
  #-}