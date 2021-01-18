{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.ListBackups
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List backups associated with an AWS account. To list backups for a given table, specify @TableName@ . @ListBackups@ returns a paginated list of results with at most 1 MB worth of items in a page. You can also specify a maximum number of entries to be returned in a page.
--
-- In the request, start time is inclusive, but end time is exclusive. Note that these boundaries are for the time at which the original backup was requested.
-- You can call @ListBackups@ a maximum of five times per second.
--
-- This operation returns paginated results.
module Network.AWS.DynamoDB.ListBackups
  ( -- * Creating a request
    ListBackups (..),
    mkListBackups,

    -- ** Request lenses
    lbBackupType,
    lbExclusiveStartBackupArn,
    lbLimit,
    lbTableName,
    lbTimeRangeLowerBound,
    lbTimeRangeUpperBound,

    -- * Destructuring the response
    ListBackupsResponse (..),
    mkListBackupsResponse,

    -- ** Response lenses
    lbrrsBackupSummaries,
    lbrrsLastEvaluatedBackupArn,
    lbrrsResponseStatus,
  )
where

import qualified Network.AWS.DynamoDB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListBackups' smart constructor.
data ListBackups = ListBackups'
  { -- | The backups from the table specified by @BackupType@ are listed.
    --
    -- Where @BackupType@ can be:
    --
    --     * @USER@ - On-demand backup created by you.
    --
    --
    --     * @SYSTEM@ - On-demand backup automatically created by DynamoDB.
    --
    --
    --     * @ALL@ - All types of on-demand backups (USER and SYSTEM).
    backupType :: Core.Maybe Types.BackupTypeFilter,
    -- | @LastEvaluatedBackupArn@ is the Amazon Resource Name (ARN) of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the @ExclusiveStartBackupArn@ of a new @ListBackups@ operation in order to fetch the next page of results.
    exclusiveStartBackupArn :: Core.Maybe Types.ExclusiveStartBackupArn,
    -- | Maximum number of backups to return at once.
    limit :: Core.Maybe Core.Natural,
    -- | The backups from the table specified by @TableName@ are listed.
    tableName :: Core.Maybe Types.TableName,
    -- | Only backups created after this time are listed. @TimeRangeLowerBound@ is inclusive.
    timeRangeLowerBound :: Core.Maybe Core.NominalDiffTime,
    -- | Only backups created before this time are listed. @TimeRangeUpperBound@ is exclusive.
    timeRangeUpperBound :: Core.Maybe Core.NominalDiffTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListBackups' value with any optional fields omitted.
mkListBackups ::
  ListBackups
mkListBackups =
  ListBackups'
    { backupType = Core.Nothing,
      exclusiveStartBackupArn = Core.Nothing,
      limit = Core.Nothing,
      tableName = Core.Nothing,
      timeRangeLowerBound = Core.Nothing,
      timeRangeUpperBound = Core.Nothing
    }

-- | The backups from the table specified by @BackupType@ are listed.
--
-- Where @BackupType@ can be:
--
--     * @USER@ - On-demand backup created by you.
--
--
--     * @SYSTEM@ - On-demand backup automatically created by DynamoDB.
--
--
--     * @ALL@ - All types of on-demand backups (USER and SYSTEM).
--
--
--
-- /Note:/ Consider using 'backupType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbBackupType :: Lens.Lens' ListBackups (Core.Maybe Types.BackupTypeFilter)
lbBackupType = Lens.field @"backupType"
{-# DEPRECATED lbBackupType "Use generic-lens or generic-optics with 'backupType' instead." #-}

-- | @LastEvaluatedBackupArn@ is the Amazon Resource Name (ARN) of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the @ExclusiveStartBackupArn@ of a new @ListBackups@ operation in order to fetch the next page of results.
--
-- /Note:/ Consider using 'exclusiveStartBackupArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbExclusiveStartBackupArn :: Lens.Lens' ListBackups (Core.Maybe Types.ExclusiveStartBackupArn)
lbExclusiveStartBackupArn = Lens.field @"exclusiveStartBackupArn"
{-# DEPRECATED lbExclusiveStartBackupArn "Use generic-lens or generic-optics with 'exclusiveStartBackupArn' instead." #-}

-- | Maximum number of backups to return at once.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbLimit :: Lens.Lens' ListBackups (Core.Maybe Core.Natural)
lbLimit = Lens.field @"limit"
{-# DEPRECATED lbLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | The backups from the table specified by @TableName@ are listed.
--
-- /Note:/ Consider using 'tableName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbTableName :: Lens.Lens' ListBackups (Core.Maybe Types.TableName)
lbTableName = Lens.field @"tableName"
{-# DEPRECATED lbTableName "Use generic-lens or generic-optics with 'tableName' instead." #-}

-- | Only backups created after this time are listed. @TimeRangeLowerBound@ is inclusive.
--
-- /Note:/ Consider using 'timeRangeLowerBound' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbTimeRangeLowerBound :: Lens.Lens' ListBackups (Core.Maybe Core.NominalDiffTime)
lbTimeRangeLowerBound = Lens.field @"timeRangeLowerBound"
{-# DEPRECATED lbTimeRangeLowerBound "Use generic-lens or generic-optics with 'timeRangeLowerBound' instead." #-}

-- | Only backups created before this time are listed. @TimeRangeUpperBound@ is exclusive.
--
-- /Note:/ Consider using 'timeRangeUpperBound' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbTimeRangeUpperBound :: Lens.Lens' ListBackups (Core.Maybe Core.NominalDiffTime)
lbTimeRangeUpperBound = Lens.field @"timeRangeUpperBound"
{-# DEPRECATED lbTimeRangeUpperBound "Use generic-lens or generic-optics with 'timeRangeUpperBound' instead." #-}

instance Core.FromJSON ListBackups where
  toJSON ListBackups {..} =
    Core.object
      ( Core.catMaybes
          [ ("BackupType" Core..=) Core.<$> backupType,
            ("ExclusiveStartBackupArn" Core..=)
              Core.<$> exclusiveStartBackupArn,
            ("Limit" Core..=) Core.<$> limit,
            ("TableName" Core..=) Core.<$> tableName,
            ("TimeRangeLowerBound" Core..=) Core.<$> timeRangeLowerBound,
            ("TimeRangeUpperBound" Core..=) Core.<$> timeRangeUpperBound
          ]
      )

instance Core.AWSRequest ListBackups where
  type Rs ListBackups = ListBackupsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "DynamoDB_20120810.ListBackups")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.0")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBackupsResponse'
            Core.<$> (x Core..:? "BackupSummaries")
            Core.<*> (x Core..:? "LastEvaluatedBackupArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListBackups where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"lastEvaluatedBackupArn") =
      Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"backupSummaries" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"exclusiveStartBackupArn"
            Lens..~ rs Lens.^. Lens.field @"lastEvaluatedBackupArn"
        )

-- | /See:/ 'mkListBackupsResponse' smart constructor.
data ListBackupsResponse = ListBackupsResponse'
  { -- | List of @BackupSummary@ objects.
    backupSummaries :: Core.Maybe [Types.BackupSummary],
    -- | The ARN of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the @ExclusiveStartBackupArn@ of a new @ListBackups@ operation in order to fetch the next page of results.
    --
    -- If @LastEvaluatedBackupArn@ is empty, then the last page of results has been processed and there are no more results to be retrieved.
    -- If @LastEvaluatedBackupArn@ is not empty, this may or may not indicate that there is more data to be returned. All results are guaranteed to have been returned if and only if no value for @LastEvaluatedBackupArn@ is returned.
    lastEvaluatedBackupArn :: Core.Maybe Types.LastEvaluatedBackupArn,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListBackupsResponse' value with any optional fields omitted.
mkListBackupsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListBackupsResponse
mkListBackupsResponse responseStatus =
  ListBackupsResponse'
    { backupSummaries = Core.Nothing,
      lastEvaluatedBackupArn = Core.Nothing,
      responseStatus
    }

-- | List of @BackupSummary@ objects.
--
-- /Note:/ Consider using 'backupSummaries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbrrsBackupSummaries :: Lens.Lens' ListBackupsResponse (Core.Maybe [Types.BackupSummary])
lbrrsBackupSummaries = Lens.field @"backupSummaries"
{-# DEPRECATED lbrrsBackupSummaries "Use generic-lens or generic-optics with 'backupSummaries' instead." #-}

-- | The ARN of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the @ExclusiveStartBackupArn@ of a new @ListBackups@ operation in order to fetch the next page of results.
--
-- If @LastEvaluatedBackupArn@ is empty, then the last page of results has been processed and there are no more results to be retrieved.
-- If @LastEvaluatedBackupArn@ is not empty, this may or may not indicate that there is more data to be returned. All results are guaranteed to have been returned if and only if no value for @LastEvaluatedBackupArn@ is returned.
--
-- /Note:/ Consider using 'lastEvaluatedBackupArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbrrsLastEvaluatedBackupArn :: Lens.Lens' ListBackupsResponse (Core.Maybe Types.LastEvaluatedBackupArn)
lbrrsLastEvaluatedBackupArn = Lens.field @"lastEvaluatedBackupArn"
{-# DEPRECATED lbrrsLastEvaluatedBackupArn "Use generic-lens or generic-optics with 'lastEvaluatedBackupArn' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbrrsResponseStatus :: Lens.Lens' ListBackupsResponse Core.Int
lbrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lbrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}