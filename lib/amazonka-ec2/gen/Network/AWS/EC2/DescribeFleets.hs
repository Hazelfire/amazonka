{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeFleets
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified EC2 Fleets or all of your EC2 Fleets.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeFleets
  ( -- * Creating a request
    DescribeFleets (..),
    mkDescribeFleets,

    -- ** Request lenses
    dfsDryRun,
    dfsFilters,
    dfsFleetIds,
    dfsMaxResults,
    dfsNextToken,

    -- * Destructuring the response
    DescribeFleetsResponse (..),
    mkDescribeFleetsResponse,

    -- ** Response lenses
    dfrfrsFleets,
    dfrfrsNextToken,
    dfrfrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeFleets' smart constructor.
data DescribeFleets = DescribeFleets'
  { -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool,
    -- | The filters.
    --
    --
    --     * @activity-status@ - The progress of the EC2 Fleet ( @error@ | @pending-fulfillment@ | @pending-termination@ | @fulfilled@ ).
    --
    --
    --     * @excess-capacity-termination-policy@ - Indicates whether to terminate running instances if the target capacity is decreased below the current EC2 Fleet size (@true@ | @false@ ).
    --
    --
    --     * @fleet-state@ - The state of the EC2 Fleet (@submitted@ | @active@ | @deleted@ | @failed@ | @deleted-running@ | @deleted-terminating@ | @modifying@ ).
    --
    --
    --     * @replace-unhealthy-instances@ - Indicates whether EC2 Fleet should replace unhealthy instances (@true@ | @false@ ).
    --
    --
    --     * @type@ - The type of request (@instant@ | @request@ | @maintain@ ).
    filters :: Core.Maybe [Types.Filter],
    -- | The ID of the EC2 Fleets.
    fleetIds :: Core.Maybe [Types.FleetId],
    -- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
    maxResults :: Core.Maybe Core.Int,
    -- | The token for the next set of results.
    nextToken :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFleets' value with any optional fields omitted.
mkDescribeFleets ::
  DescribeFleets
mkDescribeFleets =
  DescribeFleets'
    { dryRun = Core.Nothing,
      filters = Core.Nothing,
      fleetIds = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsDryRun :: Lens.Lens' DescribeFleets (Core.Maybe Core.Bool)
dfsDryRun = Lens.field @"dryRun"
{-# DEPRECATED dfsDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | The filters.
--
--
--     * @activity-status@ - The progress of the EC2 Fleet ( @error@ | @pending-fulfillment@ | @pending-termination@ | @fulfilled@ ).
--
--
--     * @excess-capacity-termination-policy@ - Indicates whether to terminate running instances if the target capacity is decreased below the current EC2 Fleet size (@true@ | @false@ ).
--
--
--     * @fleet-state@ - The state of the EC2 Fleet (@submitted@ | @active@ | @deleted@ | @failed@ | @deleted-running@ | @deleted-terminating@ | @modifying@ ).
--
--
--     * @replace-unhealthy-instances@ - Indicates whether EC2 Fleet should replace unhealthy instances (@true@ | @false@ ).
--
--
--     * @type@ - The type of request (@instant@ | @request@ | @maintain@ ).
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsFilters :: Lens.Lens' DescribeFleets (Core.Maybe [Types.Filter])
dfsFilters = Lens.field @"filters"
{-# DEPRECATED dfsFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The ID of the EC2 Fleets.
--
-- /Note:/ Consider using 'fleetIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsFleetIds :: Lens.Lens' DescribeFleets (Core.Maybe [Types.FleetId])
dfsFleetIds = Lens.field @"fleetIds"
{-# DEPRECATED dfsFleetIds "Use generic-lens or generic-optics with 'fleetIds' instead." #-}

-- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsMaxResults :: Lens.Lens' DescribeFleets (Core.Maybe Core.Int)
dfsMaxResults = Lens.field @"maxResults"
{-# DEPRECATED dfsMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsNextToken :: Lens.Lens' DescribeFleets (Core.Maybe Types.String)
dfsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dfsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.AWSRequest DescribeFleets where
  type Rs DescribeFleets = DescribeFleetsResponse
  request x@Core.Request {..} =
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
            ( Core.pure ("Action", "DescribeFleets")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
                Core.<> (Core.toQueryList "Filter" Core.<$> filters)
                Core.<> (Core.toQueryList "FleetId" Core.<$> fleetIds)
                Core.<> (Core.toQueryValue "MaxResults" Core.<$> maxResults)
                Core.<> (Core.toQueryValue "NextToken" Core.<$> nextToken)
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeFleetsResponse'
            Core.<$> (x Core..@? "fleetSet" Core..<@> Core.parseXMLList "item")
            Core.<*> (x Core..@? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeFleets where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"fleets" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeFleetsResponse' smart constructor.
data DescribeFleetsResponse = DescribeFleetsResponse'
  { -- | Information about the EC2 Fleets.
    fleets :: Core.Maybe [Types.FleetData],
    -- | The token for the next set of results.
    nextToken :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeFleetsResponse' value with any optional fields omitted.
mkDescribeFleetsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeFleetsResponse
mkDescribeFleetsResponse responseStatus =
  DescribeFleetsResponse'
    { fleets = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | Information about the EC2 Fleets.
--
-- /Note:/ Consider using 'fleets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfrfrsFleets :: Lens.Lens' DescribeFleetsResponse (Core.Maybe [Types.FleetData])
dfrfrsFleets = Lens.field @"fleets"
{-# DEPRECATED dfrfrsFleets "Use generic-lens or generic-optics with 'fleets' instead." #-}

-- | The token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfrfrsNextToken :: Lens.Lens' DescribeFleetsResponse (Core.Maybe Types.String)
dfrfrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dfrfrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfrfrsResponseStatus :: Lens.Lens' DescribeFleetsResponse Core.Int
dfrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dfrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}