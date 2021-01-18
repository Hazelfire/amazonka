{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.SearchAddressBooks
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches address books and lists the ones that meet a set of filter and sort criteria.
module Network.AWS.AlexaBusiness.SearchAddressBooks
  ( -- * Creating a request
    SearchAddressBooks (..),
    mkSearchAddressBooks,

    -- ** Request lenses
    sabFilters,
    sabMaxResults,
    sabNextToken,
    sabSortCriteria,

    -- * Destructuring the response
    SearchAddressBooksResponse (..),
    mkSearchAddressBooksResponse,

    -- ** Response lenses
    sabrrsAddressBooks,
    sabrrsNextToken,
    sabrrsTotalCount,
    sabrrsResponseStatus,
  )
where

import qualified Network.AWS.AlexaBusiness.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkSearchAddressBooks' smart constructor.
data SearchAddressBooks = SearchAddressBooks'
  { -- | The filters to use to list a specified set of address books. The supported filter key is AddressBookName.
    filters :: Core.Maybe [Types.Filter],
    -- | The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    maxResults :: Core.Maybe Core.Natural,
    -- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The sort order to use in listing the specified set of address books. The supported sort key is AddressBookName.
    sortCriteria :: Core.Maybe [Types.Sort]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SearchAddressBooks' value with any optional fields omitted.
mkSearchAddressBooks ::
  SearchAddressBooks
mkSearchAddressBooks =
  SearchAddressBooks'
    { filters = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing,
      sortCriteria = Core.Nothing
    }

-- | The filters to use to list a specified set of address books. The supported filter key is AddressBookName.
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sabFilters :: Lens.Lens' SearchAddressBooks (Core.Maybe [Types.Filter])
sabFilters = Lens.field @"filters"
{-# DEPRECATED sabFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sabMaxResults :: Lens.Lens' SearchAddressBooks (Core.Maybe Core.Natural)
sabMaxResults = Lens.field @"maxResults"
{-# DEPRECATED sabMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sabNextToken :: Lens.Lens' SearchAddressBooks (Core.Maybe Types.NextToken)
sabNextToken = Lens.field @"nextToken"
{-# DEPRECATED sabNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The sort order to use in listing the specified set of address books. The supported sort key is AddressBookName.
--
-- /Note:/ Consider using 'sortCriteria' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sabSortCriteria :: Lens.Lens' SearchAddressBooks (Core.Maybe [Types.Sort])
sabSortCriteria = Lens.field @"sortCriteria"
{-# DEPRECATED sabSortCriteria "Use generic-lens or generic-optics with 'sortCriteria' instead." #-}

instance Core.FromJSON SearchAddressBooks where
  toJSON SearchAddressBooks {..} =
    Core.object
      ( Core.catMaybes
          [ ("Filters" Core..=) Core.<$> filters,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken,
            ("SortCriteria" Core..=) Core.<$> sortCriteria
          ]
      )

instance Core.AWSRequest SearchAddressBooks where
  type Rs SearchAddressBooks = SearchAddressBooksResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AlexaForBusiness.SearchAddressBooks")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          SearchAddressBooksResponse'
            Core.<$> (x Core..:? "AddressBooks")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "TotalCount")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkSearchAddressBooksResponse' smart constructor.
data SearchAddressBooksResponse = SearchAddressBooksResponse'
  { -- | The address books that meet the specified set of filter criteria, in sort order.
    addressBooks :: Core.Maybe [Types.AddressBookData],
    -- | The token returned to indicate that there is more data available.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The total number of address books returned.
    totalCount :: Core.Maybe Core.Int,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SearchAddressBooksResponse' value with any optional fields omitted.
mkSearchAddressBooksResponse ::
  -- | 'responseStatus'
  Core.Int ->
  SearchAddressBooksResponse
mkSearchAddressBooksResponse responseStatus =
  SearchAddressBooksResponse'
    { addressBooks = Core.Nothing,
      nextToken = Core.Nothing,
      totalCount = Core.Nothing,
      responseStatus
    }

-- | The address books that meet the specified set of filter criteria, in sort order.
--
-- /Note:/ Consider using 'addressBooks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sabrrsAddressBooks :: Lens.Lens' SearchAddressBooksResponse (Core.Maybe [Types.AddressBookData])
sabrrsAddressBooks = Lens.field @"addressBooks"
{-# DEPRECATED sabrrsAddressBooks "Use generic-lens or generic-optics with 'addressBooks' instead." #-}

-- | The token returned to indicate that there is more data available.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sabrrsNextToken :: Lens.Lens' SearchAddressBooksResponse (Core.Maybe Types.NextToken)
sabrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED sabrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The total number of address books returned.
--
-- /Note:/ Consider using 'totalCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sabrrsTotalCount :: Lens.Lens' SearchAddressBooksResponse (Core.Maybe Core.Int)
sabrrsTotalCount = Lens.field @"totalCount"
{-# DEPRECATED sabrrsTotalCount "Use generic-lens or generic-optics with 'totalCount' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sabrrsResponseStatus :: Lens.Lens' SearchAddressBooksResponse Core.Int
sabrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED sabrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}