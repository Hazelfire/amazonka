{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.StopAutomationExecution
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop an Automation that is currently running.
module Network.AWS.SSM.StopAutomationExecution
  ( -- * Creating a request
    StopAutomationExecution (..),
    mkStopAutomationExecution,

    -- ** Request lenses
    saeAutomationExecutionId,
    saeType,

    -- * Destructuring the response
    StopAutomationExecutionResponse (..),
    mkStopAutomationExecutionResponse,

    -- ** Response lenses
    srsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkStopAutomationExecution' smart constructor.
data StopAutomationExecution = StopAutomationExecution'
  { -- | The execution ID of the Automation to stop.
    automationExecutionId :: Types.AutomationExecutionId,
    -- | The stop request type. Valid types include the following: Cancel and Complete. The default type is Cancel.
    type' :: Core.Maybe Types.StopType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StopAutomationExecution' value with any optional fields omitted.
mkStopAutomationExecution ::
  -- | 'automationExecutionId'
  Types.AutomationExecutionId ->
  StopAutomationExecution
mkStopAutomationExecution automationExecutionId =
  StopAutomationExecution'
    { automationExecutionId,
      type' = Core.Nothing
    }

-- | The execution ID of the Automation to stop.
--
-- /Note:/ Consider using 'automationExecutionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saeAutomationExecutionId :: Lens.Lens' StopAutomationExecution Types.AutomationExecutionId
saeAutomationExecutionId = Lens.field @"automationExecutionId"
{-# DEPRECATED saeAutomationExecutionId "Use generic-lens or generic-optics with 'automationExecutionId' instead." #-}

-- | The stop request type. Valid types include the following: Cancel and Complete. The default type is Cancel.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saeType :: Lens.Lens' StopAutomationExecution (Core.Maybe Types.StopType)
saeType = Lens.field @"type'"
{-# DEPRECATED saeType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.FromJSON StopAutomationExecution where
  toJSON StopAutomationExecution {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("AutomationExecutionId" Core..= automationExecutionId),
            ("Type" Core..=) Core.<$> type'
          ]
      )

instance Core.AWSRequest StopAutomationExecution where
  type Rs StopAutomationExecution = StopAutomationExecutionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AmazonSSM.StopAutomationExecution")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          StopAutomationExecutionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkStopAutomationExecutionResponse' smart constructor.
newtype StopAutomationExecutionResponse = StopAutomationExecutionResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopAutomationExecutionResponse' value with any optional fields omitted.
mkStopAutomationExecutionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  StopAutomationExecutionResponse
mkStopAutomationExecutionResponse responseStatus =
  StopAutomationExecutionResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsResponseStatus :: Lens.Lens' StopAutomationExecutionResponse Core.Int
srsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED srsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}