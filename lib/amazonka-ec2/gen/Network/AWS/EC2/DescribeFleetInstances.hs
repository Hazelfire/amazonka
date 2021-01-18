{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeFleetInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the running instances for the specified EC2 Fleet.
module Network.AWS.EC2.DescribeFleetInstances
  ( -- * Creating a request
    DescribeFleetInstances (..),
    mkDescribeFleetInstances,

    -- ** Request lenses
    dfisFleetId,
    dfisDryRun,
    dfisFilters,
    dfisMaxResults,
    dfisNextToken,

    -- * Destructuring the response
    DescribeFleetInstancesResponse (..),
    mkDescribeFleetInstancesResponse,

    -- ** Response lenses
    dfirfrsActiveInstances,
    dfirfrsFleetId,
    dfirfrsNextToken,
    dfirfrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeFleetInstances' smart constructor.
data DescribeFleetInstances = DescribeFleetInstances'
  { -- | The ID of the EC2 Fleet.
    fleetId :: Types.FleetId,
    -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool,
    -- | The filters.
    --
    --
    --     * @instance-type@ - The instance type.
    filters :: Core.Maybe [Types.Filter],
    -- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
    maxResults :: Core.Maybe Core.Int,
    -- | The token for the next set of results.
    nextToken :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFleetInstances' value with any optional fields omitted.
mkDescribeFleetInstances ::
  -- | 'fleetId'
  Types.FleetId ->
  DescribeFleetInstances
mkDescribeFleetInstances fleetId =
  DescribeFleetInstances'
    { fleetId,
      dryRun = Core.Nothing,
      filters = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The ID of the EC2 Fleet.
--
-- /Note:/ Consider using 'fleetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfisFleetId :: Lens.Lens' DescribeFleetInstances Types.FleetId
dfisFleetId = Lens.field @"fleetId"
{-# DEPRECATED dfisFleetId "Use generic-lens or generic-optics with 'fleetId' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfisDryRun :: Lens.Lens' DescribeFleetInstances (Core.Maybe Core.Bool)
dfisDryRun = Lens.field @"dryRun"
{-# DEPRECATED dfisDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | The filters.
--
--
--     * @instance-type@ - The instance type.
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfisFilters :: Lens.Lens' DescribeFleetInstances (Core.Maybe [Types.Filter])
dfisFilters = Lens.field @"filters"
{-# DEPRECATED dfisFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfisMaxResults :: Lens.Lens' DescribeFleetInstances (Core.Maybe Core.Int)
dfisMaxResults = Lens.field @"maxResults"
{-# DEPRECATED dfisMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfisNextToken :: Lens.Lens' DescribeFleetInstances (Core.Maybe Types.String)
dfisNextToken = Lens.field @"nextToken"
{-# DEPRECATED dfisNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.AWSRequest DescribeFleetInstances where
  type Rs DescribeFleetInstances = DescribeFleetInstancesResponse
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
            ( Core.pure ("Action", "DescribeFleetInstances")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "FleetId" fleetId)
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
                Core.<> (Core.toQueryList "Filter" Core.<$> filters)
                Core.<> (Core.toQueryValue "MaxResults" Core.<$> maxResults)
                Core.<> (Core.toQueryValue "NextToken" Core.<$> nextToken)
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeFleetInstancesResponse'
            Core.<$> (x Core..@? "activeInstanceSet" Core..<@> Core.parseXMLList "item")
            Core.<*> (x Core..@? "fleetId")
            Core.<*> (x Core..@? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDescribeFleetInstancesResponse' smart constructor.
data DescribeFleetInstancesResponse = DescribeFleetInstancesResponse'
  { -- | The running instances. This list is refreshed periodically and might be out of date.
    activeInstances :: Core.Maybe [Types.ActiveInstance],
    -- | The ID of the EC2 Fleet.
    fleetId :: Core.Maybe Types.FleetId,
    -- | The token for the next set of results.
    nextToken :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFleetInstancesResponse' value with any optional fields omitted.
mkDescribeFleetInstancesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeFleetInstancesResponse
mkDescribeFleetInstancesResponse responseStatus =
  DescribeFleetInstancesResponse'
    { activeInstances = Core.Nothing,
      fleetId = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | The running instances. This list is refreshed periodically and might be out of date.
--
-- /Note:/ Consider using 'activeInstances' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfirfrsActiveInstances :: Lens.Lens' DescribeFleetInstancesResponse (Core.Maybe [Types.ActiveInstance])
dfirfrsActiveInstances = Lens.field @"activeInstances"
{-# DEPRECATED dfirfrsActiveInstances "Use generic-lens or generic-optics with 'activeInstances' instead." #-}

-- | The ID of the EC2 Fleet.
--
-- /Note:/ Consider using 'fleetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfirfrsFleetId :: Lens.Lens' DescribeFleetInstancesResponse (Core.Maybe Types.FleetId)
dfirfrsFleetId = Lens.field @"fleetId"
{-# DEPRECATED dfirfrsFleetId "Use generic-lens or generic-optics with 'fleetId' instead." #-}

-- | The token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfirfrsNextToken :: Lens.Lens' DescribeFleetInstancesResponse (Core.Maybe Types.String)
dfirfrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dfirfrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfirfrsResponseStatus :: Lens.Lens' DescribeFleetInstancesResponse Core.Int
dfirfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dfirfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}