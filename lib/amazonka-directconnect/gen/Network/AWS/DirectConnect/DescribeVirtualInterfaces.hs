{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.DescribeVirtualInterfaces
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays all virtual interfaces for an AWS account. Virtual interfaces deleted fewer than 15 minutes before you make the request are also returned. If you specify a connection ID, only the virtual interfaces associated with the connection are returned. If you specify a virtual interface ID, then only a single virtual interface is returned.
--
-- A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer network.
module Network.AWS.DirectConnect.DescribeVirtualInterfaces
  ( -- * Creating a request
    DescribeVirtualInterfaces (..),
    mkDescribeVirtualInterfaces,

    -- ** Request lenses
    dviConnectionId,
    dviVirtualInterfaceId,

    -- * Destructuring the response
    DescribeVirtualInterfacesResponse (..),
    mkDescribeVirtualInterfacesResponse,

    -- ** Response lenses
    dvirfrsVirtualInterfaces,
    dvirfrsResponseStatus,
  )
where

import qualified Network.AWS.DirectConnect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeVirtualInterfaces' smart constructor.
data DescribeVirtualInterfaces = DescribeVirtualInterfaces'
  { -- | The ID of the connection.
    connectionId :: Core.Maybe Types.ConnectionId,
    -- | The ID of the virtual interface.
    virtualInterfaceId :: Core.Maybe Types.VirtualInterfaceId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeVirtualInterfaces' value with any optional fields omitted.
mkDescribeVirtualInterfaces ::
  DescribeVirtualInterfaces
mkDescribeVirtualInterfaces =
  DescribeVirtualInterfaces'
    { connectionId = Core.Nothing,
      virtualInterfaceId = Core.Nothing
    }

-- | The ID of the connection.
--
-- /Note:/ Consider using 'connectionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dviConnectionId :: Lens.Lens' DescribeVirtualInterfaces (Core.Maybe Types.ConnectionId)
dviConnectionId = Lens.field @"connectionId"
{-# DEPRECATED dviConnectionId "Use generic-lens or generic-optics with 'connectionId' instead." #-}

-- | The ID of the virtual interface.
--
-- /Note:/ Consider using 'virtualInterfaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dviVirtualInterfaceId :: Lens.Lens' DescribeVirtualInterfaces (Core.Maybe Types.VirtualInterfaceId)
dviVirtualInterfaceId = Lens.field @"virtualInterfaceId"
{-# DEPRECATED dviVirtualInterfaceId "Use generic-lens or generic-optics with 'virtualInterfaceId' instead." #-}

instance Core.FromJSON DescribeVirtualInterfaces where
  toJSON DescribeVirtualInterfaces {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectionId" Core..=) Core.<$> connectionId,
            ("virtualInterfaceId" Core..=) Core.<$> virtualInterfaceId
          ]
      )

instance Core.AWSRequest DescribeVirtualInterfaces where
  type
    Rs DescribeVirtualInterfaces =
      DescribeVirtualInterfacesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "OvertureService.DescribeVirtualInterfaces")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeVirtualInterfacesResponse'
            Core.<$> (x Core..:? "virtualInterfaces")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDescribeVirtualInterfacesResponse' smart constructor.
data DescribeVirtualInterfacesResponse = DescribeVirtualInterfacesResponse'
  { -- | The virtual interfaces
    virtualInterfaces :: Core.Maybe [Types.VirtualInterface],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeVirtualInterfacesResponse' value with any optional fields omitted.
mkDescribeVirtualInterfacesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeVirtualInterfacesResponse
mkDescribeVirtualInterfacesResponse responseStatus =
  DescribeVirtualInterfacesResponse'
    { virtualInterfaces =
        Core.Nothing,
      responseStatus
    }

-- | The virtual interfaces
--
-- /Note:/ Consider using 'virtualInterfaces' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dvirfrsVirtualInterfaces :: Lens.Lens' DescribeVirtualInterfacesResponse (Core.Maybe [Types.VirtualInterface])
dvirfrsVirtualInterfaces = Lens.field @"virtualInterfaces"
{-# DEPRECATED dvirfrsVirtualInterfaces "Use generic-lens or generic-optics with 'virtualInterfaces' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dvirfrsResponseStatus :: Lens.Lens' DescribeVirtualInterfacesResponse Core.Int
dvirfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dvirfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}