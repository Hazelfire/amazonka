{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DescribeScheduledAudit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a scheduled audit.
module Network.AWS.IoT.DescribeScheduledAudit
  ( -- * Creating a request
    DescribeScheduledAudit (..),
    mkDescribeScheduledAudit,

    -- ** Request lenses
    dScheduledAuditName,

    -- * Destructuring the response
    DescribeScheduledAuditResponse (..),
    mkDescribeScheduledAuditResponse,

    -- ** Response lenses
    dsarrsDayOfMonth,
    dsarrsDayOfWeek,
    dsarrsFrequency,
    dsarrsScheduledAuditArn,
    dsarrsScheduledAuditName,
    dsarrsTargetCheckNames,
    dsarrsResponseStatus,
  )
where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeScheduledAudit' smart constructor.
newtype DescribeScheduledAudit = DescribeScheduledAudit'
  { -- | The name of the scheduled audit whose information you want to get.
    scheduledAuditName :: Types.ScheduledAuditName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeScheduledAudit' value with any optional fields omitted.
mkDescribeScheduledAudit ::
  -- | 'scheduledAuditName'
  Types.ScheduledAuditName ->
  DescribeScheduledAudit
mkDescribeScheduledAudit scheduledAuditName =
  DescribeScheduledAudit' {scheduledAuditName}

-- | The name of the scheduled audit whose information you want to get.
--
-- /Note:/ Consider using 'scheduledAuditName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dScheduledAuditName :: Lens.Lens' DescribeScheduledAudit Types.ScheduledAuditName
dScheduledAuditName = Lens.field @"scheduledAuditName"
{-# DEPRECATED dScheduledAuditName "Use generic-lens or generic-optics with 'scheduledAuditName' instead." #-}

instance Core.AWSRequest DescribeScheduledAudit where
  type Rs DescribeScheduledAudit = DescribeScheduledAuditResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/audit/scheduledaudits/"
                Core.<> (Core.toText scheduledAuditName)
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeScheduledAuditResponse'
            Core.<$> (x Core..:? "dayOfMonth")
            Core.<*> (x Core..:? "dayOfWeek")
            Core.<*> (x Core..:? "frequency")
            Core.<*> (x Core..:? "scheduledAuditArn")
            Core.<*> (x Core..:? "scheduledAuditName")
            Core.<*> (x Core..:? "targetCheckNames")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDescribeScheduledAuditResponse' smart constructor.
data DescribeScheduledAuditResponse = DescribeScheduledAuditResponse'
  { -- | The day of the month on which the scheduled audit takes place. Will be "1" through "31" or "LAST". If days 29-31 are specified, and the month does not have that many days, the audit takes place on the "LAST" day of the month.
    dayOfMonth :: Core.Maybe Types.DayOfMonth,
    -- | The day of the week on which the scheduled audit takes place. One of "SUN", "MON", "TUE", "WED", "THU", "FRI", or "SAT".
    dayOfWeek :: Core.Maybe Types.DayOfWeek,
    -- | How often the scheduled audit takes place. One of "DAILY", "WEEKLY", "BIWEEKLY", or "MONTHLY". The start time of each audit is determined by the system.
    frequency :: Core.Maybe Types.AuditFrequency,
    -- | The ARN of the scheduled audit.
    scheduledAuditArn :: Core.Maybe Types.ScheduledAuditArn,
    -- | The name of the scheduled audit.
    scheduledAuditName :: Core.Maybe Types.ScheduledAuditName,
    -- | Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use @DescribeAccountAuditConfiguration@ to see the list of all checks, including those that are enabled or use @UpdateAccountAuditConfiguration@ to select which checks are enabled.)
    targetCheckNames :: Core.Maybe [Types.AuditCheckName],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeScheduledAuditResponse' value with any optional fields omitted.
mkDescribeScheduledAuditResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeScheduledAuditResponse
mkDescribeScheduledAuditResponse responseStatus =
  DescribeScheduledAuditResponse'
    { dayOfMonth = Core.Nothing,
      dayOfWeek = Core.Nothing,
      frequency = Core.Nothing,
      scheduledAuditArn = Core.Nothing,
      scheduledAuditName = Core.Nothing,
      targetCheckNames = Core.Nothing,
      responseStatus
    }

-- | The day of the month on which the scheduled audit takes place. Will be "1" through "31" or "LAST". If days 29-31 are specified, and the month does not have that many days, the audit takes place on the "LAST" day of the month.
--
-- /Note:/ Consider using 'dayOfMonth' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsarrsDayOfMonth :: Lens.Lens' DescribeScheduledAuditResponse (Core.Maybe Types.DayOfMonth)
dsarrsDayOfMonth = Lens.field @"dayOfMonth"
{-# DEPRECATED dsarrsDayOfMonth "Use generic-lens or generic-optics with 'dayOfMonth' instead." #-}

-- | The day of the week on which the scheduled audit takes place. One of "SUN", "MON", "TUE", "WED", "THU", "FRI", or "SAT".
--
-- /Note:/ Consider using 'dayOfWeek' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsarrsDayOfWeek :: Lens.Lens' DescribeScheduledAuditResponse (Core.Maybe Types.DayOfWeek)
dsarrsDayOfWeek = Lens.field @"dayOfWeek"
{-# DEPRECATED dsarrsDayOfWeek "Use generic-lens or generic-optics with 'dayOfWeek' instead." #-}

-- | How often the scheduled audit takes place. One of "DAILY", "WEEKLY", "BIWEEKLY", or "MONTHLY". The start time of each audit is determined by the system.
--
-- /Note:/ Consider using 'frequency' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsarrsFrequency :: Lens.Lens' DescribeScheduledAuditResponse (Core.Maybe Types.AuditFrequency)
dsarrsFrequency = Lens.field @"frequency"
{-# DEPRECATED dsarrsFrequency "Use generic-lens or generic-optics with 'frequency' instead." #-}

-- | The ARN of the scheduled audit.
--
-- /Note:/ Consider using 'scheduledAuditArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsarrsScheduledAuditArn :: Lens.Lens' DescribeScheduledAuditResponse (Core.Maybe Types.ScheduledAuditArn)
dsarrsScheduledAuditArn = Lens.field @"scheduledAuditArn"
{-# DEPRECATED dsarrsScheduledAuditArn "Use generic-lens or generic-optics with 'scheduledAuditArn' instead." #-}

-- | The name of the scheduled audit.
--
-- /Note:/ Consider using 'scheduledAuditName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsarrsScheduledAuditName :: Lens.Lens' DescribeScheduledAuditResponse (Core.Maybe Types.ScheduledAuditName)
dsarrsScheduledAuditName = Lens.field @"scheduledAuditName"
{-# DEPRECATED dsarrsScheduledAuditName "Use generic-lens or generic-optics with 'scheduledAuditName' instead." #-}

-- | Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use @DescribeAccountAuditConfiguration@ to see the list of all checks, including those that are enabled or use @UpdateAccountAuditConfiguration@ to select which checks are enabled.)
--
-- /Note:/ Consider using 'targetCheckNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsarrsTargetCheckNames :: Lens.Lens' DescribeScheduledAuditResponse (Core.Maybe [Types.AuditCheckName])
dsarrsTargetCheckNames = Lens.field @"targetCheckNames"
{-# DEPRECATED dsarrsTargetCheckNames "Use generic-lens or generic-optics with 'targetCheckNames' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsarrsResponseStatus :: Lens.Lens' DescribeScheduledAuditResponse Core.Int
dsarrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dsarrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}