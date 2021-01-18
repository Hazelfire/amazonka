{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.DeleteDeliveryChannel
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the delivery channel.
--
-- Before you can delete the delivery channel, you must stop the configuration recorder by using the 'StopConfigurationRecorder' action.
module Network.AWS.Config.DeleteDeliveryChannel
  ( -- * Creating a request
    DeleteDeliveryChannel (..),
    mkDeleteDeliveryChannel,

    -- ** Request lenses
    ddcDeliveryChannelName,

    -- * Destructuring the response
    DeleteDeliveryChannelResponse (..),
    mkDeleteDeliveryChannelResponse,
  )
where

import qualified Network.AWS.Config.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for the 'DeleteDeliveryChannel' action. The action accepts the following data, in JSON format.
--
-- /See:/ 'mkDeleteDeliveryChannel' smart constructor.
newtype DeleteDeliveryChannel = DeleteDeliveryChannel'
  { -- | The name of the delivery channel to delete.
    deliveryChannelName :: Types.ChannelName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteDeliveryChannel' value with any optional fields omitted.
mkDeleteDeliveryChannel ::
  -- | 'deliveryChannelName'
  Types.ChannelName ->
  DeleteDeliveryChannel
mkDeleteDeliveryChannel deliveryChannelName =
  DeleteDeliveryChannel' {deliveryChannelName}

-- | The name of the delivery channel to delete.
--
-- /Note:/ Consider using 'deliveryChannelName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcDeliveryChannelName :: Lens.Lens' DeleteDeliveryChannel Types.ChannelName
ddcDeliveryChannelName = Lens.field @"deliveryChannelName"
{-# DEPRECATED ddcDeliveryChannelName "Use generic-lens or generic-optics with 'deliveryChannelName' instead." #-}

instance Core.FromJSON DeleteDeliveryChannel where
  toJSON DeleteDeliveryChannel {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("DeliveryChannelName" Core..= deliveryChannelName)]
      )

instance Core.AWSRequest DeleteDeliveryChannel where
  type Rs DeleteDeliveryChannel = DeleteDeliveryChannelResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "StarlingDoveService.DeleteDeliveryChannel")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull DeleteDeliveryChannelResponse'

-- | /See:/ 'mkDeleteDeliveryChannelResponse' smart constructor.
data DeleteDeliveryChannelResponse = DeleteDeliveryChannelResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteDeliveryChannelResponse' value with any optional fields omitted.
mkDeleteDeliveryChannelResponse ::
  DeleteDeliveryChannelResponse
mkDeleteDeliveryChannelResponse = DeleteDeliveryChannelResponse'