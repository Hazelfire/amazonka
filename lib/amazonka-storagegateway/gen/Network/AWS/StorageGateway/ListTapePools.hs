{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.ListTapePools
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists custom tape pools. You specify custom tape pools to list by specifying one or more custom tape pool Amazon Resource Names (ARNs). If you don't specify a custom tape pool ARN, the operation lists all custom tape pools.
--
-- This operation supports pagination. You can optionally specify the @Limit@ parameter in the body to limit the number of tape pools in the response. If the number of tape pools returned in the response is truncated, the response includes a @Marker@ element that you can use in your subsequent request to retrieve the next set of tape pools.
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.ListTapePools
  ( -- * Creating a request
    ListTapePools (..),
    mkListTapePools,

    -- ** Request lenses
    ltpLimit,
    ltpMarker,
    ltpPoolARNs,

    -- * Destructuring the response
    ListTapePoolsResponse (..),
    mkListTapePoolsResponse,

    -- ** Response lenses
    ltprrsMarker,
    ltprrsPoolInfos,
    ltprrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StorageGateway.Types as Types

-- | /See:/ 'mkListTapePools' smart constructor.
data ListTapePools = ListTapePools'
  { -- | An optional number limit for the tape pools in the list returned by this call.
    limit :: Core.Maybe Core.Natural,
    -- | A string that indicates the position at which to begin the returned list of tape pools.
    marker :: Core.Maybe Types.Marker,
    -- | The Amazon Resource Name (ARN) of each of the custom tape pools you want to list. If you don't specify a custom tape pool ARN, the response lists all custom tape pools.
    poolARNs :: Core.Maybe [Types.PoolARN]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListTapePools' value with any optional fields omitted.
mkListTapePools ::
  ListTapePools
mkListTapePools =
  ListTapePools'
    { limit = Core.Nothing,
      marker = Core.Nothing,
      poolARNs = Core.Nothing
    }

-- | An optional number limit for the tape pools in the list returned by this call.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltpLimit :: Lens.Lens' ListTapePools (Core.Maybe Core.Natural)
ltpLimit = Lens.field @"limit"
{-# DEPRECATED ltpLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | A string that indicates the position at which to begin the returned list of tape pools.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltpMarker :: Lens.Lens' ListTapePools (Core.Maybe Types.Marker)
ltpMarker = Lens.field @"marker"
{-# DEPRECATED ltpMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The Amazon Resource Name (ARN) of each of the custom tape pools you want to list. If you don't specify a custom tape pool ARN, the response lists all custom tape pools.
--
-- /Note:/ Consider using 'poolARNs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltpPoolARNs :: Lens.Lens' ListTapePools (Core.Maybe [Types.PoolARN])
ltpPoolARNs = Lens.field @"poolARNs"
{-# DEPRECATED ltpPoolARNs "Use generic-lens or generic-optics with 'poolARNs' instead." #-}

instance Core.FromJSON ListTapePools where
  toJSON ListTapePools {..} =
    Core.object
      ( Core.catMaybes
          [ ("Limit" Core..=) Core.<$> limit,
            ("Marker" Core..=) Core.<$> marker,
            ("PoolARNs" Core..=) Core.<$> poolARNs
          ]
      )

instance Core.AWSRequest ListTapePools where
  type Rs ListTapePools = ListTapePoolsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "StorageGateway_20130630.ListTapePools")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTapePoolsResponse'
            Core.<$> (x Core..:? "Marker")
            Core.<*> (x Core..:? "PoolInfos")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListTapePools where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"marker") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"poolInfos" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"marker"
        )

-- | /See:/ 'mkListTapePoolsResponse' smart constructor.
data ListTapePoolsResponse = ListTapePoolsResponse'
  { -- | A string that indicates the position at which to begin the returned list of tape pools. Use the marker in your next request to continue pagination of tape pools. If there are no more tape pools to list, this element does not appear in the response body.
    marker :: Core.Maybe Types.Marker,
    -- | An array of @PoolInfo@ objects, where each object describes a single custom tape pool. If there are no custom tape pools, the @PoolInfos@ is an empty array.
    poolInfos :: Core.Maybe [Types.PoolInfo],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListTapePoolsResponse' value with any optional fields omitted.
mkListTapePoolsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListTapePoolsResponse
mkListTapePoolsResponse responseStatus =
  ListTapePoolsResponse'
    { marker = Core.Nothing,
      poolInfos = Core.Nothing,
      responseStatus
    }

-- | A string that indicates the position at which to begin the returned list of tape pools. Use the marker in your next request to continue pagination of tape pools. If there are no more tape pools to list, this element does not appear in the response body.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprrsMarker :: Lens.Lens' ListTapePoolsResponse (Core.Maybe Types.Marker)
ltprrsMarker = Lens.field @"marker"
{-# DEPRECATED ltprrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | An array of @PoolInfo@ objects, where each object describes a single custom tape pool. If there are no custom tape pools, the @PoolInfos@ is an empty array.
--
-- /Note:/ Consider using 'poolInfos' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprrsPoolInfos :: Lens.Lens' ListTapePoolsResponse (Core.Maybe [Types.PoolInfo])
ltprrsPoolInfos = Lens.field @"poolInfos"
{-# DEPRECATED ltprrsPoolInfos "Use generic-lens or generic-optics with 'poolInfos' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprrsResponseStatus :: Lens.Lens' ListTapePoolsResponse Core.Int
ltprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ltprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}