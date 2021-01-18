{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LocalGatewayRouteTable
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LocalGatewayRouteTable
  ( LocalGatewayRouteTable (..),

    -- * Smart constructor
    mkLocalGatewayRouteTable,

    -- * Lenses
    lgrtLocalGatewayId,
    lgrtLocalGatewayRouteTableArn,
    lgrtLocalGatewayRouteTableId,
    lgrtOutpostArn,
    lgrtOwnerId,
    lgrtState,
    lgrtTags,
  )
where

import qualified Network.AWS.EC2.Types.LocalGatewayId as Types
import qualified Network.AWS.EC2.Types.LocalGatewayRouteTableArn as Types
import qualified Network.AWS.EC2.Types.LocalGatewayRouteTableId as Types
import qualified Network.AWS.EC2.Types.OutpostArn as Types
import qualified Network.AWS.EC2.Types.OwnerId as Types
import qualified Network.AWS.EC2.Types.String as Types
import qualified Network.AWS.EC2.Types.Tag as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a local gateway route table.
--
-- /See:/ 'mkLocalGatewayRouteTable' smart constructor.
data LocalGatewayRouteTable = LocalGatewayRouteTable'
  { -- | The ID of the local gateway.
    localGatewayId :: Core.Maybe Types.LocalGatewayId,
    -- | The Amazon Resource Name (ARN) of the local gateway route table.
    localGatewayRouteTableArn :: Core.Maybe Types.LocalGatewayRouteTableArn,
    -- | The ID of the local gateway route table.
    localGatewayRouteTableId :: Core.Maybe Types.LocalGatewayRouteTableId,
    -- | The Amazon Resource Name (ARN) of the Outpost.
    outpostArn :: Core.Maybe Types.OutpostArn,
    -- | The AWS account ID that owns the local gateway route table.
    ownerId :: Core.Maybe Types.OwnerId,
    -- | The state of the local gateway route table.
    state :: Core.Maybe Types.String,
    -- | The tags assigned to the local gateway route table.
    tags :: Core.Maybe [Types.Tag]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'LocalGatewayRouteTable' value with any optional fields omitted.
mkLocalGatewayRouteTable ::
  LocalGatewayRouteTable
mkLocalGatewayRouteTable =
  LocalGatewayRouteTable'
    { localGatewayId = Core.Nothing,
      localGatewayRouteTableArn = Core.Nothing,
      localGatewayRouteTableId = Core.Nothing,
      outpostArn = Core.Nothing,
      ownerId = Core.Nothing,
      state = Core.Nothing,
      tags = Core.Nothing
    }

-- | The ID of the local gateway.
--
-- /Note:/ Consider using 'localGatewayId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrtLocalGatewayId :: Lens.Lens' LocalGatewayRouteTable (Core.Maybe Types.LocalGatewayId)
lgrtLocalGatewayId = Lens.field @"localGatewayId"
{-# DEPRECATED lgrtLocalGatewayId "Use generic-lens or generic-optics with 'localGatewayId' instead." #-}

-- | The Amazon Resource Name (ARN) of the local gateway route table.
--
-- /Note:/ Consider using 'localGatewayRouteTableArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrtLocalGatewayRouteTableArn :: Lens.Lens' LocalGatewayRouteTable (Core.Maybe Types.LocalGatewayRouteTableArn)
lgrtLocalGatewayRouteTableArn = Lens.field @"localGatewayRouteTableArn"
{-# DEPRECATED lgrtLocalGatewayRouteTableArn "Use generic-lens or generic-optics with 'localGatewayRouteTableArn' instead." #-}

-- | The ID of the local gateway route table.
--
-- /Note:/ Consider using 'localGatewayRouteTableId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrtLocalGatewayRouteTableId :: Lens.Lens' LocalGatewayRouteTable (Core.Maybe Types.LocalGatewayRouteTableId)
lgrtLocalGatewayRouteTableId = Lens.field @"localGatewayRouteTableId"
{-# DEPRECATED lgrtLocalGatewayRouteTableId "Use generic-lens or generic-optics with 'localGatewayRouteTableId' instead." #-}

-- | The Amazon Resource Name (ARN) of the Outpost.
--
-- /Note:/ Consider using 'outpostArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrtOutpostArn :: Lens.Lens' LocalGatewayRouteTable (Core.Maybe Types.OutpostArn)
lgrtOutpostArn = Lens.field @"outpostArn"
{-# DEPRECATED lgrtOutpostArn "Use generic-lens or generic-optics with 'outpostArn' instead." #-}

-- | The AWS account ID that owns the local gateway route table.
--
-- /Note:/ Consider using 'ownerId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrtOwnerId :: Lens.Lens' LocalGatewayRouteTable (Core.Maybe Types.OwnerId)
lgrtOwnerId = Lens.field @"ownerId"
{-# DEPRECATED lgrtOwnerId "Use generic-lens or generic-optics with 'ownerId' instead." #-}

-- | The state of the local gateway route table.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrtState :: Lens.Lens' LocalGatewayRouteTable (Core.Maybe Types.String)
lgrtState = Lens.field @"state"
{-# DEPRECATED lgrtState "Use generic-lens or generic-optics with 'state' instead." #-}

-- | The tags assigned to the local gateway route table.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgrtTags :: Lens.Lens' LocalGatewayRouteTable (Core.Maybe [Types.Tag])
lgrtTags = Lens.field @"tags"
{-# DEPRECATED lgrtTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.FromXML LocalGatewayRouteTable where
  parseXML x =
    LocalGatewayRouteTable'
      Core.<$> (x Core..@? "localGatewayId")
      Core.<*> (x Core..@? "localGatewayRouteTableArn")
      Core.<*> (x Core..@? "localGatewayRouteTableId")
      Core.<*> (x Core..@? "outpostArn")
      Core.<*> (x Core..@? "ownerId")
      Core.<*> (x Core..@? "state")
      Core.<*> (x Core..@? "tagSet" Core..<@> Core.parseXMLList "item")