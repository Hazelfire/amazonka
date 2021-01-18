{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.ListTagsOfResource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all tags on an Amazon DynamoDB resource. You can call ListTagsOfResource up to 10 times per second, per account.
--
-- For an overview on tagging DynamoDB resources, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html Tagging for DynamoDB> in the /Amazon DynamoDB Developer Guide/ .
--
-- This operation returns paginated results.
module Network.AWS.DynamoDB.ListTagsOfResource
  ( -- * Creating a request
    ListTagsOfResource (..),
    mkListTagsOfResource,

    -- ** Request lenses
    ltorResourceArn,
    ltorNextToken,

    -- * Destructuring the response
    ListTagsOfResourceResponse (..),
    mkListTagsOfResourceResponse,

    -- ** Response lenses
    ltorrrsNextToken,
    ltorrrsTags,
    ltorrrsResponseStatus,
  )
where

import qualified Network.AWS.DynamoDB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListTagsOfResource' smart constructor.
data ListTagsOfResource = ListTagsOfResource'
  { -- | The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).
    resourceArn :: Types.ResourceArn,
    -- | An optional string that, if supplied, must be copied from the output of a previous call to ListTagOfResource. When provided in this manner, this API fetches the next page of results.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListTagsOfResource' value with any optional fields omitted.
mkListTagsOfResource ::
  -- | 'resourceArn'
  Types.ResourceArn ->
  ListTagsOfResource
mkListTagsOfResource resourceArn =
  ListTagsOfResource' {resourceArn, nextToken = Core.Nothing}

-- | The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).
--
-- /Note:/ Consider using 'resourceArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltorResourceArn :: Lens.Lens' ListTagsOfResource Types.ResourceArn
ltorResourceArn = Lens.field @"resourceArn"
{-# DEPRECATED ltorResourceArn "Use generic-lens or generic-optics with 'resourceArn' instead." #-}

-- | An optional string that, if supplied, must be copied from the output of a previous call to ListTagOfResource. When provided in this manner, this API fetches the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltorNextToken :: Lens.Lens' ListTagsOfResource (Core.Maybe Types.NextToken)
ltorNextToken = Lens.field @"nextToken"
{-# DEPRECATED ltorNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListTagsOfResource where
  toJSON ListTagsOfResource {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ResourceArn" Core..= resourceArn),
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListTagsOfResource where
  type Rs ListTagsOfResource = ListTagsOfResourceResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "DynamoDB_20120810.ListTagsOfResource")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.0")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTagsOfResourceResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "Tags")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListTagsOfResource where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"tags" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListTagsOfResourceResponse' smart constructor.
data ListTagsOfResourceResponse = ListTagsOfResourceResponse'
  { -- | If this value is returned, there are additional results to be displayed. To retrieve them, call ListTagsOfResource again, with NextToken set to this value.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The tags currently associated with the Amazon DynamoDB resource.
    tags :: Core.Maybe [Types.Tag],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListTagsOfResourceResponse' value with any optional fields omitted.
mkListTagsOfResourceResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListTagsOfResourceResponse
mkListTagsOfResourceResponse responseStatus =
  ListTagsOfResourceResponse'
    { nextToken = Core.Nothing,
      tags = Core.Nothing,
      responseStatus
    }

-- | If this value is returned, there are additional results to be displayed. To retrieve them, call ListTagsOfResource again, with NextToken set to this value.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltorrrsNextToken :: Lens.Lens' ListTagsOfResourceResponse (Core.Maybe Types.NextToken)
ltorrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED ltorrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The tags currently associated with the Amazon DynamoDB resource.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltorrrsTags :: Lens.Lens' ListTagsOfResourceResponse (Core.Maybe [Types.Tag])
ltorrrsTags = Lens.field @"tags"
{-# DEPRECATED ltorrrsTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltorrrsResponseStatus :: Lens.Lens' ListTagsOfResourceResponse Core.Int
ltorrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ltorrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}