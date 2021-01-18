{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeHostReservationOfferings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Dedicated Host reservations that are available to purchase.
--
-- The results describe all of the Dedicated Host reservation offerings, including offerings that might not match the instance family and Region of your Dedicated Hosts. When purchasing an offering, ensure that the instance family and Region of the offering matches that of the Dedicated Hosts with which it is to be associated. For more information about supported instance types, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html Dedicated Hosts Overview> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeHostReservationOfferings
  ( -- * Creating a request
    DescribeHostReservationOfferings (..),
    mkDescribeHostReservationOfferings,

    -- ** Request lenses
    dhroFilter,
    dhroMaxDuration,
    dhroMaxResults,
    dhroMinDuration,
    dhroNextToken,
    dhroOfferingId,

    -- * Destructuring the response
    DescribeHostReservationOfferingsResponse (..),
    mkDescribeHostReservationOfferingsResponse,

    -- ** Response lenses
    dhrorrsNextToken,
    dhrorrsOfferingSet,
    dhrorrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeHostReservationOfferings' smart constructor.
data DescribeHostReservationOfferings = DescribeHostReservationOfferings'
  { -- | The filters.
    --
    --
    --     * @instance-family@ - The instance family of the offering (for example, @m4@ ).
    --
    --
    --     * @payment-option@ - The payment option (@NoUpfront@ | @PartialUpfront@ | @AllUpfront@ ).
    filter :: Core.Maybe [Types.Filter],
    -- | This is the maximum duration of the reservation to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 94608000 for three years.
    maxDuration :: Core.Maybe Core.Int,
    -- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error.
    maxResults :: Core.Maybe Core.Natural,
    -- | This is the minimum duration of the reservation you'd like to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 31536000 for one year.
    minDuration :: Core.Maybe Core.Int,
    -- | The token to use to retrieve the next page of results.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The ID of the reservation offering.
    offeringId :: Core.Maybe Types.OfferingId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeHostReservationOfferings' value with any optional fields omitted.
mkDescribeHostReservationOfferings ::
  DescribeHostReservationOfferings
mkDescribeHostReservationOfferings =
  DescribeHostReservationOfferings'
    { filter = Core.Nothing,
      maxDuration = Core.Nothing,
      maxResults = Core.Nothing,
      minDuration = Core.Nothing,
      nextToken = Core.Nothing,
      offeringId = Core.Nothing
    }

-- | The filters.
--
--
--     * @instance-family@ - The instance family of the offering (for example, @m4@ ).
--
--
--     * @payment-option@ - The payment option (@NoUpfront@ | @PartialUpfront@ | @AllUpfront@ ).
--
--
--
-- /Note:/ Consider using 'filter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dhroFilter :: Lens.Lens' DescribeHostReservationOfferings (Core.Maybe [Types.Filter])
dhroFilter = Lens.field @"filter"
{-# DEPRECATED dhroFilter "Use generic-lens or generic-optics with 'filter' instead." #-}

-- | This is the maximum duration of the reservation to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 94608000 for three years.
--
-- /Note:/ Consider using 'maxDuration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dhroMaxDuration :: Lens.Lens' DescribeHostReservationOfferings (Core.Maybe Core.Int)
dhroMaxDuration = Lens.field @"maxDuration"
{-# DEPRECATED dhroMaxDuration "Use generic-lens or generic-optics with 'maxDuration' instead." #-}

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dhroMaxResults :: Lens.Lens' DescribeHostReservationOfferings (Core.Maybe Core.Natural)
dhroMaxResults = Lens.field @"maxResults"
{-# DEPRECATED dhroMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | This is the minimum duration of the reservation you'd like to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 31536000 for one year.
--
-- /Note:/ Consider using 'minDuration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dhroMinDuration :: Lens.Lens' DescribeHostReservationOfferings (Core.Maybe Core.Int)
dhroMinDuration = Lens.field @"minDuration"
{-# DEPRECATED dhroMinDuration "Use generic-lens or generic-optics with 'minDuration' instead." #-}

-- | The token to use to retrieve the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dhroNextToken :: Lens.Lens' DescribeHostReservationOfferings (Core.Maybe Types.NextToken)
dhroNextToken = Lens.field @"nextToken"
{-# DEPRECATED dhroNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The ID of the reservation offering.
--
-- /Note:/ Consider using 'offeringId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dhroOfferingId :: Lens.Lens' DescribeHostReservationOfferings (Core.Maybe Types.OfferingId)
dhroOfferingId = Lens.field @"offeringId"
{-# DEPRECATED dhroOfferingId "Use generic-lens or generic-optics with 'offeringId' instead." #-}

instance Core.AWSRequest DescribeHostReservationOfferings where
  type
    Rs DescribeHostReservationOfferings =
      DescribeHostReservationOfferingsResponse
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
            ( Core.pure ("Action", "DescribeHostReservationOfferings")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryList "Filter" Core.<$> filter)
                Core.<> (Core.toQueryValue "MaxDuration" Core.<$> maxDuration)
                Core.<> (Core.toQueryValue "MaxResults" Core.<$> maxResults)
                Core.<> (Core.toQueryValue "MinDuration" Core.<$> minDuration)
                Core.<> (Core.toQueryValue "NextToken" Core.<$> nextToken)
                Core.<> (Core.toQueryValue "OfferingId" Core.<$> offeringId)
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeHostReservationOfferingsResponse'
            Core.<$> (x Core..@? "nextToken")
            Core.<*> (x Core..@? "offeringSet" Core..<@> Core.parseXMLList "item")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeHostReservationOfferings where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"offeringSet" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeHostReservationOfferingsResponse' smart constructor.
data DescribeHostReservationOfferingsResponse = DescribeHostReservationOfferingsResponse'
  { -- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
    nextToken :: Core.Maybe Types.String,
    -- | Information about the offerings.
    offeringSet :: Core.Maybe [Types.HostOffering],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeHostReservationOfferingsResponse' value with any optional fields omitted.
mkDescribeHostReservationOfferingsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeHostReservationOfferingsResponse
mkDescribeHostReservationOfferingsResponse responseStatus =
  DescribeHostReservationOfferingsResponse'
    { nextToken =
        Core.Nothing,
      offeringSet = Core.Nothing,
      responseStatus
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dhrorrsNextToken :: Lens.Lens' DescribeHostReservationOfferingsResponse (Core.Maybe Types.String)
dhrorrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dhrorrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Information about the offerings.
--
-- /Note:/ Consider using 'offeringSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dhrorrsOfferingSet :: Lens.Lens' DescribeHostReservationOfferingsResponse (Core.Maybe [Types.HostOffering])
dhrorrsOfferingSet = Lens.field @"offeringSet"
{-# DEPRECATED dhrorrsOfferingSet "Use generic-lens or generic-optics with 'offeringSet' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dhrorrsResponseStatus :: Lens.Lens' DescribeHostReservationOfferingsResponse Core.Int
dhrorrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dhrorrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}