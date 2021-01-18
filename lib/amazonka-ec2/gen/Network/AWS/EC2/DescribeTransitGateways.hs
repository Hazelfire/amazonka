{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeTransitGateways
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more transit gateways. By default, all transit gateways are described. Alternatively, you can filter the results.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGateways
  ( -- * Creating a request
    DescribeTransitGateways (..),
    mkDescribeTransitGateways,

    -- ** Request lenses
    dtgsDryRun,
    dtgsFilters,
    dtgsMaxResults,
    dtgsNextToken,
    dtgsTransitGatewayIds,

    -- * Destructuring the response
    DescribeTransitGatewaysResponse (..),
    mkDescribeTransitGatewaysResponse,

    -- ** Response lenses
    dtgrfrsNextToken,
    dtgrfrsTransitGateways,
    dtgrfrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeTransitGateways' smart constructor.
data DescribeTransitGateways = DescribeTransitGateways'
  { -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool,
    -- | One or more filters. The possible values are:
    --
    --
    --     * @options.propagation-default-route-table-id@ - The ID of the default propagation route table.
    --
    --
    --     * @options.amazon-side-asn@ - The private ASN for the Amazon side of a BGP session.
    --
    --
    --     * @options.association-default-route-table-id@ - The ID of the default association route table.
    --
    --
    --     * @options.auto-accept-shared-attachments@ - Indicates whether there is automatic acceptance of attachment requests (@enable@ | @disable@ ).
    --
    --
    --     * @options.default-route-table-association@ - Indicates whether resource attachments are automatically associated with the default association route table (@enable@ | @disable@ ).
    --
    --
    --     * @options.default-route-table-propagation@ - Indicates whether resource attachments automatically propagate routes to the default propagation route table (@enable@ | @disable@ ).
    --
    --
    --     * @options.dns-support@ - Indicates whether DNS support is enabled (@enable@ | @disable@ ).
    --
    --
    --     * @options.vpn-ecmp-support@ - Indicates whether Equal Cost Multipath Protocol support is enabled (@enable@ | @disable@ ).
    --
    --
    --     * @owner-id@ - The ID of the AWS account that owns the transit gateway.
    --
    --
    --     * @state@ - The state of the transit gateway (@available@ | @deleted@ | @deleting@ | @modifying@ | @pending@ ).
    --
    --
    --     * @transit-gateway-id@ - The ID of the transit gateway.
    filters :: Core.Maybe [Types.Filter],
    -- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token for the next page of results.
    nextToken :: Core.Maybe Types.String,
    -- | The IDs of the transit gateways.
    transitGatewayIds :: Core.Maybe [Types.TransitGatewayId]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeTransitGateways' value with any optional fields omitted.
mkDescribeTransitGateways ::
  DescribeTransitGateways
mkDescribeTransitGateways =
  DescribeTransitGateways'
    { dryRun = Core.Nothing,
      filters = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing,
      transitGatewayIds = Core.Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgsDryRun :: Lens.Lens' DescribeTransitGateways (Core.Maybe Core.Bool)
dtgsDryRun = Lens.field @"dryRun"
{-# DEPRECATED dtgsDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | One or more filters. The possible values are:
--
--
--     * @options.propagation-default-route-table-id@ - The ID of the default propagation route table.
--
--
--     * @options.amazon-side-asn@ - The private ASN for the Amazon side of a BGP session.
--
--
--     * @options.association-default-route-table-id@ - The ID of the default association route table.
--
--
--     * @options.auto-accept-shared-attachments@ - Indicates whether there is automatic acceptance of attachment requests (@enable@ | @disable@ ).
--
--
--     * @options.default-route-table-association@ - Indicates whether resource attachments are automatically associated with the default association route table (@enable@ | @disable@ ).
--
--
--     * @options.default-route-table-propagation@ - Indicates whether resource attachments automatically propagate routes to the default propagation route table (@enable@ | @disable@ ).
--
--
--     * @options.dns-support@ - Indicates whether DNS support is enabled (@enable@ | @disable@ ).
--
--
--     * @options.vpn-ecmp-support@ - Indicates whether Equal Cost Multipath Protocol support is enabled (@enable@ | @disable@ ).
--
--
--     * @owner-id@ - The ID of the AWS account that owns the transit gateway.
--
--
--     * @state@ - The state of the transit gateway (@available@ | @deleted@ | @deleting@ | @modifying@ | @pending@ ).
--
--
--     * @transit-gateway-id@ - The ID of the transit gateway.
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgsFilters :: Lens.Lens' DescribeTransitGateways (Core.Maybe [Types.Filter])
dtgsFilters = Lens.field @"filters"
{-# DEPRECATED dtgsFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgsMaxResults :: Lens.Lens' DescribeTransitGateways (Core.Maybe Core.Natural)
dtgsMaxResults = Lens.field @"maxResults"
{-# DEPRECATED dtgsMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token for the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgsNextToken :: Lens.Lens' DescribeTransitGateways (Core.Maybe Types.String)
dtgsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dtgsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The IDs of the transit gateways.
--
-- /Note:/ Consider using 'transitGatewayIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgsTransitGatewayIds :: Lens.Lens' DescribeTransitGateways (Core.Maybe [Types.TransitGatewayId])
dtgsTransitGatewayIds = Lens.field @"transitGatewayIds"
{-# DEPRECATED dtgsTransitGatewayIds "Use generic-lens or generic-optics with 'transitGatewayIds' instead." #-}

instance Core.AWSRequest DescribeTransitGateways where
  type Rs DescribeTransitGateways = DescribeTransitGatewaysResponse
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
            ( Core.pure ("Action", "DescribeTransitGateways")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
                Core.<> (Core.toQueryList "Filter" Core.<$> filters)
                Core.<> (Core.toQueryValue "MaxResults" Core.<$> maxResults)
                Core.<> (Core.toQueryValue "NextToken" Core.<$> nextToken)
                Core.<> (Core.toQueryList "TransitGatewayIds" Core.<$> transitGatewayIds)
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeTransitGatewaysResponse'
            Core.<$> (x Core..@? "nextToken")
            Core.<*> (x Core..@? "transitGatewaySet" Core..<@> Core.parseXMLList "item")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeTransitGateways where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"transitGateways" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeTransitGatewaysResponse' smart constructor.
data DescribeTransitGatewaysResponse = DescribeTransitGatewaysResponse'
  { -- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
    nextToken :: Core.Maybe Types.String,
    -- | Information about the transit gateways.
    transitGateways :: Core.Maybe [Types.TransitGateway],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeTransitGatewaysResponse' value with any optional fields omitted.
mkDescribeTransitGatewaysResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeTransitGatewaysResponse
mkDescribeTransitGatewaysResponse responseStatus =
  DescribeTransitGatewaysResponse'
    { nextToken = Core.Nothing,
      transitGateways = Core.Nothing,
      responseStatus
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrfrsNextToken :: Lens.Lens' DescribeTransitGatewaysResponse (Core.Maybe Types.String)
dtgrfrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dtgrfrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Information about the transit gateways.
--
-- /Note:/ Consider using 'transitGateways' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrfrsTransitGateways :: Lens.Lens' DescribeTransitGatewaysResponse (Core.Maybe [Types.TransitGateway])
dtgrfrsTransitGateways = Lens.field @"transitGateways"
{-# DEPRECATED dtgrfrsTransitGateways "Use generic-lens or generic-optics with 'transitGateways' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtgrfrsResponseStatus :: Lens.Lens' DescribeTransitGatewaysResponse Core.Int
dtgrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dtgrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}