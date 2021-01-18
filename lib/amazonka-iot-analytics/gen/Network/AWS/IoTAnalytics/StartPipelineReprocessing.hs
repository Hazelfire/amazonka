{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.StartPipelineReprocessing
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the reprocessing of raw message data through the pipeline.
module Network.AWS.IoTAnalytics.StartPipelineReprocessing
  ( -- * Creating a request
    StartPipelineReprocessing (..),
    mkStartPipelineReprocessing,

    -- ** Request lenses
    sprPipelineName,
    sprEndTime,
    sprStartTime,

    -- * Destructuring the response
    StartPipelineReprocessingResponse (..),
    mkStartPipelineReprocessingResponse,

    -- ** Response lenses
    sprrrsReprocessingId,
    sprrrsResponseStatus,
  )
where

import qualified Network.AWS.IoTAnalytics.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStartPipelineReprocessing' smart constructor.
data StartPipelineReprocessing = StartPipelineReprocessing'
  { -- | The name of the pipeline on which to start reprocessing.
    pipelineName :: Types.PipelineName,
    -- | The end time (exclusive) of raw message data that is reprocessed.
    endTime :: Core.Maybe Core.NominalDiffTime,
    -- | The start time (inclusive) of raw message data that is reprocessed.
    startTime :: Core.Maybe Core.NominalDiffTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'StartPipelineReprocessing' value with any optional fields omitted.
mkStartPipelineReprocessing ::
  -- | 'pipelineName'
  Types.PipelineName ->
  StartPipelineReprocessing
mkStartPipelineReprocessing pipelineName =
  StartPipelineReprocessing'
    { pipelineName,
      endTime = Core.Nothing,
      startTime = Core.Nothing
    }

-- | The name of the pipeline on which to start reprocessing.
--
-- /Note:/ Consider using 'pipelineName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sprPipelineName :: Lens.Lens' StartPipelineReprocessing Types.PipelineName
sprPipelineName = Lens.field @"pipelineName"
{-# DEPRECATED sprPipelineName "Use generic-lens or generic-optics with 'pipelineName' instead." #-}

-- | The end time (exclusive) of raw message data that is reprocessed.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sprEndTime :: Lens.Lens' StartPipelineReprocessing (Core.Maybe Core.NominalDiffTime)
sprEndTime = Lens.field @"endTime"
{-# DEPRECATED sprEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The start time (inclusive) of raw message data that is reprocessed.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sprStartTime :: Lens.Lens' StartPipelineReprocessing (Core.Maybe Core.NominalDiffTime)
sprStartTime = Lens.field @"startTime"
{-# DEPRECATED sprStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

instance Core.FromJSON StartPipelineReprocessing where
  toJSON StartPipelineReprocessing {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

instance Core.AWSRequest StartPipelineReprocessing where
  type
    Rs StartPipelineReprocessing =
      StartPipelineReprocessingResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath =
          Core.rawPath
            ( "/pipelines/" Core.<> (Core.toText pipelineName)
                Core.<> ("/reprocessing")
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          StartPipelineReprocessingResponse'
            Core.<$> (x Core..:? "reprocessingId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkStartPipelineReprocessingResponse' smart constructor.
data StartPipelineReprocessingResponse = StartPipelineReprocessingResponse'
  { -- | The ID of the pipeline reprocessing activity that was started.
    reprocessingId :: Core.Maybe Types.ReprocessingId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartPipelineReprocessingResponse' value with any optional fields omitted.
mkStartPipelineReprocessingResponse ::
  -- | 'responseStatus'
  Core.Int ->
  StartPipelineReprocessingResponse
mkStartPipelineReprocessingResponse responseStatus =
  StartPipelineReprocessingResponse'
    { reprocessingId = Core.Nothing,
      responseStatus
    }

-- | The ID of the pipeline reprocessing activity that was started.
--
-- /Note:/ Consider using 'reprocessingId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sprrrsReprocessingId :: Lens.Lens' StartPipelineReprocessingResponse (Core.Maybe Types.ReprocessingId)
sprrrsReprocessingId = Lens.field @"reprocessingId"
{-# DEPRECATED sprrrsReprocessingId "Use generic-lens or generic-optics with 'reprocessingId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sprrrsResponseStatus :: Lens.Lens' StartPipelineReprocessingResponse Core.Int
sprrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED sprrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}