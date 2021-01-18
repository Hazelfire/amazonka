{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.ListMonitoringExecutions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns list of all monitoring job executions.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListMonitoringExecutions
  ( -- * Creating a request
    ListMonitoringExecutions (..),
    mkListMonitoringExecutions,

    -- ** Request lenses
    lmeCreationTimeAfter,
    lmeCreationTimeBefore,
    lmeEndpointName,
    lmeLastModifiedTimeAfter,
    lmeLastModifiedTimeBefore,
    lmeMaxResults,
    lmeMonitoringScheduleName,
    lmeNextToken,
    lmeScheduledTimeAfter,
    lmeScheduledTimeBefore,
    lmeSortBy,
    lmeSortOrder,
    lmeStatusEquals,

    -- * Destructuring the response
    ListMonitoringExecutionsResponse (..),
    mkListMonitoringExecutionsResponse,

    -- ** Response lenses
    lmerrsMonitoringExecutionSummaries,
    lmerrsNextToken,
    lmerrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SageMaker.Types as Types

-- | /See:/ 'mkListMonitoringExecutions' smart constructor.
data ListMonitoringExecutions = ListMonitoringExecutions'
  { -- | A filter that returns only jobs created after a specified time.
    creationTimeAfter :: Core.Maybe Core.NominalDiffTime,
    -- | A filter that returns only jobs created before a specified time.
    creationTimeBefore :: Core.Maybe Core.NominalDiffTime,
    -- | Name of a specific endpoint to fetch jobs for.
    endpointName :: Core.Maybe Types.EndpointName,
    -- | A filter that returns only jobs modified before a specified time.
    lastModifiedTimeAfter :: Core.Maybe Core.NominalDiffTime,
    -- | A filter that returns only jobs modified after a specified time.
    lastModifiedTimeBefore :: Core.Maybe Core.NominalDiffTime,
    -- | The maximum number of jobs to return in the response. The default value is 10.
    maxResults :: Core.Maybe Core.Natural,
    -- | Name of a specific schedule to fetch jobs for.
    monitoringScheduleName :: Core.Maybe Types.MonitoringScheduleName,
    -- | The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
    nextToken :: Core.Maybe Types.NextToken,
    -- | Filter for jobs scheduled after a specified time.
    scheduledTimeAfter :: Core.Maybe Core.NominalDiffTime,
    -- | Filter for jobs scheduled before a specified time.
    scheduledTimeBefore :: Core.Maybe Core.NominalDiffTime,
    -- | Whether to sort results by @Status@ , @CreationTime@ , @ScheduledTime@ field. The default is @CreationTime@ .
    sortBy :: Core.Maybe Types.MonitoringExecutionSortKey,
    -- | Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
    sortOrder :: Core.Maybe Types.SortOrder,
    -- | A filter that retrieves only jobs with a specific status.
    statusEquals :: Core.Maybe Types.ExecutionStatus
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListMonitoringExecutions' value with any optional fields omitted.
mkListMonitoringExecutions ::
  ListMonitoringExecutions
mkListMonitoringExecutions =
  ListMonitoringExecutions'
    { creationTimeAfter = Core.Nothing,
      creationTimeBefore = Core.Nothing,
      endpointName = Core.Nothing,
      lastModifiedTimeAfter = Core.Nothing,
      lastModifiedTimeBefore = Core.Nothing,
      maxResults = Core.Nothing,
      monitoringScheduleName = Core.Nothing,
      nextToken = Core.Nothing,
      scheduledTimeAfter = Core.Nothing,
      scheduledTimeBefore = Core.Nothing,
      sortBy = Core.Nothing,
      sortOrder = Core.Nothing,
      statusEquals = Core.Nothing
    }

-- | A filter that returns only jobs created after a specified time.
--
-- /Note:/ Consider using 'creationTimeAfter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeCreationTimeAfter :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Core.NominalDiffTime)
lmeCreationTimeAfter = Lens.field @"creationTimeAfter"
{-# DEPRECATED lmeCreationTimeAfter "Use generic-lens or generic-optics with 'creationTimeAfter' instead." #-}

-- | A filter that returns only jobs created before a specified time.
--
-- /Note:/ Consider using 'creationTimeBefore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeCreationTimeBefore :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Core.NominalDiffTime)
lmeCreationTimeBefore = Lens.field @"creationTimeBefore"
{-# DEPRECATED lmeCreationTimeBefore "Use generic-lens or generic-optics with 'creationTimeBefore' instead." #-}

-- | Name of a specific endpoint to fetch jobs for.
--
-- /Note:/ Consider using 'endpointName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeEndpointName :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Types.EndpointName)
lmeEndpointName = Lens.field @"endpointName"
{-# DEPRECATED lmeEndpointName "Use generic-lens or generic-optics with 'endpointName' instead." #-}

-- | A filter that returns only jobs modified before a specified time.
--
-- /Note:/ Consider using 'lastModifiedTimeAfter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeLastModifiedTimeAfter :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Core.NominalDiffTime)
lmeLastModifiedTimeAfter = Lens.field @"lastModifiedTimeAfter"
{-# DEPRECATED lmeLastModifiedTimeAfter "Use generic-lens or generic-optics with 'lastModifiedTimeAfter' instead." #-}

-- | A filter that returns only jobs modified after a specified time.
--
-- /Note:/ Consider using 'lastModifiedTimeBefore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeLastModifiedTimeBefore :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Core.NominalDiffTime)
lmeLastModifiedTimeBefore = Lens.field @"lastModifiedTimeBefore"
{-# DEPRECATED lmeLastModifiedTimeBefore "Use generic-lens or generic-optics with 'lastModifiedTimeBefore' instead." #-}

-- | The maximum number of jobs to return in the response. The default value is 10.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeMaxResults :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Core.Natural)
lmeMaxResults = Lens.field @"maxResults"
{-# DEPRECATED lmeMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | Name of a specific schedule to fetch jobs for.
--
-- /Note:/ Consider using 'monitoringScheduleName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeMonitoringScheduleName :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Types.MonitoringScheduleName)
lmeMonitoringScheduleName = Lens.field @"monitoringScheduleName"
{-# DEPRECATED lmeMonitoringScheduleName "Use generic-lens or generic-optics with 'monitoringScheduleName' instead." #-}

-- | The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeNextToken :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Types.NextToken)
lmeNextToken = Lens.field @"nextToken"
{-# DEPRECATED lmeNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Filter for jobs scheduled after a specified time.
--
-- /Note:/ Consider using 'scheduledTimeAfter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeScheduledTimeAfter :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Core.NominalDiffTime)
lmeScheduledTimeAfter = Lens.field @"scheduledTimeAfter"
{-# DEPRECATED lmeScheduledTimeAfter "Use generic-lens or generic-optics with 'scheduledTimeAfter' instead." #-}

-- | Filter for jobs scheduled before a specified time.
--
-- /Note:/ Consider using 'scheduledTimeBefore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeScheduledTimeBefore :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Core.NominalDiffTime)
lmeScheduledTimeBefore = Lens.field @"scheduledTimeBefore"
{-# DEPRECATED lmeScheduledTimeBefore "Use generic-lens or generic-optics with 'scheduledTimeBefore' instead." #-}

-- | Whether to sort results by @Status@ , @CreationTime@ , @ScheduledTime@ field. The default is @CreationTime@ .
--
-- /Note:/ Consider using 'sortBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeSortBy :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Types.MonitoringExecutionSortKey)
lmeSortBy = Lens.field @"sortBy"
{-# DEPRECATED lmeSortBy "Use generic-lens or generic-optics with 'sortBy' instead." #-}

-- | Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
--
-- /Note:/ Consider using 'sortOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeSortOrder :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Types.SortOrder)
lmeSortOrder = Lens.field @"sortOrder"
{-# DEPRECATED lmeSortOrder "Use generic-lens or generic-optics with 'sortOrder' instead." #-}

-- | A filter that retrieves only jobs with a specific status.
--
-- /Note:/ Consider using 'statusEquals' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmeStatusEquals :: Lens.Lens' ListMonitoringExecutions (Core.Maybe Types.ExecutionStatus)
lmeStatusEquals = Lens.field @"statusEquals"
{-# DEPRECATED lmeStatusEquals "Use generic-lens or generic-optics with 'statusEquals' instead." #-}

instance Core.FromJSON ListMonitoringExecutions where
  toJSON ListMonitoringExecutions {..} =
    Core.object
      ( Core.catMaybes
          [ ("CreationTimeAfter" Core..=) Core.<$> creationTimeAfter,
            ("CreationTimeBefore" Core..=) Core.<$> creationTimeBefore,
            ("EndpointName" Core..=) Core.<$> endpointName,
            ("LastModifiedTimeAfter" Core..=) Core.<$> lastModifiedTimeAfter,
            ("LastModifiedTimeBefore" Core..=) Core.<$> lastModifiedTimeBefore,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("MonitoringScheduleName" Core..=) Core.<$> monitoringScheduleName,
            ("NextToken" Core..=) Core.<$> nextToken,
            ("ScheduledTimeAfter" Core..=) Core.<$> scheduledTimeAfter,
            ("ScheduledTimeBefore" Core..=) Core.<$> scheduledTimeBefore,
            ("SortBy" Core..=) Core.<$> sortBy,
            ("SortOrder" Core..=) Core.<$> sortOrder,
            ("StatusEquals" Core..=) Core.<$> statusEquals
          ]
      )

instance Core.AWSRequest ListMonitoringExecutions where
  type Rs ListMonitoringExecutions = ListMonitoringExecutionsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "SageMaker.ListMonitoringExecutions")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListMonitoringExecutionsResponse'
            Core.<$> (x Core..:? "MonitoringExecutionSummaries" Core..!= Core.mempty)
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListMonitoringExecutions where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^. Lens.field @"monitoringExecutionSummaries") =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListMonitoringExecutionsResponse' smart constructor.
data ListMonitoringExecutionsResponse = ListMonitoringExecutionsResponse'
  { -- | A JSON array in which each element is a summary for a monitoring execution.
    monitoringExecutionSummaries :: [Types.MonitoringExecutionSummary],
    -- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent reques
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListMonitoringExecutionsResponse' value with any optional fields omitted.
mkListMonitoringExecutionsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListMonitoringExecutionsResponse
mkListMonitoringExecutionsResponse responseStatus =
  ListMonitoringExecutionsResponse'
    { monitoringExecutionSummaries =
        Core.mempty,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | A JSON array in which each element is a summary for a monitoring execution.
--
-- /Note:/ Consider using 'monitoringExecutionSummaries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmerrsMonitoringExecutionSummaries :: Lens.Lens' ListMonitoringExecutionsResponse [Types.MonitoringExecutionSummary]
lmerrsMonitoringExecutionSummaries = Lens.field @"monitoringExecutionSummaries"
{-# DEPRECATED lmerrsMonitoringExecutionSummaries "Use generic-lens or generic-optics with 'monitoringExecutionSummaries' instead." #-}

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent reques
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmerrsNextToken :: Lens.Lens' ListMonitoringExecutionsResponse (Core.Maybe Types.NextToken)
lmerrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lmerrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmerrsResponseStatus :: Lens.Lens' ListMonitoringExecutionsResponse Core.Int
lmerrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lmerrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}