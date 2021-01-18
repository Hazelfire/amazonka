{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.ListJobs
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of AWS Batch jobs.
--
-- You must specify only one of the following:
--
--     * a job queue ID to return a list of jobs in that job queue
--
--
--     * a multi-node parallel job ID to return a list of that job's nodes
--
--
--     * an array job ID to return a list of that job's children
--
--
-- You can filter the results by job status with the @jobStatus@ parameter. If you do not specify a status, only @RUNNING@ jobs are returned.
--
-- This operation returns paginated results.
module Network.AWS.Batch.ListJobs
  ( -- * Creating a request
    ListJobs (..),
    mkListJobs,

    -- ** Request lenses
    ljArrayJobId,
    ljJobQueue,
    ljJobStatus,
    ljMaxResults,
    ljMultiNodeJobId,
    ljNextToken,

    -- * Destructuring the response
    ListJobsResponse (..),
    mkListJobsResponse,

    -- ** Response lenses
    ljrrsJobSummaryList,
    ljrrsNextToken,
    ljrrsResponseStatus,
  )
where

import qualified Network.AWS.Batch.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListJobs' smart constructor.
data ListJobs = ListJobs'
  { -- | The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the specified array.
    arrayJobId :: Core.Maybe Types.ArrayJobId,
    -- | The name or full Amazon Resource Name (ARN) of the job queue with which to list jobs.
    jobQueue :: Core.Maybe Types.JobQueue,
    -- | The job status with which to filter jobs in the specified queue. If you do not specify a status, only @RUNNING@ jobs are returned.
    jobStatus :: Core.Maybe Types.JobStatus,
    -- | The maximum number of results returned by @ListJobs@ in paginated output. When this parameter is used, @ListJobs@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListJobs@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListJobs@ returns up to 100 results and a @nextToken@ value if applicable.
    maxResults :: Core.Maybe Core.Int,
    -- | The job ID for a multi-node parallel job. Specifying a multi-node parallel job ID with this parameter lists all nodes that are associated with the specified job.
    multiNodeJobId :: Core.Maybe Types.MultiNodeJobId,
    -- | The @nextToken@ value returned from a previous paginated @ListJobs@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListJobs' value with any optional fields omitted.
mkListJobs ::
  ListJobs
mkListJobs =
  ListJobs'
    { arrayJobId = Core.Nothing,
      jobQueue = Core.Nothing,
      jobStatus = Core.Nothing,
      maxResults = Core.Nothing,
      multiNodeJobId = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the specified array.
--
-- /Note:/ Consider using 'arrayJobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljArrayJobId :: Lens.Lens' ListJobs (Core.Maybe Types.ArrayJobId)
ljArrayJobId = Lens.field @"arrayJobId"
{-# DEPRECATED ljArrayJobId "Use generic-lens or generic-optics with 'arrayJobId' instead." #-}

-- | The name or full Amazon Resource Name (ARN) of the job queue with which to list jobs.
--
-- /Note:/ Consider using 'jobQueue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljJobQueue :: Lens.Lens' ListJobs (Core.Maybe Types.JobQueue)
ljJobQueue = Lens.field @"jobQueue"
{-# DEPRECATED ljJobQueue "Use generic-lens or generic-optics with 'jobQueue' instead." #-}

-- | The job status with which to filter jobs in the specified queue. If you do not specify a status, only @RUNNING@ jobs are returned.
--
-- /Note:/ Consider using 'jobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljJobStatus :: Lens.Lens' ListJobs (Core.Maybe Types.JobStatus)
ljJobStatus = Lens.field @"jobStatus"
{-# DEPRECATED ljJobStatus "Use generic-lens or generic-optics with 'jobStatus' instead." #-}

-- | The maximum number of results returned by @ListJobs@ in paginated output. When this parameter is used, @ListJobs@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListJobs@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListJobs@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljMaxResults :: Lens.Lens' ListJobs (Core.Maybe Core.Int)
ljMaxResults = Lens.field @"maxResults"
{-# DEPRECATED ljMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The job ID for a multi-node parallel job. Specifying a multi-node parallel job ID with this parameter lists all nodes that are associated with the specified job.
--
-- /Note:/ Consider using 'multiNodeJobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljMultiNodeJobId :: Lens.Lens' ListJobs (Core.Maybe Types.MultiNodeJobId)
ljMultiNodeJobId = Lens.field @"multiNodeJobId"
{-# DEPRECATED ljMultiNodeJobId "Use generic-lens or generic-optics with 'multiNodeJobId' instead." #-}

-- | The @nextToken@ value returned from a previous paginated @ListJobs@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljNextToken :: Lens.Lens' ListJobs (Core.Maybe Types.NextToken)
ljNextToken = Lens.field @"nextToken"
{-# DEPRECATED ljNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListJobs where
  toJSON ListJobs {..} =
    Core.object
      ( Core.catMaybes
          [ ("arrayJobId" Core..=) Core.<$> arrayJobId,
            ("jobQueue" Core..=) Core.<$> jobQueue,
            ("jobStatus" Core..=) Core.<$> jobStatus,
            ("maxResults" Core..=) Core.<$> maxResults,
            ("multiNodeJobId" Core..=) Core.<$> multiNodeJobId,
            ("nextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListJobs where
  type Rs ListJobs = ListJobsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/v1/listjobs",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListJobsResponse'
            Core.<$> (x Core..:? "jobSummaryList" Core..!= Core.mempty)
            Core.<*> (x Core..:? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListJobs where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^. Lens.field @"jobSummaryList") =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { -- | A list of job summaries that match the request.
    jobSummaryList :: [Types.JobSummary],
    -- | The @nextToken@ value to include in a future @ListJobs@ request. When the results of a @ListJobs@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
    nextToken :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListJobsResponse' value with any optional fields omitted.
mkListJobsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListJobsResponse
mkListJobsResponse responseStatus =
  ListJobsResponse'
    { jobSummaryList = Core.mempty,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | A list of job summaries that match the request.
--
-- /Note:/ Consider using 'jobSummaryList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljrrsJobSummaryList :: Lens.Lens' ListJobsResponse [Types.JobSummary]
ljrrsJobSummaryList = Lens.field @"jobSummaryList"
{-# DEPRECATED ljrrsJobSummaryList "Use generic-lens or generic-optics with 'jobSummaryList' instead." #-}

-- | The @nextToken@ value to include in a future @ListJobs@ request. When the results of a @ListJobs@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljrrsNextToken :: Lens.Lens' ListJobsResponse (Core.Maybe Types.String)
ljrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED ljrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljrrsResponseStatus :: Lens.Lens' ListJobsResponse Core.Int
ljrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ljrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}