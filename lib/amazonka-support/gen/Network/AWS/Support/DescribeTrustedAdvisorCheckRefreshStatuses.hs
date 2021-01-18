{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.DescribeTrustedAdvisorCheckRefreshStatuses
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the refresh status of the AWS Trusted Advisor checks that have the specified check IDs. You can get the check IDs by calling the 'DescribeTrustedAdvisorChecks' operation.
--
-- Some checks are refreshed automatically, and you can't return their refresh statuses by using the @DescribeTrustedAdvisorCheckRefreshStatuses@ operation. If you call this operation for these checks, you might see an @InvalidParameterValue@ error.
module Network.AWS.Support.DescribeTrustedAdvisorCheckRefreshStatuses
  ( -- * Creating a request
    DescribeTrustedAdvisorCheckRefreshStatuses (..),
    mkDescribeTrustedAdvisorCheckRefreshStatuses,

    -- ** Request lenses
    dtacrsCheckIds,

    -- * Destructuring the response
    DescribeTrustedAdvisorCheckRefreshStatusesResponse (..),
    mkDescribeTrustedAdvisorCheckRefreshStatusesResponse,

    -- ** Response lenses
    dtacrsrrsStatuses,
    dtacrsrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Support.Types as Types

-- | /See:/ 'mkDescribeTrustedAdvisorCheckRefreshStatuses' smart constructor.
newtype DescribeTrustedAdvisorCheckRefreshStatuses = DescribeTrustedAdvisorCheckRefreshStatuses'
  { -- | The IDs of the Trusted Advisor checks to get the status of.
    checkIds :: [Types.String]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeTrustedAdvisorCheckRefreshStatuses' value with any optional fields omitted.
mkDescribeTrustedAdvisorCheckRefreshStatuses ::
  DescribeTrustedAdvisorCheckRefreshStatuses
mkDescribeTrustedAdvisorCheckRefreshStatuses =
  DescribeTrustedAdvisorCheckRefreshStatuses'
    { checkIds =
        Core.mempty
    }

-- | The IDs of the Trusted Advisor checks to get the status of.
--
-- /Note:/ Consider using 'checkIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtacrsCheckIds :: Lens.Lens' DescribeTrustedAdvisorCheckRefreshStatuses [Types.String]
dtacrsCheckIds = Lens.field @"checkIds"
{-# DEPRECATED dtacrsCheckIds "Use generic-lens or generic-optics with 'checkIds' instead." #-}

instance Core.FromJSON DescribeTrustedAdvisorCheckRefreshStatuses where
  toJSON DescribeTrustedAdvisorCheckRefreshStatuses {..} =
    Core.object
      (Core.catMaybes [Core.Just ("checkIds" Core..= checkIds)])

instance Core.AWSRequest DescribeTrustedAdvisorCheckRefreshStatuses where
  type
    Rs DescribeTrustedAdvisorCheckRefreshStatuses =
      DescribeTrustedAdvisorCheckRefreshStatusesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSSupport_20130415.DescribeTrustedAdvisorCheckRefreshStatuses"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeTrustedAdvisorCheckRefreshStatusesResponse'
            Core.<$> (x Core..:? "statuses" Core..!= Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | The statuses of the Trusted Advisor checks returned by the 'DescribeTrustedAdvisorCheckRefreshStatuses' operation.
--
-- /See:/ 'mkDescribeTrustedAdvisorCheckRefreshStatusesResponse' smart constructor.
data DescribeTrustedAdvisorCheckRefreshStatusesResponse = DescribeTrustedAdvisorCheckRefreshStatusesResponse'
  { -- | The refresh status of the specified Trusted Advisor checks.
    statuses :: [Types.TrustedAdvisorCheckRefreshStatus],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeTrustedAdvisorCheckRefreshStatusesResponse' value with any optional fields omitted.
mkDescribeTrustedAdvisorCheckRefreshStatusesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeTrustedAdvisorCheckRefreshStatusesResponse
mkDescribeTrustedAdvisorCheckRefreshStatusesResponse responseStatus =
  DescribeTrustedAdvisorCheckRefreshStatusesResponse'
    { statuses =
        Core.mempty,
      responseStatus
    }

-- | The refresh status of the specified Trusted Advisor checks.
--
-- /Note:/ Consider using 'statuses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtacrsrrsStatuses :: Lens.Lens' DescribeTrustedAdvisorCheckRefreshStatusesResponse [Types.TrustedAdvisorCheckRefreshStatus]
dtacrsrrsStatuses = Lens.field @"statuses"
{-# DEPRECATED dtacrsrrsStatuses "Use generic-lens or generic-optics with 'statuses' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtacrsrrsResponseStatus :: Lens.Lens' DescribeTrustedAdvisorCheckRefreshStatusesResponse Core.Int
dtacrsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dtacrsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}