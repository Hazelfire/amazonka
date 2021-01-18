{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.GetPullRequestOverrideState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about whether approval rules have been set aside (overridden) for a pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.
module Network.AWS.CodeCommit.GetPullRequestOverrideState
  ( -- * Creating a request
    GetPullRequestOverrideState (..),
    mkGetPullRequestOverrideState,

    -- ** Request lenses
    gprosPullRequestId,
    gprosRevisionId,

    -- * Destructuring the response
    GetPullRequestOverrideStateResponse (..),
    mkGetPullRequestOverrideStateResponse,

    -- ** Response lenses
    gprosrrsOverridden,
    gprosrrsOverrider,
    gprosrrsResponseStatus,
  )
where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetPullRequestOverrideState' smart constructor.
data GetPullRequestOverrideState = GetPullRequestOverrideState'
  { -- | The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).
    pullRequestId :: Types.PullRequestId,
    -- | The system-generated ID of the revision for the pull request. To retrieve the most recent revision ID, use 'GetPullRequest' .
    revisionId :: Types.RevisionId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetPullRequestOverrideState' value with any optional fields omitted.
mkGetPullRequestOverrideState ::
  -- | 'pullRequestId'
  Types.PullRequestId ->
  -- | 'revisionId'
  Types.RevisionId ->
  GetPullRequestOverrideState
mkGetPullRequestOverrideState pullRequestId revisionId =
  GetPullRequestOverrideState' {pullRequestId, revisionId}

-- | The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).
--
-- /Note:/ Consider using 'pullRequestId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprosPullRequestId :: Lens.Lens' GetPullRequestOverrideState Types.PullRequestId
gprosPullRequestId = Lens.field @"pullRequestId"
{-# DEPRECATED gprosPullRequestId "Use generic-lens or generic-optics with 'pullRequestId' instead." #-}

-- | The system-generated ID of the revision for the pull request. To retrieve the most recent revision ID, use 'GetPullRequest' .
--
-- /Note:/ Consider using 'revisionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprosRevisionId :: Lens.Lens' GetPullRequestOverrideState Types.RevisionId
gprosRevisionId = Lens.field @"revisionId"
{-# DEPRECATED gprosRevisionId "Use generic-lens or generic-optics with 'revisionId' instead." #-}

instance Core.FromJSON GetPullRequestOverrideState where
  toJSON GetPullRequestOverrideState {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("pullRequestId" Core..= pullRequestId),
            Core.Just ("revisionId" Core..= revisionId)
          ]
      )

instance Core.AWSRequest GetPullRequestOverrideState where
  type
    Rs GetPullRequestOverrideState =
      GetPullRequestOverrideStateResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "CodeCommit_20150413.GetPullRequestOverrideState")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPullRequestOverrideStateResponse'
            Core.<$> (x Core..:? "overridden")
            Core.<*> (x Core..:? "overrider")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetPullRequestOverrideStateResponse' smart constructor.
data GetPullRequestOverrideStateResponse = GetPullRequestOverrideStateResponse'
  { -- | A Boolean value that indicates whether a pull request has had its rules set aside (TRUE) or whether all approval rules still apply (FALSE).
    overridden :: Core.Maybe Core.Bool,
    -- | The Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.
    overrider :: Core.Maybe Types.Arn,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetPullRequestOverrideStateResponse' value with any optional fields omitted.
mkGetPullRequestOverrideStateResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetPullRequestOverrideStateResponse
mkGetPullRequestOverrideStateResponse responseStatus =
  GetPullRequestOverrideStateResponse'
    { overridden = Core.Nothing,
      overrider = Core.Nothing,
      responseStatus
    }

-- | A Boolean value that indicates whether a pull request has had its rules set aside (TRUE) or whether all approval rules still apply (FALSE).
--
-- /Note:/ Consider using 'overridden' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprosrrsOverridden :: Lens.Lens' GetPullRequestOverrideStateResponse (Core.Maybe Core.Bool)
gprosrrsOverridden = Lens.field @"overridden"
{-# DEPRECATED gprosrrsOverridden "Use generic-lens or generic-optics with 'overridden' instead." #-}

-- | The Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.
--
-- /Note:/ Consider using 'overrider' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprosrrsOverrider :: Lens.Lens' GetPullRequestOverrideStateResponse (Core.Maybe Types.Arn)
gprosrrsOverrider = Lens.field @"overrider"
{-# DEPRECATED gprosrrsOverrider "Use generic-lens or generic-optics with 'overrider' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprosrrsResponseStatus :: Lens.Lens' GetPullRequestOverrideStateResponse Core.Int
gprosrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gprosrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}