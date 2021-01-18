{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.ListReportGroups
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list ARNs for the report groups in the current AWS account.
--
-- This operation returns paginated results.
module Network.AWS.CodeBuild.ListReportGroups
  ( -- * Creating a request
    ListReportGroups (..),
    mkListReportGroups,

    -- ** Request lenses
    lrgMaxResults,
    lrgNextToken,
    lrgSortBy,
    lrgSortOrder,

    -- * Destructuring the response
    ListReportGroupsResponse (..),
    mkListReportGroupsResponse,

    -- ** Response lenses
    lrgrrsNextToken,
    lrgrrsReportGroups,
    lrgrrsResponseStatus,
  )
where

import qualified Network.AWS.CodeBuild.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListReportGroups' smart constructor.
data ListReportGroups = ListReportGroups'
  { -- | The maximum number of paginated report groups returned per response. Use @nextToken@ to iterate pages in the list of returned @ReportGroup@ objects. The default value is 100.
    maxResults :: Core.Maybe Core.Natural,
    -- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
    nextToken :: Core.Maybe Types.String,
    -- | The criterion to be used to list build report groups. Valid values include:
    --
    --
    --     * @CREATED_TIME@ : List based on when each report group was created.
    --
    --
    --     * @LAST_MODIFIED_TIME@ : List based on when each report group was last changed.
    --
    --
    --     * @NAME@ : List based on each report group's name.
    sortBy :: Core.Maybe Types.ReportGroupSortByType,
    -- | Used to specify the order to sort the list of returned report groups. Valid values are @ASCENDING@ and @DESCENDING@ .
    sortOrder :: Core.Maybe Types.SortOrderType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListReportGroups' value with any optional fields omitted.
mkListReportGroups ::
  ListReportGroups
mkListReportGroups =
  ListReportGroups'
    { maxResults = Core.Nothing,
      nextToken = Core.Nothing,
      sortBy = Core.Nothing,
      sortOrder = Core.Nothing
    }

-- | The maximum number of paginated report groups returned per response. Use @nextToken@ to iterate pages in the list of returned @ReportGroup@ objects. The default value is 100.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrgMaxResults :: Lens.Lens' ListReportGroups (Core.Maybe Core.Natural)
lrgMaxResults = Lens.field @"maxResults"
{-# DEPRECATED lrgMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrgNextToken :: Lens.Lens' ListReportGroups (Core.Maybe Types.String)
lrgNextToken = Lens.field @"nextToken"
{-# DEPRECATED lrgNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The criterion to be used to list build report groups. Valid values include:
--
--
--     * @CREATED_TIME@ : List based on when each report group was created.
--
--
--     * @LAST_MODIFIED_TIME@ : List based on when each report group was last changed.
--
--
--     * @NAME@ : List based on each report group's name.
--
--
--
-- /Note:/ Consider using 'sortBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrgSortBy :: Lens.Lens' ListReportGroups (Core.Maybe Types.ReportGroupSortByType)
lrgSortBy = Lens.field @"sortBy"
{-# DEPRECATED lrgSortBy "Use generic-lens or generic-optics with 'sortBy' instead." #-}

-- | Used to specify the order to sort the list of returned report groups. Valid values are @ASCENDING@ and @DESCENDING@ .
--
-- /Note:/ Consider using 'sortOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrgSortOrder :: Lens.Lens' ListReportGroups (Core.Maybe Types.SortOrderType)
lrgSortOrder = Lens.field @"sortOrder"
{-# DEPRECATED lrgSortOrder "Use generic-lens or generic-optics with 'sortOrder' instead." #-}

instance Core.FromJSON ListReportGroups where
  toJSON ListReportGroups {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxResults" Core..=) Core.<$> maxResults,
            ("nextToken" Core..=) Core.<$> nextToken,
            ("sortBy" Core..=) Core.<$> sortBy,
            ("sortOrder" Core..=) Core.<$> sortOrder
          ]
      )

instance Core.AWSRequest ListReportGroups where
  type Rs ListReportGroups = ListReportGroupsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "CodeBuild_20161006.ListReportGroups")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListReportGroupsResponse'
            Core.<$> (x Core..:? "nextToken")
            Core.<*> (x Core..:? "reportGroups")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListReportGroups where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"reportGroups" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListReportGroupsResponse' smart constructor.
data ListReportGroupsResponse = ListReportGroupsResponse'
  { -- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The list of ARNs for the report groups in the current AWS account.
    reportGroups :: Core.Maybe (Core.NonEmpty Types.NonEmptyString),
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListReportGroupsResponse' value with any optional fields omitted.
mkListReportGroupsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListReportGroupsResponse
mkListReportGroupsResponse responseStatus =
  ListReportGroupsResponse'
    { nextToken = Core.Nothing,
      reportGroups = Core.Nothing,
      responseStatus
    }

-- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrgrrsNextToken :: Lens.Lens' ListReportGroupsResponse (Core.Maybe Types.NextToken)
lrgrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lrgrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The list of ARNs for the report groups in the current AWS account.
--
-- /Note:/ Consider using 'reportGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrgrrsReportGroups :: Lens.Lens' ListReportGroupsResponse (Core.Maybe (Core.NonEmpty Types.NonEmptyString))
lrgrrsReportGroups = Lens.field @"reportGroups"
{-# DEPRECATED lrgrrsReportGroups "Use generic-lens or generic-optics with 'reportGroups' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrgrrsResponseStatus :: Lens.Lens' ListReportGroupsResponse Core.Int
lrgrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lrgrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}