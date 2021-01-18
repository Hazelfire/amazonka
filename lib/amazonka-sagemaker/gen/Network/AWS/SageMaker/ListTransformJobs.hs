{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.ListTransformJobs
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists transform jobs.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListTransformJobs
  ( -- * Creating a request
    ListTransformJobs (..),
    mkListTransformJobs,

    -- ** Request lenses
    ltjCreationTimeAfter,
    ltjCreationTimeBefore,
    ltjLastModifiedTimeAfter,
    ltjLastModifiedTimeBefore,
    ltjMaxResults,
    ltjNameContains,
    ltjNextToken,
    ltjSortBy,
    ltjSortOrder,
    ltjStatusEquals,

    -- * Destructuring the response
    ListTransformJobsResponse (..),
    mkListTransformJobsResponse,

    -- ** Response lenses
    ltjrfrsTransformJobSummaries,
    ltjrfrsNextToken,
    ltjrfrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SageMaker.Types as Types

-- | /See:/ 'mkListTransformJobs' smart constructor.
data ListTransformJobs = ListTransformJobs'
  { -- | A filter that returns only transform jobs created after the specified time.
    creationTimeAfter :: Core.Maybe Core.NominalDiffTime,
    -- | A filter that returns only transform jobs created before the specified time.
    creationTimeBefore :: Core.Maybe Core.NominalDiffTime,
    -- | A filter that returns only transform jobs modified after the specified time.
    lastModifiedTimeAfter :: Core.Maybe Core.NominalDiffTime,
    -- | A filter that returns only transform jobs modified before the specified time.
    lastModifiedTimeBefore :: Core.Maybe Core.NominalDiffTime,
    -- | The maximum number of transform jobs to return in the response. The default value is @10@ .
    maxResults :: Core.Maybe Core.Natural,
    -- | A string in the transform job name. This filter returns only transform jobs whose name contains the specified string.
    nameContains :: Core.Maybe Types.NameContains,
    -- | If the result of the previous @ListTransformJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of transform jobs, use the token in the next request.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The field to sort results by. The default is @CreationTime@ .
    sortBy :: Core.Maybe Types.SortBy,
    -- | The sort order for results. The default is @Descending@ .
    sortOrder :: Core.Maybe Types.SortOrder,
    -- | A filter that retrieves only transform jobs with a specific status.
    statusEquals :: Core.Maybe Types.TransformJobStatus
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListTransformJobs' value with any optional fields omitted.
mkListTransformJobs ::
  ListTransformJobs
mkListTransformJobs =
  ListTransformJobs'
    { creationTimeAfter = Core.Nothing,
      creationTimeBefore = Core.Nothing,
      lastModifiedTimeAfter = Core.Nothing,
      lastModifiedTimeBefore = Core.Nothing,
      maxResults = Core.Nothing,
      nameContains = Core.Nothing,
      nextToken = Core.Nothing,
      sortBy = Core.Nothing,
      sortOrder = Core.Nothing,
      statusEquals = Core.Nothing
    }

-- | A filter that returns only transform jobs created after the specified time.
--
-- /Note:/ Consider using 'creationTimeAfter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjCreationTimeAfter :: Lens.Lens' ListTransformJobs (Core.Maybe Core.NominalDiffTime)
ltjCreationTimeAfter = Lens.field @"creationTimeAfter"
{-# DEPRECATED ltjCreationTimeAfter "Use generic-lens or generic-optics with 'creationTimeAfter' instead." #-}

-- | A filter that returns only transform jobs created before the specified time.
--
-- /Note:/ Consider using 'creationTimeBefore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjCreationTimeBefore :: Lens.Lens' ListTransformJobs (Core.Maybe Core.NominalDiffTime)
ltjCreationTimeBefore = Lens.field @"creationTimeBefore"
{-# DEPRECATED ltjCreationTimeBefore "Use generic-lens or generic-optics with 'creationTimeBefore' instead." #-}

-- | A filter that returns only transform jobs modified after the specified time.
--
-- /Note:/ Consider using 'lastModifiedTimeAfter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjLastModifiedTimeAfter :: Lens.Lens' ListTransformJobs (Core.Maybe Core.NominalDiffTime)
ltjLastModifiedTimeAfter = Lens.field @"lastModifiedTimeAfter"
{-# DEPRECATED ltjLastModifiedTimeAfter "Use generic-lens or generic-optics with 'lastModifiedTimeAfter' instead." #-}

-- | A filter that returns only transform jobs modified before the specified time.
--
-- /Note:/ Consider using 'lastModifiedTimeBefore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjLastModifiedTimeBefore :: Lens.Lens' ListTransformJobs (Core.Maybe Core.NominalDiffTime)
ltjLastModifiedTimeBefore = Lens.field @"lastModifiedTimeBefore"
{-# DEPRECATED ltjLastModifiedTimeBefore "Use generic-lens or generic-optics with 'lastModifiedTimeBefore' instead." #-}

-- | The maximum number of transform jobs to return in the response. The default value is @10@ .
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjMaxResults :: Lens.Lens' ListTransformJobs (Core.Maybe Core.Natural)
ltjMaxResults = Lens.field @"maxResults"
{-# DEPRECATED ltjMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | A string in the transform job name. This filter returns only transform jobs whose name contains the specified string.
--
-- /Note:/ Consider using 'nameContains' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjNameContains :: Lens.Lens' ListTransformJobs (Core.Maybe Types.NameContains)
ltjNameContains = Lens.field @"nameContains"
{-# DEPRECATED ltjNameContains "Use generic-lens or generic-optics with 'nameContains' instead." #-}

-- | If the result of the previous @ListTransformJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of transform jobs, use the token in the next request.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjNextToken :: Lens.Lens' ListTransformJobs (Core.Maybe Types.NextToken)
ltjNextToken = Lens.field @"nextToken"
{-# DEPRECATED ltjNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The field to sort results by. The default is @CreationTime@ .
--
-- /Note:/ Consider using 'sortBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjSortBy :: Lens.Lens' ListTransformJobs (Core.Maybe Types.SortBy)
ltjSortBy = Lens.field @"sortBy"
{-# DEPRECATED ltjSortBy "Use generic-lens or generic-optics with 'sortBy' instead." #-}

-- | The sort order for results. The default is @Descending@ .
--
-- /Note:/ Consider using 'sortOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjSortOrder :: Lens.Lens' ListTransformJobs (Core.Maybe Types.SortOrder)
ltjSortOrder = Lens.field @"sortOrder"
{-# DEPRECATED ltjSortOrder "Use generic-lens or generic-optics with 'sortOrder' instead." #-}

-- | A filter that retrieves only transform jobs with a specific status.
--
-- /Note:/ Consider using 'statusEquals' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjStatusEquals :: Lens.Lens' ListTransformJobs (Core.Maybe Types.TransformJobStatus)
ltjStatusEquals = Lens.field @"statusEquals"
{-# DEPRECATED ltjStatusEquals "Use generic-lens or generic-optics with 'statusEquals' instead." #-}

instance Core.FromJSON ListTransformJobs where
  toJSON ListTransformJobs {..} =
    Core.object
      ( Core.catMaybes
          [ ("CreationTimeAfter" Core..=) Core.<$> creationTimeAfter,
            ("CreationTimeBefore" Core..=) Core.<$> creationTimeBefore,
            ("LastModifiedTimeAfter" Core..=) Core.<$> lastModifiedTimeAfter,
            ("LastModifiedTimeBefore" Core..=) Core.<$> lastModifiedTimeBefore,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NameContains" Core..=) Core.<$> nameContains,
            ("NextToken" Core..=) Core.<$> nextToken,
            ("SortBy" Core..=) Core.<$> sortBy,
            ("SortOrder" Core..=) Core.<$> sortOrder,
            ("StatusEquals" Core..=) Core.<$> statusEquals
          ]
      )

instance Core.AWSRequest ListTransformJobs where
  type Rs ListTransformJobs = ListTransformJobsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "SageMaker.ListTransformJobs")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTransformJobsResponse'
            Core.<$> (x Core..:? "TransformJobSummaries" Core..!= Core.mempty)
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListTransformJobs where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^. Lens.field @"transformJobSummaries") =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListTransformJobsResponse' smart constructor.
data ListTransformJobsResponse = ListTransformJobsResponse'
  { -- | An array of @TransformJobSummary@ objects.
    transformJobSummaries :: [Types.TransformJobSummary],
    -- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of transform jobs, use it in the next request.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListTransformJobsResponse' value with any optional fields omitted.
mkListTransformJobsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListTransformJobsResponse
mkListTransformJobsResponse responseStatus =
  ListTransformJobsResponse'
    { transformJobSummaries = Core.mempty,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | An array of @TransformJobSummary@ objects.
--
-- /Note:/ Consider using 'transformJobSummaries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjrfrsTransformJobSummaries :: Lens.Lens' ListTransformJobsResponse [Types.TransformJobSummary]
ltjrfrsTransformJobSummaries = Lens.field @"transformJobSummaries"
{-# DEPRECATED ltjrfrsTransformJobSummaries "Use generic-lens or generic-optics with 'transformJobSummaries' instead." #-}

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of transform jobs, use it in the next request.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjrfrsNextToken :: Lens.Lens' ListTransformJobsResponse (Core.Maybe Types.NextToken)
ltjrfrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED ltjrfrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltjrfrsResponseStatus :: Lens.Lens' ListTransformJobsResponse Core.Int
ltjrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ltjrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}