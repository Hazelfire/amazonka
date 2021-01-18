{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.UpdateVTLDeviceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the type of medium changer in a tape gateway. When you activate a tape gateway, you select a medium changer type for the tape gateway. This operation enables you to select a different type of medium changer after a tape gateway is activated. This operation is only supported in the tape gateway type.
module Network.AWS.StorageGateway.UpdateVTLDeviceType
  ( -- * Creating a request
    UpdateVTLDeviceType (..),
    mkUpdateVTLDeviceType,

    -- ** Request lenses
    uvtldtVTLDeviceARN,
    uvtldtDeviceType,

    -- * Destructuring the response
    UpdateVTLDeviceTypeResponse (..),
    mkUpdateVTLDeviceTypeResponse,

    -- ** Response lenses
    uvtldtrrsVTLDeviceARN,
    uvtldtrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StorageGateway.Types as Types

-- | /See:/ 'mkUpdateVTLDeviceType' smart constructor.
data UpdateVTLDeviceType = UpdateVTLDeviceType'
  { -- | The Amazon Resource Name (ARN) of the medium changer you want to select.
    vTLDeviceARN :: Types.VTLDeviceARN,
    -- | The type of medium changer you want to select.
    --
    -- Valid Values: @STK-L700@ | @AWS-Gateway-VTL@ | @IBM-03584L32-0402@
    deviceType :: Types.DeviceType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateVTLDeviceType' value with any optional fields omitted.
mkUpdateVTLDeviceType ::
  -- | 'vTLDeviceARN'
  Types.VTLDeviceARN ->
  -- | 'deviceType'
  Types.DeviceType ->
  UpdateVTLDeviceType
mkUpdateVTLDeviceType vTLDeviceARN deviceType =
  UpdateVTLDeviceType' {vTLDeviceARN, deviceType}

-- | The Amazon Resource Name (ARN) of the medium changer you want to select.
--
-- /Note:/ Consider using 'vTLDeviceARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvtldtVTLDeviceARN :: Lens.Lens' UpdateVTLDeviceType Types.VTLDeviceARN
uvtldtVTLDeviceARN = Lens.field @"vTLDeviceARN"
{-# DEPRECATED uvtldtVTLDeviceARN "Use generic-lens or generic-optics with 'vTLDeviceARN' instead." #-}

-- | The type of medium changer you want to select.
--
-- Valid Values: @STK-L700@ | @AWS-Gateway-VTL@ | @IBM-03584L32-0402@
--
-- /Note:/ Consider using 'deviceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvtldtDeviceType :: Lens.Lens' UpdateVTLDeviceType Types.DeviceType
uvtldtDeviceType = Lens.field @"deviceType"
{-# DEPRECATED uvtldtDeviceType "Use generic-lens or generic-optics with 'deviceType' instead." #-}

instance Core.FromJSON UpdateVTLDeviceType where
  toJSON UpdateVTLDeviceType {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("VTLDeviceARN" Core..= vTLDeviceARN),
            Core.Just ("DeviceType" Core..= deviceType)
          ]
      )

instance Core.AWSRequest UpdateVTLDeviceType where
  type Rs UpdateVTLDeviceType = UpdateVTLDeviceTypeResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "StorageGateway_20130630.UpdateVTLDeviceType")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateVTLDeviceTypeResponse'
            Core.<$> (x Core..:? "VTLDeviceARN") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | UpdateVTLDeviceTypeOutput
--
-- /See:/ 'mkUpdateVTLDeviceTypeResponse' smart constructor.
data UpdateVTLDeviceTypeResponse = UpdateVTLDeviceTypeResponse'
  { -- | The Amazon Resource Name (ARN) of the medium changer you have selected.
    vTLDeviceARN :: Core.Maybe Types.VTLDeviceARN,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateVTLDeviceTypeResponse' value with any optional fields omitted.
mkUpdateVTLDeviceTypeResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateVTLDeviceTypeResponse
mkUpdateVTLDeviceTypeResponse responseStatus =
  UpdateVTLDeviceTypeResponse'
    { vTLDeviceARN = Core.Nothing,
      responseStatus
    }

-- | The Amazon Resource Name (ARN) of the medium changer you have selected.
--
-- /Note:/ Consider using 'vTLDeviceARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvtldtrrsVTLDeviceARN :: Lens.Lens' UpdateVTLDeviceTypeResponse (Core.Maybe Types.VTLDeviceARN)
uvtldtrrsVTLDeviceARN = Lens.field @"vTLDeviceARN"
{-# DEPRECATED uvtldtrrsVTLDeviceARN "Use generic-lens or generic-optics with 'vTLDeviceARN' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvtldtrrsResponseStatus :: Lens.Lens' UpdateVTLDeviceTypeResponse Core.Int
uvtldtrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED uvtldtrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}