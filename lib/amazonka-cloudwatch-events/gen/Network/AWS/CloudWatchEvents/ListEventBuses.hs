{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.ListEventBuses
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses.
module Network.AWS.CloudWatchEvents.ListEventBuses
  ( -- * Creating a request
    ListEventBuses (..),
    mkListEventBuses,

    -- ** Request lenses
    lebLimit,
    lebNamePrefix,
    lebNextToken,

    -- * Destructuring the response
    ListEventBusesResponse (..),
    mkListEventBusesResponse,

    -- ** Response lenses
    lebrrsEventBuses,
    lebrrsNextToken,
    lebrrsResponseStatus,
  )
where

import qualified Network.AWS.CloudWatchEvents.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListEventBuses' smart constructor.
data ListEventBuses = ListEventBuses'
  { -- | Specifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.
    limit :: Core.Maybe Core.Natural,
    -- | Specifying this limits the results to only those event buses with names that start with the specified prefix.
    namePrefix :: Core.Maybe Types.NamePrefix,
    -- | The token returned by a previous call to retrieve the next set of results.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListEventBuses' value with any optional fields omitted.
mkListEventBuses ::
  ListEventBuses
mkListEventBuses =
  ListEventBuses'
    { limit = Core.Nothing,
      namePrefix = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | Specifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lebLimit :: Lens.Lens' ListEventBuses (Core.Maybe Core.Natural)
lebLimit = Lens.field @"limit"
{-# DEPRECATED lebLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | Specifying this limits the results to only those event buses with names that start with the specified prefix.
--
-- /Note:/ Consider using 'namePrefix' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lebNamePrefix :: Lens.Lens' ListEventBuses (Core.Maybe Types.NamePrefix)
lebNamePrefix = Lens.field @"namePrefix"
{-# DEPRECATED lebNamePrefix "Use generic-lens or generic-optics with 'namePrefix' instead." #-}

-- | The token returned by a previous call to retrieve the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lebNextToken :: Lens.Lens' ListEventBuses (Core.Maybe Types.NextToken)
lebNextToken = Lens.field @"nextToken"
{-# DEPRECATED lebNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListEventBuses where
  toJSON ListEventBuses {..} =
    Core.object
      ( Core.catMaybes
          [ ("Limit" Core..=) Core.<$> limit,
            ("NamePrefix" Core..=) Core.<$> namePrefix,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListEventBuses where
  type Rs ListEventBuses = ListEventBusesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AWSEvents.ListEventBuses")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListEventBusesResponse'
            Core.<$> (x Core..:? "EventBuses")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkListEventBusesResponse' smart constructor.
data ListEventBusesResponse = ListEventBusesResponse'
  { -- | This list of event buses.
    eventBuses :: Core.Maybe [Types.EventBus],
    -- | A token you can use in a subsequent operation to retrieve the next set of results.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListEventBusesResponse' value with any optional fields omitted.
mkListEventBusesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListEventBusesResponse
mkListEventBusesResponse responseStatus =
  ListEventBusesResponse'
    { eventBuses = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | This list of event buses.
--
-- /Note:/ Consider using 'eventBuses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lebrrsEventBuses :: Lens.Lens' ListEventBusesResponse (Core.Maybe [Types.EventBus])
lebrrsEventBuses = Lens.field @"eventBuses"
{-# DEPRECATED lebrrsEventBuses "Use generic-lens or generic-optics with 'eventBuses' instead." #-}

-- | A token you can use in a subsequent operation to retrieve the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lebrrsNextToken :: Lens.Lens' ListEventBusesResponse (Core.Maybe Types.NextToken)
lebrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lebrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lebrrsResponseStatus :: Lens.Lens' ListEventBusesResponse Core.Int
lebrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lebrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}