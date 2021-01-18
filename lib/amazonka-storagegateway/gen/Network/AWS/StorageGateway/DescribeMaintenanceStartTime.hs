{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.DescribeMaintenanceStartTime
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns your gateway's weekly maintenance start time including the day and time of the week. Note that values are in terms of the gateway's time zone.
module Network.AWS.StorageGateway.DescribeMaintenanceStartTime
  ( -- * Creating a request
    DescribeMaintenanceStartTime (..),
    mkDescribeMaintenanceStartTime,

    -- ** Request lenses
    dmstGatewayARN,

    -- * Destructuring the response
    DescribeMaintenanceStartTimeResponse (..),
    mkDescribeMaintenanceStartTimeResponse,

    -- ** Response lenses
    dmstrrsDayOfMonth,
    dmstrrsDayOfWeek,
    dmstrrsGatewayARN,
    dmstrrsHourOfDay,
    dmstrrsMinuteOfHour,
    dmstrrsTimezone,
    dmstrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StorageGateway.Types as Types

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway.
--
-- /See:/ 'mkDescribeMaintenanceStartTime' smart constructor.
newtype DescribeMaintenanceStartTime = DescribeMaintenanceStartTime'
  { gatewayARN :: Types.GatewayARN
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeMaintenanceStartTime' value with any optional fields omitted.
mkDescribeMaintenanceStartTime ::
  -- | 'gatewayARN'
  Types.GatewayARN ->
  DescribeMaintenanceStartTime
mkDescribeMaintenanceStartTime gatewayARN =
  DescribeMaintenanceStartTime' {gatewayARN}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmstGatewayARN :: Lens.Lens' DescribeMaintenanceStartTime Types.GatewayARN
dmstGatewayARN = Lens.field @"gatewayARN"
{-# DEPRECATED dmstGatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead." #-}

instance Core.FromJSON DescribeMaintenanceStartTime where
  toJSON DescribeMaintenanceStartTime {..} =
    Core.object
      (Core.catMaybes [Core.Just ("GatewayARN" Core..= gatewayARN)])

instance Core.AWSRequest DescribeMaintenanceStartTime where
  type
    Rs DescribeMaintenanceStartTime =
      DescribeMaintenanceStartTimeResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "StorageGateway_20130630.DescribeMaintenanceStartTime"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeMaintenanceStartTimeResponse'
            Core.<$> (x Core..:? "DayOfMonth")
            Core.<*> (x Core..:? "DayOfWeek")
            Core.<*> (x Core..:? "GatewayARN")
            Core.<*> (x Core..:? "HourOfDay")
            Core.<*> (x Core..:? "MinuteOfHour")
            Core.<*> (x Core..:? "Timezone")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | A JSON object containing the following fields:
--
--
--     * 'DescribeMaintenanceStartTimeOutput$DayOfMonth'
--
--
--     * 'DescribeMaintenanceStartTimeOutput$DayOfWeek'
--
--
--     * 'DescribeMaintenanceStartTimeOutput$HourOfDay'
--
--
--     * 'DescribeMaintenanceStartTimeOutput$MinuteOfHour'
--
--
--     * 'DescribeMaintenanceStartTimeOutput$Timezone'
--
--
--
-- /See:/ 'mkDescribeMaintenanceStartTimeResponse' smart constructor.
data DescribeMaintenanceStartTimeResponse = DescribeMaintenanceStartTimeResponse'
  { -- | The day of the month component of the maintenance start time represented as an ordinal number from 1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month.
    dayOfMonth :: Core.Maybe Core.Natural,
    -- | An ordinal number between 0 and 6 that represents the day of the week, where 0 represents Sunday and 6 represents Saturday. The day of week is in the time zone of the gateway.
    dayOfWeek :: Core.Maybe Core.Natural,
    gatewayARN :: Core.Maybe Types.GatewayARN,
    -- | The hour component of the maintenance start time represented as /hh/ , where /hh/ is the hour (0 to 23). The hour of the day is in the time zone of the gateway.
    hourOfDay :: Core.Maybe Core.Natural,
    -- | The minute component of the maintenance start time represented as /mm/ , where /mm/ is the minute (0 to 59). The minute of the hour is in the time zone of the gateway.
    minuteOfHour :: Core.Maybe Core.Natural,
    -- | A value that indicates the time zone that is set for the gateway. The start time and day of week specified should be in the time zone of the gateway.
    timezone :: Core.Maybe Types.Timezone,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeMaintenanceStartTimeResponse' value with any optional fields omitted.
mkDescribeMaintenanceStartTimeResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeMaintenanceStartTimeResponse
mkDescribeMaintenanceStartTimeResponse responseStatus =
  DescribeMaintenanceStartTimeResponse'
    { dayOfMonth = Core.Nothing,
      dayOfWeek = Core.Nothing,
      gatewayARN = Core.Nothing,
      hourOfDay = Core.Nothing,
      minuteOfHour = Core.Nothing,
      timezone = Core.Nothing,
      responseStatus
    }

-- | The day of the month component of the maintenance start time represented as an ordinal number from 1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month.
--
-- /Note:/ Consider using 'dayOfMonth' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmstrrsDayOfMonth :: Lens.Lens' DescribeMaintenanceStartTimeResponse (Core.Maybe Core.Natural)
dmstrrsDayOfMonth = Lens.field @"dayOfMonth"
{-# DEPRECATED dmstrrsDayOfMonth "Use generic-lens or generic-optics with 'dayOfMonth' instead." #-}

-- | An ordinal number between 0 and 6 that represents the day of the week, where 0 represents Sunday and 6 represents Saturday. The day of week is in the time zone of the gateway.
--
-- /Note:/ Consider using 'dayOfWeek' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmstrrsDayOfWeek :: Lens.Lens' DescribeMaintenanceStartTimeResponse (Core.Maybe Core.Natural)
dmstrrsDayOfWeek = Lens.field @"dayOfWeek"
{-# DEPRECATED dmstrrsDayOfWeek "Use generic-lens or generic-optics with 'dayOfWeek' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmstrrsGatewayARN :: Lens.Lens' DescribeMaintenanceStartTimeResponse (Core.Maybe Types.GatewayARN)
dmstrrsGatewayARN = Lens.field @"gatewayARN"
{-# DEPRECATED dmstrrsGatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead." #-}

-- | The hour component of the maintenance start time represented as /hh/ , where /hh/ is the hour (0 to 23). The hour of the day is in the time zone of the gateway.
--
-- /Note:/ Consider using 'hourOfDay' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmstrrsHourOfDay :: Lens.Lens' DescribeMaintenanceStartTimeResponse (Core.Maybe Core.Natural)
dmstrrsHourOfDay = Lens.field @"hourOfDay"
{-# DEPRECATED dmstrrsHourOfDay "Use generic-lens or generic-optics with 'hourOfDay' instead." #-}

-- | The minute component of the maintenance start time represented as /mm/ , where /mm/ is the minute (0 to 59). The minute of the hour is in the time zone of the gateway.
--
-- /Note:/ Consider using 'minuteOfHour' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmstrrsMinuteOfHour :: Lens.Lens' DescribeMaintenanceStartTimeResponse (Core.Maybe Core.Natural)
dmstrrsMinuteOfHour = Lens.field @"minuteOfHour"
{-# DEPRECATED dmstrrsMinuteOfHour "Use generic-lens or generic-optics with 'minuteOfHour' instead." #-}

-- | A value that indicates the time zone that is set for the gateway. The start time and day of week specified should be in the time zone of the gateway.
--
-- /Note:/ Consider using 'timezone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmstrrsTimezone :: Lens.Lens' DescribeMaintenanceStartTimeResponse (Core.Maybe Types.Timezone)
dmstrrsTimezone = Lens.field @"timezone"
{-# DEPRECATED dmstrrsTimezone "Use generic-lens or generic-optics with 'timezone' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmstrrsResponseStatus :: Lens.Lens' DescribeMaintenanceStartTimeResponse Core.Int
dmstrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dmstrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}