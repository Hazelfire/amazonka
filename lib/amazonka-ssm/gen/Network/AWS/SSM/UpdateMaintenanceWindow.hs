{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.UpdateMaintenanceWindow
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing maintenance window. Only specified parameters are modified.
module Network.AWS.SSM.UpdateMaintenanceWindow
  ( -- * Creating a request
    UpdateMaintenanceWindow (..),
    mkUpdateMaintenanceWindow,

    -- ** Request lenses
    umwWindowId,
    umwAllowUnassociatedTargets,
    umwCutoff,
    umwDescription,
    umwDuration,
    umwEnabled,
    umwEndDate,
    umwName,
    umwReplace,
    umwSchedule,
    umwScheduleOffset,
    umwScheduleTimezone,
    umwStartDate,

    -- * Destructuring the response
    UpdateMaintenanceWindowResponse (..),
    mkUpdateMaintenanceWindowResponse,

    -- ** Response lenses
    umwrrsAllowUnassociatedTargets,
    umwrrsCutoff,
    umwrrsDescription,
    umwrrsDuration,
    umwrrsEnabled,
    umwrrsEndDate,
    umwrrsName,
    umwrrsSchedule,
    umwrrsScheduleOffset,
    umwrrsScheduleTimezone,
    umwrrsStartDate,
    umwrrsWindowId,
    umwrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkUpdateMaintenanceWindow' smart constructor.
data UpdateMaintenanceWindow = UpdateMaintenanceWindow'
  { -- | The ID of the maintenance window to update.
    windowId :: Types.MaintenanceWindowId,
    -- | Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
    allowUnassociatedTargets :: Core.Maybe Core.Bool,
    -- | The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
    cutoff :: Core.Maybe Core.Natural,
    -- | An optional description for the update request.
    description :: Core.Maybe Types.MaintenanceWindowDescription,
    -- | The duration of the maintenance window in hours.
    duration :: Core.Maybe Core.Natural,
    -- | Whether the maintenance window is enabled.
    enabled :: Core.Maybe Core.Bool,
    -- | The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.
    endDate :: Core.Maybe Types.MaintenanceWindowStringDateTime,
    -- | The name of the maintenance window.
    name :: Core.Maybe Types.MaintenanceWindowName,
    -- | If True, then all fields that are required by the CreateMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
    replace :: Core.Maybe Core.Bool,
    -- | The schedule of the maintenance window in the form of a cron or rate expression.
    schedule :: Core.Maybe Types.MaintenanceWindowSchedule,
    -- | The number of days to wait after the date and time specified by a CRON expression before running the maintenance window.
    --
    -- For example, the following cron expression schedules a maintenance window to run the third Tuesday of every month at 11:30 PM.
    -- @cron(0 30 23 ? * TUE#3 *)@
    -- If the schedule offset is @2@ , the maintenance window won't run until two days later.
    scheduleOffset :: Core.Maybe Core.Natural,
    -- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "etc/UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
    scheduleTimezone :: Core.Maybe Types.MaintenanceWindowTimezone,
    -- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "etc/UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
    startDate :: Core.Maybe Types.MaintenanceWindowStringDateTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateMaintenanceWindow' value with any optional fields omitted.
mkUpdateMaintenanceWindow ::
  -- | 'windowId'
  Types.MaintenanceWindowId ->
  UpdateMaintenanceWindow
mkUpdateMaintenanceWindow windowId =
  UpdateMaintenanceWindow'
    { windowId,
      allowUnassociatedTargets = Core.Nothing,
      cutoff = Core.Nothing,
      description = Core.Nothing,
      duration = Core.Nothing,
      enabled = Core.Nothing,
      endDate = Core.Nothing,
      name = Core.Nothing,
      replace = Core.Nothing,
      schedule = Core.Nothing,
      scheduleOffset = Core.Nothing,
      scheduleTimezone = Core.Nothing,
      startDate = Core.Nothing
    }

-- | The ID of the maintenance window to update.
--
-- /Note:/ Consider using 'windowId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwWindowId :: Lens.Lens' UpdateMaintenanceWindow Types.MaintenanceWindowId
umwWindowId = Lens.field @"windowId"
{-# DEPRECATED umwWindowId "Use generic-lens or generic-optics with 'windowId' instead." #-}

-- | Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
--
-- /Note:/ Consider using 'allowUnassociatedTargets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwAllowUnassociatedTargets :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Core.Bool)
umwAllowUnassociatedTargets = Lens.field @"allowUnassociatedTargets"
{-# DEPRECATED umwAllowUnassociatedTargets "Use generic-lens or generic-optics with 'allowUnassociatedTargets' instead." #-}

-- | The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
--
-- /Note:/ Consider using 'cutoff' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwCutoff :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Core.Natural)
umwCutoff = Lens.field @"cutoff"
{-# DEPRECATED umwCutoff "Use generic-lens or generic-optics with 'cutoff' instead." #-}

-- | An optional description for the update request.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwDescription :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Types.MaintenanceWindowDescription)
umwDescription = Lens.field @"description"
{-# DEPRECATED umwDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The duration of the maintenance window in hours.
--
-- /Note:/ Consider using 'duration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwDuration :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Core.Natural)
umwDuration = Lens.field @"duration"
{-# DEPRECATED umwDuration "Use generic-lens or generic-optics with 'duration' instead." #-}

-- | Whether the maintenance window is enabled.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwEnabled :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Core.Bool)
umwEnabled = Lens.field @"enabled"
{-# DEPRECATED umwEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

-- | The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.
--
-- /Note:/ Consider using 'endDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwEndDate :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Types.MaintenanceWindowStringDateTime)
umwEndDate = Lens.field @"endDate"
{-# DEPRECATED umwEndDate "Use generic-lens or generic-optics with 'endDate' instead." #-}

-- | The name of the maintenance window.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwName :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Types.MaintenanceWindowName)
umwName = Lens.field @"name"
{-# DEPRECATED umwName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | If True, then all fields that are required by the CreateMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
--
-- /Note:/ Consider using 'replace' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwReplace :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Core.Bool)
umwReplace = Lens.field @"replace"
{-# DEPRECATED umwReplace "Use generic-lens or generic-optics with 'replace' instead." #-}

-- | The schedule of the maintenance window in the form of a cron or rate expression.
--
-- /Note:/ Consider using 'schedule' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwSchedule :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Types.MaintenanceWindowSchedule)
umwSchedule = Lens.field @"schedule"
{-# DEPRECATED umwSchedule "Use generic-lens or generic-optics with 'schedule' instead." #-}

-- | The number of days to wait after the date and time specified by a CRON expression before running the maintenance window.
--
-- For example, the following cron expression schedules a maintenance window to run the third Tuesday of every month at 11:30 PM.
-- @cron(0 30 23 ? * TUE#3 *)@
-- If the schedule offset is @2@ , the maintenance window won't run until two days later.
--
-- /Note:/ Consider using 'scheduleOffset' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwScheduleOffset :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Core.Natural)
umwScheduleOffset = Lens.field @"scheduleOffset"
{-# DEPRECATED umwScheduleOffset "Use generic-lens or generic-optics with 'scheduleOffset' instead." #-}

-- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "etc/UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
--
-- /Note:/ Consider using 'scheduleTimezone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwScheduleTimezone :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Types.MaintenanceWindowTimezone)
umwScheduleTimezone = Lens.field @"scheduleTimezone"
{-# DEPRECATED umwScheduleTimezone "Use generic-lens or generic-optics with 'scheduleTimezone' instead." #-}

-- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "etc/UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
--
-- /Note:/ Consider using 'startDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwStartDate :: Lens.Lens' UpdateMaintenanceWindow (Core.Maybe Types.MaintenanceWindowStringDateTime)
umwStartDate = Lens.field @"startDate"
{-# DEPRECATED umwStartDate "Use generic-lens or generic-optics with 'startDate' instead." #-}

instance Core.FromJSON UpdateMaintenanceWindow where
  toJSON UpdateMaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("WindowId" Core..= windowId),
            ("AllowUnassociatedTargets" Core..=)
              Core.<$> allowUnassociatedTargets,
            ("Cutoff" Core..=) Core.<$> cutoff,
            ("Description" Core..=) Core.<$> description,
            ("Duration" Core..=) Core.<$> duration,
            ("Enabled" Core..=) Core.<$> enabled,
            ("EndDate" Core..=) Core.<$> endDate,
            ("Name" Core..=) Core.<$> name,
            ("Replace" Core..=) Core.<$> replace,
            ("Schedule" Core..=) Core.<$> schedule,
            ("ScheduleOffset" Core..=) Core.<$> scheduleOffset,
            ("ScheduleTimezone" Core..=) Core.<$> scheduleTimezone,
            ("StartDate" Core..=) Core.<$> startDate
          ]
      )

instance Core.AWSRequest UpdateMaintenanceWindow where
  type Rs UpdateMaintenanceWindow = UpdateMaintenanceWindowResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AmazonSSM.UpdateMaintenanceWindow")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateMaintenanceWindowResponse'
            Core.<$> (x Core..:? "AllowUnassociatedTargets")
            Core.<*> (x Core..:? "Cutoff")
            Core.<*> (x Core..:? "Description")
            Core.<*> (x Core..:? "Duration")
            Core.<*> (x Core..:? "Enabled")
            Core.<*> (x Core..:? "EndDate")
            Core.<*> (x Core..:? "Name")
            Core.<*> (x Core..:? "Schedule")
            Core.<*> (x Core..:? "ScheduleOffset")
            Core.<*> (x Core..:? "ScheduleTimezone")
            Core.<*> (x Core..:? "StartDate")
            Core.<*> (x Core..:? "WindowId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateMaintenanceWindowResponse' smart constructor.
data UpdateMaintenanceWindowResponse = UpdateMaintenanceWindowResponse'
  { -- | Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
    allowUnassociatedTargets :: Core.Maybe Core.Bool,
    -- | The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
    cutoff :: Core.Maybe Core.Natural,
    -- | An optional description of the update.
    description :: Core.Maybe Types.Description,
    -- | The duration of the maintenance window in hours.
    duration :: Core.Maybe Core.Natural,
    -- | Whether the maintenance window is enabled.
    enabled :: Core.Maybe Core.Bool,
    -- | The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become inactive. The maintenance window will not run after this specified time.
    endDate :: Core.Maybe Types.EndDate,
    -- | The name of the maintenance window.
    name :: Core.Maybe Types.MaintenanceWindowName,
    -- | The schedule of the maintenance window in the form of a cron or rate expression.
    schedule :: Core.Maybe Types.MaintenanceWindowSchedule,
    -- | The number of days to wait to run a maintenance window after the scheduled CRON expression date and time.
    scheduleOffset :: Core.Maybe Core.Natural,
    -- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "etc/UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
    scheduleTimezone :: Core.Maybe Types.ScheduleTimezone,
    -- | The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become active. The maintenance window will not run before this specified time.
    startDate :: Core.Maybe Types.StartDate,
    -- | The ID of the created maintenance window.
    windowId :: Core.Maybe Types.WindowId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateMaintenanceWindowResponse' value with any optional fields omitted.
mkUpdateMaintenanceWindowResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateMaintenanceWindowResponse
mkUpdateMaintenanceWindowResponse responseStatus =
  UpdateMaintenanceWindowResponse'
    { allowUnassociatedTargets =
        Core.Nothing,
      cutoff = Core.Nothing,
      description = Core.Nothing,
      duration = Core.Nothing,
      enabled = Core.Nothing,
      endDate = Core.Nothing,
      name = Core.Nothing,
      schedule = Core.Nothing,
      scheduleOffset = Core.Nothing,
      scheduleTimezone = Core.Nothing,
      startDate = Core.Nothing,
      windowId = Core.Nothing,
      responseStatus
    }

-- | Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
--
-- /Note:/ Consider using 'allowUnassociatedTargets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsAllowUnassociatedTargets :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Core.Bool)
umwrrsAllowUnassociatedTargets = Lens.field @"allowUnassociatedTargets"
{-# DEPRECATED umwrrsAllowUnassociatedTargets "Use generic-lens or generic-optics with 'allowUnassociatedTargets' instead." #-}

-- | The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
--
-- /Note:/ Consider using 'cutoff' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsCutoff :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Core.Natural)
umwrrsCutoff = Lens.field @"cutoff"
{-# DEPRECATED umwrrsCutoff "Use generic-lens or generic-optics with 'cutoff' instead." #-}

-- | An optional description of the update.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsDescription :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Types.Description)
umwrrsDescription = Lens.field @"description"
{-# DEPRECATED umwrrsDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The duration of the maintenance window in hours.
--
-- /Note:/ Consider using 'duration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsDuration :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Core.Natural)
umwrrsDuration = Lens.field @"duration"
{-# DEPRECATED umwrrsDuration "Use generic-lens or generic-optics with 'duration' instead." #-}

-- | Whether the maintenance window is enabled.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsEnabled :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Core.Bool)
umwrrsEnabled = Lens.field @"enabled"
{-# DEPRECATED umwrrsEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

-- | The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become inactive. The maintenance window will not run after this specified time.
--
-- /Note:/ Consider using 'endDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsEndDate :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Types.EndDate)
umwrrsEndDate = Lens.field @"endDate"
{-# DEPRECATED umwrrsEndDate "Use generic-lens or generic-optics with 'endDate' instead." #-}

-- | The name of the maintenance window.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsName :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Types.MaintenanceWindowName)
umwrrsName = Lens.field @"name"
{-# DEPRECATED umwrrsName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The schedule of the maintenance window in the form of a cron or rate expression.
--
-- /Note:/ Consider using 'schedule' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsSchedule :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Types.MaintenanceWindowSchedule)
umwrrsSchedule = Lens.field @"schedule"
{-# DEPRECATED umwrrsSchedule "Use generic-lens or generic-optics with 'schedule' instead." #-}

-- | The number of days to wait to run a maintenance window after the scheduled CRON expression date and time.
--
-- /Note:/ Consider using 'scheduleOffset' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsScheduleOffset :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Core.Natural)
umwrrsScheduleOffset = Lens.field @"scheduleOffset"
{-# DEPRECATED umwrrsScheduleOffset "Use generic-lens or generic-optics with 'scheduleOffset' instead." #-}

-- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "etc/UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
--
-- /Note:/ Consider using 'scheduleTimezone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsScheduleTimezone :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Types.ScheduleTimezone)
umwrrsScheduleTimezone = Lens.field @"scheduleTimezone"
{-# DEPRECATED umwrrsScheduleTimezone "Use generic-lens or generic-optics with 'scheduleTimezone' instead." #-}

-- | The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become active. The maintenance window will not run before this specified time.
--
-- /Note:/ Consider using 'startDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsStartDate :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Types.StartDate)
umwrrsStartDate = Lens.field @"startDate"
{-# DEPRECATED umwrrsStartDate "Use generic-lens or generic-optics with 'startDate' instead." #-}

-- | The ID of the created maintenance window.
--
-- /Note:/ Consider using 'windowId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsWindowId :: Lens.Lens' UpdateMaintenanceWindowResponse (Core.Maybe Types.WindowId)
umwrrsWindowId = Lens.field @"windowId"
{-# DEPRECATED umwrrsWindowId "Use generic-lens or generic-optics with 'windowId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umwrrsResponseStatus :: Lens.Lens' UpdateMaintenanceWindowResponse Core.Int
umwrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED umwrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}