{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeTransitGatewayRouteTables
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more transit gateway route tables. By default, all transit gateway route tables are described. Alternatively, you can filter the results.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGatewayRouteTables
  ( -- * Creating a request
    DescribeTransitGatewayRouteTables (..),
    mkDescribeTransitGatewayRouteTables,

    -- ** Request lenses
    dtgrtsDryRun,
    dtgrtsFilters,
    dtgrtsMaxResults,
    dtgrtsNextToken,
    dtgrtsTransitGatewayRouteTableIds,

    -- * Destructuring the response
    DescribeTransitGatewayRouteTablesResponse (..),
    mkDescribeTransitGatewayRouteTablesResponse,

    -- ** Response lenses
    dtgrtrgrsNextToken,
    dtgrtrgrsTransitGatewayRouteTables,
    dtgrtrgrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeTransitGatewayRouteTables' smart constructor.
data DescribeTransitGatewayRouteTables = DescribeTransitGatewayRouteTables'
  { -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool,
    -- | One or more filters. The possible values are:
    --
    --
    --     * @default-association-route-table@ - Indicates whether this is the default association route table for the transit gateway (@true@ | @false@ ).
    --
    --
    --     * @default-propagation-route-table@ - Indicates whether this is the default propagation route table for the transit gateway (@true@ | @false@ ).
    --
    --
    --     * @state@ - The state of the route table (@available@ | @deleting@ | @deleted@ | @pending@ ).
    --
    --
    --     * @transit-gateway-id@ - The ID of the transit gateway.
    --
    --
    --     * @transit-gateway-route-table-id@ - The ID of the transit gateway route table.
    filters :: Core.Maybe [Types.Filter],
    -- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token for the next page of results.
    nextToken :: Core.Maybe Types.String,
    -- | The IDs of the transit gateway route tables.
    transitGatewayRouteTableIds :: Core.Maybe [Types.TransitGatewayRouteTableId]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeTransitGatewayRouteTables' value with any optional fields omitted.
mkDescribeTransitGatewayRouteTables ::
  DescribeTransitGatewayRouteTables
mkDescribeTransitGatewayRouteTables =
  DescribeTransitGatewayRouteTables'
    { dryRun = Core.Nothing,
      filters = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing,
      transitGatewayRouteTableIds = Core.Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrtsDryRun :: Lens.Lens' DescribeTransitGatewayRouteTables (Core.Maybe Core.Bool)
dtgrtsDryRun = Lens.field @"dryRun"
{-# DEPRECATED dtgrtsDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | One or more filters. The possible values are:
--
--
--     * @default-association-route-table@ - Indicates whether this is the default association route table for the transit gateway (@true@ | @false@ ).
--
--
--     * @default-propagation-route-table@ - Indicates whether this is the default propagation route table for the transit gateway (@true@ | @false@ ).
--
--
--     * @state@ - The state of the route table (@available@ | @deleting@ | @deleted@ | @pending@ ).
--
--
--     * @transit-gateway-id@ - The ID of the transit gateway.
--
--
--     * @transit-gateway-route-table-id@ - The ID of the transit gateway route table.
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrtsFilters :: Lens.Lens' DescribeTransitGatewayRouteTables (Core.Maybe [Types.Filter])
dtgrtsFilters = Lens.field @"filters"
{-# DEPRECATED dtgrtsFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrtsMaxResults :: Lens.Lens' DescribeTransitGatewayRouteTables (Core.Maybe Core.Natural)
dtgrtsMaxResults = Lens.field @"maxResults"
{-# DEPRECATED dtgrtsMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token for the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrtsNextToken :: Lens.Lens' DescribeTransitGatewayRouteTables (Core.Maybe Types.String)
dtgrtsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dtgrtsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The IDs of the transit gateway route tables.
--
-- /Note:/ Consider using 'transitGatewayRouteTableIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrtsTransitGatewayRouteTableIds :: Lens.Lens' DescribeTransitGatewayRouteTables (Core.Maybe [Types.TransitGatewayRouteTableId])
dtgrtsTransitGatewayRouteTableIds = Lens.field @"transitGatewayRouteTableIds"
{-# DEPRECATED dtgrtsTransitGatewayRouteTableIds "Use generic-lens or generic-optics with 'transitGatewayRouteTableIds' instead." #-}

instance Core.AWSRequest DescribeTransitGatewayRouteTables where
  type
    Rs DescribeTransitGatewayRouteTables =
      DescribeTransitGatewayRouteTablesResponse
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
            ( Core.pure ("Action", "DescribeTransitGatewayRouteTables")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
                Core.<> (Core.toQueryList "Filter" Core.<$> filters)
                Core.<> (Core.toQueryValue "MaxResults" Core.<$> maxResults)
                Core.<> (Core.toQueryValue "NextToken" Core.<$> nextToken)
                Core.<> ( Core.toQueryList "TransitGatewayRouteTableIds"
                            Core.<$> transitGatewayRouteTableIds
                        )
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeTransitGatewayRouteTablesResponse'
            Core.<$> (x Core..@? "nextToken")
            Core.<*> ( x Core..@? "transitGatewayRouteTables"
                         Core..<@> Core.parseXMLList "item"
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeTransitGatewayRouteTables where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        ( rs
            Lens.^? Lens.field @"transitGatewayRouteTables" Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeTransitGatewayRouteTablesResponse' smart constructor.
data DescribeTransitGatewayRouteTablesResponse = DescribeTransitGatewayRouteTablesResponse'
  { -- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
    nextToken :: Core.Maybe Types.NextToken,
    -- | Information about the transit gateway route tables.
    transitGatewayRouteTables :: Core.Maybe [Types.TransitGatewayRouteTable],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeTransitGatewayRouteTablesResponse' value with any optional fields omitted.
mkDescribeTransitGatewayRouteTablesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeTransitGatewayRouteTablesResponse
mkDescribeTransitGatewayRouteTablesResponse responseStatus =
  DescribeTransitGatewayRouteTablesResponse'
    { nextToken =
        Core.Nothing,
      transitGatewayRouteTables = Core.Nothing,
      responseStatus
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrtrgrsNextToken :: Lens.Lens' DescribeTransitGatewayRouteTablesResponse (Core.Maybe Types.NextToken)
dtgrtrgrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dtgrtrgrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Information about the transit gateway route tables.
--
-- /Note:/ Consider using 'transitGatewayRouteTables' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrtrgrsTransitGatewayRouteTables :: Lens.Lens' DescribeTransitGatewayRouteTablesResponse (Core.Maybe [Types.TransitGatewayRouteTable])
dtgrtrgrsTransitGatewayRouteTables = Lens.field @"transitGatewayRouteTables"
{-# DEPRECATED dtgrtrgrsTransitGatewayRouteTables "Use generic-lens or generic-optics with 'transitGatewayRouteTables' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrtrgrsResponseStatus :: Lens.Lens' DescribeTransitGatewayRouteTablesResponse Core.Int
dtgrtrgrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dtgrtrgrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}