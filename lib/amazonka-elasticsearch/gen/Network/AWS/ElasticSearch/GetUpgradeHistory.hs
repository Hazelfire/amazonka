{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.GetUpgradeHistory
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the complete history of the last 10 upgrades that were performed on the domain.
--
-- This operation returns paginated results.
module Network.AWS.ElasticSearch.GetUpgradeHistory
  ( -- * Creating a request
    GetUpgradeHistory (..),
    mkGetUpgradeHistory,

    -- ** Request lenses
    guhDomainName,
    guhMaxResults,
    guhNextToken,

    -- * Destructuring the response
    GetUpgradeHistoryResponse (..),
    mkGetUpgradeHistoryResponse,

    -- ** Response lenses
    guhrrsNextToken,
    guhrrsUpgradeHistories,
    guhrrsResponseStatus,
  )
where

import qualified Network.AWS.ElasticSearch.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for request parameters to @'GetUpgradeHistory' @ operation.
--
-- /See:/ 'mkGetUpgradeHistory' smart constructor.
data GetUpgradeHistory = GetUpgradeHistory'
  { domainName :: Types.DomainName,
    maxResults :: Core.Maybe Core.Int,
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetUpgradeHistory' value with any optional fields omitted.
mkGetUpgradeHistory ::
  -- | 'domainName'
  Types.DomainName ->
  GetUpgradeHistory
mkGetUpgradeHistory domainName =
  GetUpgradeHistory'
    { domainName,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
guhDomainName :: Lens.Lens' GetUpgradeHistory Types.DomainName
guhDomainName = Lens.field @"domainName"
{-# DEPRECATED guhDomainName "Use generic-lens or generic-optics with 'domainName' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
guhMaxResults :: Lens.Lens' GetUpgradeHistory (Core.Maybe Core.Int)
guhMaxResults = Lens.field @"maxResults"
{-# DEPRECATED guhMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
guhNextToken :: Lens.Lens' GetUpgradeHistory (Core.Maybe Types.NextToken)
guhNextToken = Lens.field @"nextToken"
{-# DEPRECATED guhNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.AWSRequest GetUpgradeHistory where
  type Rs GetUpgradeHistory = GetUpgradeHistoryResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/2015-01-01/es/upgradeDomain/" Core.<> (Core.toText domainName)
                Core.<> ("/history")
            ),
        Core._rqQuery =
          Core.toQueryValue "maxResults" Core.<$> maxResults
            Core.<> (Core.toQueryValue "nextToken" Core.<$> nextToken),
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetUpgradeHistoryResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "UpgradeHistories")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager GetUpgradeHistory where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"upgradeHistories" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | Container for response returned by @'GetUpgradeHistory' @ operation.
--
-- /See:/ 'mkGetUpgradeHistoryResponse' smart constructor.
data GetUpgradeHistoryResponse = GetUpgradeHistoryResponse'
  { -- | Pagination token that needs to be supplied to the next call to get the next page of results
    nextToken :: Core.Maybe Types.String,
    -- | A list of @'UpgradeHistory' @ objects corresponding to each Upgrade or Upgrade Eligibility Check performed on a domain returned as part of @'GetUpgradeHistoryResponse' @ object.
    upgradeHistories :: Core.Maybe [Types.UpgradeHistory],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetUpgradeHistoryResponse' value with any optional fields omitted.
mkGetUpgradeHistoryResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetUpgradeHistoryResponse
mkGetUpgradeHistoryResponse responseStatus =
  GetUpgradeHistoryResponse'
    { nextToken = Core.Nothing,
      upgradeHistories = Core.Nothing,
      responseStatus
    }

-- | Pagination token that needs to be supplied to the next call to get the next page of results
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
guhrrsNextToken :: Lens.Lens' GetUpgradeHistoryResponse (Core.Maybe Types.String)
guhrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED guhrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | A list of @'UpgradeHistory' @ objects corresponding to each Upgrade or Upgrade Eligibility Check performed on a domain returned as part of @'GetUpgradeHistoryResponse' @ object.
--
-- /Note:/ Consider using 'upgradeHistories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
guhrrsUpgradeHistories :: Lens.Lens' GetUpgradeHistoryResponse (Core.Maybe [Types.UpgradeHistory])
guhrrsUpgradeHistories = Lens.field @"upgradeHistories"
{-# DEPRECATED guhrrsUpgradeHistories "Use generic-lens or generic-optics with 'upgradeHistories' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
guhrrsResponseStatus :: Lens.Lens' GetUpgradeHistoryResponse Core.Int
guhrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED guhrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}