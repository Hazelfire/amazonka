{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.DescribeEvents
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes events for a specified server. Results are ordered by time, with newest events first.
--
-- This operation is synchronous.
-- A @ResourceNotFoundException@ is thrown when the server does not exist. A @ValidationException@ is raised when parameters of the request are not valid.
--
-- This operation returns paginated results.
module Network.AWS.OpsWorksCM.DescribeEvents
  ( -- * Creating a request
    DescribeEvents (..),
    mkDescribeEvents,

    -- ** Request lenses
    deServerName,
    deMaxResults,
    deNextToken,

    -- * Destructuring the response
    DescribeEventsResponse (..),
    mkDescribeEventsResponse,

    -- ** Response lenses
    derrsNextToken,
    derrsServerEvents,
    derrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.OpsWorksCM.Types as Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { -- | The name of the server for which you want to view events.
    serverName :: Types.ServerName,
    -- | To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
    maxResults :: Core.Maybe Core.Natural,
    -- | NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call @DescribeEvents@ again, and assign the token from the previous results as the value of the @nextToken@ parameter. If there are no more results, the response object's @nextToken@ parameter value is @null@ . Setting a @nextToken@ value that was not returned in your previous results causes an @InvalidNextTokenException@ to occur.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeEvents' value with any optional fields omitted.
mkDescribeEvents ::
  -- | 'serverName'
  Types.ServerName ->
  DescribeEvents
mkDescribeEvents serverName =
  DescribeEvents'
    { serverName,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The name of the server for which you want to view events.
--
-- /Note:/ Consider using 'serverName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deServerName :: Lens.Lens' DescribeEvents Types.ServerName
deServerName = Lens.field @"serverName"
{-# DEPRECATED deServerName "Use generic-lens or generic-optics with 'serverName' instead." #-}

-- | To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deMaxResults :: Lens.Lens' DescribeEvents (Core.Maybe Core.Natural)
deMaxResults = Lens.field @"maxResults"
{-# DEPRECATED deMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call @DescribeEvents@ again, and assign the token from the previous results as the value of the @nextToken@ parameter. If there are no more results, the response object's @nextToken@ parameter value is @null@ . Setting a @nextToken@ value that was not returned in your previous results causes an @InvalidNextTokenException@ to occur.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deNextToken :: Lens.Lens' DescribeEvents (Core.Maybe Types.NextToken)
deNextToken = Lens.field @"nextToken"
{-# DEPRECATED deNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON DescribeEvents where
  toJSON DescribeEvents {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ServerName" Core..= serverName),
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest DescribeEvents where
  type Rs DescribeEvents = DescribeEventsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "OpsWorksCM_V2016_11_01.DescribeEvents")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEventsResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "ServerEvents")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeEvents where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"serverEvents" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeEventsResponse' smart constructor.
data DescribeEventsResponse = DescribeEventsResponse'
  { -- | NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call @DescribeEvents@ again, and assign the token from the previous results as the value of the @nextToken@ parameter. If there are no more results, the response object's @nextToken@ parameter value is @null@ . Setting a @nextToken@ value that was not returned in your previous results causes an @InvalidNextTokenException@ to occur.
    nextToken :: Core.Maybe Types.String,
    -- | Contains the response to a @DescribeEvents@ request.
    serverEvents :: Core.Maybe [Types.ServerEvent],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeEventsResponse' value with any optional fields omitted.
mkDescribeEventsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeEventsResponse
mkDescribeEventsResponse responseStatus =
  DescribeEventsResponse'
    { nextToken = Core.Nothing,
      serverEvents = Core.Nothing,
      responseStatus
    }

-- | NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call @DescribeEvents@ again, and assign the token from the previous results as the value of the @nextToken@ parameter. If there are no more results, the response object's @nextToken@ parameter value is @null@ . Setting a @nextToken@ value that was not returned in your previous results causes an @InvalidNextTokenException@ to occur.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
derrsNextToken :: Lens.Lens' DescribeEventsResponse (Core.Maybe Types.String)
derrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED derrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Contains the response to a @DescribeEvents@ request.
--
-- /Note:/ Consider using 'serverEvents' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
derrsServerEvents :: Lens.Lens' DescribeEventsResponse (Core.Maybe [Types.ServerEvent])
derrsServerEvents = Lens.field @"serverEvents"
{-# DEPRECATED derrsServerEvents "Use generic-lens or generic-optics with 'serverEvents' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
derrsResponseStatus :: Lens.Lens' DescribeEventsResponse Core.Int
derrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED derrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}