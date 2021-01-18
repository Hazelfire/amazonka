{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.ListAuthorizers
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the authorizers registered in your account.
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListAuthorizers
  ( -- * Creating a request
    ListAuthorizers (..),
    mkListAuthorizers,

    -- ** Request lenses
    laAscendingOrder,
    laMarker,
    laPageSize,
    laStatus,

    -- * Destructuring the response
    ListAuthorizersResponse (..),
    mkListAuthorizersResponse,

    -- ** Response lenses
    larrsAuthorizers,
    larrsNextMarker,
    larrsResponseStatus,
  )
where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListAuthorizers' smart constructor.
data ListAuthorizers = ListAuthorizers'
  { -- | Return the list of authorizers in ascending alphabetical order.
    ascendingOrder :: Core.Maybe Core.Bool,
    -- | A marker used to get the next set of results.
    marker :: Core.Maybe Types.Marker,
    -- | The maximum number of results to return at one time.
    pageSize :: Core.Maybe Core.Natural,
    -- | The status of the list authorizers request.
    status :: Core.Maybe Types.AuthorizerStatus
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListAuthorizers' value with any optional fields omitted.
mkListAuthorizers ::
  ListAuthorizers
mkListAuthorizers =
  ListAuthorizers'
    { ascendingOrder = Core.Nothing,
      marker = Core.Nothing,
      pageSize = Core.Nothing,
      status = Core.Nothing
    }

-- | Return the list of authorizers in ascending alphabetical order.
--
-- /Note:/ Consider using 'ascendingOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
laAscendingOrder :: Lens.Lens' ListAuthorizers (Core.Maybe Core.Bool)
laAscendingOrder = Lens.field @"ascendingOrder"
{-# DEPRECATED laAscendingOrder "Use generic-lens or generic-optics with 'ascendingOrder' instead." #-}

-- | A marker used to get the next set of results.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
laMarker :: Lens.Lens' ListAuthorizers (Core.Maybe Types.Marker)
laMarker = Lens.field @"marker"
{-# DEPRECATED laMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The maximum number of results to return at one time.
--
-- /Note:/ Consider using 'pageSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
laPageSize :: Lens.Lens' ListAuthorizers (Core.Maybe Core.Natural)
laPageSize = Lens.field @"pageSize"
{-# DEPRECATED laPageSize "Use generic-lens or generic-optics with 'pageSize' instead." #-}

-- | The status of the list authorizers request.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
laStatus :: Lens.Lens' ListAuthorizers (Core.Maybe Types.AuthorizerStatus)
laStatus = Lens.field @"status"
{-# DEPRECATED laStatus "Use generic-lens or generic-optics with 'status' instead." #-}

instance Core.AWSRequest ListAuthorizers where
  type Rs ListAuthorizers = ListAuthorizersResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath = Core.rawPath "/authorizers/",
        Core._rqQuery =
          Core.toQueryValue "isAscendingOrder" Core.<$> ascendingOrder
            Core.<> (Core.toQueryValue "marker" Core.<$> marker)
            Core.<> (Core.toQueryValue "pageSize" Core.<$> pageSize)
            Core.<> (Core.toQueryValue "status" Core.<$> status),
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAuthorizersResponse'
            Core.<$> (x Core..:? "authorizers")
            Core.<*> (x Core..:? "nextMarker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListAuthorizers where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextMarker") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"authorizers" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"nextMarker"
        )

-- | /See:/ 'mkListAuthorizersResponse' smart constructor.
data ListAuthorizersResponse = ListAuthorizersResponse'
  { -- | The authorizers.
    authorizers :: Core.Maybe [Types.AuthorizerSummary],
    -- | A marker used to get the next set of results.
    nextMarker :: Core.Maybe Types.NextMarker,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListAuthorizersResponse' value with any optional fields omitted.
mkListAuthorizersResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListAuthorizersResponse
mkListAuthorizersResponse responseStatus =
  ListAuthorizersResponse'
    { authorizers = Core.Nothing,
      nextMarker = Core.Nothing,
      responseStatus
    }

-- | The authorizers.
--
-- /Note:/ Consider using 'authorizers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larrsAuthorizers :: Lens.Lens' ListAuthorizersResponse (Core.Maybe [Types.AuthorizerSummary])
larrsAuthorizers = Lens.field @"authorizers"
{-# DEPRECATED larrsAuthorizers "Use generic-lens or generic-optics with 'authorizers' instead." #-}

-- | A marker used to get the next set of results.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larrsNextMarker :: Lens.Lens' ListAuthorizersResponse (Core.Maybe Types.NextMarker)
larrsNextMarker = Lens.field @"nextMarker"
{-# DEPRECATED larrsNextMarker "Use generic-lens or generic-optics with 'nextMarker' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larrsResponseStatus :: Lens.Lens' ListAuthorizersResponse Core.Int
larrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED larrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}