{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DeleteJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a job and its related job executions.
--
-- Deleting a job may take time, depending on the number of job executions created for the job and various other factors. While the job is being deleted, the status of the job will be shown as "DELETION_IN_PROGRESS". Attempting to delete or cancel a job whose status is already "DELETION_IN_PROGRESS" will result in an error.
-- Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a LimitExceededException will occur.
module Network.AWS.IoT.DeleteJob
  ( -- * Creating a request
    DeleteJob (..),
    mkDeleteJob,

    -- ** Request lenses
    djJobId,
    djForce,
    djNamespaceId,

    -- * Destructuring the response
    DeleteJobResponse (..),
    mkDeleteJobResponse,
  )
where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteJob' smart constructor.
data DeleteJob = DeleteJob'
  { -- | The ID of the job to be deleted.
    --
    -- After a job deletion is completed, you may reuse this jobId when you create a new job. However, this is not recommended, and you must ensure that your devices are not using the jobId to refer to the deleted job.
    jobId :: Types.JobId,
    -- | (Optional) When true, you can delete a job which is "IN_PROGRESS". Otherwise, you can only delete a job which is in a terminal state ("COMPLETED" or "CANCELED") or an exception will occur. The default is false.
    force :: Core.Maybe Core.Bool,
    -- | The namespace used to indicate that a job is a customer-managed job.
    --
    -- When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format.
    -- @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
    namespaceId :: Core.Maybe Types.NamespaceId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteJob' value with any optional fields omitted.
mkDeleteJob ::
  -- | 'jobId'
  Types.JobId ->
  DeleteJob
mkDeleteJob jobId =
  DeleteJob'
    { jobId,
      force = Core.Nothing,
      namespaceId = Core.Nothing
    }

-- | The ID of the job to be deleted.
--
-- After a job deletion is completed, you may reuse this jobId when you create a new job. However, this is not recommended, and you must ensure that your devices are not using the jobId to refer to the deleted job.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djJobId :: Lens.Lens' DeleteJob Types.JobId
djJobId = Lens.field @"jobId"
{-# DEPRECATED djJobId "Use generic-lens or generic-optics with 'jobId' instead." #-}

-- | (Optional) When true, you can delete a job which is "IN_PROGRESS". Otherwise, you can only delete a job which is in a terminal state ("COMPLETED" or "CANCELED") or an exception will occur. The default is false.
--
-- /Note:/ Consider using 'force' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djForce :: Lens.Lens' DeleteJob (Core.Maybe Core.Bool)
djForce = Lens.field @"force"
{-# DEPRECATED djForce "Use generic-lens or generic-optics with 'force' instead." #-}

-- | The namespace used to indicate that a job is a customer-managed job.
--
-- When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format.
-- @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
--
-- /Note:/ Consider using 'namespaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djNamespaceId :: Lens.Lens' DeleteJob (Core.Maybe Types.NamespaceId)
djNamespaceId = Lens.field @"namespaceId"
{-# DEPRECATED djNamespaceId "Use generic-lens or generic-optics with 'namespaceId' instead." #-}

instance Core.AWSRequest DeleteJob where
  type Rs DeleteJob = DeleteJobResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.DELETE,
        Core._rqPath = Core.rawPath ("/jobs/" Core.<> (Core.toText jobId)),
        Core._rqQuery =
          Core.toQueryValue "force" Core.<$> force
            Core.<> (Core.toQueryValue "namespaceId" Core.<$> namespaceId),
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response = Response.receiveNull DeleteJobResponse'

-- | /See:/ 'mkDeleteJobResponse' smart constructor.
data DeleteJobResponse = DeleteJobResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteJobResponse' value with any optional fields omitted.
mkDeleteJobResponse ::
  DeleteJobResponse
mkDeleteJobResponse = DeleteJobResponse'