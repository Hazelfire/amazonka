{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.BatchGetRepositories
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about one or more repositories.
module Network.AWS.CodeCommit.BatchGetRepositories
  ( -- * Creating a request
    BatchGetRepositories (..),
    mkBatchGetRepositories,

    -- ** Request lenses
    bgrRepositoryNames,

    -- * Destructuring the response
    BatchGetRepositoriesResponse (..),
    mkBatchGetRepositoriesResponse,

    -- ** Response lenses
    bgrrrsRepositories,
    bgrrrsRepositoriesNotFound,
    bgrrrsResponseStatus,
  )
where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a batch get repositories operation.
--
-- /See:/ 'mkBatchGetRepositories' smart constructor.
newtype BatchGetRepositories = BatchGetRepositories'
  { -- | The names of the repositories to get information about.
    repositoryNames :: [Types.RepositoryName]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'BatchGetRepositories' value with any optional fields omitted.
mkBatchGetRepositories ::
  BatchGetRepositories
mkBatchGetRepositories =
  BatchGetRepositories' {repositoryNames = Core.mempty}

-- | The names of the repositories to get information about.
--
-- /Note:/ Consider using 'repositoryNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgrRepositoryNames :: Lens.Lens' BatchGetRepositories [Types.RepositoryName]
bgrRepositoryNames = Lens.field @"repositoryNames"
{-# DEPRECATED bgrRepositoryNames "Use generic-lens or generic-optics with 'repositoryNames' instead." #-}

instance Core.FromJSON BatchGetRepositories where
  toJSON BatchGetRepositories {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("repositoryNames" Core..= repositoryNames)]
      )

instance Core.AWSRequest BatchGetRepositories where
  type Rs BatchGetRepositories = BatchGetRepositoriesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "CodeCommit_20150413.BatchGetRepositories")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchGetRepositoriesResponse'
            Core.<$> (x Core..:? "repositories")
            Core.<*> (x Core..:? "repositoriesNotFound")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the output of a batch get repositories operation.
--
-- /See:/ 'mkBatchGetRepositoriesResponse' smart constructor.
data BatchGetRepositoriesResponse = BatchGetRepositoriesResponse'
  { -- | A list of repositories returned by the batch get repositories operation.
    repositories :: Core.Maybe [Types.RepositoryMetadata],
    -- | Returns a list of repository names for which information could not be found.
    repositoriesNotFound :: Core.Maybe [Types.RepositoryName],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'BatchGetRepositoriesResponse' value with any optional fields omitted.
mkBatchGetRepositoriesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  BatchGetRepositoriesResponse
mkBatchGetRepositoriesResponse responseStatus =
  BatchGetRepositoriesResponse'
    { repositories = Core.Nothing,
      repositoriesNotFound = Core.Nothing,
      responseStatus
    }

-- | A list of repositories returned by the batch get repositories operation.
--
-- /Note:/ Consider using 'repositories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgrrrsRepositories :: Lens.Lens' BatchGetRepositoriesResponse (Core.Maybe [Types.RepositoryMetadata])
bgrrrsRepositories = Lens.field @"repositories"
{-# DEPRECATED bgrrrsRepositories "Use generic-lens or generic-optics with 'repositories' instead." #-}

-- | Returns a list of repository names for which information could not be found.
--
-- /Note:/ Consider using 'repositoriesNotFound' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgrrrsRepositoriesNotFound :: Lens.Lens' BatchGetRepositoriesResponse (Core.Maybe [Types.RepositoryName])
bgrrrsRepositoriesNotFound = Lens.field @"repositoriesNotFound"
{-# DEPRECATED bgrrrsRepositoriesNotFound "Use generic-lens or generic-optics with 'repositoriesNotFound' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgrrrsResponseStatus :: Lens.Lens' BatchGetRepositoriesResponse Core.Int
bgrrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED bgrrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}