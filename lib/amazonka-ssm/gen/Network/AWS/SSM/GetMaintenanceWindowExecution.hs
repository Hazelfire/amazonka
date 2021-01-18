{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.GetMaintenanceWindowExecution
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about a specific a maintenance window execution.
module Network.AWS.SSM.GetMaintenanceWindowExecution
  ( -- * Creating a request
    GetMaintenanceWindowExecution (..),
    mkGetMaintenanceWindowExecution,

    -- ** Request lenses
    gmweWindowExecutionId,

    -- * Destructuring the response
    GetMaintenanceWindowExecutionResponse (..),
    mkGetMaintenanceWindowExecutionResponse,

    -- ** Response lenses
    gmwerrsEndTime,
    gmwerrsStartTime,
    gmwerrsStatus,
    gmwerrsStatusDetails,
    gmwerrsTaskIds,
    gmwerrsWindowExecutionId,
    gmwerrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkGetMaintenanceWindowExecution' smart constructor.
newtype GetMaintenanceWindowExecution = GetMaintenanceWindowExecution'
  { -- | The ID of the maintenance window execution that includes the task.
    windowExecutionId :: Types.MaintenanceWindowExecutionId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetMaintenanceWindowExecution' value with any optional fields omitted.
mkGetMaintenanceWindowExecution ::
  -- | 'windowExecutionId'
  Types.MaintenanceWindowExecutionId ->
  GetMaintenanceWindowExecution
mkGetMaintenanceWindowExecution windowExecutionId =
  GetMaintenanceWindowExecution' {windowExecutionId}

-- | The ID of the maintenance window execution that includes the task.
--
-- /Note:/ Consider using 'windowExecutionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmweWindowExecutionId :: Lens.Lens' GetMaintenanceWindowExecution Types.MaintenanceWindowExecutionId
gmweWindowExecutionId = Lens.field @"windowExecutionId"
{-# DEPRECATED gmweWindowExecutionId "Use generic-lens or generic-optics with 'windowExecutionId' instead." #-}

instance Core.FromJSON GetMaintenanceWindowExecution where
  toJSON GetMaintenanceWindowExecution {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("WindowExecutionId" Core..= windowExecutionId)]
      )

instance Core.AWSRequest GetMaintenanceWindowExecution where
  type
    Rs GetMaintenanceWindowExecution =
      GetMaintenanceWindowExecutionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AmazonSSM.GetMaintenanceWindowExecution")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMaintenanceWindowExecutionResponse'
            Core.<$> (x Core..:? "EndTime")
            Core.<*> (x Core..:? "StartTime")
            Core.<*> (x Core..:? "Status")
            Core.<*> (x Core..:? "StatusDetails")
            Core.<*> (x Core..:? "TaskIds")
            Core.<*> (x Core..:? "WindowExecutionId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetMaintenanceWindowExecutionResponse' smart constructor.
data GetMaintenanceWindowExecutionResponse = GetMaintenanceWindowExecutionResponse'
  { -- | The time the maintenance window finished running.
    endTime :: Core.Maybe Core.NominalDiffTime,
    -- | The time the maintenance window started running.
    startTime :: Core.Maybe Core.NominalDiffTime,
    -- | The status of the maintenance window execution.
    status :: Core.Maybe Types.MaintenanceWindowExecutionStatus,
    -- | The details explaining the Status. Only available for certain status values.
    statusDetails :: Core.Maybe Types.MaintenanceWindowExecutionStatusDetails,
    -- | The ID of the task executions from the maintenance window execution.
    taskIds :: Core.Maybe [Types.MaintenanceWindowExecutionTaskId],
    -- | The ID of the maintenance window execution.
    windowExecutionId :: Core.Maybe Types.MaintenanceWindowExecutionId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetMaintenanceWindowExecutionResponse' value with any optional fields omitted.
mkGetMaintenanceWindowExecutionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetMaintenanceWindowExecutionResponse
mkGetMaintenanceWindowExecutionResponse responseStatus =
  GetMaintenanceWindowExecutionResponse'
    { endTime = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      statusDetails = Core.Nothing,
      taskIds = Core.Nothing,
      windowExecutionId = Core.Nothing,
      responseStatus
    }

-- | The time the maintenance window finished running.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmwerrsEndTime :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Core.Maybe Core.NominalDiffTime)
gmwerrsEndTime = Lens.field @"endTime"
{-# DEPRECATED gmwerrsEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The time the maintenance window started running.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmwerrsStartTime :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Core.Maybe Core.NominalDiffTime)
gmwerrsStartTime = Lens.field @"startTime"
{-# DEPRECATED gmwerrsStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The status of the maintenance window execution.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmwerrsStatus :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Core.Maybe Types.MaintenanceWindowExecutionStatus)
gmwerrsStatus = Lens.field @"status"
{-# DEPRECATED gmwerrsStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The details explaining the Status. Only available for certain status values.
--
-- /Note:/ Consider using 'statusDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmwerrsStatusDetails :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Core.Maybe Types.MaintenanceWindowExecutionStatusDetails)
gmwerrsStatusDetails = Lens.field @"statusDetails"
{-# DEPRECATED gmwerrsStatusDetails "Use generic-lens or generic-optics with 'statusDetails' instead." #-}

-- | The ID of the task executions from the maintenance window execution.
--
-- /Note:/ Consider using 'taskIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmwerrsTaskIds :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Core.Maybe [Types.MaintenanceWindowExecutionTaskId])
gmwerrsTaskIds = Lens.field @"taskIds"
{-# DEPRECATED gmwerrsTaskIds "Use generic-lens or generic-optics with 'taskIds' instead." #-}

-- | The ID of the maintenance window execution.
--
-- /Note:/ Consider using 'windowExecutionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmwerrsWindowExecutionId :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Core.Maybe Types.MaintenanceWindowExecutionId)
gmwerrsWindowExecutionId = Lens.field @"windowExecutionId"
{-# DEPRECATED gmwerrsWindowExecutionId "Use generic-lens or generic-optics with 'windowExecutionId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmwerrsResponseStatus :: Lens.Lens' GetMaintenanceWindowExecutionResponse Core.Int
gmwerrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gmwerrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}