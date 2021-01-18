{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.ListJobsByStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The ListJobsByStatus operation gets a list of jobs that have a specified status. The response body contains one element for each job that satisfies the search criteria.
--
-- This operation returns paginated results.
module Network.AWS.ElasticTranscoder.ListJobsByStatus
  ( -- * Creating a request
    ListJobsByStatus (..),
    mkListJobsByStatus,

    -- ** Request lenses
    ljbsStatus,
    ljbsAscending,
    ljbsPageToken,

    -- * Destructuring the response
    ListJobsByStatusResponse (..),
    mkListJobsByStatusResponse,

    -- ** Response lenses
    ljbsrrsJobs,
    ljbsrrsNextPageToken,
    ljbsrrsResponseStatus,
  )
where

import qualified Network.AWS.ElasticTranscoder.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The @ListJobsByStatusRequest@ structure.
--
-- /See:/ 'mkListJobsByStatus' smart constructor.
data ListJobsByStatus = ListJobsByStatus'
  { -- | To get information about all of the jobs associated with the current AWS account that have a given status, specify the following status: @Submitted@ , @Progressing@ , @Complete@ , @Canceled@ , or @Error@ .
    status :: Types.Status,
    -- | To list jobs in chronological order by the date and time that they were submitted, enter @true@ . To list jobs in reverse chronological order, enter @false@ .
    ascending :: Core.Maybe Types.Ascending,
    -- | When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
    pageToken :: Core.Maybe Types.Id
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListJobsByStatus' value with any optional fields omitted.
mkListJobsByStatus ::
  -- | 'status'
  Types.Status ->
  ListJobsByStatus
mkListJobsByStatus status =
  ListJobsByStatus'
    { status,
      ascending = Core.Nothing,
      pageToken = Core.Nothing
    }

-- | To get information about all of the jobs associated with the current AWS account that have a given status, specify the following status: @Submitted@ , @Progressing@ , @Complete@ , @Canceled@ , or @Error@ .
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljbsStatus :: Lens.Lens' ListJobsByStatus Types.Status
ljbsStatus = Lens.field @"status"
{-# DEPRECATED ljbsStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | To list jobs in chronological order by the date and time that they were submitted, enter @true@ . To list jobs in reverse chronological order, enter @false@ .
--
-- /Note:/ Consider using 'ascending' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljbsAscending :: Lens.Lens' ListJobsByStatus (Core.Maybe Types.Ascending)
ljbsAscending = Lens.field @"ascending"
{-# DEPRECATED ljbsAscending "Use generic-lens or generic-optics with 'ascending' instead." #-}

-- | When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
--
-- /Note:/ Consider using 'pageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljbsPageToken :: Lens.Lens' ListJobsByStatus (Core.Maybe Types.Id)
ljbsPageToken = Lens.field @"pageToken"
{-# DEPRECATED ljbsPageToken "Use generic-lens or generic-optics with 'pageToken' instead." #-}

instance Core.AWSRequest ListJobsByStatus where
  type Rs ListJobsByStatus = ListJobsByStatusResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ("/2012-09-25/jobsByStatus/" Core.<> (Core.toText status)),
        Core._rqQuery =
          Core.toQueryValue "Ascending" Core.<$> ascending
            Core.<> (Core.toQueryValue "PageToken" Core.<$> pageToken),
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListJobsByStatusResponse'
            Core.<$> (x Core..:? "Jobs")
            Core.<*> (x Core..:? "NextPageToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListJobsByStatus where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextPageToken") =
      Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"jobs" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"pageToken"
            Lens..~ rs Lens.^. Lens.field @"nextPageToken"
        )

-- | The @ListJobsByStatusResponse@ structure.
--
-- /See:/ 'mkListJobsByStatusResponse' smart constructor.
data ListJobsByStatusResponse = ListJobsByStatusResponse'
  { -- | An array of @Job@ objects that have the specified status.
    jobs :: Core.Maybe [Types.Job'],
    -- | A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
    nextPageToken :: Core.Maybe Types.NextPageToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListJobsByStatusResponse' value with any optional fields omitted.
mkListJobsByStatusResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListJobsByStatusResponse
mkListJobsByStatusResponse responseStatus =
  ListJobsByStatusResponse'
    { jobs = Core.Nothing,
      nextPageToken = Core.Nothing,
      responseStatus
    }

-- | An array of @Job@ objects that have the specified status.
--
-- /Note:/ Consider using 'jobs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljbsrrsJobs :: Lens.Lens' ListJobsByStatusResponse (Core.Maybe [Types.Job'])
ljbsrrsJobs = Lens.field @"jobs"
{-# DEPRECATED ljbsrrsJobs "Use generic-lens or generic-optics with 'jobs' instead." #-}

-- | A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
--
-- /Note:/ Consider using 'nextPageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljbsrrsNextPageToken :: Lens.Lens' ListJobsByStatusResponse (Core.Maybe Types.NextPageToken)
ljbsrrsNextPageToken = Lens.field @"nextPageToken"
{-# DEPRECATED ljbsrrsNextPageToken "Use generic-lens or generic-optics with 'nextPageToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ljbsrrsResponseStatus :: Lens.Lens' ListJobsByStatusResponse Core.Int
ljbsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ljbsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}