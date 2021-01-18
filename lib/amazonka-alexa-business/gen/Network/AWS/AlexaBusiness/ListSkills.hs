{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.ListSkills
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all enabled skills in a specific skill group.
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.ListSkills
  ( -- * Creating a request
    ListSkills (..),
    mkListSkills,

    -- ** Request lenses
    lsEnablementType,
    lsMaxResults,
    lsNextToken,
    lsSkillGroupArn,
    lsSkillType,

    -- * Destructuring the response
    ListSkillsResponse (..),
    mkListSkillsResponse,

    -- ** Response lenses
    lsrrsNextToken,
    lsrrsSkillSummaries,
    lsrrsResponseStatus,
  )
where

import qualified Network.AWS.AlexaBusiness.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListSkills' smart constructor.
data ListSkills = ListSkills'
  { -- | Whether the skill is enabled under the user's account.
    enablementType :: Core.Maybe Types.EnablementTypeFilter,
    -- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
    maxResults :: Core.Maybe Core.Natural,
    -- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
    nextToken :: Core.Maybe Types.NextToken,
    -- | The ARN of the skill group for which to list enabled skills.
    skillGroupArn :: Core.Maybe Types.Arn,
    -- | Whether the skill is publicly available or is a private skill.
    skillType :: Core.Maybe Types.SkillTypeFilter
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListSkills' value with any optional fields omitted.
mkListSkills ::
  ListSkills
mkListSkills =
  ListSkills'
    { enablementType = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing,
      skillGroupArn = Core.Nothing,
      skillType = Core.Nothing
    }

-- | Whether the skill is enabled under the user's account.
--
-- /Note:/ Consider using 'enablementType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsEnablementType :: Lens.Lens' ListSkills (Core.Maybe Types.EnablementTypeFilter)
lsEnablementType = Lens.field @"enablementType"
{-# DEPRECATED lsEnablementType "Use generic-lens or generic-optics with 'enablementType' instead." #-}

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsMaxResults :: Lens.Lens' ListSkills (Core.Maybe Core.Natural)
lsMaxResults = Lens.field @"maxResults"
{-# DEPRECATED lsMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsNextToken :: Lens.Lens' ListSkills (Core.Maybe Types.NextToken)
lsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The ARN of the skill group for which to list enabled skills.
--
-- /Note:/ Consider using 'skillGroupArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsSkillGroupArn :: Lens.Lens' ListSkills (Core.Maybe Types.Arn)
lsSkillGroupArn = Lens.field @"skillGroupArn"
{-# DEPRECATED lsSkillGroupArn "Use generic-lens or generic-optics with 'skillGroupArn' instead." #-}

-- | Whether the skill is publicly available or is a private skill.
--
-- /Note:/ Consider using 'skillType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsSkillType :: Lens.Lens' ListSkills (Core.Maybe Types.SkillTypeFilter)
lsSkillType = Lens.field @"skillType"
{-# DEPRECATED lsSkillType "Use generic-lens or generic-optics with 'skillType' instead." #-}

instance Core.FromJSON ListSkills where
  toJSON ListSkills {..} =
    Core.object
      ( Core.catMaybes
          [ ("EnablementType" Core..=) Core.<$> enablementType,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken,
            ("SkillGroupArn" Core..=) Core.<$> skillGroupArn,
            ("SkillType" Core..=) Core.<$> skillType
          ]
      )

instance Core.AWSRequest ListSkills where
  type Rs ListSkills = ListSkillsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AlexaForBusiness.ListSkills")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSkillsResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "SkillSummaries")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListSkills where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"skillSummaries" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListSkillsResponse' smart constructor.
data ListSkillsResponse = ListSkillsResponse'
  { -- | The token returned to indicate that there is more data available.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The list of enabled skills requested. Required.
    skillSummaries :: Core.Maybe [Types.SkillSummary],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListSkillsResponse' value with any optional fields omitted.
mkListSkillsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListSkillsResponse
mkListSkillsResponse responseStatus =
  ListSkillsResponse'
    { nextToken = Core.Nothing,
      skillSummaries = Core.Nothing,
      responseStatus
    }

-- | The token returned to indicate that there is more data available.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsrrsNextToken :: Lens.Lens' ListSkillsResponse (Core.Maybe Types.NextToken)
lsrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lsrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The list of enabled skills requested. Required.
--
-- /Note:/ Consider using 'skillSummaries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsrrsSkillSummaries :: Lens.Lens' ListSkillsResponse (Core.Maybe [Types.SkillSummary])
lsrrsSkillSummaries = Lens.field @"skillSummaries"
{-# DEPRECATED lsrrsSkillSummaries "Use generic-lens or generic-optics with 'skillSummaries' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsrrsResponseStatus :: Lens.Lens' ListSkillsResponse Core.Int
lsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}