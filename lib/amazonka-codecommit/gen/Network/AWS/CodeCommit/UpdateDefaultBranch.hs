{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.UpdateDefaultBranch
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets or changes the default branch name for the specified repository.
module Network.AWS.CodeCommit.UpdateDefaultBranch
  ( -- * Creating a request
    UpdateDefaultBranch (..),
    mkUpdateDefaultBranch,

    -- ** Request lenses
    udbRepositoryName,
    udbDefaultBranchName,

    -- * Destructuring the response
    UpdateDefaultBranchResponse (..),
    mkUpdateDefaultBranchResponse,
  )
where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of an update default branch operation.
--
-- /See:/ 'mkUpdateDefaultBranch' smart constructor.
data UpdateDefaultBranch = UpdateDefaultBranch'
  { -- | The name of the repository to set or change the default branch for.
    repositoryName :: Types.RepositoryName,
    -- | The name of the branch to set as the default.
    defaultBranchName :: Types.DefaultBranchName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateDefaultBranch' value with any optional fields omitted.
mkUpdateDefaultBranch ::
  -- | 'repositoryName'
  Types.RepositoryName ->
  -- | 'defaultBranchName'
  Types.DefaultBranchName ->
  UpdateDefaultBranch
mkUpdateDefaultBranch repositoryName defaultBranchName =
  UpdateDefaultBranch' {repositoryName, defaultBranchName}

-- | The name of the repository to set or change the default branch for.
--
-- /Note:/ Consider using 'repositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udbRepositoryName :: Lens.Lens' UpdateDefaultBranch Types.RepositoryName
udbRepositoryName = Lens.field @"repositoryName"
{-# DEPRECATED udbRepositoryName "Use generic-lens or generic-optics with 'repositoryName' instead." #-}

-- | The name of the branch to set as the default.
--
-- /Note:/ Consider using 'defaultBranchName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udbDefaultBranchName :: Lens.Lens' UpdateDefaultBranch Types.DefaultBranchName
udbDefaultBranchName = Lens.field @"defaultBranchName"
{-# DEPRECATED udbDefaultBranchName "Use generic-lens or generic-optics with 'defaultBranchName' instead." #-}

instance Core.FromJSON UpdateDefaultBranch where
  toJSON UpdateDefaultBranch {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("repositoryName" Core..= repositoryName),
            Core.Just ("defaultBranchName" Core..= defaultBranchName)
          ]
      )

instance Core.AWSRequest UpdateDefaultBranch where
  type Rs UpdateDefaultBranch = UpdateDefaultBranchResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "CodeCommit_20150413.UpdateDefaultBranch")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull UpdateDefaultBranchResponse'

-- | /See:/ 'mkUpdateDefaultBranchResponse' smart constructor.
data UpdateDefaultBranchResponse = UpdateDefaultBranchResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateDefaultBranchResponse' value with any optional fields omitted.
mkUpdateDefaultBranchResponse ::
  UpdateDefaultBranchResponse
mkUpdateDefaultBranchResponse = UpdateDefaultBranchResponse'