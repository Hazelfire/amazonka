{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.GetJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the JSON for a specific completed transcoding job.
module Network.AWS.MediaConvert.GetJob
  ( -- * Creating a request
    GetJob (..),
    mkGetJob,

    -- ** Request lenses
    gjId,

    -- * Destructuring the response
    GetJobResponse (..),
    mkGetJobResponse,

    -- ** Response lenses
    gjrrsJob,
    gjrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaConvert.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetJob' smart constructor.
newtype GetJob = GetJob'
  { -- | the job ID of the job.
    id :: Core.Text
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetJob' value with any optional fields omitted.
mkGetJob ::
  -- | 'id'
  Core.Text ->
  GetJob
mkGetJob id = GetJob' {id}

-- | the job ID of the job.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjId :: Lens.Lens' GetJob Core.Text
gjId = Lens.field @"id"
{-# DEPRECATED gjId "Use generic-lens or generic-optics with 'id' instead." #-}

instance Core.AWSRequest GetJob where
  type Rs GetJob = GetJobResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath ("/2017-08-29/jobs/" Core.<> (Core.toText id)),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetJobResponse'
            Core.<$> (x Core..:? "job") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetJobResponse' smart constructor.
data GetJobResponse = GetJobResponse'
  { -- | Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    job :: Core.Maybe Types.Job,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetJobResponse' value with any optional fields omitted.
mkGetJobResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetJobResponse
mkGetJobResponse responseStatus =
  GetJobResponse' {job = Core.Nothing, responseStatus}

-- | Each job converts an input file into an output file or files. For more information, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
--
-- /Note:/ Consider using 'job' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjrrsJob :: Lens.Lens' GetJobResponse (Core.Maybe Types.Job)
gjrrsJob = Lens.field @"job"
{-# DEPRECATED gjrrsJob "Use generic-lens or generic-optics with 'job' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjrrsResponseStatus :: Lens.Lens' GetJobResponse Core.Int
gjrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gjrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}