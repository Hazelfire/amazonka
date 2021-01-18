{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.DescribeFleetPortSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a fleet's inbound connection permissions. Connection permissions specify the range of IP addresses and port settings that incoming traffic can use to access server processes in the fleet. Game sessions that are running on instances in the fleet use connections that fall in this range.
--
-- To get a fleet's inbound connection permissions, specify the fleet's unique identifier. If successful, a collection of 'IpPermission' objects is returned for the requested fleet ID. If the requested fleet has been deleted, the result set is empty.
-- __Learn more__
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html Setting up GameLift Fleets>
-- __Related operations__
--
--     * 'CreateFleet'
--
--
--     * 'ListFleets'
--
--
--     * 'DeleteFleet'
--
--
--     * Describe fleets:
--
--     * 'DescribeFleetAttributes'
--
--
--     * 'DescribeFleetCapacity'
--
--
--     * 'DescribeFleetPortSettings'
--
--
--     * 'DescribeFleetUtilization'
--
--
--     * 'DescribeRuntimeConfiguration'
--
--
--     * 'DescribeEC2InstanceLimits'
--
--
--     * 'DescribeFleetEvents'
--
--
--
--
--     * 'UpdateFleetAttributes'
--
--
--     * 'StartFleetActions' or 'StopFleetActions'
module Network.AWS.GameLift.DescribeFleetPortSettings
  ( -- * Creating a request
    DescribeFleetPortSettings (..),
    mkDescribeFleetPortSettings,

    -- ** Request lenses
    dfpsFleetId,

    -- * Destructuring the response
    DescribeFleetPortSettingsResponse (..),
    mkDescribeFleetPortSettingsResponse,

    -- ** Response lenses
    dfpsrrsInboundPermissions,
    dfpsrrsResponseStatus,
  )
where

import qualified Network.AWS.GameLift.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input for a request operation.
--
-- /See:/ 'mkDescribeFleetPortSettings' smart constructor.
newtype DescribeFleetPortSettings = DescribeFleetPortSettings'
  { -- | A unique identifier for a fleet to retrieve port settings for. You can use either the fleet ID or ARN value.
    fleetId :: Types.FleetIdOrArn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFleetPortSettings' value with any optional fields omitted.
mkDescribeFleetPortSettings ::
  -- | 'fleetId'
  Types.FleetIdOrArn ->
  DescribeFleetPortSettings
mkDescribeFleetPortSettings fleetId =
  DescribeFleetPortSettings' {fleetId}

-- | A unique identifier for a fleet to retrieve port settings for. You can use either the fleet ID or ARN value.
--
-- /Note:/ Consider using 'fleetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfpsFleetId :: Lens.Lens' DescribeFleetPortSettings Types.FleetIdOrArn
dfpsFleetId = Lens.field @"fleetId"
{-# DEPRECATED dfpsFleetId "Use generic-lens or generic-optics with 'fleetId' instead." #-}

instance Core.FromJSON DescribeFleetPortSettings where
  toJSON DescribeFleetPortSettings {..} =
    Core.object
      (Core.catMaybes [Core.Just ("FleetId" Core..= fleetId)])

instance Core.AWSRequest DescribeFleetPortSettings where
  type
    Rs DescribeFleetPortSettings =
      DescribeFleetPortSettingsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "GameLift.DescribeFleetPortSettings")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFleetPortSettingsResponse'
            Core.<$> (x Core..:? "InboundPermissions")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the returned data in response to a request operation.
--
-- /See:/ 'mkDescribeFleetPortSettingsResponse' smart constructor.
data DescribeFleetPortSettingsResponse = DescribeFleetPortSettingsResponse'
  { -- | The port settings for the requested fleet ID.
    inboundPermissions :: Core.Maybe [Types.IpPermission],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFleetPortSettingsResponse' value with any optional fields omitted.
mkDescribeFleetPortSettingsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeFleetPortSettingsResponse
mkDescribeFleetPortSettingsResponse responseStatus =
  DescribeFleetPortSettingsResponse'
    { inboundPermissions =
        Core.Nothing,
      responseStatus
    }

-- | The port settings for the requested fleet ID.
--
-- /Note:/ Consider using 'inboundPermissions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfpsrrsInboundPermissions :: Lens.Lens' DescribeFleetPortSettingsResponse (Core.Maybe [Types.IpPermission])
dfpsrrsInboundPermissions = Lens.field @"inboundPermissions"
{-# DEPRECATED dfpsrrsInboundPermissions "Use generic-lens or generic-optics with 'inboundPermissions' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfpsrrsResponseStatus :: Lens.Lens' DescribeFleetPortSettingsResponse Core.Int
dfpsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dfpsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}