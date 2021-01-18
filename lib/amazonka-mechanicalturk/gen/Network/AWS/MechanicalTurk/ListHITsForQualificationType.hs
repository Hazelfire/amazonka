{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.ListHITsForQualificationType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListHITsForQualificationType@ operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the @DeleteHIT@ operation or that have been auto-deleted.
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListHITsForQualificationType
  ( -- * Creating a request
    ListHITsForQualificationType (..),
    mkListHITsForQualificationType,

    -- ** Request lenses
    lhitfqtQualificationTypeId,
    lhitfqtMaxResults,
    lhitfqtNextToken,

    -- * Destructuring the response
    ListHITsForQualificationTypeResponse (..),
    mkListHITsForQualificationTypeResponse,

    -- ** Response lenses
    lhitfqtrrsHITs,
    lhitfqtrrsNextToken,
    lhitfqtrrsNumResults,
    lhitfqtrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MechanicalTurk.Types as Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListHITsForQualificationType' smart constructor.
data ListHITsForQualificationType = ListHITsForQualificationType'
  { -- | The ID of the Qualification type to use when querying HITs.
    qualificationTypeId :: Types.QualificationTypeId,
    -- | Limit the number of results returned.
    maxResults :: Core.Maybe Core.Natural,
    -- | Pagination Token
    nextToken :: Core.Maybe Types.PaginationToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListHITsForQualificationType' value with any optional fields omitted.
mkListHITsForQualificationType ::
  -- | 'qualificationTypeId'
  Types.QualificationTypeId ->
  ListHITsForQualificationType
mkListHITsForQualificationType qualificationTypeId =
  ListHITsForQualificationType'
    { qualificationTypeId,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The ID of the Qualification type to use when querying HITs.
--
-- /Note:/ Consider using 'qualificationTypeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhitfqtQualificationTypeId :: Lens.Lens' ListHITsForQualificationType Types.QualificationTypeId
lhitfqtQualificationTypeId = Lens.field @"qualificationTypeId"
{-# DEPRECATED lhitfqtQualificationTypeId "Use generic-lens or generic-optics with 'qualificationTypeId' instead." #-}

-- | Limit the number of results returned.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhitfqtMaxResults :: Lens.Lens' ListHITsForQualificationType (Core.Maybe Core.Natural)
lhitfqtMaxResults = Lens.field @"maxResults"
{-# DEPRECATED lhitfqtMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | Pagination Token
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhitfqtNextToken :: Lens.Lens' ListHITsForQualificationType (Core.Maybe Types.PaginationToken)
lhitfqtNextToken = Lens.field @"nextToken"
{-# DEPRECATED lhitfqtNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListHITsForQualificationType where
  toJSON ListHITsForQualificationType {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("QualificationTypeId" Core..= qualificationTypeId),
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListHITsForQualificationType where
  type
    Rs ListHITsForQualificationType =
      ListHITsForQualificationTypeResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "MTurkRequesterServiceV20170117.ListHITsForQualificationType"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListHITsForQualificationTypeResponse'
            Core.<$> (x Core..:? "HITs")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "NumResults")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListHITsForQualificationType where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"hITs" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListHITsForQualificationTypeResponse' smart constructor.
data ListHITsForQualificationTypeResponse = ListHITsForQualificationTypeResponse'
  { -- | The list of HIT elements returned by the query.
    hITs :: Core.Maybe [Types.HIT],
    nextToken :: Core.Maybe Types.PaginationToken,
    -- | The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.
    numResults :: Core.Maybe Core.Int,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListHITsForQualificationTypeResponse' value with any optional fields omitted.
mkListHITsForQualificationTypeResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListHITsForQualificationTypeResponse
mkListHITsForQualificationTypeResponse responseStatus =
  ListHITsForQualificationTypeResponse'
    { hITs = Core.Nothing,
      nextToken = Core.Nothing,
      numResults = Core.Nothing,
      responseStatus
    }

-- | The list of HIT elements returned by the query.
--
-- /Note:/ Consider using 'hITs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhitfqtrrsHITs :: Lens.Lens' ListHITsForQualificationTypeResponse (Core.Maybe [Types.HIT])
lhitfqtrrsHITs = Lens.field @"hITs"
{-# DEPRECATED lhitfqtrrsHITs "Use generic-lens or generic-optics with 'hITs' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhitfqtrrsNextToken :: Lens.Lens' ListHITsForQualificationTypeResponse (Core.Maybe Types.PaginationToken)
lhitfqtrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lhitfqtrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.
--
-- /Note:/ Consider using 'numResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhitfqtrrsNumResults :: Lens.Lens' ListHITsForQualificationTypeResponse (Core.Maybe Core.Int)
lhitfqtrrsNumResults = Lens.field @"numResults"
{-# DEPRECATED lhitfqtrrsNumResults "Use generic-lens or generic-optics with 'numResults' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhitfqtrrsResponseStatus :: Lens.Lens' ListHITsForQualificationTypeResponse Core.Int
lhitfqtrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lhitfqtrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}