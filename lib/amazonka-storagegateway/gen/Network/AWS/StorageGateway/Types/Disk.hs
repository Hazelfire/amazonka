{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.Disk
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.Disk
  ( Disk (..),

    -- * Smart constructor
    mkDisk,

    -- * Lenses
    dDiskAllocationResource,
    dDiskAllocationType,
    dDiskAttributeList,
    dDiskId,
    dDiskNode,
    dDiskPath,
    dDiskSizeInBytes,
    dDiskStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.StorageGateway.Types.DiskAllocationResource as Types
import qualified Network.AWS.StorageGateway.Types.DiskAllocationType as Types
import qualified Network.AWS.StorageGateway.Types.DiskAttribute as Types
import qualified Network.AWS.StorageGateway.Types.DiskId as Types
import qualified Network.AWS.StorageGateway.Types.DiskNode as Types
import qualified Network.AWS.StorageGateway.Types.DiskPath as Types
import qualified Network.AWS.StorageGateway.Types.DiskStatus as Types

-- | Represents a gateway's local disk.
--
-- /See:/ 'mkDisk' smart constructor.
data Disk = Disk'
  { -- | The iSCSI qualified name (IQN) that is defined for a disk. This field is not included in the response if the local disk is not defined as an iSCSI target. The format of this field is /targetIqn::LUNNumber::region-volumeId/ .
    diskAllocationResource :: Core.Maybe Types.DiskAllocationResource,
    diskAllocationType :: Core.Maybe Types.DiskAllocationType,
    diskAttributeList :: Core.Maybe [Types.DiskAttribute],
    -- | The unique device ID or other distinguishing data that identifies a local disk.
    diskId :: Core.Maybe Types.DiskId,
    -- | The device node of a local disk as assigned by the virtualization environment.
    diskNode :: Core.Maybe Types.DiskNode,
    -- | The path of a local disk in the gateway virtual machine (VM).
    diskPath :: Core.Maybe Types.DiskPath,
    -- | The local disk size in bytes.
    diskSizeInBytes :: Core.Maybe Core.Integer,
    -- | A value that represents the status of a local disk.
    diskStatus :: Core.Maybe Types.DiskStatus
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Disk' value with any optional fields omitted.
mkDisk ::
  Disk
mkDisk =
  Disk'
    { diskAllocationResource = Core.Nothing,
      diskAllocationType = Core.Nothing,
      diskAttributeList = Core.Nothing,
      diskId = Core.Nothing,
      diskNode = Core.Nothing,
      diskPath = Core.Nothing,
      diskSizeInBytes = Core.Nothing,
      diskStatus = Core.Nothing
    }

-- | The iSCSI qualified name (IQN) that is defined for a disk. This field is not included in the response if the local disk is not defined as an iSCSI target. The format of this field is /targetIqn::LUNNumber::region-volumeId/ .
--
-- /Note:/ Consider using 'diskAllocationResource' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDiskAllocationResource :: Lens.Lens' Disk (Core.Maybe Types.DiskAllocationResource)
dDiskAllocationResource = Lens.field @"diskAllocationResource"
{-# DEPRECATED dDiskAllocationResource "Use generic-lens or generic-optics with 'diskAllocationResource' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'diskAllocationType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDiskAllocationType :: Lens.Lens' Disk (Core.Maybe Types.DiskAllocationType)
dDiskAllocationType = Lens.field @"diskAllocationType"
{-# DEPRECATED dDiskAllocationType "Use generic-lens or generic-optics with 'diskAllocationType' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'diskAttributeList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDiskAttributeList :: Lens.Lens' Disk (Core.Maybe [Types.DiskAttribute])
dDiskAttributeList = Lens.field @"diskAttributeList"
{-# DEPRECATED dDiskAttributeList "Use generic-lens or generic-optics with 'diskAttributeList' instead." #-}

-- | The unique device ID or other distinguishing data that identifies a local disk.
--
-- /Note:/ Consider using 'diskId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDiskId :: Lens.Lens' Disk (Core.Maybe Types.DiskId)
dDiskId = Lens.field @"diskId"
{-# DEPRECATED dDiskId "Use generic-lens or generic-optics with 'diskId' instead." #-}

-- | The device node of a local disk as assigned by the virtualization environment.
--
-- /Note:/ Consider using 'diskNode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDiskNode :: Lens.Lens' Disk (Core.Maybe Types.DiskNode)
dDiskNode = Lens.field @"diskNode"
{-# DEPRECATED dDiskNode "Use generic-lens or generic-optics with 'diskNode' instead." #-}

-- | The path of a local disk in the gateway virtual machine (VM).
--
-- /Note:/ Consider using 'diskPath' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDiskPath :: Lens.Lens' Disk (Core.Maybe Types.DiskPath)
dDiskPath = Lens.field @"diskPath"
{-# DEPRECATED dDiskPath "Use generic-lens or generic-optics with 'diskPath' instead." #-}

-- | The local disk size in bytes.
--
-- /Note:/ Consider using 'diskSizeInBytes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDiskSizeInBytes :: Lens.Lens' Disk (Core.Maybe Core.Integer)
dDiskSizeInBytes = Lens.field @"diskSizeInBytes"
{-# DEPRECATED dDiskSizeInBytes "Use generic-lens or generic-optics with 'diskSizeInBytes' instead." #-}

-- | A value that represents the status of a local disk.
--
-- /Note:/ Consider using 'diskStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDiskStatus :: Lens.Lens' Disk (Core.Maybe Types.DiskStatus)
dDiskStatus = Lens.field @"diskStatus"
{-# DEPRECATED dDiskStatus "Use generic-lens or generic-optics with 'diskStatus' instead." #-}

instance Core.FromJSON Disk where
  parseJSON =
    Core.withObject "Disk" Core.$
      \x ->
        Disk'
          Core.<$> (x Core..:? "DiskAllocationResource")
          Core.<*> (x Core..:? "DiskAllocationType")
          Core.<*> (x Core..:? "DiskAttributeList")
          Core.<*> (x Core..:? "DiskId")
          Core.<*> (x Core..:? "DiskNode")
          Core.<*> (x Core..:? "DiskPath")
          Core.<*> (x Core..:? "DiskSizeInBytes")
          Core.<*> (x Core..:? "DiskStatus")