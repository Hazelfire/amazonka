{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.ListInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of instances which are in active state, creation-in-progress state, and failed state. Instances that aren't successfully created (they are in a failed state) are returned only for 24 hours after the CreateInstance API was invoked.
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListInstances
  ( -- * Creating a request
    ListInstances (..),
    mkListInstances,

    -- ** Request lenses
    liMaxResults,
    liNextToken,

    -- * Destructuring the response
    ListInstancesResponse (..),
    mkListInstancesResponse,

    -- ** Response lenses
    lirrsInstanceSummaryList,
    lirrsNextToken,
    lirrsResponseStatus,
  )
where

import qualified Network.AWS.Connect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListInstances' smart constructor.
data ListInstances = ListInstances'
  { -- | The maximimum number of results to return per page.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListInstances' value with any optional fields omitted.
mkListInstances ::
  ListInstances
mkListInstances =
  ListInstances'
    { maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The maximimum number of results to return per page.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
liMaxResults :: Lens.Lens' ListInstances (Core.Maybe Core.Natural)
liMaxResults = Lens.field @"maxResults"
{-# DEPRECATED liMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
liNextToken :: Lens.Lens' ListInstances (Core.Maybe Types.NextToken)
liNextToken = Lens.field @"nextToken"
{-# DEPRECATED liNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.AWSRequest ListInstances where
  type Rs ListInstances = ListInstancesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath = Core.rawPath "/instance",
        Core._rqQuery =
          Core.toQueryValue "maxResults" Core.<$> maxResults
            Core.<> (Core.toQueryValue "nextToken" Core.<$> nextToken),
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListInstancesResponse'
            Core.<$> (x Core..:? "InstanceSummaryList")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListInstances where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"instanceSummaryList" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse'
  { -- | Information about the instances.
    instanceSummaryList :: Core.Maybe [Types.InstanceSummary],
    -- | If there are additional results, this is the token for the next set of results.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListInstancesResponse' value with any optional fields omitted.
mkListInstancesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListInstancesResponse
mkListInstancesResponse responseStatus =
  ListInstancesResponse'
    { instanceSummaryList = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | Information about the instances.
--
-- /Note:/ Consider using 'instanceSummaryList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lirrsInstanceSummaryList :: Lens.Lens' ListInstancesResponse (Core.Maybe [Types.InstanceSummary])
lirrsInstanceSummaryList = Lens.field @"instanceSummaryList"
{-# DEPRECATED lirrsInstanceSummaryList "Use generic-lens or generic-optics with 'instanceSummaryList' instead." #-}

-- | If there are additional results, this is the token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lirrsNextToken :: Lens.Lens' ListInstancesResponse (Core.Maybe Types.NextToken)
lirrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lirrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lirrsResponseStatus :: Lens.Lens' ListInstancesResponse Core.Int
lirrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lirrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}