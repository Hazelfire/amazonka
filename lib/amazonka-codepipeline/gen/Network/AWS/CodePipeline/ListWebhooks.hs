{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.ListWebhooks
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a listing of all the webhooks in this AWS Region for this account. The output lists all webhooks and includes the webhook URL and ARN and the configuration for each webhook.
--
-- This operation returns paginated results.
module Network.AWS.CodePipeline.ListWebhooks
  ( -- * Creating a request
    ListWebhooks (..),
    mkListWebhooks,

    -- ** Request lenses
    lwMaxResults,
    lwNextToken,

    -- * Destructuring the response
    ListWebhooksResponse (..),
    mkListWebhooksResponse,

    -- ** Response lenses
    lwrrsNextToken,
    lwrrsWebhooks,
    lwrrsResponseStatus,
  )
where

import qualified Network.AWS.CodePipeline.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListWebhooks' smart constructor.
data ListWebhooks = ListWebhooks'
  { -- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token that was returned from the previous ListWebhooks call, which can be used to return the next set of webhooks in the list.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListWebhooks' value with any optional fields omitted.
mkListWebhooks ::
  ListWebhooks
mkListWebhooks =
  ListWebhooks'
    { maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwMaxResults :: Lens.Lens' ListWebhooks (Core.Maybe Core.Natural)
lwMaxResults = Lens.field @"maxResults"
{-# DEPRECATED lwMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token that was returned from the previous ListWebhooks call, which can be used to return the next set of webhooks in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwNextToken :: Lens.Lens' ListWebhooks (Core.Maybe Types.NextToken)
lwNextToken = Lens.field @"nextToken"
{-# DEPRECATED lwNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListWebhooks where
  toJSON ListWebhooks {..} =
    Core.object
      ( Core.catMaybes
          [ ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListWebhooks where
  type Rs ListWebhooks = ListWebhooksResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "CodePipeline_20150709.ListWebhooks")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListWebhooksResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "webhooks")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListWebhooks where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"webhooks" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListWebhooksResponse' smart constructor.
data ListWebhooksResponse = ListWebhooksResponse'
  { -- | If the amount of returned information is significantly large, an identifier is also returned and can be used in a subsequent ListWebhooks call to return the next set of webhooks in the list.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The JSON detail returned for each webhook in the list output for the ListWebhooks call.
    webhooks :: Core.Maybe [Types.ListWebhookItem],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListWebhooksResponse' value with any optional fields omitted.
mkListWebhooksResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListWebhooksResponse
mkListWebhooksResponse responseStatus =
  ListWebhooksResponse'
    { nextToken = Core.Nothing,
      webhooks = Core.Nothing,
      responseStatus
    }

-- | If the amount of returned information is significantly large, an identifier is also returned and can be used in a subsequent ListWebhooks call to return the next set of webhooks in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwrrsNextToken :: Lens.Lens' ListWebhooksResponse (Core.Maybe Types.NextToken)
lwrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lwrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The JSON detail returned for each webhook in the list output for the ListWebhooks call.
--
-- /Note:/ Consider using 'webhooks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwrrsWebhooks :: Lens.Lens' ListWebhooksResponse (Core.Maybe [Types.ListWebhookItem])
lwrrsWebhooks = Lens.field @"webhooks"
{-# DEPRECATED lwrrsWebhooks "Use generic-lens or generic-optics with 'webhooks' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwrrsResponseStatus :: Lens.Lens' ListWebhooksResponse Core.Int
lwrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lwrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}