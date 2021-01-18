{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.DescribeReplicationInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about replication instances for your account in the current region.
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeReplicationInstances
  ( -- * Creating a request
    DescribeReplicationInstances (..),
    mkDescribeReplicationInstances,

    -- ** Request lenses
    driFilters,
    driMarker,
    driMaxRecords,

    -- * Destructuring the response
    DescribeReplicationInstancesResponse (..),
    mkDescribeReplicationInstancesResponse,

    -- ** Response lenses
    drirfrsMarker,
    drirfrsReplicationInstances,
    drirfrsResponseStatus,
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
-- /See:/ 'mkDescribeReplicationInstances' smart constructor.
data DescribeReplicationInstances = DescribeReplicationInstances'
  { -- | Filters applied to replication instances.
    --
    -- Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version
    filters :: Core.Maybe [Types.Filter],
    -- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
    marker :: Core.Maybe Types.String,
    -- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
    --
    -- Default: 100
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Core.Maybe Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReplicationInstances' value with any optional fields omitted.
mkDescribeReplicationInstances ::
  DescribeReplicationInstances
mkDescribeReplicationInstances =
  DescribeReplicationInstances'
    { filters = Core.Nothing,
      marker = Core.Nothing,
      maxRecords = Core.Nothing
    }

-- | Filters applied to replication instances.
--
-- Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
driFilters :: Lens.Lens' DescribeReplicationInstances (Core.Maybe [Types.Filter])
driFilters = Lens.field @"filters"
{-# DEPRECATED driFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
driMarker :: Lens.Lens' DescribeReplicationInstances (Core.Maybe Types.String)
driMarker = Lens.field @"marker"
{-# DEPRECATED driMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
--
-- Default: 100
-- Constraints: Minimum 20, maximum 100.
--
-- /Note:/ Consider using 'maxRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
driMaxRecords :: Lens.Lens' DescribeReplicationInstances (Core.Maybe Core.Int)
driMaxRecords = Lens.field @"maxRecords"
{-# DEPRECATED driMaxRecords "Use generic-lens or generic-optics with 'maxRecords' instead." #-}

instance Core.FromJSON DescribeReplicationInstances where
  toJSON DescribeReplicationInstances {..} =
    Core.object
      ( Core.catMaybes
          [ ("Filters" Core..=) Core.<$> filters,
            ("Marker" Core..=) Core.<$> marker,
            ("MaxRecords" Core..=) Core.<$> maxRecords
          ]
      )

instance Core.AWSRequest DescribeReplicationInstances where
  type
    Rs DescribeReplicationInstances =
      DescribeReplicationInstancesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AmazonDMSv20160101.DescribeReplicationInstances")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeReplicationInstancesResponse'
            Core.<$> (x Core..:? "Marker")
            Core.<*> (x Core..:? "ReplicationInstances")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeReplicationInstances where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"marker") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"replicationInstances" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"marker"
        )

-- |
--
-- /See:/ 'mkDescribeReplicationInstancesResponse' smart constructor.
data DescribeReplicationInstancesResponse = DescribeReplicationInstancesResponse'
  { -- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
    marker :: Core.Maybe Types.String,
    -- | The replication instances described.
    replicationInstances :: Core.Maybe [Types.ReplicationInstance],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeReplicationInstancesResponse' value with any optional fields omitted.
mkDescribeReplicationInstancesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeReplicationInstancesResponse
mkDescribeReplicationInstancesResponse responseStatus =
  DescribeReplicationInstancesResponse'
    { marker = Core.Nothing,
      replicationInstances = Core.Nothing,
      responseStatus
    }

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drirfrsMarker :: Lens.Lens' DescribeReplicationInstancesResponse (Core.Maybe Types.String)
drirfrsMarker = Lens.field @"marker"
{-# DEPRECATED drirfrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The replication instances described.
--
-- /Note:/ Consider using 'replicationInstances' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drirfrsReplicationInstances :: Lens.Lens' DescribeReplicationInstancesResponse (Core.Maybe [Types.ReplicationInstance])
drirfrsReplicationInstances = Lens.field @"replicationInstances"
{-# DEPRECATED drirfrsReplicationInstances "Use generic-lens or generic-optics with 'replicationInstances' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drirfrsResponseStatus :: Lens.Lens' DescribeReplicationInstancesResponse Core.Int
drirfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED drirfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}