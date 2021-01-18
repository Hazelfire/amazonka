{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.CacheNodeUpdateStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CacheNodeUpdateStatus
  ( CacheNodeUpdateStatus (..),

    -- * Smart constructor
    mkCacheNodeUpdateStatus,

    -- * Lenses
    cnusCacheNodeId,
    cnusNodeDeletionDate,
    cnusNodeUpdateEndDate,
    cnusNodeUpdateInitiatedBy,
    cnusNodeUpdateInitiatedDate,
    cnusNodeUpdateStartDate,
    cnusNodeUpdateStatus,
    cnusNodeUpdateStatusModifiedDate,
  )
where

import qualified Network.AWS.ElastiCache.Types.NodeUpdateInitiatedBy as Types
import qualified Network.AWS.ElastiCache.Types.NodeUpdateStatus as Types
import qualified Network.AWS.ElastiCache.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The status of the service update on the cache node
--
-- /See:/ 'mkCacheNodeUpdateStatus' smart constructor.
data CacheNodeUpdateStatus = CacheNodeUpdateStatus'
  { -- | The node ID of the cache cluster
    cacheNodeId :: Core.Maybe Types.String,
    -- | The deletion date of the node
    nodeDeletionDate :: Core.Maybe Core.UTCTime,
    -- | The end date of the update for a node
    nodeUpdateEndDate :: Core.Maybe Core.UTCTime,
    -- | Reflects whether the update was initiated by the customer or automatically applied
    nodeUpdateInitiatedBy :: Core.Maybe Types.NodeUpdateInitiatedBy,
    -- | The date when the update is triggered
    nodeUpdateInitiatedDate :: Core.Maybe Core.UTCTime,
    -- | The start date of the update for a node
    nodeUpdateStartDate :: Core.Maybe Core.UTCTime,
    -- | The update status of the node
    nodeUpdateStatus :: Core.Maybe Types.NodeUpdateStatus,
    -- | The date when the NodeUpdateStatus was last modified>
    nodeUpdateStatusModifiedDate :: Core.Maybe Core.UTCTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CacheNodeUpdateStatus' value with any optional fields omitted.
mkCacheNodeUpdateStatus ::
  CacheNodeUpdateStatus
mkCacheNodeUpdateStatus =
  CacheNodeUpdateStatus'
    { cacheNodeId = Core.Nothing,
      nodeDeletionDate = Core.Nothing,
      nodeUpdateEndDate = Core.Nothing,
      nodeUpdateInitiatedBy = Core.Nothing,
      nodeUpdateInitiatedDate = Core.Nothing,
      nodeUpdateStartDate = Core.Nothing,
      nodeUpdateStatus = Core.Nothing,
      nodeUpdateStatusModifiedDate = Core.Nothing
    }

-- | The node ID of the cache cluster
--
-- /Note:/ Consider using 'cacheNodeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cnusCacheNodeId :: Lens.Lens' CacheNodeUpdateStatus (Core.Maybe Types.String)
cnusCacheNodeId = Lens.field @"cacheNodeId"
{-# DEPRECATED cnusCacheNodeId "Use generic-lens or generic-optics with 'cacheNodeId' instead." #-}

-- | The deletion date of the node
--
-- /Note:/ Consider using 'nodeDeletionDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cnusNodeDeletionDate :: Lens.Lens' CacheNodeUpdateStatus (Core.Maybe Core.UTCTime)
cnusNodeDeletionDate = Lens.field @"nodeDeletionDate"
{-# DEPRECATED cnusNodeDeletionDate "Use generic-lens or generic-optics with 'nodeDeletionDate' instead." #-}

-- | The end date of the update for a node
--
-- /Note:/ Consider using 'nodeUpdateEndDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cnusNodeUpdateEndDate :: Lens.Lens' CacheNodeUpdateStatus (Core.Maybe Core.UTCTime)
cnusNodeUpdateEndDate = Lens.field @"nodeUpdateEndDate"
{-# DEPRECATED cnusNodeUpdateEndDate "Use generic-lens or generic-optics with 'nodeUpdateEndDate' instead." #-}

-- | Reflects whether the update was initiated by the customer or automatically applied
--
-- /Note:/ Consider using 'nodeUpdateInitiatedBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cnusNodeUpdateInitiatedBy :: Lens.Lens' CacheNodeUpdateStatus (Core.Maybe Types.NodeUpdateInitiatedBy)
cnusNodeUpdateInitiatedBy = Lens.field @"nodeUpdateInitiatedBy"
{-# DEPRECATED cnusNodeUpdateInitiatedBy "Use generic-lens or generic-optics with 'nodeUpdateInitiatedBy' instead." #-}

-- | The date when the update is triggered
--
-- /Note:/ Consider using 'nodeUpdateInitiatedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cnusNodeUpdateInitiatedDate :: Lens.Lens' CacheNodeUpdateStatus (Core.Maybe Core.UTCTime)
cnusNodeUpdateInitiatedDate = Lens.field @"nodeUpdateInitiatedDate"
{-# DEPRECATED cnusNodeUpdateInitiatedDate "Use generic-lens or generic-optics with 'nodeUpdateInitiatedDate' instead." #-}

-- | The start date of the update for a node
--
-- /Note:/ Consider using 'nodeUpdateStartDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cnusNodeUpdateStartDate :: Lens.Lens' CacheNodeUpdateStatus (Core.Maybe Core.UTCTime)
cnusNodeUpdateStartDate = Lens.field @"nodeUpdateStartDate"
{-# DEPRECATED cnusNodeUpdateStartDate "Use generic-lens or generic-optics with 'nodeUpdateStartDate' instead." #-}

-- | The update status of the node
--
-- /Note:/ Consider using 'nodeUpdateStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cnusNodeUpdateStatus :: Lens.Lens' CacheNodeUpdateStatus (Core.Maybe Types.NodeUpdateStatus)
cnusNodeUpdateStatus = Lens.field @"nodeUpdateStatus"
{-# DEPRECATED cnusNodeUpdateStatus "Use generic-lens or generic-optics with 'nodeUpdateStatus' instead." #-}

-- | The date when the NodeUpdateStatus was last modified>
--
-- /Note:/ Consider using 'nodeUpdateStatusModifiedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cnusNodeUpdateStatusModifiedDate :: Lens.Lens' CacheNodeUpdateStatus (Core.Maybe Core.UTCTime)
cnusNodeUpdateStatusModifiedDate = Lens.field @"nodeUpdateStatusModifiedDate"
{-# DEPRECATED cnusNodeUpdateStatusModifiedDate "Use generic-lens or generic-optics with 'nodeUpdateStatusModifiedDate' instead." #-}

instance Core.FromXML CacheNodeUpdateStatus where
  parseXML x =
    CacheNodeUpdateStatus'
      Core.<$> (x Core..@? "CacheNodeId")
      Core.<*> (x Core..@? "NodeDeletionDate")
      Core.<*> (x Core..@? "NodeUpdateEndDate")
      Core.<*> (x Core..@? "NodeUpdateInitiatedBy")
      Core.<*> (x Core..@? "NodeUpdateInitiatedDate")
      Core.<*> (x Core..@? "NodeUpdateStartDate")
      Core.<*> (x Core..@? "NodeUpdateStatus")
      Core.<*> (x Core..@? "NodeUpdateStatusModifiedDate")