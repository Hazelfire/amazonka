{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedCause
  ( SignalExternalWorkflowExecutionFailedCause
      ( SignalExternalWorkflowExecutionFailedCause',
        SignalExternalWorkflowExecutionFailedCauseUnknownExternalWorkflowExecution,
        SignalExternalWorkflowExecutionFailedCauseSignalExternalWorkflowExecutionRateExceeded,
        SignalExternalWorkflowExecutionFailedCauseOperationNotPermitted,
        fromSignalExternalWorkflowExecutionFailedCause
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype SignalExternalWorkflowExecutionFailedCause = SignalExternalWorkflowExecutionFailedCause'
  { fromSignalExternalWorkflowExecutionFailedCause ::
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

pattern SignalExternalWorkflowExecutionFailedCauseUnknownExternalWorkflowExecution :: SignalExternalWorkflowExecutionFailedCause
pattern SignalExternalWorkflowExecutionFailedCauseUnknownExternalWorkflowExecution = SignalExternalWorkflowExecutionFailedCause' "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

pattern SignalExternalWorkflowExecutionFailedCauseSignalExternalWorkflowExecutionRateExceeded :: SignalExternalWorkflowExecutionFailedCause
pattern SignalExternalWorkflowExecutionFailedCauseSignalExternalWorkflowExecutionRateExceeded = SignalExternalWorkflowExecutionFailedCause' "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"

pattern SignalExternalWorkflowExecutionFailedCauseOperationNotPermitted :: SignalExternalWorkflowExecutionFailedCause
pattern SignalExternalWorkflowExecutionFailedCauseOperationNotPermitted = SignalExternalWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  SignalExternalWorkflowExecutionFailedCauseUnknownExternalWorkflowExecution,
  SignalExternalWorkflowExecutionFailedCauseSignalExternalWorkflowExecutionRateExceeded,
  SignalExternalWorkflowExecutionFailedCauseOperationNotPermitted,
  SignalExternalWorkflowExecutionFailedCause'
  #-}