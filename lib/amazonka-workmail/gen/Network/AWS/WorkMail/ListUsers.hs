{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.ListUsers
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summaries of the organization's users.
--
-- This operation returns paginated results.
module Network.AWS.WorkMail.ListUsers
  ( -- * Creating a request
    ListUsers (..),
    mkListUsers,

    -- ** Request lenses
    luOrganizationId,
    luMaxResults,
    luNextToken,

    -- * Destructuring the response
    ListUsersResponse (..),
    mkListUsersResponse,

    -- ** Response lenses
    lurrsNextToken,
    lurrsUsers,
    lurrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WorkMail.Types as Types

-- | /See:/ 'mkListUsers' smart constructor.
data ListUsers = ListUsers'
  { -- | The identifier for the organization under which the users exist.
    organizationId :: Types.OrganizationId,
    -- | The maximum number of results to return in a single call.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListUsers' value with any optional fields omitted.
mkListUsers ::
  -- | 'organizationId'
  Types.OrganizationId ->
  ListUsers
mkListUsers organizationId =
  ListUsers'
    { organizationId,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The identifier for the organization under which the users exist.
--
-- /Note:/ Consider using 'organizationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
luOrganizationId :: Lens.Lens' ListUsers Types.OrganizationId
luOrganizationId = Lens.field @"organizationId"
{-# DEPRECATED luOrganizationId "Use generic-lens or generic-optics with 'organizationId' instead." #-}

-- | The maximum number of results to return in a single call.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
luMaxResults :: Lens.Lens' ListUsers (Core.Maybe Core.Natural)
luMaxResults = Lens.field @"maxResults"
{-# DEPRECATED luMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
luNextToken :: Lens.Lens' ListUsers (Core.Maybe Types.NextToken)
luNextToken = Lens.field @"nextToken"
{-# DEPRECATED luNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListUsers where
  toJSON ListUsers {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("OrganizationId" Core..= organizationId),
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListUsers where
  type Rs ListUsers = ListUsersResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "WorkMailService.ListUsers")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListUsersResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "Users")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListUsers where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"users" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListUsersResponse' smart constructor.
data ListUsersResponse = ListUsersResponse'
  { -- | The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The overview of users for an organization.
    users :: Core.Maybe [Types.User],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListUsersResponse' value with any optional fields omitted.
mkListUsersResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListUsersResponse
mkListUsersResponse responseStatus =
  ListUsersResponse'
    { nextToken = Core.Nothing,
      users = Core.Nothing,
      responseStatus
    }

-- | The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lurrsNextToken :: Lens.Lens' ListUsersResponse (Core.Maybe Types.NextToken)
lurrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lurrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The overview of users for an organization.
--
-- /Note:/ Consider using 'users' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lurrsUsers :: Lens.Lens' ListUsersResponse (Core.Maybe [Types.User])
lurrsUsers = Lens.field @"users"
{-# DEPRECATED lurrsUsers "Use generic-lens or generic-optics with 'users' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lurrsResponseStatus :: Lens.Lens' ListUsersResponse Core.Int
lurrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lurrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}