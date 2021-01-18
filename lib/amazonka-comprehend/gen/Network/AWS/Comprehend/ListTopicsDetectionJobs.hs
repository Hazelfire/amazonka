{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.ListTopicsDetectionJobs
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the topic detection jobs that you have submitted.
--
-- This operation returns paginated results.
module Network.AWS.Comprehend.ListTopicsDetectionJobs
  ( -- * Creating a request
    ListTopicsDetectionJobs (..),
    mkListTopicsDetectionJobs,

    -- ** Request lenses
    ltdjFilter,
    ltdjMaxResults,
    ltdjNextToken,

    -- * Destructuring the response
    ListTopicsDetectionJobsResponse (..),
    mkListTopicsDetectionJobsResponse,

    -- ** Response lenses
    ltdjrrsNextToken,
    ltdjrrsTopicsDetectionJobPropertiesList,
    ltdjrrsResponseStatus,
  )
where

import qualified Network.AWS.Comprehend.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListTopicsDetectionJobs' smart constructor.
data ListTopicsDetectionJobs = ListTopicsDetectionJobs'
  { -- | Filters the jobs that are returned. Jobs can be filtered on their name, status, or the date and time that they were submitted. You can set only one filter at a time.
    filter :: Core.Maybe Types.TopicsDetectionJobFilter,
    -- | The maximum number of results to return in each page. The default is 100.
    maxResults :: Core.Maybe Core.Natural,
    -- | Identifies the next page of results to return.
    nextToken :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListTopicsDetectionJobs' value with any optional fields omitted.
mkListTopicsDetectionJobs ::
  ListTopicsDetectionJobs
mkListTopicsDetectionJobs =
  ListTopicsDetectionJobs'
    { filter = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | Filters the jobs that are returned. Jobs can be filtered on their name, status, or the date and time that they were submitted. You can set only one filter at a time.
--
-- /Note:/ Consider using 'filter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltdjFilter :: Lens.Lens' ListTopicsDetectionJobs (Core.Maybe Types.TopicsDetectionJobFilter)
ltdjFilter = Lens.field @"filter"
{-# DEPRECATED ltdjFilter "Use generic-lens or generic-optics with 'filter' instead." #-}

-- | The maximum number of results to return in each page. The default is 100.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltdjMaxResults :: Lens.Lens' ListTopicsDetectionJobs (Core.Maybe Core.Natural)
ltdjMaxResults = Lens.field @"maxResults"
{-# DEPRECATED ltdjMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | Identifies the next page of results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltdjNextToken :: Lens.Lens' ListTopicsDetectionJobs (Core.Maybe Types.String)
ltdjNextToken = Lens.field @"nextToken"
{-# DEPRECATED ltdjNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListTopicsDetectionJobs where
  toJSON ListTopicsDetectionJobs {..} =
    Core.object
      ( Core.catMaybes
          [ ("Filter" Core..=) Core.<$> filter,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListTopicsDetectionJobs where
  type Rs ListTopicsDetectionJobs = ListTopicsDetectionJobsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "Comprehend_20171127.ListTopicsDetectionJobs")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTopicsDetectionJobsResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "TopicsDetectionJobPropertiesList")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListTopicsDetectionJobs where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        ( rs
            Lens.^? Lens.field @"topicsDetectionJobPropertiesList" Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListTopicsDetectionJobsResponse' smart constructor.
data ListTopicsDetectionJobsResponse = ListTopicsDetectionJobsResponse'
  { -- | Identifies the next page of results to return.
    nextToken :: Core.Maybe Types.String,
    -- | A list containing the properties of each job that is returned.
    topicsDetectionJobPropertiesList :: Core.Maybe [Types.TopicsDetectionJobProperties],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListTopicsDetectionJobsResponse' value with any optional fields omitted.
mkListTopicsDetectionJobsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListTopicsDetectionJobsResponse
mkListTopicsDetectionJobsResponse responseStatus =
  ListTopicsDetectionJobsResponse'
    { nextToken = Core.Nothing,
      topicsDetectionJobPropertiesList = Core.Nothing,
      responseStatus
    }

-- | Identifies the next page of results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltdjrrsNextToken :: Lens.Lens' ListTopicsDetectionJobsResponse (Core.Maybe Types.String)
ltdjrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED ltdjrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | A list containing the properties of each job that is returned.
--
-- /Note:/ Consider using 'topicsDetectionJobPropertiesList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltdjrrsTopicsDetectionJobPropertiesList :: Lens.Lens' ListTopicsDetectionJobsResponse (Core.Maybe [Types.TopicsDetectionJobProperties])
ltdjrrsTopicsDetectionJobPropertiesList = Lens.field @"topicsDetectionJobPropertiesList"
{-# DEPRECATED ltdjrrsTopicsDetectionJobPropertiesList "Use generic-lens or generic-optics with 'topicsDetectionJobPropertiesList' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltdjrrsResponseStatus :: Lens.Lens' ListTopicsDetectionJobsResponse Core.Int
ltdjrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ltdjrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}