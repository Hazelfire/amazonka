{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.CreateJourney
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a journey for an application.
module Network.AWS.Pinpoint.CreateJourney
  ( -- * Creating a request
    CreateJourney (..),
    mkCreateJourney,

    -- ** Request lenses
    cjApplicationId,
    cjWriteJourneyRequest,

    -- * Destructuring the response
    CreateJourneyResponse (..),
    mkCreateJourneyResponse,

    -- ** Response lenses
    cjrrsJourneyResponse,
    cjrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pinpoint.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateJourney' smart constructor.
data CreateJourney = CreateJourney'
  { -- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Core.Text,
    writeJourneyRequest :: Types.WriteJourneyRequest
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateJourney' value with any optional fields omitted.
mkCreateJourney ::
  -- | 'applicationId'
  Core.Text ->
  -- | 'writeJourneyRequest'
  Types.WriteJourneyRequest ->
  CreateJourney
mkCreateJourney applicationId writeJourneyRequest =
  CreateJourney' {applicationId, writeJourneyRequest}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjApplicationId :: Lens.Lens' CreateJourney Core.Text
cjApplicationId = Lens.field @"applicationId"
{-# DEPRECATED cjApplicationId "Use generic-lens or generic-optics with 'applicationId' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'writeJourneyRequest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjWriteJourneyRequest :: Lens.Lens' CreateJourney Types.WriteJourneyRequest
cjWriteJourneyRequest = Lens.field @"writeJourneyRequest"
{-# DEPRECATED cjWriteJourneyRequest "Use generic-lens or generic-optics with 'writeJourneyRequest' instead." #-}

instance Core.FromJSON CreateJourney where
  toJSON CreateJourney {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("WriteJourneyRequest" Core..= writeJourneyRequest)]
      )

instance Core.AWSRequest CreateJourney where
  type Rs CreateJourney = CreateJourneyResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath =
          Core.rawPath
            ( "/v1/apps/" Core.<> (Core.toText applicationId)
                Core.<> ("/journeys")
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateJourneyResponse'
            Core.<$> (Core.eitherParseJSON x) Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateJourneyResponse' smart constructor.
data CreateJourneyResponse = CreateJourneyResponse'
  { journeyResponse :: Types.JourneyResponse,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateJourneyResponse' value with any optional fields omitted.
mkCreateJourneyResponse ::
  -- | 'journeyResponse'
  Types.JourneyResponse ->
  -- | 'responseStatus'
  Core.Int ->
  CreateJourneyResponse
mkCreateJourneyResponse journeyResponse responseStatus =
  CreateJourneyResponse' {journeyResponse, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'journeyResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjrrsJourneyResponse :: Lens.Lens' CreateJourneyResponse Types.JourneyResponse
cjrrsJourneyResponse = Lens.field @"journeyResponse"
{-# DEPRECATED cjrrsJourneyResponse "Use generic-lens or generic-optics with 'journeyResponse' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjrrsResponseStatus :: Lens.Lens' CreateJourneyResponse Core.Int
cjrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cjrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}