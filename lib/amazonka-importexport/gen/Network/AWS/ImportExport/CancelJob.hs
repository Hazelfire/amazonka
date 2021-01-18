{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ImportExport.CancelJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation cancels a specified job. Only the job owner can cancel it. The operation fails if the job has already started or is complete.
module Network.AWS.ImportExport.CancelJob
  ( -- * Creating a request
    CancelJob (..),
    mkCancelJob,

    -- ** Request lenses
    cJobId,
    cAPIVersion,

    -- * Destructuring the response
    CancelJobResponse (..),
    mkCancelJobResponse,

    -- ** Response lenses
    crsSuccess,
    crsResponseStatus,
  )
where

import qualified Network.AWS.ImportExport.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Input structure for the CancelJob operation.
--
-- /See:/ 'mkCancelJob' smart constructor.
data CancelJob = CancelJob'
  { jobId :: Types.JobId,
    aPIVersion :: Core.Maybe Types.APIVersion
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CancelJob' value with any optional fields omitted.
mkCancelJob ::
  -- | 'jobId'
  Types.JobId ->
  CancelJob
mkCancelJob jobId = CancelJob' {jobId, aPIVersion = Core.Nothing}

-- | Undocumented field.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cJobId :: Lens.Lens' CancelJob Types.JobId
cJobId = Lens.field @"jobId"
{-# DEPRECATED cJobId "Use generic-lens or generic-optics with 'jobId' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'aPIVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cAPIVersion :: Lens.Lens' CancelJob (Core.Maybe Types.APIVersion)
cAPIVersion = Lens.field @"aPIVersion"
{-# DEPRECATED cAPIVersion "Use generic-lens or generic-optics with 'aPIVersion' instead." #-}

instance Core.AWSRequest CancelJob where
  type Rs CancelJob = CancelJobResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Operation=CancelJob", "")
                Core.<> (Core.pure ("Action", "CancelJob"))
                Core.<> (Core.pure ("Version", "2010-06-01"))
                Core.<> (Core.toQueryValue "JobId" jobId)
                Core.<> (Core.toQueryValue "APIVersion" Core.<$> aPIVersion)
            )
      }
  response =
    Response.receiveXMLWrapper
      "CancelJobResult"
      ( \s h x ->
          CancelJobResponse'
            Core.<$> (x Core..@? "Success") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Output structure for the CancelJob operation.
--
-- /See:/ 'mkCancelJobResponse' smart constructor.
data CancelJobResponse = CancelJobResponse'
  { success :: Core.Maybe Core.Bool,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CancelJobResponse' value with any optional fields omitted.
mkCancelJobResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CancelJobResponse
mkCancelJobResponse responseStatus =
  CancelJobResponse' {success = Core.Nothing, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'success' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsSuccess :: Lens.Lens' CancelJobResponse (Core.Maybe Core.Bool)
crsSuccess = Lens.field @"success"
{-# DEPRECATED crsSuccess "Use generic-lens or generic-optics with 'success' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsResponseStatus :: Lens.Lens' CancelJobResponse Core.Int
crsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED crsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}