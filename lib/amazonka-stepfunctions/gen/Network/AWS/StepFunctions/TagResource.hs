{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.TagResource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a tag to a Step Functions resource.
--
-- An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ , and <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html Controlling Access Using IAM Tags> .
-- Tags may only contain Unicode letters, digits, white space, or these symbols: @_ . : / = + - @@ .
module Network.AWS.StepFunctions.TagResource
  ( -- * Creating a request
    TagResource (..),
    mkTagResource,

    -- ** Request lenses
    trResourceArn,
    trTags,

    -- * Destructuring the response
    TagResourceResponse (..),
    mkTagResourceResponse,

    -- ** Response lenses
    trrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StepFunctions.Types as Types

-- | /See:/ 'mkTagResource' smart constructor.
data TagResource = TagResource'
  { -- | The Amazon Resource Name (ARN) for the Step Functions state machine or activity.
    resourceArn :: Types.Arn,
    -- | The list of tags to add to a resource.
    --
    -- Tags may only contain Unicode letters, digits, white space, or these symbols: @_ . : / = + - @@ .
    tags :: [Types.Tag]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'TagResource' value with any optional fields omitted.
mkTagResource ::
  -- | 'resourceArn'
  Types.Arn ->
  TagResource
mkTagResource resourceArn =
  TagResource' {resourceArn, tags = Core.mempty}

-- | The Amazon Resource Name (ARN) for the Step Functions state machine or activity.
--
-- /Note:/ Consider using 'resourceArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trResourceArn :: Lens.Lens' TagResource Types.Arn
trResourceArn = Lens.field @"resourceArn"
{-# DEPRECATED trResourceArn "Use generic-lens or generic-optics with 'resourceArn' instead." #-}

-- | The list of tags to add to a resource.
--
-- Tags may only contain Unicode letters, digits, white space, or these symbols: @_ . : / = + - @@ .
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trTags :: Lens.Lens' TagResource [Types.Tag]
trTags = Lens.field @"tags"
{-# DEPRECATED trTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.FromJSON TagResource where
  toJSON TagResource {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("resourceArn" Core..= resourceArn),
            Core.Just ("tags" Core..= tags)
          ]
      )

instance Core.AWSRequest TagResource where
  type Rs TagResource = TagResourceResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AWSStepFunctions.TagResource")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.0")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          TagResourceResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkTagResourceResponse' smart constructor.
newtype TagResourceResponse = TagResourceResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'TagResourceResponse' value with any optional fields omitted.
mkTagResourceResponse ::
  -- | 'responseStatus'
  Core.Int ->
  TagResourceResponse
mkTagResourceResponse responseStatus =
  TagResourceResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trrrsResponseStatus :: Lens.Lens' TagResourceResponse Core.Int
trrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED trrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}