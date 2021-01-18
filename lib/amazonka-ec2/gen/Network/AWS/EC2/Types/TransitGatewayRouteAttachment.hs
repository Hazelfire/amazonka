{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayRouteAttachment
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayRouteAttachment
  ( TransitGatewayRouteAttachment (..),

    -- * Smart constructor
    mkTransitGatewayRouteAttachment,

    -- * Lenses
    tgraResourceId,
    tgraResourceType,
    tgraTransitGatewayAttachmentId,
  )
where

import qualified Network.AWS.EC2.Types.String as Types
import qualified Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a route attachment.
--
-- /See:/ 'mkTransitGatewayRouteAttachment' smart constructor.
data TransitGatewayRouteAttachment = TransitGatewayRouteAttachment'
  { -- | The ID of the resource.
    resourceId :: Core.Maybe Types.String,
    -- | The resource type. Note that the @tgw-peering@ resource type has been deprecated.
    resourceType :: Core.Maybe Types.TransitGatewayAttachmentResourceType,
    -- | The ID of the attachment.
    transitGatewayAttachmentId :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'TransitGatewayRouteAttachment' value with any optional fields omitted.
mkTransitGatewayRouteAttachment ::
  TransitGatewayRouteAttachment
mkTransitGatewayRouteAttachment =
  TransitGatewayRouteAttachment'
    { resourceId = Core.Nothing,
      resourceType = Core.Nothing,
      transitGatewayAttachmentId = Core.Nothing
    }

-- | The ID of the resource.
--
-- /Note:/ Consider using 'resourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tgraResourceId :: Lens.Lens' TransitGatewayRouteAttachment (Core.Maybe Types.String)
tgraResourceId = Lens.field @"resourceId"
{-# DEPRECATED tgraResourceId "Use generic-lens or generic-optics with 'resourceId' instead." #-}

-- | The resource type. Note that the @tgw-peering@ resource type has been deprecated.
--
-- /Note:/ Consider using 'resourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tgraResourceType :: Lens.Lens' TransitGatewayRouteAttachment (Core.Maybe Types.TransitGatewayAttachmentResourceType)
tgraResourceType = Lens.field @"resourceType"
{-# DEPRECATED tgraResourceType "Use generic-lens or generic-optics with 'resourceType' instead." #-}

-- | The ID of the attachment.
--
-- /Note:/ Consider using 'transitGatewayAttachmentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tgraTransitGatewayAttachmentId :: Lens.Lens' TransitGatewayRouteAttachment (Core.Maybe Types.String)
tgraTransitGatewayAttachmentId = Lens.field @"transitGatewayAttachmentId"
{-# DEPRECATED tgraTransitGatewayAttachmentId "Use generic-lens or generic-optics with 'transitGatewayAttachmentId' instead." #-}

instance Core.FromXML TransitGatewayRouteAttachment where
  parseXML x =
    TransitGatewayRouteAttachment'
      Core.<$> (x Core..@? "resourceId")
      Core.<*> (x Core..@? "resourceType")
      Core.<*> (x Core..@? "transitGatewayAttachmentId")