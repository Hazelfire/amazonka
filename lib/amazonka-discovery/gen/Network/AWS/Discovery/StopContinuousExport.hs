{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.StopContinuousExport
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop the continuous flow of agent's discovered data into Amazon Athena.
module Network.AWS.Discovery.StopContinuousExport
  ( -- * Creating a request
    StopContinuousExport (..),
    mkStopContinuousExport,

    -- ** Request lenses
    sceExportId,

    -- * Destructuring the response
    StopContinuousExportResponse (..),
    mkStopContinuousExportResponse,

    -- ** Response lenses
    srsStartTime,
    srsStopTime,
    srsResponseStatus,
  )
where

import qualified Network.AWS.Discovery.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStopContinuousExport' smart constructor.
newtype StopContinuousExport = StopContinuousExport'
  { -- | The unique ID assigned to this export.
    exportId :: Types.ConfigurationsExportId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopContinuousExport' value with any optional fields omitted.
mkStopContinuousExport ::
  -- | 'exportId'
  Types.ConfigurationsExportId ->
  StopContinuousExport
mkStopContinuousExport exportId = StopContinuousExport' {exportId}

-- | The unique ID assigned to this export.
--
-- /Note:/ Consider using 'exportId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sceExportId :: Lens.Lens' StopContinuousExport Types.ConfigurationsExportId
sceExportId = Lens.field @"exportId"
{-# DEPRECATED sceExportId "Use generic-lens or generic-optics with 'exportId' instead." #-}

instance Core.FromJSON StopContinuousExport where
  toJSON StopContinuousExport {..} =
    Core.object
      (Core.catMaybes [Core.Just ("exportId" Core..= exportId)])

instance Core.AWSRequest StopContinuousExport where
  type Rs StopContinuousExport = StopContinuousExportResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSPoseidonService_V2015_11_01.StopContinuousExport"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          StopContinuousExportResponse'
            Core.<$> (x Core..:? "startTime")
            Core.<*> (x Core..:? "stopTime")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkStopContinuousExportResponse' smart constructor.
data StopContinuousExportResponse = StopContinuousExportResponse'
  { -- | Timestamp that represents when this continuous export started collecting data.
    startTime :: Core.Maybe Core.NominalDiffTime,
    -- | Timestamp that represents when this continuous export was stopped.
    stopTime :: Core.Maybe Core.NominalDiffTime,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'StopContinuousExportResponse' value with any optional fields omitted.
mkStopContinuousExportResponse ::
  -- | 'responseStatus'
  Core.Int ->
  StopContinuousExportResponse
mkStopContinuousExportResponse responseStatus =
  StopContinuousExportResponse'
    { startTime = Core.Nothing,
      stopTime = Core.Nothing,
      responseStatus
    }

-- | Timestamp that represents when this continuous export started collecting data.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsStartTime :: Lens.Lens' StopContinuousExportResponse (Core.Maybe Core.NominalDiffTime)
srsStartTime = Lens.field @"startTime"
{-# DEPRECATED srsStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | Timestamp that represents when this continuous export was stopped.
--
-- /Note:/ Consider using 'stopTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsStopTime :: Lens.Lens' StopContinuousExportResponse (Core.Maybe Core.NominalDiffTime)
srsStopTime = Lens.field @"stopTime"
{-# DEPRECATED srsStopTime "Use generic-lens or generic-optics with 'stopTime' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsResponseStatus :: Lens.Lens' StopContinuousExportResponse Core.Int
srsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED srsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}