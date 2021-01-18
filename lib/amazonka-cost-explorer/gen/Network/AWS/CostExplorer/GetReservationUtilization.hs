{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.GetReservationUtilization
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the reservation utilization for your account. Management account in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use @GetDimensionValues@ to determine the possible dimension values. Currently, you can group only by @SUBSCRIPTION_ID@ .
module Network.AWS.CostExplorer.GetReservationUtilization
  ( -- * Creating a request
    GetReservationUtilization (..),
    mkGetReservationUtilization,

    -- ** Request lenses
    gruTimePeriod,
    gruFilter,
    gruGranularity,
    gruGroupBy,
    gruNextPageToken,

    -- * Destructuring the response
    GetReservationUtilizationResponse (..),
    mkGetReservationUtilizationResponse,

    -- ** Response lenses
    grurrsUtilizationsByTime,
    grurrsNextPageToken,
    grurrsTotal,
    grurrsResponseStatus,
  )
where

import qualified Network.AWS.CostExplorer.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetReservationUtilization' smart constructor.
data GetReservationUtilization = GetReservationUtilization'
  { -- | Sets the start and end dates for retrieving RI utilization. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
    timePeriod :: Types.DateInterval,
    -- | Filters utilization data by dimensions. You can filter by the following dimensions:
    --
    --
    --     * AZ
    --
    --
    --     * CACHE_ENGINE
    --
    --
    --     * DEPLOYMENT_OPTION
    --
    --
    --     * INSTANCE_TYPE
    --
    --
    --     * LINKED_ACCOUNT
    --
    --
    --     * OPERATING_SYSTEM
    --
    --
    --     * PLATFORM
    --
    --
    --     * REGION
    --
    --
    --     * SERVICE
    --
    --
    --     * SCOPE
    --
    --
    --     * TENANCY
    --
    --
    -- @GetReservationUtilization@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension, and nesting is supported up to only one level deep. If there are multiple values for a dimension, they are OR'd together.
    filter :: Core.Maybe Types.Expression,
    -- | If @GroupBy@ is set, @Granularity@ can't be set. If @Granularity@ isn't set, the response object doesn't include @Granularity@ , either @MONTHLY@ or @DAILY@ . If both @GroupBy@ and @Granularity@ aren't set, @GetReservationUtilization@ defaults to @DAILY@ .
    --
    -- The @GetReservationUtilization@ operation supports only @DAILY@ and @MONTHLY@ granularities.
    granularity :: Core.Maybe Types.Granularity,
    -- | Groups only by @SUBSCRIPTION_ID@ . Metadata is included.
    groupBy :: Core.Maybe [Types.GroupDefinition],
    -- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
    nextPageToken :: Core.Maybe Types.NextPageToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetReservationUtilization' value with any optional fields omitted.
mkGetReservationUtilization ::
  -- | 'timePeriod'
  Types.DateInterval ->
  GetReservationUtilization
mkGetReservationUtilization timePeriod =
  GetReservationUtilization'
    { timePeriod,
      filter = Core.Nothing,
      granularity = Core.Nothing,
      groupBy = Core.Nothing,
      nextPageToken = Core.Nothing
    }

-- | Sets the start and end dates for retrieving RI utilization. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
--
-- /Note:/ Consider using 'timePeriod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gruTimePeriod :: Lens.Lens' GetReservationUtilization Types.DateInterval
gruTimePeriod = Lens.field @"timePeriod"
{-# DEPRECATED gruTimePeriod "Use generic-lens or generic-optics with 'timePeriod' instead." #-}

-- | Filters utilization data by dimensions. You can filter by the following dimensions:
--
--
--     * AZ
--
--
--     * CACHE_ENGINE
--
--
--     * DEPLOYMENT_OPTION
--
--
--     * INSTANCE_TYPE
--
--
--     * LINKED_ACCOUNT
--
--
--     * OPERATING_SYSTEM
--
--
--     * PLATFORM
--
--
--     * REGION
--
--
--     * SERVICE
--
--
--     * SCOPE
--
--
--     * TENANCY
--
--
-- @GetReservationUtilization@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension, and nesting is supported up to only one level deep. If there are multiple values for a dimension, they are OR'd together.
--
-- /Note:/ Consider using 'filter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gruFilter :: Lens.Lens' GetReservationUtilization (Core.Maybe Types.Expression)
gruFilter = Lens.field @"filter"
{-# DEPRECATED gruFilter "Use generic-lens or generic-optics with 'filter' instead." #-}

-- | If @GroupBy@ is set, @Granularity@ can't be set. If @Granularity@ isn't set, the response object doesn't include @Granularity@ , either @MONTHLY@ or @DAILY@ . If both @GroupBy@ and @Granularity@ aren't set, @GetReservationUtilization@ defaults to @DAILY@ .
--
-- The @GetReservationUtilization@ operation supports only @DAILY@ and @MONTHLY@ granularities.
--
-- /Note:/ Consider using 'granularity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gruGranularity :: Lens.Lens' GetReservationUtilization (Core.Maybe Types.Granularity)
gruGranularity = Lens.field @"granularity"
{-# DEPRECATED gruGranularity "Use generic-lens or generic-optics with 'granularity' instead." #-}

-- | Groups only by @SUBSCRIPTION_ID@ . Metadata is included.
--
-- /Note:/ Consider using 'groupBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gruGroupBy :: Lens.Lens' GetReservationUtilization (Core.Maybe [Types.GroupDefinition])
gruGroupBy = Lens.field @"groupBy"
{-# DEPRECATED gruGroupBy "Use generic-lens or generic-optics with 'groupBy' instead." #-}

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- /Note:/ Consider using 'nextPageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gruNextPageToken :: Lens.Lens' GetReservationUtilization (Core.Maybe Types.NextPageToken)
gruNextPageToken = Lens.field @"nextPageToken"
{-# DEPRECATED gruNextPageToken "Use generic-lens or generic-optics with 'nextPageToken' instead." #-}

instance Core.FromJSON GetReservationUtilization where
  toJSON GetReservationUtilization {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("TimePeriod" Core..= timePeriod),
            ("Filter" Core..=) Core.<$> filter,
            ("Granularity" Core..=) Core.<$> granularity,
            ("GroupBy" Core..=) Core.<$> groupBy,
            ("NextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

instance Core.AWSRequest GetReservationUtilization where
  type
    Rs GetReservationUtilization =
      GetReservationUtilizationResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSInsightsIndexService.GetReservationUtilization"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetReservationUtilizationResponse'
            Core.<$> (x Core..:? "UtilizationsByTime" Core..!= Core.mempty)
            Core.<*> (x Core..:? "NextPageToken")
            Core.<*> (x Core..:? "Total")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetReservationUtilizationResponse' smart constructor.
data GetReservationUtilizationResponse = GetReservationUtilizationResponse'
  { -- | The amount of time that you used your RIs.
    utilizationsByTime :: [Types.UtilizationByTime],
    -- | The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
    nextPageToken :: Core.Maybe Types.NextPageToken,
    -- | The total amount of time that you used your RIs.
    total :: Core.Maybe Types.ReservationAggregates,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetReservationUtilizationResponse' value with any optional fields omitted.
mkGetReservationUtilizationResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetReservationUtilizationResponse
mkGetReservationUtilizationResponse responseStatus =
  GetReservationUtilizationResponse'
    { utilizationsByTime =
        Core.mempty,
      nextPageToken = Core.Nothing,
      total = Core.Nothing,
      responseStatus
    }

-- | The amount of time that you used your RIs.
--
-- /Note:/ Consider using 'utilizationsByTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grurrsUtilizationsByTime :: Lens.Lens' GetReservationUtilizationResponse [Types.UtilizationByTime]
grurrsUtilizationsByTime = Lens.field @"utilizationsByTime"
{-# DEPRECATED grurrsUtilizationsByTime "Use generic-lens or generic-optics with 'utilizationsByTime' instead." #-}

-- | The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- /Note:/ Consider using 'nextPageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grurrsNextPageToken :: Lens.Lens' GetReservationUtilizationResponse (Core.Maybe Types.NextPageToken)
grurrsNextPageToken = Lens.field @"nextPageToken"
{-# DEPRECATED grurrsNextPageToken "Use generic-lens or generic-optics with 'nextPageToken' instead." #-}

-- | The total amount of time that you used your RIs.
--
-- /Note:/ Consider using 'total' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grurrsTotal :: Lens.Lens' GetReservationUtilizationResponse (Core.Maybe Types.ReservationAggregates)
grurrsTotal = Lens.field @"total"
{-# DEPRECATED grurrsTotal "Use generic-lens or generic-optics with 'total' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grurrsResponseStatus :: Lens.Lens' GetReservationUtilizationResponse Core.Int
grurrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED grurrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}