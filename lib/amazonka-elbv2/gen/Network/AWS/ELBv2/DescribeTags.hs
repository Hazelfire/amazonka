{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.DescribeTags
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the tags for the specified Elastic Load Balancing resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups, listeners, or rules.
module Network.AWS.ELBv2.DescribeTags
  ( -- * Creating a request
    DescribeTags (..),
    mkDescribeTags,

    -- ** Request lenses
    dtResourceArns,

    -- * Destructuring the response
    DescribeTagsResponse (..),
    mkDescribeTagsResponse,

    -- ** Response lenses
    dtrrsTagDescriptions,
    dtrrsResponseStatus,
  )
where

import qualified Network.AWS.ELBv2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeTags' smart constructor.
newtype DescribeTags = DescribeTags'
  { -- | The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a single call.
    resourceArns :: [Types.ResourceArn]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeTags' value with any optional fields omitted.
mkDescribeTags ::
  DescribeTags
mkDescribeTags = DescribeTags' {resourceArns = Core.mempty}

-- | The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a single call.
--
-- /Note:/ Consider using 'resourceArns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtResourceArns :: Lens.Lens' DescribeTags [Types.ResourceArn]
dtResourceArns = Lens.field @"resourceArns"
{-# DEPRECATED dtResourceArns "Use generic-lens or generic-optics with 'resourceArns' instead." #-}

instance Core.AWSRequest DescribeTags where
  type Rs DescribeTags = DescribeTagsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "DescribeTags")
                Core.<> (Core.pure ("Version", "2015-12-01"))
                Core.<> ( Core.toQueryValue
                            "ResourceArns"
                            (Core.toQueryList "member" resourceArns)
                        )
            )
      }
  response =
    Response.receiveXMLWrapper
      "DescribeTagsResult"
      ( \s h x ->
          DescribeTagsResponse'
            Core.<$> (x Core..@? "TagDescriptions" Core..<@> Core.parseXMLList "member")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDescribeTagsResponse' smart constructor.
data DescribeTagsResponse = DescribeTagsResponse'
  { -- | Information about the tags.
    tagDescriptions :: Core.Maybe [Types.TagDescription],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeTagsResponse' value with any optional fields omitted.
mkDescribeTagsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeTagsResponse
mkDescribeTagsResponse responseStatus =
  DescribeTagsResponse'
    { tagDescriptions = Core.Nothing,
      responseStatus
    }

-- | Information about the tags.
--
-- /Note:/ Consider using 'tagDescriptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrrsTagDescriptions :: Lens.Lens' DescribeTagsResponse (Core.Maybe [Types.TagDescription])
dtrrsTagDescriptions = Lens.field @"tagDescriptions"
{-# DEPRECATED dtrrsTagDescriptions "Use generic-lens or generic-optics with 'tagDescriptions' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrrsResponseStatus :: Lens.Lens' DescribeTagsResponse Core.Int
dtrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dtrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}