{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.AllocateHostedConnection
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects.
--
-- Allocates a VLAN number and a specified amount of capacity (bandwidth) for use by a hosted connection on the specified interconnect or LAG of interconnects. AWS polices the hosted connection for the specified capacity and the AWS Direct Connect Partner must also police the hosted connection for the specified capacity.
module Network.AWS.DirectConnect.AllocateHostedConnection
  ( -- * Creating a request
    AllocateHostedConnection (..),
    mkAllocateHostedConnection,

    -- ** Request lenses
    ahcConnectionId,
    ahcOwnerAccount,
    ahcBandwidth,
    ahcConnectionName,
    ahcVlan,
    ahcTags,

    -- * Destructuring the response
    Types.Connection (..),
    Types.mkConnection,

    -- ** Response lenses
    Types.cAwsDevice,
    Types.cAwsDeviceV2,
    Types.cBandwidth,
    Types.cConnectionId,
    Types.cConnectionName,
    Types.cConnectionState,
    Types.cHasLogicalRedundancy,
    Types.cJumboFrameCapable,
    Types.cLagId,
    Types.cLoaIssueTime,
    Types.cLocation,
    Types.cOwnerAccount,
    Types.cPartnerName,
    Types.cProviderName,
    Types.cRegion,
    Types.cTags,
    Types.cVlan,
  )
where

import qualified Network.AWS.DirectConnect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkAllocateHostedConnection' smart constructor.
data AllocateHostedConnection = AllocateHostedConnection'
  { -- | The ID of the interconnect or LAG.
    connectionId :: Types.ConnectionId,
    -- | The ID of the AWS account ID of the customer for the connection.
    ownerAccount :: Types.OwnerAccount,
    -- | The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those AWS Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.
    bandwidth :: Types.Bandwidth,
    -- | The name of the hosted connection.
    connectionName :: Types.ConnectionName,
    -- | The dedicated VLAN provisioned to the hosted connection.
    vlan :: Core.Int,
    -- | The tags associated with the connection.
    tags :: Core.Maybe (Core.NonEmpty Types.Tag)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AllocateHostedConnection' value with any optional fields omitted.
mkAllocateHostedConnection ::
  -- | 'connectionId'
  Types.ConnectionId ->
  -- | 'ownerAccount'
  Types.OwnerAccount ->
  -- | 'bandwidth'
  Types.Bandwidth ->
  -- | 'connectionName'
  Types.ConnectionName ->
  -- | 'vlan'
  Core.Int ->
  AllocateHostedConnection
mkAllocateHostedConnection
  connectionId
  ownerAccount
  bandwidth
  connectionName
  vlan =
    AllocateHostedConnection'
      { connectionId,
        ownerAccount,
        bandwidth,
        connectionName,
        vlan,
        tags = Core.Nothing
      }

-- | The ID of the interconnect or LAG.
--
-- /Note:/ Consider using 'connectionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahcConnectionId :: Lens.Lens' AllocateHostedConnection Types.ConnectionId
ahcConnectionId = Lens.field @"connectionId"
{-# DEPRECATED ahcConnectionId "Use generic-lens or generic-optics with 'connectionId' instead." #-}

-- | The ID of the AWS account ID of the customer for the connection.
--
-- /Note:/ Consider using 'ownerAccount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahcOwnerAccount :: Lens.Lens' AllocateHostedConnection Types.OwnerAccount
ahcOwnerAccount = Lens.field @"ownerAccount"
{-# DEPRECATED ahcOwnerAccount "Use generic-lens or generic-optics with 'ownerAccount' instead." #-}

-- | The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those AWS Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.
--
-- /Note:/ Consider using 'bandwidth' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahcBandwidth :: Lens.Lens' AllocateHostedConnection Types.Bandwidth
ahcBandwidth = Lens.field @"bandwidth"
{-# DEPRECATED ahcBandwidth "Use generic-lens or generic-optics with 'bandwidth' instead." #-}

-- | The name of the hosted connection.
--
-- /Note:/ Consider using 'connectionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahcConnectionName :: Lens.Lens' AllocateHostedConnection Types.ConnectionName
ahcConnectionName = Lens.field @"connectionName"
{-# DEPRECATED ahcConnectionName "Use generic-lens or generic-optics with 'connectionName' instead." #-}

-- | The dedicated VLAN provisioned to the hosted connection.
--
-- /Note:/ Consider using 'vlan' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahcVlan :: Lens.Lens' AllocateHostedConnection Core.Int
ahcVlan = Lens.field @"vlan"
{-# DEPRECATED ahcVlan "Use generic-lens or generic-optics with 'vlan' instead." #-}

-- | The tags associated with the connection.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahcTags :: Lens.Lens' AllocateHostedConnection (Core.Maybe (Core.NonEmpty Types.Tag))
ahcTags = Lens.field @"tags"
{-# DEPRECATED ahcTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.FromJSON AllocateHostedConnection where
  toJSON AllocateHostedConnection {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("connectionId" Core..= connectionId),
            Core.Just ("ownerAccount" Core..= ownerAccount),
            Core.Just ("bandwidth" Core..= bandwidth),
            Core.Just ("connectionName" Core..= connectionName),
            Core.Just ("vlan" Core..= vlan),
            ("tags" Core..=) Core.<$> tags
          ]
      )

instance Core.AWSRequest AllocateHostedConnection where
  type Rs AllocateHostedConnection = Types.Connection
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "OvertureService.AllocateHostedConnection")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveJSON (\s h x -> Core.eitherParseJSON x)