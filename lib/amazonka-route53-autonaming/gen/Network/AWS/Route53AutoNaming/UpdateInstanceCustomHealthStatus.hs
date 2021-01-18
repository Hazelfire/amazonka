{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.UpdateInstanceCustomHealthStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a request to change the health status of a custom health check to healthy or unhealthy.
--
-- You can use @UpdateInstanceCustomHealthStatus@ to change the status only for custom health checks, which you define using @HealthCheckCustomConfig@ when you create a service. You can't use it to change the status for Route 53 health checks, which you define using @HealthCheckConfig@ .
-- For more information, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html HealthCheckCustomConfig> .
module Network.AWS.Route53AutoNaming.UpdateInstanceCustomHealthStatus
  ( -- * Creating a request
    UpdateInstanceCustomHealthStatus (..),
    mkUpdateInstanceCustomHealthStatus,

    -- ** Request lenses
    uichsServiceId,
    uichsInstanceId,
    uichsStatus,

    -- * Destructuring the response
    UpdateInstanceCustomHealthStatusResponse (..),
    mkUpdateInstanceCustomHealthStatusResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Route53AutoNaming.Types as Types

-- | /See:/ 'mkUpdateInstanceCustomHealthStatus' smart constructor.
data UpdateInstanceCustomHealthStatus = UpdateInstanceCustomHealthStatus'
  { -- | The ID of the service that includes the configuration for the custom health check that you want to change the status for.
    serviceId :: Types.ResourceId,
    -- | The ID of the instance that you want to change the health status for.
    instanceId :: Types.ResourceId,
    -- | The new status of the instance, @HEALTHY@ or @UNHEALTHY@ .
    status :: Types.CustomHealthStatus
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateInstanceCustomHealthStatus' value with any optional fields omitted.
mkUpdateInstanceCustomHealthStatus ::
  -- | 'serviceId'
  Types.ResourceId ->
  -- | 'instanceId'
  Types.ResourceId ->
  -- | 'status'
  Types.CustomHealthStatus ->
  UpdateInstanceCustomHealthStatus
mkUpdateInstanceCustomHealthStatus serviceId instanceId status =
  UpdateInstanceCustomHealthStatus' {serviceId, instanceId, status}

-- | The ID of the service that includes the configuration for the custom health check that you want to change the status for.
--
-- /Note:/ Consider using 'serviceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uichsServiceId :: Lens.Lens' UpdateInstanceCustomHealthStatus Types.ResourceId
uichsServiceId = Lens.field @"serviceId"
{-# DEPRECATED uichsServiceId "Use generic-lens or generic-optics with 'serviceId' instead." #-}

-- | The ID of the instance that you want to change the health status for.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uichsInstanceId :: Lens.Lens' UpdateInstanceCustomHealthStatus Types.ResourceId
uichsInstanceId = Lens.field @"instanceId"
{-# DEPRECATED uichsInstanceId "Use generic-lens or generic-optics with 'instanceId' instead." #-}

-- | The new status of the instance, @HEALTHY@ or @UNHEALTHY@ .
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uichsStatus :: Lens.Lens' UpdateInstanceCustomHealthStatus Types.CustomHealthStatus
uichsStatus = Lens.field @"status"
{-# DEPRECATED uichsStatus "Use generic-lens or generic-optics with 'status' instead." #-}

instance Core.FromJSON UpdateInstanceCustomHealthStatus where
  toJSON UpdateInstanceCustomHealthStatus {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ServiceId" Core..= serviceId),
            Core.Just ("InstanceId" Core..= instanceId),
            Core.Just ("Status" Core..= status)
          ]
      )

instance Core.AWSRequest UpdateInstanceCustomHealthStatus where
  type
    Rs UpdateInstanceCustomHealthStatus =
      UpdateInstanceCustomHealthStatusResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "Route53AutoNaming_v20170314.UpdateInstanceCustomHealthStatus"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveNull UpdateInstanceCustomHealthStatusResponse'

-- | /See:/ 'mkUpdateInstanceCustomHealthStatusResponse' smart constructor.
data UpdateInstanceCustomHealthStatusResponse = UpdateInstanceCustomHealthStatusResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateInstanceCustomHealthStatusResponse' value with any optional fields omitted.
mkUpdateInstanceCustomHealthStatusResponse ::
  UpdateInstanceCustomHealthStatusResponse
mkUpdateInstanceCustomHealthStatusResponse =
  UpdateInstanceCustomHealthStatusResponse'