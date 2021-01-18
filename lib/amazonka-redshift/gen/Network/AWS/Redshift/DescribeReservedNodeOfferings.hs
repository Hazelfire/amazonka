{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.DescribeReservedNodeOfferings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the available reserved node offerings by Amazon Redshift with their descriptions including the node type, the fixed and recurring costs of reserving the node and duration the node will be reserved for you. These descriptions help you determine which reserve node offering you want to purchase. You then use the unique offering ID in you call to 'PurchaseReservedNodeOffering' to reserve one or more nodes for your Amazon Redshift cluster.
--
-- For more information about reserved node offerings, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html Purchasing Reserved Nodes> in the /Amazon Redshift Cluster Management Guide/ .
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeReservedNodeOfferings
  ( -- * Creating a request
    DescribeReservedNodeOfferings (..),
    mkDescribeReservedNodeOfferings,

    -- ** Request lenses
    drnoMarker,
    drnoMaxRecords,
    drnoReservedNodeOfferingId,

    -- * Destructuring the response
    DescribeReservedNodeOfferingsResponse (..),
    mkDescribeReservedNodeOfferingsResponse,

    -- ** Response lenses
    drnorrsMarker,
    drnorrsReservedNodeOfferings,
    drnorrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Redshift.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'mkDescribeReservedNodeOfferings' smart constructor.
data DescribeReservedNodeOfferings = DescribeReservedNodeOfferings'
  { -- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeReservedNodeOfferings' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
    marker :: Core.Maybe Types.String,
    -- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.
    --
    -- Default: @100@
    -- Constraints: minimum 20, maximum 100.
    maxRecords :: Core.Maybe Core.Int,
    -- | The unique identifier for the offering.
    reservedNodeOfferingId :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReservedNodeOfferings' value with any optional fields omitted.
mkDescribeReservedNodeOfferings ::
  DescribeReservedNodeOfferings
mkDescribeReservedNodeOfferings =
  DescribeReservedNodeOfferings'
    { marker = Core.Nothing,
      maxRecords = Core.Nothing,
      reservedNodeOfferingId = Core.Nothing
    }

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeReservedNodeOfferings' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drnoMarker :: Lens.Lens' DescribeReservedNodeOfferings (Core.Maybe Types.String)
drnoMarker = Lens.field @"marker"
{-# DEPRECATED drnoMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.
--
-- Default: @100@
-- Constraints: minimum 20, maximum 100.
--
-- /Note:/ Consider using 'maxRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drnoMaxRecords :: Lens.Lens' DescribeReservedNodeOfferings (Core.Maybe Core.Int)
drnoMaxRecords = Lens.field @"maxRecords"
{-# DEPRECATED drnoMaxRecords "Use generic-lens or generic-optics with 'maxRecords' instead." #-}

-- | The unique identifier for the offering.
--
-- /Note:/ Consider using 'reservedNodeOfferingId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drnoReservedNodeOfferingId :: Lens.Lens' DescribeReservedNodeOfferings (Core.Maybe Types.String)
drnoReservedNodeOfferingId = Lens.field @"reservedNodeOfferingId"
{-# DEPRECATED drnoReservedNodeOfferingId "Use generic-lens or generic-optics with 'reservedNodeOfferingId' instead." #-}

instance Core.AWSRequest DescribeReservedNodeOfferings where
  type
    Rs DescribeReservedNodeOfferings =
      DescribeReservedNodeOfferingsResponse
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
            ( Core.pure ("Action", "DescribeReservedNodeOfferings")
                Core.<> (Core.pure ("Version", "2012-12-01"))
                Core.<> (Core.toQueryValue "Marker" Core.<$> marker)
                Core.<> (Core.toQueryValue "MaxRecords" Core.<$> maxRecords)
                Core.<> ( Core.toQueryValue "ReservedNodeOfferingId"
                            Core.<$> reservedNodeOfferingId
                        )
            )
      }
  response =
    Response.receiveXMLWrapper
      "DescribeReservedNodeOfferingsResult"
      ( \s h x ->
          DescribeReservedNodeOfferingsResponse'
            Core.<$> (x Core..@? "Marker")
            Core.<*> ( x Core..@? "ReservedNodeOfferings"
                         Core..<@> Core.parseXMLList "ReservedNodeOffering"
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeReservedNodeOfferings where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"marker") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"reservedNodeOfferings" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"marker"
        )

-- |
--
-- /See:/ 'mkDescribeReservedNodeOfferingsResponse' smart constructor.
data DescribeReservedNodeOfferingsResponse = DescribeReservedNodeOfferingsResponse'
  { -- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
    marker :: Core.Maybe Types.Marker,
    -- | A list of @ReservedNodeOffering@ objects.
    reservedNodeOfferings :: Core.Maybe [Types.ReservedNodeOffering],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReservedNodeOfferingsResponse' value with any optional fields omitted.
mkDescribeReservedNodeOfferingsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeReservedNodeOfferingsResponse
mkDescribeReservedNodeOfferingsResponse responseStatus =
  DescribeReservedNodeOfferingsResponse'
    { marker = Core.Nothing,
      reservedNodeOfferings = Core.Nothing,
      responseStatus
    }

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drnorrsMarker :: Lens.Lens' DescribeReservedNodeOfferingsResponse (Core.Maybe Types.Marker)
drnorrsMarker = Lens.field @"marker"
{-# DEPRECATED drnorrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | A list of @ReservedNodeOffering@ objects.
--
-- /Note:/ Consider using 'reservedNodeOfferings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drnorrsReservedNodeOfferings :: Lens.Lens' DescribeReservedNodeOfferingsResponse (Core.Maybe [Types.ReservedNodeOffering])
drnorrsReservedNodeOfferings = Lens.field @"reservedNodeOfferings"
{-# DEPRECATED drnorrsReservedNodeOfferings "Use generic-lens or generic-optics with 'reservedNodeOfferings' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drnorrsResponseStatus :: Lens.Lens' DescribeReservedNodeOfferingsResponse Core.Int
drnorrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED drnorrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}