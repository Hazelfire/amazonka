{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.ListGroups
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summaries of the organization's groups.
--
-- This operation returns paginated results.
module Network.AWS.WorkMail.ListGroups
  ( -- * Creating a request
    ListGroups (..),
    mkListGroups,

    -- ** Request lenses
    lgOrganizationId,
    lgMaxResults,
    lgNextToken,

    -- * Destructuring the response
    ListGroupsResponse (..),
    mkListGroupsResponse,

    -- ** Response lenses
    lgrrsGroups,
    lgrrsNextToken,
    lgrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WorkMail.Types as Types

-- | /See:/ 'mkListGroups' smart constructor.
data ListGroups = ListGroups'
  { -- | The identifier for the organization under which the groups exist.
    organizationId :: Types.OrganizationId,
    -- | The maximum number of results to return in a single call.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListGroups' value with any optional fields omitted.
mkListGroups ::
  -- | 'organizationId'
  Types.OrganizationId ->
  ListGroups
mkListGroups organizationId =
  ListGroups'
    { organizationId,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The identifier for the organization under which the groups exist.
--
-- /Note:/ Consider using 'organizationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgOrganizationId :: Lens.Lens' ListGroups Types.OrganizationId
lgOrganizationId = Lens.field @"organizationId"
{-# DEPRECATED lgOrganizationId "Use generic-lens or generic-optics with 'organizationId' instead." #-}

-- | The maximum number of results to return in a single call.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgMaxResults :: Lens.Lens' ListGroups (Core.Maybe Core.Natural)
lgMaxResults = Lens.field @"maxResults"
{-# DEPRECATED lgMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgNextToken :: Lens.Lens' ListGroups (Core.Maybe Types.NextToken)
lgNextToken = Lens.field @"nextToken"
{-# DEPRECATED lgNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListGroups where
  toJSON ListGroups {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("OrganizationId" Core..= organizationId),
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListGroups where
  type Rs ListGroups = ListGroupsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "WorkMailService.ListGroups")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGroupsResponse'
            Core.<$> (x Core..:? "Groups")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListGroups where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"groups" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse'
  { -- | The overview of groups for an organization.
    groups :: Core.Maybe [Types.Group],
    -- | The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListGroupsResponse' value with any optional fields omitted.
mkListGroupsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListGroupsResponse
mkListGroupsResponse responseStatus =
  ListGroupsResponse'
    { groups = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | The overview of groups for an organization.
--
-- /Note:/ Consider using 'groups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrrsGroups :: Lens.Lens' ListGroupsResponse (Core.Maybe [Types.Group])
lgrrsGroups = Lens.field @"groups"
{-# DEPRECATED lgrrsGroups "Use generic-lens or generic-optics with 'groups' instead." #-}

-- | The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrrsNextToken :: Lens.Lens' ListGroupsResponse (Core.Maybe Types.NextToken)
lgrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lgrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrrsResponseStatus :: Lens.Lens' ListGroupsResponse Core.Int
lgrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lgrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}