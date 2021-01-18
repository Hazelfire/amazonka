{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeLocalGatewayRouteTables
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more local gateway route tables. By default, all local gateway route tables are described. Alternatively, you can filter the results.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLocalGatewayRouteTables
  ( -- * Creating a request
    DescribeLocalGatewayRouteTables (..),
    mkDescribeLocalGatewayRouteTables,

    -- ** Request lenses
    dlgrtDryRun,
    dlgrtFilters,
    dlgrtLocalGatewayRouteTableIds,
    dlgrtMaxResults,
    dlgrtNextToken,

    -- * Destructuring the response
    DescribeLocalGatewayRouteTablesResponse (..),
    mkDescribeLocalGatewayRouteTablesResponse,

    -- ** Response lenses
    dlgrtrrsLocalGatewayRouteTables,
    dlgrtrrsNextToken,
    dlgrtrrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeLocalGatewayRouteTables' smart constructor.
data DescribeLocalGatewayRouteTables = DescribeLocalGatewayRouteTables'
  { -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool,
    -- | One or more filters.
    --
    --
    --     * @local-gateway-id@ - The ID of a local gateway.
    --
    --
    --     * @local-gateway-route-table-id@ - The ID of a local gateway route table.
    --
    --
    --     * @outpost-arn@ - The Amazon Resource Name (ARN) of the Outpost.
    --
    --
    --     * @state@ - The state of the local gateway route table.
    filters :: Core.Maybe [Types.Filter],
    -- | The IDs of the local gateway route tables.
    localGatewayRouteTableIds :: Core.Maybe [Types.LocalGatewayRoutetableId],
    -- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token for the next page of results.
    nextToken :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeLocalGatewayRouteTables' value with any optional fields omitted.
mkDescribeLocalGatewayRouteTables ::
  DescribeLocalGatewayRouteTables
mkDescribeLocalGatewayRouteTables =
  DescribeLocalGatewayRouteTables'
    { dryRun = Core.Nothing,
      filters = Core.Nothing,
      localGatewayRouteTableIds = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlgrtDryRun :: Lens.Lens' DescribeLocalGatewayRouteTables (Core.Maybe Core.Bool)
dlgrtDryRun = Lens.field @"dryRun"
{-# DEPRECATED dlgrtDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | One or more filters.
--
--
--     * @local-gateway-id@ - The ID of a local gateway.
--
--
--     * @local-gateway-route-table-id@ - The ID of a local gateway route table.
--
--
--     * @outpost-arn@ - The Amazon Resource Name (ARN) of the Outpost.
--
--
--     * @state@ - The state of the local gateway route table.
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlgrtFilters :: Lens.Lens' DescribeLocalGatewayRouteTables (Core.Maybe [Types.Filter])
dlgrtFilters = Lens.field @"filters"
{-# DEPRECATED dlgrtFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The IDs of the local gateway route tables.
--
-- /Note:/ Consider using 'localGatewayRouteTableIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlgrtLocalGatewayRouteTableIds :: Lens.Lens' DescribeLocalGatewayRouteTables (Core.Maybe [Types.LocalGatewayRoutetableId])
dlgrtLocalGatewayRouteTableIds = Lens.field @"localGatewayRouteTableIds"
{-# DEPRECATED dlgrtLocalGatewayRouteTableIds "Use generic-lens or generic-optics with 'localGatewayRouteTableIds' instead." #-}

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlgrtMaxResults :: Lens.Lens' DescribeLocalGatewayRouteTables (Core.Maybe Core.Natural)
dlgrtMaxResults = Lens.field @"maxResults"
{-# DEPRECATED dlgrtMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token for the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlgrtNextToken :: Lens.Lens' DescribeLocalGatewayRouteTables (Core.Maybe Types.String)
dlgrtNextToken = Lens.field @"nextToken"
{-# DEPRECATED dlgrtNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.AWSRequest DescribeLocalGatewayRouteTables where
  type
    Rs DescribeLocalGatewayRouteTables =
      DescribeLocalGatewayRouteTablesResponse
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
            ( Core.pure ("Action", "DescribeLocalGatewayRouteTables")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
                Core.<> (Core.toQueryList "Filter" Core.<$> filters)
                Core.<> ( Core.toQueryList "LocalGatewayRouteTableId"
                            Core.<$> localGatewayRouteTableIds
                        )
                Core.<> (Core.toQueryValue "MaxResults" Core.<$> maxResults)
                Core.<> (Core.toQueryValue "NextToken" Core.<$> nextToken)
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeLocalGatewayRouteTablesResponse'
            Core.<$> ( x Core..@? "localGatewayRouteTableSet"
                         Core..<@> Core.parseXMLList "item"
                     )
            Core.<*> (x Core..@? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeLocalGatewayRouteTables where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        ( rs
            Lens.^? Lens.field @"localGatewayRouteTables" Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeLocalGatewayRouteTablesResponse' smart constructor.
data DescribeLocalGatewayRouteTablesResponse = DescribeLocalGatewayRouteTablesResponse'
  { -- | Information about the local gateway route tables.
    localGatewayRouteTables :: Core.Maybe [Types.LocalGatewayRouteTable],
    -- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
    nextToken :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeLocalGatewayRouteTablesResponse' value with any optional fields omitted.
mkDescribeLocalGatewayRouteTablesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeLocalGatewayRouteTablesResponse
mkDescribeLocalGatewayRouteTablesResponse responseStatus =
  DescribeLocalGatewayRouteTablesResponse'
    { localGatewayRouteTables =
        Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | Information about the local gateway route tables.
--
-- /Note:/ Consider using 'localGatewayRouteTables' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlgrtrrsLocalGatewayRouteTables :: Lens.Lens' DescribeLocalGatewayRouteTablesResponse (Core.Maybe [Types.LocalGatewayRouteTable])
dlgrtrrsLocalGatewayRouteTables = Lens.field @"localGatewayRouteTables"
{-# DEPRECATED dlgrtrrsLocalGatewayRouteTables "Use generic-lens or generic-optics with 'localGatewayRouteTables' instead." #-}

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlgrtrrsNextToken :: Lens.Lens' DescribeLocalGatewayRouteTablesResponse (Core.Maybe Types.String)
dlgrtrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dlgrtrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlgrtrrsResponseStatus :: Lens.Lens' DescribeLocalGatewayRouteTablesResponse Core.Int
dlgrtrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dlgrtrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}