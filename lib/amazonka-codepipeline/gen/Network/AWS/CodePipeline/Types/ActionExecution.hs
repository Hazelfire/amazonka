{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionExecution
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionExecution
  ( ActionExecution (..),

    -- * Smart constructor
    mkActionExecution,

    -- * Lenses
    aeActionExecutionId,
    aeErrorDetails,
    aeExternalExecutionId,
    aeExternalExecutionUrl,
    aeLastStatusChange,
    aeLastUpdatedBy,
    aePercentComplete,
    aeStatus,
    aeSummary,
    aeToken,
  )
where

import qualified Network.AWS.CodePipeline.Types.ActionExecutionId as Types
import qualified Network.AWS.CodePipeline.Types.ActionExecutionStatus as Types
import qualified Network.AWS.CodePipeline.Types.ErrorDetails as Types
import qualified Network.AWS.CodePipeline.Types.ExternalExecutionId as Types
import qualified Network.AWS.CodePipeline.Types.ExternalExecutionUrl as Types
import qualified Network.AWS.CodePipeline.Types.LastUpdatedBy as Types
import qualified Network.AWS.CodePipeline.Types.Summary as Types
import qualified Network.AWS.CodePipeline.Types.Token as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents information about the run of an action.
--
-- /See:/ 'mkActionExecution' smart constructor.
data ActionExecution = ActionExecution'
  { -- | ID of the workflow action execution in the current stage. Use the 'GetPipelineState' action to retrieve the current action execution details of the current stage.
    actionExecutionId :: Core.Maybe Types.ActionExecutionId,
    -- | The details of an error returned by a URL external to AWS.
    errorDetails :: Core.Maybe Types.ErrorDetails,
    -- | The external ID of the run of the action.
    externalExecutionId :: Core.Maybe Types.ExternalExecutionId,
    -- | The URL of a resource external to AWS that is used when running the action (for example, an external repository URL).
    externalExecutionUrl :: Core.Maybe Types.ExternalExecutionUrl,
    -- | The last status change of the action.
    lastStatusChange :: Core.Maybe Core.NominalDiffTime,
    -- | The ARN of the user who last changed the pipeline.
    lastUpdatedBy :: Core.Maybe Types.LastUpdatedBy,
    -- | A percentage of completeness of the action as it runs.
    percentComplete :: Core.Maybe Core.Natural,
    -- | The status of the action, or for a completed action, the last status of the action.
    status :: Core.Maybe Types.ActionExecutionStatus,
    -- | A summary of the run of the action.
    summary :: Core.Maybe Types.Summary,
    -- | The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the @GetPipelineState@ command. It is used to validate that the approval request corresponding to this token is still valid.
    token :: Core.Maybe Types.Token
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ActionExecution' value with any optional fields omitted.
mkActionExecution ::
  ActionExecution
mkActionExecution =
  ActionExecution'
    { actionExecutionId = Core.Nothing,
      errorDetails = Core.Nothing,
      externalExecutionId = Core.Nothing,
      externalExecutionUrl = Core.Nothing,
      lastStatusChange = Core.Nothing,
      lastUpdatedBy = Core.Nothing,
      percentComplete = Core.Nothing,
      status = Core.Nothing,
      summary = Core.Nothing,
      token = Core.Nothing
    }

-- | ID of the workflow action execution in the current stage. Use the 'GetPipelineState' action to retrieve the current action execution details of the current stage.
--
-- /Note:/ Consider using 'actionExecutionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aeActionExecutionId :: Lens.Lens' ActionExecution (Core.Maybe Types.ActionExecutionId)
aeActionExecutionId = Lens.field @"actionExecutionId"
{-# DEPRECATED aeActionExecutionId "Use generic-lens or generic-optics with 'actionExecutionId' instead." #-}

-- | The details of an error returned by a URL external to AWS.
--
-- /Note:/ Consider using 'errorDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aeErrorDetails :: Lens.Lens' ActionExecution (Core.Maybe Types.ErrorDetails)
aeErrorDetails = Lens.field @"errorDetails"
{-# DEPRECATED aeErrorDetails "Use generic-lens or generic-optics with 'errorDetails' instead." #-}

-- | The external ID of the run of the action.
--
-- /Note:/ Consider using 'externalExecutionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aeExternalExecutionId :: Lens.Lens' ActionExecution (Core.Maybe Types.ExternalExecutionId)
aeExternalExecutionId = Lens.field @"externalExecutionId"
{-# DEPRECATED aeExternalExecutionId "Use generic-lens or generic-optics with 'externalExecutionId' instead." #-}

-- | The URL of a resource external to AWS that is used when running the action (for example, an external repository URL).
--
-- /Note:/ Consider using 'externalExecutionUrl' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aeExternalExecutionUrl :: Lens.Lens' ActionExecution (Core.Maybe Types.ExternalExecutionUrl)
aeExternalExecutionUrl = Lens.field @"externalExecutionUrl"
{-# DEPRECATED aeExternalExecutionUrl "Use generic-lens or generic-optics with 'externalExecutionUrl' instead." #-}

-- | The last status change of the action.
--
-- /Note:/ Consider using 'lastStatusChange' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aeLastStatusChange :: Lens.Lens' ActionExecution (Core.Maybe Core.NominalDiffTime)
aeLastStatusChange = Lens.field @"lastStatusChange"
{-# DEPRECATED aeLastStatusChange "Use generic-lens or generic-optics with 'lastStatusChange' instead." #-}

-- | The ARN of the user who last changed the pipeline.
--
-- /Note:/ Consider using 'lastUpdatedBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aeLastUpdatedBy :: Lens.Lens' ActionExecution (Core.Maybe Types.LastUpdatedBy)
aeLastUpdatedBy = Lens.field @"lastUpdatedBy"
{-# DEPRECATED aeLastUpdatedBy "Use generic-lens or generic-optics with 'lastUpdatedBy' instead." #-}

-- | A percentage of completeness of the action as it runs.
--
-- /Note:/ Consider using 'percentComplete' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aePercentComplete :: Lens.Lens' ActionExecution (Core.Maybe Core.Natural)
aePercentComplete = Lens.field @"percentComplete"
{-# DEPRECATED aePercentComplete "Use generic-lens or generic-optics with 'percentComplete' instead." #-}

-- | The status of the action, or for a completed action, the last status of the action.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aeStatus :: Lens.Lens' ActionExecution (Core.Maybe Types.ActionExecutionStatus)
aeStatus = Lens.field @"status"
{-# DEPRECATED aeStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | A summary of the run of the action.
--
-- /Note:/ Consider using 'summary' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aeSummary :: Lens.Lens' ActionExecution (Core.Maybe Types.Summary)
aeSummary = Lens.field @"summary"
{-# DEPRECATED aeSummary "Use generic-lens or generic-optics with 'summary' instead." #-}

-- | The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the @GetPipelineState@ command. It is used to validate that the approval request corresponding to this token is still valid.
--
-- /Note:/ Consider using 'token' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aeToken :: Lens.Lens' ActionExecution (Core.Maybe Types.Token)
aeToken = Lens.field @"token"
{-# DEPRECATED aeToken "Use generic-lens or generic-optics with 'token' instead." #-}

instance Core.FromJSON ActionExecution where
  parseJSON =
    Core.withObject "ActionExecution" Core.$
      \x ->
        ActionExecution'
          Core.<$> (x Core..:? "actionExecutionId")
          Core.<*> (x Core..:? "errorDetails")
          Core.<*> (x Core..:? "externalExecutionId")
          Core.<*> (x Core..:? "externalExecutionUrl")
          Core.<*> (x Core..:? "lastStatusChange")
          Core.<*> (x Core..:? "lastUpdatedBy")
          Core.<*> (x Core..:? "percentComplete")
          Core.<*> (x Core..:? "status")
          Core.<*> (x Core..:? "summary")
          Core.<*> (x Core..:? "token")