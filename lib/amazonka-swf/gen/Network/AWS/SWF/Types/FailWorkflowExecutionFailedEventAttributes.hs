{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.FailWorkflowExecutionFailedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.FailWorkflowExecutionFailedEventAttributes
  ( FailWorkflowExecutionFailedEventAttributes (..),

    -- * Smart constructor
    mkFailWorkflowExecutionFailedEventAttributes,

    -- * Lenses
    fwefeaCause,
    fwefeaDecisionTaskCompletedEventId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SWF.Types.FailWorkflowExecutionFailedCause as Types

-- | Provides the details of the @FailWorkflowExecutionFailed@ event.
--
-- /See:/ 'mkFailWorkflowExecutionFailedEventAttributes' smart constructor.
data FailWorkflowExecutionFailedEventAttributes = FailWorkflowExecutionFailedEventAttributes'
  { -- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
    cause :: Types.FailWorkflowExecutionFailedCause,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @FailWorkflowExecution@ decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
    decisionTaskCompletedEventId :: Core.Integer
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'FailWorkflowExecutionFailedEventAttributes' value with any optional fields omitted.
mkFailWorkflowExecutionFailedEventAttributes ::
  -- | 'cause'
  Types.FailWorkflowExecutionFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Core.Integer ->
  FailWorkflowExecutionFailedEventAttributes
mkFailWorkflowExecutionFailedEventAttributes
  cause
  decisionTaskCompletedEventId =
    FailWorkflowExecutionFailedEventAttributes'
      { cause,
        decisionTaskCompletedEventId
      }

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fwefeaCause :: Lens.Lens' FailWorkflowExecutionFailedEventAttributes Types.FailWorkflowExecutionFailedCause
fwefeaCause = Lens.field @"cause"
{-# DEPRECATED fwefeaCause "Use generic-lens or generic-optics with 'cause' instead." #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @FailWorkflowExecution@ decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fwefeaDecisionTaskCompletedEventId :: Lens.Lens' FailWorkflowExecutionFailedEventAttributes Core.Integer
fwefeaDecisionTaskCompletedEventId = Lens.field @"decisionTaskCompletedEventId"
{-# DEPRECATED fwefeaDecisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead." #-}

instance Core.FromJSON FailWorkflowExecutionFailedEventAttributes where
  parseJSON =
    Core.withObject "FailWorkflowExecutionFailedEventAttributes" Core.$
      \x ->
        FailWorkflowExecutionFailedEventAttributes'
          Core.<$> (x Core..: "cause")
          Core.<*> (x Core..: "decisionTaskCompletedEventId")