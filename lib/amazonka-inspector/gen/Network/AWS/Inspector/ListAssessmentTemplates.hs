{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.ListAssessmentTemplates
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
--
-- This operation returns paginated results.
module Network.AWS.Inspector.ListAssessmentTemplates
  ( -- * Creating a request
    ListAssessmentTemplates (..),
    mkListAssessmentTemplates,

    -- ** Request lenses
    latAssessmentTargetArns,
    latFilter,
    latMaxResults,
    latNextToken,

    -- * Destructuring the response
    ListAssessmentTemplatesResponse (..),
    mkListAssessmentTemplatesResponse,

    -- ** Response lenses
    latrrsAssessmentTemplateArns,
    latrrsNextToken,
    latrrsResponseStatus,
  )
where

import qualified Network.AWS.Inspector.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListAssessmentTemplates' smart constructor.
data ListAssessmentTemplates = ListAssessmentTemplates'
  { -- | A list of ARNs that specifies the assessment targets whose assessment templates you want to list.
    assessmentTargetArns :: Core.Maybe [Types.Arn],
    -- | You can use this parameter to specify a subset of data to be included in the action's response.
    --
    -- For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
    filter :: Core.Maybe Types.AssessmentTemplateFilter,
    -- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
    maxResults :: Core.Maybe Core.Int,
    -- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListAssessmentTemplates__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
    nextToken :: Core.Maybe Types.PaginationToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListAssessmentTemplates' value with any optional fields omitted.
mkListAssessmentTemplates ::
  ListAssessmentTemplates
mkListAssessmentTemplates =
  ListAssessmentTemplates'
    { assessmentTargetArns = Core.Nothing,
      filter = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | A list of ARNs that specifies the assessment targets whose assessment templates you want to list.
--
-- /Note:/ Consider using 'assessmentTargetArns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
latAssessmentTargetArns :: Lens.Lens' ListAssessmentTemplates (Core.Maybe [Types.Arn])
latAssessmentTargetArns = Lens.field @"assessmentTargetArns"
{-# DEPRECATED latAssessmentTargetArns "Use generic-lens or generic-optics with 'assessmentTargetArns' instead." #-}

-- | You can use this parameter to specify a subset of data to be included in the action's response.
--
-- For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
--
-- /Note:/ Consider using 'filter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
latFilter :: Lens.Lens' ListAssessmentTemplates (Core.Maybe Types.AssessmentTemplateFilter)
latFilter = Lens.field @"filter"
{-# DEPRECATED latFilter "Use generic-lens or generic-optics with 'filter' instead." #-}

-- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
latMaxResults :: Lens.Lens' ListAssessmentTemplates (Core.Maybe Core.Int)
latMaxResults = Lens.field @"maxResults"
{-# DEPRECATED latMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListAssessmentTemplates__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
latNextToken :: Lens.Lens' ListAssessmentTemplates (Core.Maybe Types.PaginationToken)
latNextToken = Lens.field @"nextToken"
{-# DEPRECATED latNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListAssessmentTemplates where
  toJSON ListAssessmentTemplates {..} =
    Core.object
      ( Core.catMaybes
          [ ("assessmentTargetArns" Core..=) Core.<$> assessmentTargetArns,
            ("filter" Core..=) Core.<$> filter,
            ("maxResults" Core..=) Core.<$> maxResults,
            ("nextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListAssessmentTemplates where
  type Rs ListAssessmentTemplates = ListAssessmentTemplatesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "InspectorService.ListAssessmentTemplates")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAssessmentTemplatesResponse'
            Core.<$> (x Core..:? "assessmentTemplateArns" Core..!= Core.mempty)
            Core.<*> (x Core..:? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListAssessmentTemplates where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^. Lens.field @"assessmentTemplateArns") =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListAssessmentTemplatesResponse' smart constructor.
data ListAssessmentTemplatesResponse = ListAssessmentTemplatesResponse'
  { -- | A list of ARNs that specifies the assessment templates returned by the action.
    assessmentTemplateArns :: [Types.Arn],
    -- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListAssessmentTemplatesResponse' value with any optional fields omitted.
mkListAssessmentTemplatesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListAssessmentTemplatesResponse
mkListAssessmentTemplatesResponse responseStatus =
  ListAssessmentTemplatesResponse'
    { assessmentTemplateArns =
        Core.mempty,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | A list of ARNs that specifies the assessment templates returned by the action.
--
-- /Note:/ Consider using 'assessmentTemplateArns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
latrrsAssessmentTemplateArns :: Lens.Lens' ListAssessmentTemplatesResponse [Types.Arn]
latrrsAssessmentTemplateArns = Lens.field @"assessmentTemplateArns"
{-# DEPRECATED latrrsAssessmentTemplateArns "Use generic-lens or generic-optics with 'assessmentTemplateArns' instead." #-}

-- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
latrrsNextToken :: Lens.Lens' ListAssessmentTemplatesResponse (Core.Maybe Types.NextToken)
latrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED latrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
latrrsResponseStatus :: Lens.Lens' ListAssessmentTemplatesResponse Core.Int
latrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED latrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}