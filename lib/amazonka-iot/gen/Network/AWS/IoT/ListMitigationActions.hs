{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.ListMitigationActions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all mitigation actions that match the specified filter criteria.
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListMitigationActions
  ( -- * Creating a request
    ListMitigationActions (..),
    mkListMitigationActions,

    -- ** Request lenses
    lmaActionType,
    lmaMaxResults,
    lmaNextToken,

    -- * Destructuring the response
    ListMitigationActionsResponse (..),
    mkListMitigationActionsResponse,

    -- ** Response lenses
    lmarrsActionIdentifiers,
    lmarrsNextToken,
    lmarrsResponseStatus,
  )
where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListMitigationActions' smart constructor.
data ListMitigationActions = ListMitigationActions'
  { -- | Specify a value to limit the result to mitigation actions with a specific action type.
    actionType :: Core.Maybe Types.MitigationActionType,
    -- | The maximum number of results to return at one time. The default is 25.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token for the next set of results.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListMitigationActions' value with any optional fields omitted.
mkListMitigationActions ::
  ListMitigationActions
mkListMitigationActions =
  ListMitigationActions'
    { actionType = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | Specify a value to limit the result to mitigation actions with a specific action type.
--
-- /Note:/ Consider using 'actionType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmaActionType :: Lens.Lens' ListMitigationActions (Core.Maybe Types.MitigationActionType)
lmaActionType = Lens.field @"actionType"
{-# DEPRECATED lmaActionType "Use generic-lens or generic-optics with 'actionType' instead." #-}

-- | The maximum number of results to return at one time. The default is 25.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmaMaxResults :: Lens.Lens' ListMitigationActions (Core.Maybe Core.Natural)
lmaMaxResults = Lens.field @"maxResults"
{-# DEPRECATED lmaMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmaNextToken :: Lens.Lens' ListMitigationActions (Core.Maybe Types.NextToken)
lmaNextToken = Lens.field @"nextToken"
{-# DEPRECATED lmaNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.AWSRequest ListMitigationActions where
  type Rs ListMitigationActions = ListMitigationActionsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath = Core.rawPath "/mitigationactions/actions",
        Core._rqQuery =
          Core.toQueryValue "actionType" Core.<$> actionType
            Core.<> (Core.toQueryValue "maxResults" Core.<$> maxResults)
            Core.<> (Core.toQueryValue "nextToken" Core.<$> nextToken),
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListMitigationActionsResponse'
            Core.<$> (x Core..:? "actionIdentifiers")
            Core.<*> (x Core..:? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListMitigationActions where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"actionIdentifiers" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListMitigationActionsResponse' smart constructor.
data ListMitigationActionsResponse = ListMitigationActionsResponse'
  { -- | A set of actions that matched the specified filter criteria.
    actionIdentifiers :: Core.Maybe [Types.MitigationActionIdentifier],
    -- | The token for the next set of results.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListMitigationActionsResponse' value with any optional fields omitted.
mkListMitigationActionsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListMitigationActionsResponse
mkListMitigationActionsResponse responseStatus =
  ListMitigationActionsResponse'
    { actionIdentifiers = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | A set of actions that matched the specified filter criteria.
--
-- /Note:/ Consider using 'actionIdentifiers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmarrsActionIdentifiers :: Lens.Lens' ListMitigationActionsResponse (Core.Maybe [Types.MitigationActionIdentifier])
lmarrsActionIdentifiers = Lens.field @"actionIdentifiers"
{-# DEPRECATED lmarrsActionIdentifiers "Use generic-lens or generic-optics with 'actionIdentifiers' instead." #-}

-- | The token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmarrsNextToken :: Lens.Lens' ListMitigationActionsResponse (Core.Maybe Types.NextToken)
lmarrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lmarrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmarrsResponseStatus :: Lens.Lens' ListMitigationActionsResponse Core.Int
lmarrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lmarrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}