{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.GetImportJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of a specific import job for an application.
module Network.AWS.Pinpoint.GetImportJob
  ( -- * Creating a request
    GetImportJob (..),
    mkGetImportJob,

    -- ** Request lenses
    gijApplicationId,
    gijJobId,

    -- * Destructuring the response
    GetImportJobResponse (..),
    mkGetImportJobResponse,

    -- ** Response lenses
    gijrrsImportJobResponse,
    gijrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pinpoint.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetImportJob' smart constructor.
data GetImportJob = GetImportJob'
  { -- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Core.Text,
    -- | The unique identifier for the job.
    jobId :: Core.Text
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetImportJob' value with any optional fields omitted.
mkGetImportJob ::
  -- | 'applicationId'
  Core.Text ->
  -- | 'jobId'
  Core.Text ->
  GetImportJob
mkGetImportJob applicationId jobId =
  GetImportJob' {applicationId, jobId}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gijApplicationId :: Lens.Lens' GetImportJob Core.Text
gijApplicationId = Lens.field @"applicationId"
{-# DEPRECATED gijApplicationId "Use generic-lens or generic-optics with 'applicationId' instead." #-}

-- | The unique identifier for the job.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gijJobId :: Lens.Lens' GetImportJob Core.Text
gijJobId = Lens.field @"jobId"
{-# DEPRECATED gijJobId "Use generic-lens or generic-optics with 'jobId' instead." #-}

instance Core.AWSRequest GetImportJob where
  type Rs GetImportJob = GetImportJobResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/v1/apps/" Core.<> (Core.toText applicationId)
                Core.<> ("/jobs/import/")
                Core.<> (Core.toText jobId)
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetImportJobResponse'
            Core.<$> (Core.eitherParseJSON x) Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetImportJobResponse' smart constructor.
data GetImportJobResponse = GetImportJobResponse'
  { importJobResponse :: Types.ImportJobResponse,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetImportJobResponse' value with any optional fields omitted.
mkGetImportJobResponse ::
  -- | 'importJobResponse'
  Types.ImportJobResponse ->
  -- | 'responseStatus'
  Core.Int ->
  GetImportJobResponse
mkGetImportJobResponse importJobResponse responseStatus =
  GetImportJobResponse' {importJobResponse, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'importJobResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gijrrsImportJobResponse :: Lens.Lens' GetImportJobResponse Types.ImportJobResponse
gijrrsImportJobResponse = Lens.field @"importJobResponse"
{-# DEPRECATED gijrrsImportJobResponse "Use generic-lens or generic-optics with 'importJobResponse' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gijrrsResponseStatus :: Lens.Lens' GetImportJobResponse Core.Int
gijrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gijrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}