{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.StopProjectVersion
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running model. The operation might take a while to complete. To check the current status, call 'DescribeProjectVersions' .
module Network.AWS.Rekognition.StopProjectVersion
  ( -- * Creating a request
    StopProjectVersion (..),
    mkStopProjectVersion,

    -- ** Request lenses
    sProjectVersionArn,

    -- * Destructuring the response
    StopProjectVersionResponse (..),
    mkStopProjectVersionResponse,

    -- ** Response lenses
    srsStatus,
    srsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStopProjectVersion' smart constructor.
newtype StopProjectVersion = StopProjectVersion'
  { -- | The Amazon Resource Name (ARN) of the model version that you want to delete.
    --
    -- This operation requires permissions to perform the @rekognition:StopProjectVersion@ action.
    projectVersionArn :: Types.ProjectVersionArn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopProjectVersion' value with any optional fields omitted.
mkStopProjectVersion ::
  -- | 'projectVersionArn'
  Types.ProjectVersionArn ->
  StopProjectVersion
mkStopProjectVersion projectVersionArn =
  StopProjectVersion' {projectVersionArn}

-- | The Amazon Resource Name (ARN) of the model version that you want to delete.
--
-- This operation requires permissions to perform the @rekognition:StopProjectVersion@ action.
--
-- /Note:/ Consider using 'projectVersionArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sProjectVersionArn :: Lens.Lens' StopProjectVersion Types.ProjectVersionArn
sProjectVersionArn = Lens.field @"projectVersionArn"
{-# DEPRECATED sProjectVersionArn "Use generic-lens or generic-optics with 'projectVersionArn' instead." #-}

instance Core.FromJSON StopProjectVersion where
  toJSON StopProjectVersion {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("ProjectVersionArn" Core..= projectVersionArn)]
      )

instance Core.AWSRequest StopProjectVersion where
  type Rs StopProjectVersion = StopProjectVersionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "RekognitionService.StopProjectVersion")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          StopProjectVersionResponse'
            Core.<$> (x Core..:? "Status") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkStopProjectVersionResponse' smart constructor.
data StopProjectVersionResponse = StopProjectVersionResponse'
  { -- | The current status of the stop operation.
    status :: Core.Maybe Types.ProjectVersionStatus,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StopProjectVersionResponse' value with any optional fields omitted.
mkStopProjectVersionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  StopProjectVersionResponse
mkStopProjectVersionResponse responseStatus =
  StopProjectVersionResponse'
    { status = Core.Nothing,
      responseStatus
    }

-- | The current status of the stop operation.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsStatus :: Lens.Lens' StopProjectVersionResponse (Core.Maybe Types.ProjectVersionStatus)
srsStatus = Lens.field @"status"
{-# DEPRECATED srsStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsResponseStatus :: Lens.Lens' StopProjectVersionResponse Core.Int
srsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED srsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}