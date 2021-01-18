{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.GetSendQuota
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides the sending limits for the Amazon SES account.
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.GetSendQuota
  ( -- * Creating a request
    GetSendQuota (..),
    mkGetSendQuota,

    -- * Destructuring the response
    GetSendQuotaResponse (..),
    mkGetSendQuotaResponse,

    -- ** Response lenses
    gsqrrsMax24HourSend,
    gsqrrsMaxSendRate,
    gsqrrsSentLast24Hours,
    gsqrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | /See:/ 'mkGetSendQuota' smart constructor.
data GetSendQuota = GetSendQuota'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetSendQuota' value with any optional fields omitted.
mkGetSendQuota ::
  GetSendQuota
mkGetSendQuota = GetSendQuota'

instance Core.AWSRequest GetSendQuota where
  type Rs GetSendQuota = GetSendQuotaResponse
  request x@_ =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "GetSendQuota")
                Core.<> (Core.pure ("Version", "2010-12-01"))
            )
      }
  response =
    Response.receiveXMLWrapper
      "GetSendQuotaResult"
      ( \s h x ->
          GetSendQuotaResponse'
            Core.<$> (x Core..@? "Max24HourSend")
            Core.<*> (x Core..@? "MaxSendRate")
            Core.<*> (x Core..@? "SentLast24Hours")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents your Amazon SES daily sending quota, maximum send rate, and the number of emails you have sent in the last 24 hours.
--
-- /See:/ 'mkGetSendQuotaResponse' smart constructor.
data GetSendQuotaResponse = GetSendQuotaResponse'
  { -- | The maximum number of emails the user is allowed to send in a 24-hour interval. A value of -1 signifies an unlimited quota.
    max24HourSend :: Core.Maybe Core.Double,
    -- | The maximum number of emails that Amazon SES can accept from the user's account per second.
    maxSendRate :: Core.Maybe Core.Double,
    -- | The number of emails sent during the previous 24 hours.
    sentLast24Hours :: Core.Maybe Core.Double,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetSendQuotaResponse' value with any optional fields omitted.
mkGetSendQuotaResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetSendQuotaResponse
mkGetSendQuotaResponse responseStatus =
  GetSendQuotaResponse'
    { max24HourSend = Core.Nothing,
      maxSendRate = Core.Nothing,
      sentLast24Hours = Core.Nothing,
      responseStatus
    }

-- | The maximum number of emails the user is allowed to send in a 24-hour interval. A value of -1 signifies an unlimited quota.
--
-- /Note:/ Consider using 'max24HourSend' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsqrrsMax24HourSend :: Lens.Lens' GetSendQuotaResponse (Core.Maybe Core.Double)
gsqrrsMax24HourSend = Lens.field @"max24HourSend"
{-# DEPRECATED gsqrrsMax24HourSend "Use generic-lens or generic-optics with 'max24HourSend' instead." #-}

-- | The maximum number of emails that Amazon SES can accept from the user's account per second.
--
-- /Note:/ Consider using 'maxSendRate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsqrrsMaxSendRate :: Lens.Lens' GetSendQuotaResponse (Core.Maybe Core.Double)
gsqrrsMaxSendRate = Lens.field @"maxSendRate"
{-# DEPRECATED gsqrrsMaxSendRate "Use generic-lens or generic-optics with 'maxSendRate' instead." #-}

-- | The number of emails sent during the previous 24 hours.
--
-- /Note:/ Consider using 'sentLast24Hours' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsqrrsSentLast24Hours :: Lens.Lens' GetSendQuotaResponse (Core.Maybe Core.Double)
gsqrrsSentLast24Hours = Lens.field @"sentLast24Hours"
{-# DEPRECATED gsqrrsSentLast24Hours "Use generic-lens or generic-optics with 'sentLast24Hours' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsqrrsResponseStatus :: Lens.Lens' GetSendQuotaResponse Core.Int
gsqrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gsqrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}