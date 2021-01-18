{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DescribeJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a job.
module Network.AWS.IoT.DescribeJob
  ( -- * Creating a request
    DescribeJob (..),
    mkDescribeJob,

    -- ** Request lenses
    djfJobId,

    -- * Destructuring the response
    DescribeJobResponse (..),
    mkDescribeJobResponse,

    -- ** Response lenses
    djrrsDocumentSource,
    djrrsJob,
    djrrsResponseStatus,
  )
where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeJob' smart constructor.
newtype DescribeJob = DescribeJob'
  { -- | The unique identifier you assigned to this job when it was created.
    jobId :: Types.JobId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeJob' value with any optional fields omitted.
mkDescribeJob ::
  -- | 'jobId'
  Types.JobId ->
  DescribeJob
mkDescribeJob jobId = DescribeJob' {jobId}

-- | The unique identifier you assigned to this job when it was created.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djfJobId :: Lens.Lens' DescribeJob Types.JobId
djfJobId = Lens.field @"jobId"
{-# DEPRECATED djfJobId "Use generic-lens or generic-optics with 'jobId' instead." #-}

instance Core.AWSRequest DescribeJob where
  type Rs DescribeJob = DescribeJobResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath = Core.rawPath ("/jobs/" Core.<> (Core.toText jobId)),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeJobResponse'
            Core.<$> (x Core..:? "documentSource")
            Core.<*> (x Core..:? "job")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDescribeJobResponse' smart constructor.
data DescribeJobResponse = DescribeJobResponse'
  { -- | An S3 link to the job document.
    documentSource :: Core.Maybe Types.JobDocumentSource,
    -- | Information about the job.
    job :: Core.Maybe Types.Job,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeJobResponse' value with any optional fields omitted.
mkDescribeJobResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeJobResponse
mkDescribeJobResponse responseStatus =
  DescribeJobResponse'
    { documentSource = Core.Nothing,
      job = Core.Nothing,
      responseStatus
    }

-- | An S3 link to the job document.
--
-- /Note:/ Consider using 'documentSource' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djrrsDocumentSource :: Lens.Lens' DescribeJobResponse (Core.Maybe Types.JobDocumentSource)
djrrsDocumentSource = Lens.field @"documentSource"
{-# DEPRECATED djrrsDocumentSource "Use generic-lens or generic-optics with 'documentSource' instead." #-}

-- | Information about the job.
--
-- /Note:/ Consider using 'job' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djrrsJob :: Lens.Lens' DescribeJobResponse (Core.Maybe Types.Job)
djrrsJob = Lens.field @"job"
{-# DEPRECATED djrrsJob "Use generic-lens or generic-optics with 'job' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djrrsResponseStatus :: Lens.Lens' DescribeJobResponse Core.Int
djrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED djrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}