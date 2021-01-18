{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.GetCommentsForComparedCommit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about comments made on the comparison between two commits.
--
-- This operation returns paginated results.
module Network.AWS.CodeCommit.GetCommentsForComparedCommit
  ( -- * Creating a request
    GetCommentsForComparedCommit (..),
    mkGetCommentsForComparedCommit,

    -- ** Request lenses
    gcfccRepositoryName,
    gcfccAfterCommitId,
    gcfccBeforeCommitId,
    gcfccMaxResults,
    gcfccNextToken,

    -- * Destructuring the response
    GetCommentsForComparedCommitResponse (..),
    mkGetCommentsForComparedCommitResponse,

    -- ** Response lenses
    gcfccrrsCommentsForComparedCommitData,
    gcfccrrsNextToken,
    gcfccrrsResponseStatus,
  )
where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetCommentsForComparedCommit' smart constructor.
data GetCommentsForComparedCommit = GetCommentsForComparedCommit'
  { -- | The name of the repository where you want to compare commits.
    repositoryName :: Types.RepositoryName,
    -- | To establish the directionality of the comparison, the full commit ID of the after commit.
    afterCommitId :: Types.CommitId,
    -- | To establish the directionality of the comparison, the full commit ID of the before commit.
    beforeCommitId :: Core.Maybe Types.CommitId,
    -- | A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments, but you can configure up to 500.
    maxResults :: Core.Maybe Core.Int,
    -- | An enumeration token that when provided in a request, returns the next batch of the results.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetCommentsForComparedCommit' value with any optional fields omitted.
mkGetCommentsForComparedCommit ::
  -- | 'repositoryName'
  Types.RepositoryName ->
  -- | 'afterCommitId'
  Types.CommitId ->
  GetCommentsForComparedCommit
mkGetCommentsForComparedCommit repositoryName afterCommitId =
  GetCommentsForComparedCommit'
    { repositoryName,
      afterCommitId,
      beforeCommitId = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The name of the repository where you want to compare commits.
--
-- /Note:/ Consider using 'repositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcfccRepositoryName :: Lens.Lens' GetCommentsForComparedCommit Types.RepositoryName
gcfccRepositoryName = Lens.field @"repositoryName"
{-# DEPRECATED gcfccRepositoryName "Use generic-lens or generic-optics with 'repositoryName' instead." #-}

-- | To establish the directionality of the comparison, the full commit ID of the after commit.
--
-- /Note:/ Consider using 'afterCommitId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcfccAfterCommitId :: Lens.Lens' GetCommentsForComparedCommit Types.CommitId
gcfccAfterCommitId = Lens.field @"afterCommitId"
{-# DEPRECATED gcfccAfterCommitId "Use generic-lens or generic-optics with 'afterCommitId' instead." #-}

-- | To establish the directionality of the comparison, the full commit ID of the before commit.
--
-- /Note:/ Consider using 'beforeCommitId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcfccBeforeCommitId :: Lens.Lens' GetCommentsForComparedCommit (Core.Maybe Types.CommitId)
gcfccBeforeCommitId = Lens.field @"beforeCommitId"
{-# DEPRECATED gcfccBeforeCommitId "Use generic-lens or generic-optics with 'beforeCommitId' instead." #-}

-- | A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments, but you can configure up to 500.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcfccMaxResults :: Lens.Lens' GetCommentsForComparedCommit (Core.Maybe Core.Int)
gcfccMaxResults = Lens.field @"maxResults"
{-# DEPRECATED gcfccMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | An enumeration token that when provided in a request, returns the next batch of the results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcfccNextToken :: Lens.Lens' GetCommentsForComparedCommit (Core.Maybe Types.NextToken)
gcfccNextToken = Lens.field @"nextToken"
{-# DEPRECATED gcfccNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON GetCommentsForComparedCommit where
  toJSON GetCommentsForComparedCommit {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("repositoryName" Core..= repositoryName),
            Core.Just ("afterCommitId" Core..= afterCommitId),
            ("beforeCommitId" Core..=) Core.<$> beforeCommitId,
            ("maxResults" Core..=) Core.<$> maxResults,
            ("nextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest GetCommentsForComparedCommit where
  type
    Rs GetCommentsForComparedCommit =
      GetCommentsForComparedCommitResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "CodeCommit_20150413.GetCommentsForComparedCommit"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCommentsForComparedCommitResponse'
            Core.<$> (x Core..:? "commentsForComparedCommitData")
            Core.<*> (x Core..:? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager GetCommentsForComparedCommit where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        ( rs
            Lens.^? Lens.field @"commentsForComparedCommitData" Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkGetCommentsForComparedCommitResponse' smart constructor.
data GetCommentsForComparedCommitResponse = GetCommentsForComparedCommitResponse'
  { -- | A list of comment objects on the compared commit.
    commentsForComparedCommitData :: Core.Maybe [Types.CommentsForComparedCommit],
    -- | An enumeration token that can be used in a request to return the next batch of the results.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetCommentsForComparedCommitResponse' value with any optional fields omitted.
mkGetCommentsForComparedCommitResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetCommentsForComparedCommitResponse
mkGetCommentsForComparedCommitResponse responseStatus =
  GetCommentsForComparedCommitResponse'
    { commentsForComparedCommitData =
        Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | A list of comment objects on the compared commit.
--
-- /Note:/ Consider using 'commentsForComparedCommitData' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcfccrrsCommentsForComparedCommitData :: Lens.Lens' GetCommentsForComparedCommitResponse (Core.Maybe [Types.CommentsForComparedCommit])
gcfccrrsCommentsForComparedCommitData = Lens.field @"commentsForComparedCommitData"
{-# DEPRECATED gcfccrrsCommentsForComparedCommitData "Use generic-lens or generic-optics with 'commentsForComparedCommitData' instead." #-}

-- | An enumeration token that can be used in a request to return the next batch of the results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcfccrrsNextToken :: Lens.Lens' GetCommentsForComparedCommitResponse (Core.Maybe Types.NextToken)
gcfccrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED gcfccrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcfccrrsResponseStatus :: Lens.Lens' GetCommentsForComparedCommitResponse Core.Int
gcfccrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gcfccrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}