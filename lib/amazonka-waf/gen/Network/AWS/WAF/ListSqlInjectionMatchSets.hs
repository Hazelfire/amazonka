{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.ListSqlInjectionMatchSets
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'SqlInjectionMatchSet' objects.
--
-- This operation returns paginated results.
module Network.AWS.WAF.ListSqlInjectionMatchSets
  ( -- * Creating a request
    ListSqlInjectionMatchSets (..),
    mkListSqlInjectionMatchSets,

    -- ** Request lenses
    lsimsLimit,
    lsimsNextMarker,

    -- * Destructuring the response
    ListSqlInjectionMatchSetsResponse (..),
    mkListSqlInjectionMatchSetsResponse,

    -- ** Response lenses
    lsimsrrsNextMarker,
    lsimsrrsSqlInjectionMatchSets,
    lsimsrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WAF.Types as Types

-- | A request to list the 'SqlInjectionMatchSet' objects created by the current AWS account.
--
-- /See:/ 'mkListSqlInjectionMatchSets' smart constructor.
data ListSqlInjectionMatchSets = ListSqlInjectionMatchSets'
  { -- | Specifies the number of 'SqlInjectionMatchSet' objects that you want AWS WAF to return for this request. If you have more @SqlInjectionMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @Rules@ .
    limit :: Core.Maybe Core.Natural,
    -- | If you specify a value for @Limit@ and you have more 'SqlInjectionMatchSet' objects than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @SqlInjectionMatchSets@ . For the second and subsequent @ListSqlInjectionMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @SqlInjectionMatchSets@ .
    nextMarker :: Core.Maybe Types.NextMarker
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListSqlInjectionMatchSets' value with any optional fields omitted.
mkListSqlInjectionMatchSets ::
  ListSqlInjectionMatchSets
mkListSqlInjectionMatchSets =
  ListSqlInjectionMatchSets'
    { limit = Core.Nothing,
      nextMarker = Core.Nothing
    }

-- | Specifies the number of 'SqlInjectionMatchSet' objects that you want AWS WAF to return for this request. If you have more @SqlInjectionMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @Rules@ .
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsimsLimit :: Lens.Lens' ListSqlInjectionMatchSets (Core.Maybe Core.Natural)
lsimsLimit = Lens.field @"limit"
{-# DEPRECATED lsimsLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | If you specify a value for @Limit@ and you have more 'SqlInjectionMatchSet' objects than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @SqlInjectionMatchSets@ . For the second and subsequent @ListSqlInjectionMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @SqlInjectionMatchSets@ .
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsimsNextMarker :: Lens.Lens' ListSqlInjectionMatchSets (Core.Maybe Types.NextMarker)
lsimsNextMarker = Lens.field @"nextMarker"
{-# DEPRECATED lsimsNextMarker "Use generic-lens or generic-optics with 'nextMarker' instead." #-}

instance Core.FromJSON ListSqlInjectionMatchSets where
  toJSON ListSqlInjectionMatchSets {..} =
    Core.object
      ( Core.catMaybes
          [ ("Limit" Core..=) Core.<$> limit,
            ("NextMarker" Core..=) Core.<$> nextMarker
          ]
      )

instance Core.AWSRequest ListSqlInjectionMatchSets where
  type
    Rs ListSqlInjectionMatchSets =
      ListSqlInjectionMatchSetsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AWSWAF_20150824.ListSqlInjectionMatchSets")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSqlInjectionMatchSetsResponse'
            Core.<$> (x Core..:? "NextMarker")
            Core.<*> (x Core..:? "SqlInjectionMatchSets")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListSqlInjectionMatchSets where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextMarker") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"sqlInjectionMatchSets" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextMarker"
            Lens..~ rs Lens.^. Lens.field @"nextMarker"
        )

-- | The response to a 'ListSqlInjectionMatchSets' request.
--
-- /See:/ 'mkListSqlInjectionMatchSetsResponse' smart constructor.
data ListSqlInjectionMatchSetsResponse = ListSqlInjectionMatchSetsResponse'
  { -- | If you have more 'SqlInjectionMatchSet' objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @SqlInjectionMatchSet@ objects, submit another @ListSqlInjectionMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
    nextMarker :: Core.Maybe Types.NextMarker,
    -- | An array of 'SqlInjectionMatchSetSummary' objects.
    sqlInjectionMatchSets :: Core.Maybe [Types.SqlInjectionMatchSetSummary],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListSqlInjectionMatchSetsResponse' value with any optional fields omitted.
mkListSqlInjectionMatchSetsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListSqlInjectionMatchSetsResponse
mkListSqlInjectionMatchSetsResponse responseStatus =
  ListSqlInjectionMatchSetsResponse'
    { nextMarker = Core.Nothing,
      sqlInjectionMatchSets = Core.Nothing,
      responseStatus
    }

-- | If you have more 'SqlInjectionMatchSet' objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @SqlInjectionMatchSet@ objects, submit another @ListSqlInjectionMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsimsrrsNextMarker :: Lens.Lens' ListSqlInjectionMatchSetsResponse (Core.Maybe Types.NextMarker)
lsimsrrsNextMarker = Lens.field @"nextMarker"
{-# DEPRECATED lsimsrrsNextMarker "Use generic-lens or generic-optics with 'nextMarker' instead." #-}

-- | An array of 'SqlInjectionMatchSetSummary' objects.
--
-- /Note:/ Consider using 'sqlInjectionMatchSets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsimsrrsSqlInjectionMatchSets :: Lens.Lens' ListSqlInjectionMatchSetsResponse (Core.Maybe [Types.SqlInjectionMatchSetSummary])
lsimsrrsSqlInjectionMatchSets = Lens.field @"sqlInjectionMatchSets"
{-# DEPRECATED lsimsrrsSqlInjectionMatchSets "Use generic-lens or generic-optics with 'sqlInjectionMatchSets' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsimsrrsResponseStatus :: Lens.Lens' ListSqlInjectionMatchSetsResponse Core.Int
lsimsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lsimsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}