{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociations
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the associations between your Direct Connect gateways and virtual private gateways. You must specify a Direct Connect gateway, a virtual private gateway, or both. If you specify a Direct Connect gateway, the response contains all virtual private gateways associated with the Direct Connect gateway. If you specify a virtual private gateway, the response contains all Direct Connect gateways associated with the virtual private gateway. If you specify both, the response contains the association between the Direct Connect gateway and the virtual private gateway.
--
-- This operation returns paginated results.
module Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociations
  ( -- * Creating a request
    DescribeDirectConnectGatewayAssociations (..),
    mkDescribeDirectConnectGatewayAssociations,

    -- ** Request lenses
    ddcgaAssociatedGatewayId,
    ddcgaAssociationId,
    ddcgaDirectConnectGatewayId,
    ddcgaMaxResults,
    ddcgaNextToken,
    ddcgaVirtualGatewayId,

    -- * Destructuring the response
    DescribeDirectConnectGatewayAssociationsResponse (..),
    mkDescribeDirectConnectGatewayAssociationsResponse,

    -- ** Response lenses
    ddcgarrsDirectConnectGatewayAssociations,
    ddcgarrsNextToken,
    ddcgarrsResponseStatus,
  )
where

import qualified Network.AWS.DirectConnect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeDirectConnectGatewayAssociations' smart constructor.
data DescribeDirectConnectGatewayAssociations = DescribeDirectConnectGatewayAssociations'
  { -- | The ID of the associated gateway.
    associatedGatewayId :: Core.Maybe Types.AssociatedGatewayId,
    -- | The ID of the Direct Connect gateway association.
    associationId :: Core.Maybe Types.DirectConnectGatewayAssociationId,
    -- | The ID of the Direct Connect gateway.
    directConnectGatewayId :: Core.Maybe Types.DirectConnectGatewayId,
    -- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
    --
    -- If @MaxResults@ is given a value larger than 100, only 100 results are returned.
    maxResults :: Core.Maybe Core.Int,
    -- | The token provided in the previous call to retrieve the next page.
    nextToken :: Core.Maybe Types.PaginationToken,
    -- | The ID of the virtual private gateway.
    virtualGatewayId :: Core.Maybe Types.VirtualGatewayId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeDirectConnectGatewayAssociations' value with any optional fields omitted.
mkDescribeDirectConnectGatewayAssociations ::
  DescribeDirectConnectGatewayAssociations
mkDescribeDirectConnectGatewayAssociations =
  DescribeDirectConnectGatewayAssociations'
    { associatedGatewayId =
        Core.Nothing,
      associationId = Core.Nothing,
      directConnectGatewayId = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing,
      virtualGatewayId = Core.Nothing
    }

-- | The ID of the associated gateway.
--
-- /Note:/ Consider using 'associatedGatewayId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcgaAssociatedGatewayId :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Core.Maybe Types.AssociatedGatewayId)
ddcgaAssociatedGatewayId = Lens.field @"associatedGatewayId"
{-# DEPRECATED ddcgaAssociatedGatewayId "Use generic-lens or generic-optics with 'associatedGatewayId' instead." #-}

-- | The ID of the Direct Connect gateway association.
--
-- /Note:/ Consider using 'associationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcgaAssociationId :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Core.Maybe Types.DirectConnectGatewayAssociationId)
ddcgaAssociationId = Lens.field @"associationId"
{-# DEPRECATED ddcgaAssociationId "Use generic-lens or generic-optics with 'associationId' instead." #-}

-- | The ID of the Direct Connect gateway.
--
-- /Note:/ Consider using 'directConnectGatewayId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcgaDirectConnectGatewayId :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Core.Maybe Types.DirectConnectGatewayId)
ddcgaDirectConnectGatewayId = Lens.field @"directConnectGatewayId"
{-# DEPRECATED ddcgaDirectConnectGatewayId "Use generic-lens or generic-optics with 'directConnectGatewayId' instead." #-}

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- If @MaxResults@ is given a value larger than 100, only 100 results are returned.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcgaMaxResults :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Core.Maybe Core.Int)
ddcgaMaxResults = Lens.field @"maxResults"
{-# DEPRECATED ddcgaMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token provided in the previous call to retrieve the next page.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcgaNextToken :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Core.Maybe Types.PaginationToken)
ddcgaNextToken = Lens.field @"nextToken"
{-# DEPRECATED ddcgaNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The ID of the virtual private gateway.
--
-- /Note:/ Consider using 'virtualGatewayId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcgaVirtualGatewayId :: Lens.Lens' DescribeDirectConnectGatewayAssociations (Core.Maybe Types.VirtualGatewayId)
ddcgaVirtualGatewayId = Lens.field @"virtualGatewayId"
{-# DEPRECATED ddcgaVirtualGatewayId "Use generic-lens or generic-optics with 'virtualGatewayId' instead." #-}

instance Core.FromJSON DescribeDirectConnectGatewayAssociations where
  toJSON DescribeDirectConnectGatewayAssociations {..} =
    Core.object
      ( Core.catMaybes
          [ ("associatedGatewayId" Core..=) Core.<$> associatedGatewayId,
            ("associationId" Core..=) Core.<$> associationId,
            ("directConnectGatewayId" Core..=) Core.<$> directConnectGatewayId,
            ("maxResults" Core..=) Core.<$> maxResults,
            ("nextToken" Core..=) Core.<$> nextToken,
            ("virtualGatewayId" Core..=) Core.<$> virtualGatewayId
          ]
      )

instance Core.AWSRequest DescribeDirectConnectGatewayAssociations where
  type
    Rs DescribeDirectConnectGatewayAssociations =
      DescribeDirectConnectGatewayAssociationsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "OvertureService.DescribeDirectConnectGatewayAssociations"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDirectConnectGatewayAssociationsResponse'
            Core.<$> (x Core..:? "directConnectGatewayAssociations")
            Core.<*> (x Core..:? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeDirectConnectGatewayAssociations where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        ( rs
            Lens.^? Lens.field @"directConnectGatewayAssociations" Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeDirectConnectGatewayAssociationsResponse' smart constructor.
data DescribeDirectConnectGatewayAssociationsResponse = DescribeDirectConnectGatewayAssociationsResponse'
  { -- | Information about the associations.
    directConnectGatewayAssociations :: Core.Maybe [Types.DirectConnectGatewayAssociation],
    -- | The token to retrieve the next page.
    nextToken :: Core.Maybe Types.PaginationToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeDirectConnectGatewayAssociationsResponse' value with any optional fields omitted.
mkDescribeDirectConnectGatewayAssociationsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeDirectConnectGatewayAssociationsResponse
mkDescribeDirectConnectGatewayAssociationsResponse responseStatus =
  DescribeDirectConnectGatewayAssociationsResponse'
    { directConnectGatewayAssociations =
        Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | Information about the associations.
--
-- /Note:/ Consider using 'directConnectGatewayAssociations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcgarrsDirectConnectGatewayAssociations :: Lens.Lens' DescribeDirectConnectGatewayAssociationsResponse (Core.Maybe [Types.DirectConnectGatewayAssociation])
ddcgarrsDirectConnectGatewayAssociations = Lens.field @"directConnectGatewayAssociations"
{-# DEPRECATED ddcgarrsDirectConnectGatewayAssociations "Use generic-lens or generic-optics with 'directConnectGatewayAssociations' instead." #-}

-- | The token to retrieve the next page.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcgarrsNextToken :: Lens.Lens' DescribeDirectConnectGatewayAssociationsResponse (Core.Maybe Types.PaginationToken)
ddcgarrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED ddcgarrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcgarrsResponseStatus :: Lens.Lens' DescribeDirectConnectGatewayAssociationsResponse Core.Int
ddcgarrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ddcgarrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}