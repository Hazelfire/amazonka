{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceNetworkInterfaceAttachment
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceNetworkInterfaceAttachment
  ( InstanceNetworkInterfaceAttachment (..),

    -- * Smart constructor
    mkInstanceNetworkInterfaceAttachment,

    -- * Lenses
    iniaAttachTime,
    iniaAttachmentId,
    iniaDeleteOnTermination,
    iniaDeviceIndex,
    iniaNetworkCardIndex,
    iniaStatus,
  )
where

import qualified Network.AWS.EC2.Types.AttachmentStatus as Types
import qualified Network.AWS.EC2.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a network interface attachment.
--
-- /See:/ 'mkInstanceNetworkInterfaceAttachment' smart constructor.
data InstanceNetworkInterfaceAttachment = InstanceNetworkInterfaceAttachment'
  { -- | The time stamp when the attachment initiated.
    attachTime :: Core.Maybe Core.UTCTime,
    -- | The ID of the network interface attachment.
    attachmentId :: Core.Maybe Types.String,
    -- | Indicates whether the network interface is deleted when the instance is terminated.
    deleteOnTermination :: Core.Maybe Core.Bool,
    -- | The index of the device on the instance for the network interface attachment.
    deviceIndex :: Core.Maybe Core.Int,
    -- | The index of the network card.
    networkCardIndex :: Core.Maybe Core.Int,
    -- | The attachment state.
    status :: Core.Maybe Types.AttachmentStatus
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'InstanceNetworkInterfaceAttachment' value with any optional fields omitted.
mkInstanceNetworkInterfaceAttachment ::
  InstanceNetworkInterfaceAttachment
mkInstanceNetworkInterfaceAttachment =
  InstanceNetworkInterfaceAttachment'
    { attachTime = Core.Nothing,
      attachmentId = Core.Nothing,
      deleteOnTermination = Core.Nothing,
      deviceIndex = Core.Nothing,
      networkCardIndex = Core.Nothing,
      status = Core.Nothing
    }

-- | The time stamp when the attachment initiated.
--
-- /Note:/ Consider using 'attachTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iniaAttachTime :: Lens.Lens' InstanceNetworkInterfaceAttachment (Core.Maybe Core.UTCTime)
iniaAttachTime = Lens.field @"attachTime"
{-# DEPRECATED iniaAttachTime "Use generic-lens or generic-optics with 'attachTime' instead." #-}

-- | The ID of the network interface attachment.
--
-- /Note:/ Consider using 'attachmentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iniaAttachmentId :: Lens.Lens' InstanceNetworkInterfaceAttachment (Core.Maybe Types.String)
iniaAttachmentId = Lens.field @"attachmentId"
{-# DEPRECATED iniaAttachmentId "Use generic-lens or generic-optics with 'attachmentId' instead." #-}

-- | Indicates whether the network interface is deleted when the instance is terminated.
--
-- /Note:/ Consider using 'deleteOnTermination' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iniaDeleteOnTermination :: Lens.Lens' InstanceNetworkInterfaceAttachment (Core.Maybe Core.Bool)
iniaDeleteOnTermination = Lens.field @"deleteOnTermination"
{-# DEPRECATED iniaDeleteOnTermination "Use generic-lens or generic-optics with 'deleteOnTermination' instead." #-}

-- | The index of the device on the instance for the network interface attachment.
--
-- /Note:/ Consider using 'deviceIndex' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iniaDeviceIndex :: Lens.Lens' InstanceNetworkInterfaceAttachment (Core.Maybe Core.Int)
iniaDeviceIndex = Lens.field @"deviceIndex"
{-# DEPRECATED iniaDeviceIndex "Use generic-lens or generic-optics with 'deviceIndex' instead." #-}

-- | The index of the network card.
--
-- /Note:/ Consider using 'networkCardIndex' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iniaNetworkCardIndex :: Lens.Lens' InstanceNetworkInterfaceAttachment (Core.Maybe Core.Int)
iniaNetworkCardIndex = Lens.field @"networkCardIndex"
{-# DEPRECATED iniaNetworkCardIndex "Use generic-lens or generic-optics with 'networkCardIndex' instead." #-}

-- | The attachment state.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iniaStatus :: Lens.Lens' InstanceNetworkInterfaceAttachment (Core.Maybe Types.AttachmentStatus)
iniaStatus = Lens.field @"status"
{-# DEPRECATED iniaStatus "Use generic-lens or generic-optics with 'status' instead." #-}

instance Core.FromXML InstanceNetworkInterfaceAttachment where
  parseXML x =
    InstanceNetworkInterfaceAttachment'
      Core.<$> (x Core..@? "attachTime")
      Core.<*> (x Core..@? "attachmentId")
      Core.<*> (x Core..@? "deleteOnTermination")
      Core.<*> (x Core..@? "deviceIndex")
      Core.<*> (x Core..@? "networkCardIndex")
      Core.<*> (x Core..@? "status")