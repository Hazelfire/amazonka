{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.AttachNetworkInterface
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches a network interface to an instance.
module Network.AWS.EC2.AttachNetworkInterface
  ( -- * Creating a request
    AttachNetworkInterface (..),
    mkAttachNetworkInterface,

    -- ** Request lenses
    aniDeviceIndex,
    aniInstanceId,
    aniNetworkInterfaceId,
    aniDryRun,
    aniNetworkCardIndex,

    -- * Destructuring the response
    AttachNetworkInterfaceResponse (..),
    mkAttachNetworkInterfaceResponse,

    -- ** Response lenses
    anirrsAttachmentId,
    anirrsNetworkCardIndex,
    anirrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for AttachNetworkInterface.
--
-- /See:/ 'mkAttachNetworkInterface' smart constructor.
data AttachNetworkInterface = AttachNetworkInterface'
  { -- | The index of the device for the network interface attachment.
    deviceIndex :: Core.Int,
    -- | The ID of the instance.
    instanceId :: Types.InstanceId,
    -- | The ID of the network interface.
    networkInterfaceId :: Types.NetworkInterfaceId,
    -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool,
    -- | The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
    networkCardIndex :: Core.Maybe Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AttachNetworkInterface' value with any optional fields omitted.
mkAttachNetworkInterface ::
  -- | 'deviceIndex'
  Core.Int ->
  -- | 'instanceId'
  Types.InstanceId ->
  -- | 'networkInterfaceId'
  Types.NetworkInterfaceId ->
  AttachNetworkInterface
mkAttachNetworkInterface deviceIndex instanceId networkInterfaceId =
  AttachNetworkInterface'
    { deviceIndex,
      instanceId,
      networkInterfaceId,
      dryRun = Core.Nothing,
      networkCardIndex = Core.Nothing
    }

-- | The index of the device for the network interface attachment.
--
-- /Note:/ Consider using 'deviceIndex' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aniDeviceIndex :: Lens.Lens' AttachNetworkInterface Core.Int
aniDeviceIndex = Lens.field @"deviceIndex"
{-# DEPRECATED aniDeviceIndex "Use generic-lens or generic-optics with 'deviceIndex' instead." #-}

-- | The ID of the instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aniInstanceId :: Lens.Lens' AttachNetworkInterface Types.InstanceId
aniInstanceId = Lens.field @"instanceId"
{-# DEPRECATED aniInstanceId "Use generic-lens or generic-optics with 'instanceId' instead." #-}

-- | The ID of the network interface.
--
-- /Note:/ Consider using 'networkInterfaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aniNetworkInterfaceId :: Lens.Lens' AttachNetworkInterface Types.NetworkInterfaceId
aniNetworkInterfaceId = Lens.field @"networkInterfaceId"
{-# DEPRECATED aniNetworkInterfaceId "Use generic-lens or generic-optics with 'networkInterfaceId' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aniDryRun :: Lens.Lens' AttachNetworkInterface (Core.Maybe Core.Bool)
aniDryRun = Lens.field @"dryRun"
{-# DEPRECATED aniDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
--
-- /Note:/ Consider using 'networkCardIndex' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aniNetworkCardIndex :: Lens.Lens' AttachNetworkInterface (Core.Maybe Core.Int)
aniNetworkCardIndex = Lens.field @"networkCardIndex"
{-# DEPRECATED aniNetworkCardIndex "Use generic-lens or generic-optics with 'networkCardIndex' instead." #-}

instance Core.AWSRequest AttachNetworkInterface where
  type Rs AttachNetworkInterface = AttachNetworkInterfaceResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "AttachNetworkInterface")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "DeviceIndex" deviceIndex)
                Core.<> (Core.toQueryValue "InstanceId" instanceId)
                Core.<> (Core.toQueryValue "NetworkInterfaceId" networkInterfaceId)
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
                Core.<> (Core.toQueryValue "NetworkCardIndex" Core.<$> networkCardIndex)
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          AttachNetworkInterfaceResponse'
            Core.<$> (x Core..@? "attachmentId")
            Core.<*> (x Core..@? "networkCardIndex")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Contains the output of AttachNetworkInterface.
--
-- /See:/ 'mkAttachNetworkInterfaceResponse' smart constructor.
data AttachNetworkInterfaceResponse = AttachNetworkInterfaceResponse'
  { -- | The ID of the network interface attachment.
    attachmentId :: Core.Maybe Types.String,
    -- | The index of the network card.
    networkCardIndex :: Core.Maybe Core.Int,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AttachNetworkInterfaceResponse' value with any optional fields omitted.
mkAttachNetworkInterfaceResponse ::
  -- | 'responseStatus'
  Core.Int ->
  AttachNetworkInterfaceResponse
mkAttachNetworkInterfaceResponse responseStatus =
  AttachNetworkInterfaceResponse'
    { attachmentId = Core.Nothing,
      networkCardIndex = Core.Nothing,
      responseStatus
    }

-- | The ID of the network interface attachment.
--
-- /Note:/ Consider using 'attachmentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
anirrsAttachmentId :: Lens.Lens' AttachNetworkInterfaceResponse (Core.Maybe Types.String)
anirrsAttachmentId = Lens.field @"attachmentId"
{-# DEPRECATED anirrsAttachmentId "Use generic-lens or generic-optics with 'attachmentId' instead." #-}

-- | The index of the network card.
--
-- /Note:/ Consider using 'networkCardIndex' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
anirrsNetworkCardIndex :: Lens.Lens' AttachNetworkInterfaceResponse (Core.Maybe Core.Int)
anirrsNetworkCardIndex = Lens.field @"networkCardIndex"
{-# DEPRECATED anirrsNetworkCardIndex "Use generic-lens or generic-optics with 'networkCardIndex' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
anirrsResponseStatus :: Lens.Lens' AttachNetworkInterfaceResponse Core.Int
anirrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED anirrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}