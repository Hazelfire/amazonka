{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.ListUserPools
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user pools associated with an AWS account.
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentityProvider.ListUserPools
  ( -- * Creating a request
    ListUserPools (..),
    mkListUserPools,

    -- ** Request lenses
    lupMaxResults,
    lupNextToken,

    -- * Destructuring the response
    ListUserPoolsResponse (..),
    mkListUserPoolsResponse,

    -- ** Response lenses
    luprrsNextToken,
    luprrsUserPools,
    luprrsResponseStatus,
  )
where

import qualified Network.AWS.CognitoIdentityProvider.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to list user pools.
--
-- /See:/ 'mkListUserPools' smart constructor.
data ListUserPools = ListUserPools'
  { -- | The maximum number of results you want the request to return when listing the user pools.
    maxResults :: Core.Natural,
    -- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListUserPools' value with any optional fields omitted.
mkListUserPools ::
  -- | 'maxResults'
  Core.Natural ->
  ListUserPools
mkListUserPools maxResults =
  ListUserPools' {maxResults, nextToken = Core.Nothing}

-- | The maximum number of results you want the request to return when listing the user pools.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lupMaxResults :: Lens.Lens' ListUserPools Core.Natural
lupMaxResults = Lens.field @"maxResults"
{-# DEPRECATED lupMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lupNextToken :: Lens.Lens' ListUserPools (Core.Maybe Types.NextToken)
lupNextToken = Lens.field @"nextToken"
{-# DEPRECATED lupNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListUserPools where
  toJSON ListUserPools {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("MaxResults" Core..= maxResults),
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListUserPools where
  type Rs ListUserPools = ListUserPoolsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AWSCognitoIdentityProviderService.ListUserPools")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListUserPoolsResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "UserPools")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListUserPools where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"userPools" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | Represents the response to list user pools.
--
-- /See:/ 'mkListUserPoolsResponse' smart constructor.
data ListUserPoolsResponse = ListUserPoolsResponse'
  { -- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
    nextToken :: Core.Maybe Types.PaginationKeyType,
    -- | The user pools from the response to list users.
    userPools :: Core.Maybe [Types.UserPoolDescriptionType],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListUserPoolsResponse' value with any optional fields omitted.
mkListUserPoolsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListUserPoolsResponse
mkListUserPoolsResponse responseStatus =
  ListUserPoolsResponse'
    { nextToken = Core.Nothing,
      userPools = Core.Nothing,
      responseStatus
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
luprrsNextToken :: Lens.Lens' ListUserPoolsResponse (Core.Maybe Types.PaginationKeyType)
luprrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED luprrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The user pools from the response to list users.
--
-- /Note:/ Consider using 'userPools' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
luprrsUserPools :: Lens.Lens' ListUserPoolsResponse (Core.Maybe [Types.UserPoolDescriptionType])
luprrsUserPools = Lens.field @"userPools"
{-# DEPRECATED luprrsUserPools "Use generic-lens or generic-optics with 'userPools' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
luprrsResponseStatus :: Lens.Lens' ListUserPoolsResponse Core.Int
luprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED luprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}