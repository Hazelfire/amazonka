{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.CreateConnection
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a connection between a customer network and a specific AWS Direct Connect location.
--
-- A connection links your internal network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router.
-- To find the locations for your Region, use 'DescribeLocations' .
-- You can automatically add the new connection to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new connection is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no connection is created.
module Network.AWS.DirectConnect.CreateConnection
  ( -- * Creating a request
    CreateConnection (..),
    mkCreateConnection,

    -- ** Request lenses
    ccLocation,
    ccBandwidth,
    ccConnectionName,
    ccLagId,
    ccProviderName,
    ccTags,

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

-- | /See:/ 'mkCreateConnection' smart constructor.
data CreateConnection = CreateConnection'
  { -- | The location of the connection.
    location :: Types.LocationCode,
    -- | The bandwidth of the connection.
    bandwidth :: Types.Bandwidth,
    -- | The name of the connection.
    connectionName :: Types.ConnectionName,
    -- | The ID of the LAG.
    lagId :: Core.Maybe Types.LagId,
    -- | The name of the service provider associated with the requested connection.
    providerName :: Core.Maybe Types.ProviderName,
    -- | The tags to associate with the lag.
    tags :: Core.Maybe (Core.NonEmpty Types.Tag)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateConnection' value with any optional fields omitted.
mkCreateConnection ::
  -- | 'location'
  Types.LocationCode ->
  -- | 'bandwidth'
  Types.Bandwidth ->
  -- | 'connectionName'
  Types.ConnectionName ->
  CreateConnection
mkCreateConnection location bandwidth connectionName =
  CreateConnection'
    { location,
      bandwidth,
      connectionName,
      lagId = Core.Nothing,
      providerName = Core.Nothing,
      tags = Core.Nothing
    }

-- | The location of the connection.
--
-- /Note:/ Consider using 'location' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccLocation :: Lens.Lens' CreateConnection Types.LocationCode
ccLocation = Lens.field @"location"
{-# DEPRECATED ccLocation "Use generic-lens or generic-optics with 'location' instead." #-}

-- | The bandwidth of the connection.
--
-- /Note:/ Consider using 'bandwidth' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccBandwidth :: Lens.Lens' CreateConnection Types.Bandwidth
ccBandwidth = Lens.field @"bandwidth"
{-# DEPRECATED ccBandwidth "Use generic-lens or generic-optics with 'bandwidth' instead." #-}

-- | The name of the connection.
--
-- /Note:/ Consider using 'connectionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccConnectionName :: Lens.Lens' CreateConnection Types.ConnectionName
ccConnectionName = Lens.field @"connectionName"
{-# DEPRECATED ccConnectionName "Use generic-lens or generic-optics with 'connectionName' instead." #-}

-- | The ID of the LAG.
--
-- /Note:/ Consider using 'lagId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccLagId :: Lens.Lens' CreateConnection (Core.Maybe Types.LagId)
ccLagId = Lens.field @"lagId"
{-# DEPRECATED ccLagId "Use generic-lens or generic-optics with 'lagId' instead." #-}

-- | The name of the service provider associated with the requested connection.
--
-- /Note:/ Consider using 'providerName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccProviderName :: Lens.Lens' CreateConnection (Core.Maybe Types.ProviderName)
ccProviderName = Lens.field @"providerName"
{-# DEPRECATED ccProviderName "Use generic-lens or generic-optics with 'providerName' instead." #-}

-- | The tags to associate with the lag.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccTags :: Lens.Lens' CreateConnection (Core.Maybe (Core.NonEmpty Types.Tag))
ccTags = Lens.field @"tags"
{-# DEPRECATED ccTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.FromJSON CreateConnection where
  toJSON CreateConnection {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("location" Core..= location),
            Core.Just ("bandwidth" Core..= bandwidth),
            Core.Just ("connectionName" Core..= connectionName),
            ("lagId" Core..=) Core.<$> lagId,
            ("providerName" Core..=) Core.<$> providerName,
            ("tags" Core..=) Core.<$> tags
          ]
      )

instance Core.AWSRequest CreateConnection where
  type Rs CreateConnection = Types.Connection
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "OvertureService.CreateConnection")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveJSON (\s h x -> Core.eitherParseJSON x)