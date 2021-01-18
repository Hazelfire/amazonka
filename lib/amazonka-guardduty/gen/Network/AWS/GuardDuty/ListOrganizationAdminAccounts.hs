{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.ListOrganizationAdminAccounts
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the accounts configured as GuardDuty delegated administrators.
--
-- This operation returns paginated results.
module Network.AWS.GuardDuty.ListOrganizationAdminAccounts
  ( -- * Creating a request
    ListOrganizationAdminAccounts (..),
    mkListOrganizationAdminAccounts,

    -- ** Request lenses
    loaaMaxResults,
    loaaNextToken,

    -- * Destructuring the response
    ListOrganizationAdminAccountsResponse (..),
    mkListOrganizationAdminAccountsResponse,

    -- ** Response lenses
    loaarrsAdminAccounts,
    loaarrsNextToken,
    loaarrsResponseStatus,
  )
where

import qualified Network.AWS.GuardDuty.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListOrganizationAdminAccounts' smart constructor.
data ListOrganizationAdminAccounts = ListOrganizationAdminAccounts'
  { -- | The maximum number of results to return in the response.
    maxResults :: Core.Maybe Core.Natural,
    -- | A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the @NextToken@ value returned from the previous request to continue listing results after the first page.
    nextToken :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListOrganizationAdminAccounts' value with any optional fields omitted.
mkListOrganizationAdminAccounts ::
  ListOrganizationAdminAccounts
mkListOrganizationAdminAccounts =
  ListOrganizationAdminAccounts'
    { maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The maximum number of results to return in the response.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
loaaMaxResults :: Lens.Lens' ListOrganizationAdminAccounts (Core.Maybe Core.Natural)
loaaMaxResults = Lens.field @"maxResults"
{-# DEPRECATED loaaMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the @NextToken@ value returned from the previous request to continue listing results after the first page.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
loaaNextToken :: Lens.Lens' ListOrganizationAdminAccounts (Core.Maybe Types.String)
loaaNextToken = Lens.field @"nextToken"
{-# DEPRECATED loaaNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.AWSRequest ListOrganizationAdminAccounts where
  type
    Rs ListOrganizationAdminAccounts =
      ListOrganizationAdminAccountsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath = Core.rawPath "/admin",
        Core._rqQuery =
          Core.toQueryValue "maxResults" Core.<$> maxResults
            Core.<> (Core.toQueryValue "nextToken" Core.<$> nextToken),
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListOrganizationAdminAccountsResponse'
            Core.<$> (x Core..:? "adminAccounts")
            Core.<*> (x Core..:? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListOrganizationAdminAccounts where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"adminAccounts" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListOrganizationAdminAccountsResponse' smart constructor.
data ListOrganizationAdminAccountsResponse = ListOrganizationAdminAccountsResponse'
  { -- | An AdminAccounts object that includes a list of accounts configured as GuardDuty delegated administrators.
    adminAccounts :: Core.Maybe [Types.AdminAccount],
    -- | The pagination parameter to be used on the next list operation to retrieve more items.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListOrganizationAdminAccountsResponse' value with any optional fields omitted.
mkListOrganizationAdminAccountsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListOrganizationAdminAccountsResponse
mkListOrganizationAdminAccountsResponse responseStatus =
  ListOrganizationAdminAccountsResponse'
    { adminAccounts =
        Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | An AdminAccounts object that includes a list of accounts configured as GuardDuty delegated administrators.
--
-- /Note:/ Consider using 'adminAccounts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
loaarrsAdminAccounts :: Lens.Lens' ListOrganizationAdminAccountsResponse (Core.Maybe [Types.AdminAccount])
loaarrsAdminAccounts = Lens.field @"adminAccounts"
{-# DEPRECATED loaarrsAdminAccounts "Use generic-lens or generic-optics with 'adminAccounts' instead." #-}

-- | The pagination parameter to be used on the next list operation to retrieve more items.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
loaarrsNextToken :: Lens.Lens' ListOrganizationAdminAccountsResponse (Core.Maybe Types.NextToken)
loaarrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED loaarrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
loaarrsResponseStatus :: Lens.Lens' ListOrganizationAdminAccountsResponse Core.Int
loaarrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED loaarrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}