{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.DescribeBackups
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups.
--
-- This operation is synchronous.
-- A @ResourceNotFoundException@ is thrown when the backup does not exist. A @ValidationException@ is raised when parameters of the request are not valid.
--
-- This operation returns paginated results.
module Network.AWS.OpsWorksCM.DescribeBackups
  ( -- * Creating a request
    DescribeBackups (..),
    mkDescribeBackups,

    -- ** Request lenses
    dBackupId,
    dMaxResults,
    dNextToken,
    dServerName,

    -- * Destructuring the response
    DescribeBackupsResponse (..),
    mkDescribeBackupsResponse,

    -- ** Response lenses
    drsBackups,
    drsNextToken,
    drsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.OpsWorksCM.Types as Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeBackups' smart constructor.
data DescribeBackups = DescribeBackups'
  { -- | Describes a single backup.
    backupId :: Core.Maybe Types.BackupId,
    -- | This is not currently implemented for @DescribeBackups@ requests.
    maxResults :: Core.Maybe Core.Natural,
    -- | This is not currently implemented for @DescribeBackups@ requests.
    nextToken :: Core.Maybe Types.NextToken,
    -- | Returns backups for the server with the specified ServerName.
    serverName :: Core.Maybe Types.ServerName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeBackups' value with any optional fields omitted.
mkDescribeBackups ::
  DescribeBackups
mkDescribeBackups =
  DescribeBackups'
    { backupId = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing,
      serverName = Core.Nothing
    }

-- | Describes a single backup.
--
-- /Note:/ Consider using 'backupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dBackupId :: Lens.Lens' DescribeBackups (Core.Maybe Types.BackupId)
dBackupId = Lens.field @"backupId"
{-# DEPRECATED dBackupId "Use generic-lens or generic-optics with 'backupId' instead." #-}

-- | This is not currently implemented for @DescribeBackups@ requests.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dMaxResults :: Lens.Lens' DescribeBackups (Core.Maybe Core.Natural)
dMaxResults = Lens.field @"maxResults"
{-# DEPRECATED dMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | This is not currently implemented for @DescribeBackups@ requests.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dNextToken :: Lens.Lens' DescribeBackups (Core.Maybe Types.NextToken)
dNextToken = Lens.field @"nextToken"
{-# DEPRECATED dNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Returns backups for the server with the specified ServerName.
--
-- /Note:/ Consider using 'serverName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dServerName :: Lens.Lens' DescribeBackups (Core.Maybe Types.ServerName)
dServerName = Lens.field @"serverName"
{-# DEPRECATED dServerName "Use generic-lens or generic-optics with 'serverName' instead." #-}

instance Core.FromJSON DescribeBackups where
  toJSON DescribeBackups {..} =
    Core.object
      ( Core.catMaybes
          [ ("BackupId" Core..=) Core.<$> backupId,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken,
            ("ServerName" Core..=) Core.<$> serverName
          ]
      )

instance Core.AWSRequest DescribeBackups where
  type Rs DescribeBackups = DescribeBackupsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "OpsWorksCM_V2016_11_01.DescribeBackups")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeBackupsResponse'
            Core.<$> (x Core..:? "Backups")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeBackups where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"backups" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeBackupsResponse' smart constructor.
data DescribeBackupsResponse = DescribeBackupsResponse'
  { -- | Contains the response to a @DescribeBackups@ request.
    backups :: Core.Maybe [Types.Backup],
    -- | This is not currently implemented for @DescribeBackups@ requests.
    nextToken :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeBackupsResponse' value with any optional fields omitted.
mkDescribeBackupsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeBackupsResponse
mkDescribeBackupsResponse responseStatus =
  DescribeBackupsResponse'
    { backups = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | Contains the response to a @DescribeBackups@ request.
--
-- /Note:/ Consider using 'backups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsBackups :: Lens.Lens' DescribeBackupsResponse (Core.Maybe [Types.Backup])
drsBackups = Lens.field @"backups"
{-# DEPRECATED drsBackups "Use generic-lens or generic-optics with 'backups' instead." #-}

-- | This is not currently implemented for @DescribeBackups@ requests.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsNextToken :: Lens.Lens' DescribeBackupsResponse (Core.Maybe Types.String)
drsNextToken = Lens.field @"nextToken"
{-# DEPRECATED drsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsResponseStatus :: Lens.Lens' DescribeBackupsResponse Core.Int
drsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED drsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}