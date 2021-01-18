{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.ListRulesPackages
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all available Amazon Inspector rules packages.
--
-- This operation returns paginated results.
module Network.AWS.Inspector.ListRulesPackages
  ( -- * Creating a request
    ListRulesPackages (..),
    mkListRulesPackages,

    -- ** Request lenses
    lrpMaxResults,
    lrpNextToken,

    -- * Destructuring the response
    ListRulesPackagesResponse (..),
    mkListRulesPackagesResponse,

    -- ** Response lenses
    lrprrsRulesPackageArns,
    lrprrsNextToken,
    lrprrsResponseStatus,
  )
where

import qualified Network.AWS.Inspector.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListRulesPackages' smart constructor.
data ListRulesPackages = ListRulesPackages'
  { -- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
    maxResults :: Core.Maybe Core.Int,
    -- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListRulesPackages__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
    nextToken :: Core.Maybe Types.PaginationToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListRulesPackages' value with any optional fields omitted.
mkListRulesPackages ::
  ListRulesPackages
mkListRulesPackages =
  ListRulesPackages'
    { maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrpMaxResults :: Lens.Lens' ListRulesPackages (Core.Maybe Core.Int)
lrpMaxResults = Lens.field @"maxResults"
{-# DEPRECATED lrpMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListRulesPackages__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrpNextToken :: Lens.Lens' ListRulesPackages (Core.Maybe Types.PaginationToken)
lrpNextToken = Lens.field @"nextToken"
{-# DEPRECATED lrpNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListRulesPackages where
  toJSON ListRulesPackages {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxResults" Core..=) Core.<$> maxResults,
            ("nextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListRulesPackages where
  type Rs ListRulesPackages = ListRulesPackagesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "InspectorService.ListRulesPackages")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRulesPackagesResponse'
            Core.<$> (x Core..:? "rulesPackageArns" Core..!= Core.mempty)
            Core.<*> (x Core..:? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListRulesPackages where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^. Lens.field @"rulesPackageArns") =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListRulesPackagesResponse' smart constructor.
data ListRulesPackagesResponse = ListRulesPackagesResponse'
  { -- | The list of ARNs that specifies the rules packages returned by the action.
    rulesPackageArns :: [Types.Arn],
    -- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
    nextToken :: Core.Maybe Types.PaginationToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListRulesPackagesResponse' value with any optional fields omitted.
mkListRulesPackagesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListRulesPackagesResponse
mkListRulesPackagesResponse responseStatus =
  ListRulesPackagesResponse'
    { rulesPackageArns = Core.mempty,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | The list of ARNs that specifies the rules packages returned by the action.
--
-- /Note:/ Consider using 'rulesPackageArns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrprrsRulesPackageArns :: Lens.Lens' ListRulesPackagesResponse [Types.Arn]
lrprrsRulesPackageArns = Lens.field @"rulesPackageArns"
{-# DEPRECATED lrprrsRulesPackageArns "Use generic-lens or generic-optics with 'rulesPackageArns' instead." #-}

-- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrprrsNextToken :: Lens.Lens' ListRulesPackagesResponse (Core.Maybe Types.PaginationToken)
lrprrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lrprrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrprrsResponseStatus :: Lens.Lens' ListRulesPackagesResponse Core.Int
lrprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lrprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}