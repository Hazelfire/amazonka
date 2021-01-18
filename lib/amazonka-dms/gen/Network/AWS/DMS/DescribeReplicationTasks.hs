{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.DescribeReplicationTasks
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about replication tasks for your account in the current region.
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeReplicationTasks
  ( -- * Creating a request
    DescribeReplicationTasks (..),
    mkDescribeReplicationTasks,

    -- ** Request lenses
    drtFilters,
    drtMarker,
    drtMaxRecords,
    drtWithoutSettings,

    -- * Destructuring the response
    DescribeReplicationTasksResponse (..),
    mkDescribeReplicationTasksResponse,

    -- ** Response lenses
    drtrfrsMarker,
    drtrfrsReplicationTasks,
    drtrfrsResponseStatus,
  )
where

import qualified Network.AWS.DMS.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'mkDescribeReplicationTasks' smart constructor.
data DescribeReplicationTasks = DescribeReplicationTasks'
  { -- | Filters applied to replication tasks.
    --
    -- Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn
    filters :: Core.Maybe [Types.Filter],
    -- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
    marker :: Core.Maybe Types.String,
    -- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
    --
    -- Default: 100
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Core.Maybe Core.Int,
    -- | An option to set to avoid returning information about settings. Use this to reduce overhead when setting information is too large. To use this option, choose @true@ ; otherwise, choose @false@ (the default).
    withoutSettings :: Core.Maybe Core.Bool
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReplicationTasks' value with any optional fields omitted.
mkDescribeReplicationTasks ::
  DescribeReplicationTasks
mkDescribeReplicationTasks =
  DescribeReplicationTasks'
    { filters = Core.Nothing,
      marker = Core.Nothing,
      maxRecords = Core.Nothing,
      withoutSettings = Core.Nothing
    }

-- | Filters applied to replication tasks.
--
-- Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drtFilters :: Lens.Lens' DescribeReplicationTasks (Core.Maybe [Types.Filter])
drtFilters = Lens.field @"filters"
{-# DEPRECATED drtFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drtMarker :: Lens.Lens' DescribeReplicationTasks (Core.Maybe Types.String)
drtMarker = Lens.field @"marker"
{-# DEPRECATED drtMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
--
-- Default: 100
-- Constraints: Minimum 20, maximum 100.
--
-- /Note:/ Consider using 'maxRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drtMaxRecords :: Lens.Lens' DescribeReplicationTasks (Core.Maybe Core.Int)
drtMaxRecords = Lens.field @"maxRecords"
{-# DEPRECATED drtMaxRecords "Use generic-lens or generic-optics with 'maxRecords' instead." #-}

-- | An option to set to avoid returning information about settings. Use this to reduce overhead when setting information is too large. To use this option, choose @true@ ; otherwise, choose @false@ (the default).
--
-- /Note:/ Consider using 'withoutSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drtWithoutSettings :: Lens.Lens' DescribeReplicationTasks (Core.Maybe Core.Bool)
drtWithoutSettings = Lens.field @"withoutSettings"
{-# DEPRECATED drtWithoutSettings "Use generic-lens or generic-optics with 'withoutSettings' instead." #-}

instance Core.FromJSON DescribeReplicationTasks where
  toJSON DescribeReplicationTasks {..} =
    Core.object
      ( Core.catMaybes
          [ ("Filters" Core..=) Core.<$> filters,
            ("Marker" Core..=) Core.<$> marker,
            ("MaxRecords" Core..=) Core.<$> maxRecords,
            ("WithoutSettings" Core..=) Core.<$> withoutSettings
          ]
      )

instance Core.AWSRequest DescribeReplicationTasks where
  type Rs DescribeReplicationTasks = DescribeReplicationTasksResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AmazonDMSv20160101.DescribeReplicationTasks")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeReplicationTasksResponse'
            Core.<$> (x Core..:? "Marker")
            Core.<*> (x Core..:? "ReplicationTasks")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeReplicationTasks where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"marker") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"replicationTasks" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"marker"
        )

-- |
--
-- /See:/ 'mkDescribeReplicationTasksResponse' smart constructor.
data DescribeReplicationTasksResponse = DescribeReplicationTasksResponse'
  { -- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
    marker :: Core.Maybe Types.String,
    -- | A description of the replication tasks.
    replicationTasks :: Core.Maybe [Types.ReplicationTask],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeReplicationTasksResponse' value with any optional fields omitted.
mkDescribeReplicationTasksResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeReplicationTasksResponse
mkDescribeReplicationTasksResponse responseStatus =
  DescribeReplicationTasksResponse'
    { marker = Core.Nothing,
      replicationTasks = Core.Nothing,
      responseStatus
    }

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drtrfrsMarker :: Lens.Lens' DescribeReplicationTasksResponse (Core.Maybe Types.String)
drtrfrsMarker = Lens.field @"marker"
{-# DEPRECATED drtrfrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | A description of the replication tasks.
--
-- /Note:/ Consider using 'replicationTasks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drtrfrsReplicationTasks :: Lens.Lens' DescribeReplicationTasksResponse (Core.Maybe [Types.ReplicationTask])
drtrfrsReplicationTasks = Lens.field @"replicationTasks"
{-# DEPRECATED drtrfrsReplicationTasks "Use generic-lens or generic-optics with 'replicationTasks' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drtrfrsResponseStatus :: Lens.Lens' DescribeReplicationTasksResponse Core.Int
drtrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED drtrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}