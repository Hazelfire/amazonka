{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.GetPullRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a pull request in a specified repository.
module Network.AWS.CodeCommit.GetPullRequest
  ( -- * Creating a request
    GetPullRequest (..),
    mkGetPullRequest,

    -- ** Request lenses
    gprPullRequestId,

    -- * Destructuring the response
    GetPullRequestResponse (..),
    mkGetPullRequestResponse,

    -- ** Response lenses
    gprrrsPullRequest,
    gprrrsResponseStatus,
  )
where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetPullRequest' smart constructor.
newtype GetPullRequest = GetPullRequest'
  { -- | The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
    pullRequestId :: Types.PullRequestId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetPullRequest' value with any optional fields omitted.
mkGetPullRequest ::
  -- | 'pullRequestId'
  Types.PullRequestId ->
  GetPullRequest
mkGetPullRequest pullRequestId = GetPullRequest' {pullRequestId}

-- | The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
--
-- /Note:/ Consider using 'pullRequestId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprPullRequestId :: Lens.Lens' GetPullRequest Types.PullRequestId
gprPullRequestId = Lens.field @"pullRequestId"
{-# DEPRECATED gprPullRequestId "Use generic-lens or generic-optics with 'pullRequestId' instead." #-}

instance Core.FromJSON GetPullRequest where
  toJSON GetPullRequest {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("pullRequestId" Core..= pullRequestId)]
      )

instance Core.AWSRequest GetPullRequest where
  type Rs GetPullRequest = GetPullRequestResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "CodeCommit_20150413.GetPullRequest")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPullRequestResponse'
            Core.<$> (x Core..: "pullRequest") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetPullRequestResponse' smart constructor.
data GetPullRequestResponse = GetPullRequestResponse'
  { -- | Information about the specified pull request.
    pullRequest :: Types.PullRequest,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetPullRequestResponse' value with any optional fields omitted.
mkGetPullRequestResponse ::
  -- | 'pullRequest'
  Types.PullRequest ->
  -- | 'responseStatus'
  Core.Int ->
  GetPullRequestResponse
mkGetPullRequestResponse pullRequest responseStatus =
  GetPullRequestResponse' {pullRequest, responseStatus}

-- | Information about the specified pull request.
--
-- /Note:/ Consider using 'pullRequest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprrrsPullRequest :: Lens.Lens' GetPullRequestResponse Types.PullRequest
gprrrsPullRequest = Lens.field @"pullRequest"
{-# DEPRECATED gprrrsPullRequest "Use generic-lens or generic-optics with 'pullRequest' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprrrsResponseStatus :: Lens.Lens' GetPullRequestResponse Core.Int
gprrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gprrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}