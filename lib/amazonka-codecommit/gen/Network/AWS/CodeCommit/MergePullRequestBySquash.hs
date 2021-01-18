{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.MergePullRequestBySquash
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the squash merge strategy. If the merge is successful, it closes the pull request.
module Network.AWS.CodeCommit.MergePullRequestBySquash
  ( -- * Creating a request
    MergePullRequestBySquash (..),
    mkMergePullRequestBySquash,

    -- ** Request lenses
    mprbsPullRequestId,
    mprbsRepositoryName,
    mprbsAuthorName,
    mprbsCommitMessage,
    mprbsConflictDetailLevel,
    mprbsConflictResolution,
    mprbsConflictResolutionStrategy,
    mprbsEmail,
    mprbsKeepEmptyFolders,
    mprbsSourceCommitId,

    -- * Destructuring the response
    MergePullRequestBySquashResponse (..),
    mkMergePullRequestBySquashResponse,

    -- ** Response lenses
    mprbsrrsPullRequest,
    mprbsrrsResponseStatus,
  )
where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkMergePullRequestBySquash' smart constructor.
data MergePullRequestBySquash = MergePullRequestBySquash'
  { -- | The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
    pullRequestId :: Types.PullRequestId,
    -- | The name of the repository where the pull request was created.
    repositoryName :: Types.RepositoryName,
    -- | The name of the author who created the commit. This information is used as both the author and committer for the commit.
    authorName :: Core.Maybe Types.AuthorName,
    -- | The commit message to include in the commit information for the merge.
    commitMessage :: Core.Maybe Types.CommitMessage,
    -- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
    conflictDetailLevel :: Core.Maybe Types.ConflictDetailLevelTypeEnum,
    -- | If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
    conflictResolution :: Core.Maybe Types.ConflictResolution,
    -- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
    conflictResolutionStrategy :: Core.Maybe Types.ConflictResolutionStrategyTypeEnum,
    -- | The email address of the person merging the branches. This information is used in the commit information for the merge.
    email :: Core.Maybe Types.Email,
    -- | If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.
    keepEmptyFolders :: Core.Maybe Core.Bool,
    -- | The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.
    sourceCommitId :: Core.Maybe Types.SourceCommitId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'MergePullRequestBySquash' value with any optional fields omitted.
mkMergePullRequestBySquash ::
  -- | 'pullRequestId'
  Types.PullRequestId ->
  -- | 'repositoryName'
  Types.RepositoryName ->
  MergePullRequestBySquash
mkMergePullRequestBySquash pullRequestId repositoryName =
  MergePullRequestBySquash'
    { pullRequestId,
      repositoryName,
      authorName = Core.Nothing,
      commitMessage = Core.Nothing,
      conflictDetailLevel = Core.Nothing,
      conflictResolution = Core.Nothing,
      conflictResolutionStrategy = Core.Nothing,
      email = Core.Nothing,
      keepEmptyFolders = Core.Nothing,
      sourceCommitId = Core.Nothing
    }

-- | The system-generated ID of the pull request. To get this ID, use 'ListPullRequests' .
--
-- /Note:/ Consider using 'pullRequestId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsPullRequestId :: Lens.Lens' MergePullRequestBySquash Types.PullRequestId
mprbsPullRequestId = Lens.field @"pullRequestId"
{-# DEPRECATED mprbsPullRequestId "Use generic-lens or generic-optics with 'pullRequestId' instead." #-}

-- | The name of the repository where the pull request was created.
--
-- /Note:/ Consider using 'repositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsRepositoryName :: Lens.Lens' MergePullRequestBySquash Types.RepositoryName
mprbsRepositoryName = Lens.field @"repositoryName"
{-# DEPRECATED mprbsRepositoryName "Use generic-lens or generic-optics with 'repositoryName' instead." #-}

-- | The name of the author who created the commit. This information is used as both the author and committer for the commit.
--
-- /Note:/ Consider using 'authorName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsAuthorName :: Lens.Lens' MergePullRequestBySquash (Core.Maybe Types.AuthorName)
mprbsAuthorName = Lens.field @"authorName"
{-# DEPRECATED mprbsAuthorName "Use generic-lens or generic-optics with 'authorName' instead." #-}

-- | The commit message to include in the commit information for the merge.
--
-- /Note:/ Consider using 'commitMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsCommitMessage :: Lens.Lens' MergePullRequestBySquash (Core.Maybe Types.CommitMessage)
mprbsCommitMessage = Lens.field @"commitMessage"
{-# DEPRECATED mprbsCommitMessage "Use generic-lens or generic-optics with 'commitMessage' instead." #-}

-- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
--
-- /Note:/ Consider using 'conflictDetailLevel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsConflictDetailLevel :: Lens.Lens' MergePullRequestBySquash (Core.Maybe Types.ConflictDetailLevelTypeEnum)
mprbsConflictDetailLevel = Lens.field @"conflictDetailLevel"
{-# DEPRECATED mprbsConflictDetailLevel "Use generic-lens or generic-optics with 'conflictDetailLevel' instead." #-}

-- | If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
--
-- /Note:/ Consider using 'conflictResolution' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsConflictResolution :: Lens.Lens' MergePullRequestBySquash (Core.Maybe Types.ConflictResolution)
mprbsConflictResolution = Lens.field @"conflictResolution"
{-# DEPRECATED mprbsConflictResolution "Use generic-lens or generic-optics with 'conflictResolution' instead." #-}

-- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
--
-- /Note:/ Consider using 'conflictResolutionStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsConflictResolutionStrategy :: Lens.Lens' MergePullRequestBySquash (Core.Maybe Types.ConflictResolutionStrategyTypeEnum)
mprbsConflictResolutionStrategy = Lens.field @"conflictResolutionStrategy"
{-# DEPRECATED mprbsConflictResolutionStrategy "Use generic-lens or generic-optics with 'conflictResolutionStrategy' instead." #-}

-- | The email address of the person merging the branches. This information is used in the commit information for the merge.
--
-- /Note:/ Consider using 'email' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsEmail :: Lens.Lens' MergePullRequestBySquash (Core.Maybe Types.Email)
mprbsEmail = Lens.field @"email"
{-# DEPRECATED mprbsEmail "Use generic-lens or generic-optics with 'email' instead." #-}

-- | If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.
--
-- /Note:/ Consider using 'keepEmptyFolders' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsKeepEmptyFolders :: Lens.Lens' MergePullRequestBySquash (Core.Maybe Core.Bool)
mprbsKeepEmptyFolders = Lens.field @"keepEmptyFolders"
{-# DEPRECATED mprbsKeepEmptyFolders "Use generic-lens or generic-optics with 'keepEmptyFolders' instead." #-}

-- | The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.
--
-- /Note:/ Consider using 'sourceCommitId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsSourceCommitId :: Lens.Lens' MergePullRequestBySquash (Core.Maybe Types.SourceCommitId)
mprbsSourceCommitId = Lens.field @"sourceCommitId"
{-# DEPRECATED mprbsSourceCommitId "Use generic-lens or generic-optics with 'sourceCommitId' instead." #-}

instance Core.FromJSON MergePullRequestBySquash where
  toJSON MergePullRequestBySquash {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("pullRequestId" Core..= pullRequestId),
            Core.Just ("repositoryName" Core..= repositoryName),
            ("authorName" Core..=) Core.<$> authorName,
            ("commitMessage" Core..=) Core.<$> commitMessage,
            ("conflictDetailLevel" Core..=) Core.<$> conflictDetailLevel,
            ("conflictResolution" Core..=) Core.<$> conflictResolution,
            ("conflictResolutionStrategy" Core..=)
              Core.<$> conflictResolutionStrategy,
            ("email" Core..=) Core.<$> email,
            ("keepEmptyFolders" Core..=) Core.<$> keepEmptyFolders,
            ("sourceCommitId" Core..=) Core.<$> sourceCommitId
          ]
      )

instance Core.AWSRequest MergePullRequestBySquash where
  type Rs MergePullRequestBySquash = MergePullRequestBySquashResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "CodeCommit_20150413.MergePullRequestBySquash")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          MergePullRequestBySquashResponse'
            Core.<$> (x Core..:? "pullRequest") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkMergePullRequestBySquashResponse' smart constructor.
data MergePullRequestBySquashResponse = MergePullRequestBySquashResponse'
  { pullRequest :: Core.Maybe Types.PullRequest,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'MergePullRequestBySquashResponse' value with any optional fields omitted.
mkMergePullRequestBySquashResponse ::
  -- | 'responseStatus'
  Core.Int ->
  MergePullRequestBySquashResponse
mkMergePullRequestBySquashResponse responseStatus =
  MergePullRequestBySquashResponse'
    { pullRequest = Core.Nothing,
      responseStatus
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'pullRequest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsrrsPullRequest :: Lens.Lens' MergePullRequestBySquashResponse (Core.Maybe Types.PullRequest)
mprbsrrsPullRequest = Lens.field @"pullRequest"
{-# DEPRECATED mprbsrrsPullRequest "Use generic-lens or generic-optics with 'pullRequest' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mprbsrrsResponseStatus :: Lens.Lens' MergePullRequestBySquashResponse Core.Int
mprbsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED mprbsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}