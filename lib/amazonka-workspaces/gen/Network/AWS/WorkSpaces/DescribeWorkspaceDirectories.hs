{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.DescribeWorkspaceDirectories
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the available directories that are registered with Amazon WorkSpaces.
--
-- This operation returns paginated results.
module Network.AWS.WorkSpaces.DescribeWorkspaceDirectories
  ( -- * Creating a request
    DescribeWorkspaceDirectories (..),
    mkDescribeWorkspaceDirectories,

    -- ** Request lenses
    dwdDirectoryIds,
    dwdLimit,
    dwdNextToken,

    -- * Destructuring the response
    DescribeWorkspaceDirectoriesResponse (..),
    mkDescribeWorkspaceDirectoriesResponse,

    -- ** Response lenses
    drsDirectories,
    drsNextToken,
    drsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WorkSpaces.Types as Types

-- | /See:/ 'mkDescribeWorkspaceDirectories' smart constructor.
data DescribeWorkspaceDirectories = DescribeWorkspaceDirectories'
  { -- | The identifiers of the directories. If the value is null, all directories are retrieved.
    directoryIds :: Core.Maybe (Core.NonEmpty Types.DirectoryId),
    -- | The maximum number of directories to return.
    limit :: Core.Maybe Core.Natural,
    -- | If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
    nextToken :: Core.Maybe Types.PaginationToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeWorkspaceDirectories' value with any optional fields omitted.
mkDescribeWorkspaceDirectories ::
  DescribeWorkspaceDirectories
mkDescribeWorkspaceDirectories =
  DescribeWorkspaceDirectories'
    { directoryIds = Core.Nothing,
      limit = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The identifiers of the directories. If the value is null, all directories are retrieved.
--
-- /Note:/ Consider using 'directoryIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dwdDirectoryIds :: Lens.Lens' DescribeWorkspaceDirectories (Core.Maybe (Core.NonEmpty Types.DirectoryId))
dwdDirectoryIds = Lens.field @"directoryIds"
{-# DEPRECATED dwdDirectoryIds "Use generic-lens or generic-optics with 'directoryIds' instead." #-}

-- | The maximum number of directories to return.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dwdLimit :: Lens.Lens' DescribeWorkspaceDirectories (Core.Maybe Core.Natural)
dwdLimit = Lens.field @"limit"
{-# DEPRECATED dwdLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dwdNextToken :: Lens.Lens' DescribeWorkspaceDirectories (Core.Maybe Types.PaginationToken)
dwdNextToken = Lens.field @"nextToken"
{-# DEPRECATED dwdNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON DescribeWorkspaceDirectories where
  toJSON DescribeWorkspaceDirectories {..} =
    Core.object
      ( Core.catMaybes
          [ ("DirectoryIds" Core..=) Core.<$> directoryIds,
            ("Limit" Core..=) Core.<$> limit,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest DescribeWorkspaceDirectories where
  type
    Rs DescribeWorkspaceDirectories =
      DescribeWorkspaceDirectoriesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "WorkspacesService.DescribeWorkspaceDirectories")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeWorkspaceDirectoriesResponse'
            Core.<$> (x Core..:? "Directories")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeWorkspaceDirectories where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"directories" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeWorkspaceDirectoriesResponse' smart constructor.
data DescribeWorkspaceDirectoriesResponse = DescribeWorkspaceDirectoriesResponse'
  { -- | Information about the directories.
    directories :: Core.Maybe [Types.WorkspaceDirectory],
    -- | The token to use to retrieve the next set of results, or null if no more results are available.
    nextToken :: Core.Maybe Types.PaginationToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeWorkspaceDirectoriesResponse' value with any optional fields omitted.
mkDescribeWorkspaceDirectoriesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeWorkspaceDirectoriesResponse
mkDescribeWorkspaceDirectoriesResponse responseStatus =
  DescribeWorkspaceDirectoriesResponse'
    { directories = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | Information about the directories.
--
-- /Note:/ Consider using 'directories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsDirectories :: Lens.Lens' DescribeWorkspaceDirectoriesResponse (Core.Maybe [Types.WorkspaceDirectory])
drsDirectories = Lens.field @"directories"
{-# DEPRECATED drsDirectories "Use generic-lens or generic-optics with 'directories' instead." #-}

-- | The token to use to retrieve the next set of results, or null if no more results are available.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsNextToken :: Lens.Lens' DescribeWorkspaceDirectoriesResponse (Core.Maybe Types.PaginationToken)
drsNextToken = Lens.field @"nextToken"
{-# DEPRECATED drsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsResponseStatus :: Lens.Lens' DescribeWorkspaceDirectoriesResponse Core.Int
drsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED drsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}