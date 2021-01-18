{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.ListRegexMatchSets
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'RegexMatchSetSummary' objects.
--
-- This operation returns paginated results.
module Network.AWS.WAF.ListRegexMatchSets
  ( -- * Creating a request
    ListRegexMatchSets (..),
    mkListRegexMatchSets,

    -- ** Request lenses
    lrmsLimit,
    lrmsNextMarker,

    -- * Destructuring the response
    ListRegexMatchSetsResponse (..),
    mkListRegexMatchSetsResponse,

    -- ** Response lenses
    lrmsrrsNextMarker,
    lrmsrrsRegexMatchSets,
    lrmsrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WAF.Types as Types

-- | /See:/ 'mkListRegexMatchSets' smart constructor.
data ListRegexMatchSets = ListRegexMatchSets'
  { -- | Specifies the number of @RegexMatchSet@ objects that you want AWS WAF to return for this request. If you have more @RegexMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @RegexMatchSet@ objects.
    limit :: Core.Maybe Core.Natural,
    -- | If you specify a value for @Limit@ and you have more @RegexMatchSet@ objects than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @ByteMatchSets@ . For the second and subsequent @ListRegexMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @RegexMatchSet@ objects.
    nextMarker :: Core.Maybe Types.NextMarker
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListRegexMatchSets' value with any optional fields omitted.
mkListRegexMatchSets ::
  ListRegexMatchSets
mkListRegexMatchSets =
  ListRegexMatchSets'
    { limit = Core.Nothing,
      nextMarker = Core.Nothing
    }

-- | Specifies the number of @RegexMatchSet@ objects that you want AWS WAF to return for this request. If you have more @RegexMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @RegexMatchSet@ objects.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrmsLimit :: Lens.Lens' ListRegexMatchSets (Core.Maybe Core.Natural)
lrmsLimit = Lens.field @"limit"
{-# DEPRECATED lrmsLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | If you specify a value for @Limit@ and you have more @RegexMatchSet@ objects than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @ByteMatchSets@ . For the second and subsequent @ListRegexMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @RegexMatchSet@ objects.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrmsNextMarker :: Lens.Lens' ListRegexMatchSets (Core.Maybe Types.NextMarker)
lrmsNextMarker = Lens.field @"nextMarker"
{-# DEPRECATED lrmsNextMarker "Use generic-lens or generic-optics with 'nextMarker' instead." #-}

instance Core.FromJSON ListRegexMatchSets where
  toJSON ListRegexMatchSets {..} =
    Core.object
      ( Core.catMaybes
          [ ("Limit" Core..=) Core.<$> limit,
            ("NextMarker" Core..=) Core.<$> nextMarker
          ]
      )

instance Core.AWSRequest ListRegexMatchSets where
  type Rs ListRegexMatchSets = ListRegexMatchSetsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AWSWAF_20150824.ListRegexMatchSets")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRegexMatchSetsResponse'
            Core.<$> (x Core..:? "NextMarker")
            Core.<*> (x Core..:? "RegexMatchSets")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListRegexMatchSets where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextMarker") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"regexMatchSets" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextMarker"
            Lens..~ rs Lens.^. Lens.field @"nextMarker"
        )

-- | /See:/ 'mkListRegexMatchSetsResponse' smart constructor.
data ListRegexMatchSetsResponse = ListRegexMatchSetsResponse'
  { -- | If you have more @RegexMatchSet@ objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @RegexMatchSet@ objects, submit another @ListRegexMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
    nextMarker :: Core.Maybe Types.NextMarker,
    -- | An array of 'RegexMatchSetSummary' objects.
    regexMatchSets :: Core.Maybe [Types.RegexMatchSetSummary],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListRegexMatchSetsResponse' value with any optional fields omitted.
mkListRegexMatchSetsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListRegexMatchSetsResponse
mkListRegexMatchSetsResponse responseStatus =
  ListRegexMatchSetsResponse'
    { nextMarker = Core.Nothing,
      regexMatchSets = Core.Nothing,
      responseStatus
    }

-- | If you have more @RegexMatchSet@ objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @RegexMatchSet@ objects, submit another @ListRegexMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrmsrrsNextMarker :: Lens.Lens' ListRegexMatchSetsResponse (Core.Maybe Types.NextMarker)
lrmsrrsNextMarker = Lens.field @"nextMarker"
{-# DEPRECATED lrmsrrsNextMarker "Use generic-lens or generic-optics with 'nextMarker' instead." #-}

-- | An array of 'RegexMatchSetSummary' objects.
--
-- /Note:/ Consider using 'regexMatchSets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrmsrrsRegexMatchSets :: Lens.Lens' ListRegexMatchSetsResponse (Core.Maybe [Types.RegexMatchSetSummary])
lrmsrrsRegexMatchSets = Lens.field @"regexMatchSets"
{-# DEPRECATED lrmsrrsRegexMatchSets "Use generic-lens or generic-optics with 'regexMatchSets' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrmsrrsResponseStatus :: Lens.Lens' ListRegexMatchSetsResponse Core.Int
lrmsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lrmsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}