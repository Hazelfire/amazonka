{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.CancelJobExecution
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the execution of a job for a given thing.
module Network.AWS.IoT.CancelJobExecution
  ( -- * Creating a request
    CancelJobExecution (..),
    mkCancelJobExecution,

    -- ** Request lenses
    cjeJobId,
    cjeThingName,
    cjeExpectedVersion,
    cjeForce,
    cjeStatusDetails,

    -- * Destructuring the response
    CancelJobExecutionResponse (..),
    mkCancelJobExecutionResponse,
  )
where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCancelJobExecution' smart constructor.
data CancelJobExecution = CancelJobExecution'
  { -- | The ID of the job to be canceled.
    jobId :: Types.JobId,
    -- | The name of the thing whose execution of the job will be canceled.
    thingName :: Types.ThingName,
    -- | (Optional) The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)
    expectedVersion :: Core.Maybe Core.Integer,
    -- | (Optional) If @true@ the job execution will be canceled if it has status IN_PROGRESS or QUEUED, otherwise the job execution will be canceled only if it has status QUEUED. If you attempt to cancel a job execution that is IN_PROGRESS, and you do not set @force@ to @true@ , then an @InvalidStateTransitionException@ will be thrown. The default is @false@ .
    --
    -- Canceling a job execution which is "IN_PROGRESS", will cause the device to be unable to update the job execution status. Use caution and ensure that the device is able to recover to a valid state.
    force :: Core.Maybe Core.Bool,
    -- | A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged. You can specify at most 10 name/value pairs.
    statusDetails :: Core.Maybe (Core.HashMap Types.DetailsKey Types.DetailsValue)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CancelJobExecution' value with any optional fields omitted.
mkCancelJobExecution ::
  -- | 'jobId'
  Types.JobId ->
  -- | 'thingName'
  Types.ThingName ->
  CancelJobExecution
mkCancelJobExecution jobId thingName =
  CancelJobExecution'
    { jobId,
      thingName,
      expectedVersion = Core.Nothing,
      force = Core.Nothing,
      statusDetails = Core.Nothing
    }

-- | The ID of the job to be canceled.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjeJobId :: Lens.Lens' CancelJobExecution Types.JobId
cjeJobId = Lens.field @"jobId"
{-# DEPRECATED cjeJobId "Use generic-lens or generic-optics with 'jobId' instead." #-}

-- | The name of the thing whose execution of the job will be canceled.
--
-- /Note:/ Consider using 'thingName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjeThingName :: Lens.Lens' CancelJobExecution Types.ThingName
cjeThingName = Lens.field @"thingName"
{-# DEPRECATED cjeThingName "Use generic-lens or generic-optics with 'thingName' instead." #-}

-- | (Optional) The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)
--
-- /Note:/ Consider using 'expectedVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjeExpectedVersion :: Lens.Lens' CancelJobExecution (Core.Maybe Core.Integer)
cjeExpectedVersion = Lens.field @"expectedVersion"
{-# DEPRECATED cjeExpectedVersion "Use generic-lens or generic-optics with 'expectedVersion' instead." #-}

-- | (Optional) If @true@ the job execution will be canceled if it has status IN_PROGRESS or QUEUED, otherwise the job execution will be canceled only if it has status QUEUED. If you attempt to cancel a job execution that is IN_PROGRESS, and you do not set @force@ to @true@ , then an @InvalidStateTransitionException@ will be thrown. The default is @false@ .
--
-- Canceling a job execution which is "IN_PROGRESS", will cause the device to be unable to update the job execution status. Use caution and ensure that the device is able to recover to a valid state.
--
-- /Note:/ Consider using 'force' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjeForce :: Lens.Lens' CancelJobExecution (Core.Maybe Core.Bool)
cjeForce = Lens.field @"force"
{-# DEPRECATED cjeForce "Use generic-lens or generic-optics with 'force' instead." #-}

-- | A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged. You can specify at most 10 name/value pairs.
--
-- /Note:/ Consider using 'statusDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjeStatusDetails :: Lens.Lens' CancelJobExecution (Core.Maybe (Core.HashMap Types.DetailsKey Types.DetailsValue))
cjeStatusDetails = Lens.field @"statusDetails"
{-# DEPRECATED cjeStatusDetails "Use generic-lens or generic-optics with 'statusDetails' instead." #-}

instance Core.FromJSON CancelJobExecution where
  toJSON CancelJobExecution {..} =
    Core.object
      ( Core.catMaybes
          [ ("expectedVersion" Core..=) Core.<$> expectedVersion,
            ("statusDetails" Core..=) Core.<$> statusDetails
          ]
      )

instance Core.AWSRequest CancelJobExecution where
  type Rs CancelJobExecution = CancelJobExecutionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.PUT,
        Core._rqPath =
          Core.rawPath
            ( "/things/" Core.<> (Core.toText thingName) Core.<> ("/jobs/")
                Core.<> (Core.toText jobId)
                Core.<> ("/cancel")
            ),
        Core._rqQuery = Core.toQueryValue "force" Core.<$> force,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull CancelJobExecutionResponse'

-- | /See:/ 'mkCancelJobExecutionResponse' smart constructor.
data CancelJobExecutionResponse = CancelJobExecutionResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CancelJobExecutionResponse' value with any optional fields omitted.
mkCancelJobExecutionResponse ::
  CancelJobExecutionResponse
mkCancelJobExecutionResponse = CancelJobExecutionResponse'