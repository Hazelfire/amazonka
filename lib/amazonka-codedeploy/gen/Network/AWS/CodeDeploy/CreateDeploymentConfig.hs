{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.CreateDeploymentConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a deployment configuration.
module Network.AWS.CodeDeploy.CreateDeploymentConfig
  ( -- * Creating a request
    CreateDeploymentConfig (..),
    mkCreateDeploymentConfig,

    -- ** Request lenses
    cdcDeploymentConfigName,
    cdcComputePlatform,
    cdcMinimumHealthyHosts,
    cdcTrafficRoutingConfig,

    -- * Destructuring the response
    CreateDeploymentConfigResponse (..),
    mkCreateDeploymentConfigResponse,

    -- ** Response lenses
    cdcrrsDeploymentConfigId,
    cdcrrsResponseStatus,
  )
where

import qualified Network.AWS.CodeDeploy.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @CreateDeploymentConfig@ operation.
--
-- /See:/ 'mkCreateDeploymentConfig' smart constructor.
data CreateDeploymentConfig = CreateDeploymentConfig'
  { -- | The name of the deployment configuration to create.
    deploymentConfigName :: Types.DeploymentConfigName,
    -- | The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
    computePlatform :: Core.Maybe Types.ComputePlatform,
    -- | The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.
    --
    -- The type parameter takes either of the following values:
    --
    --     * HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.
    --
    --
    --     * FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instances and rounds up fractional instances.
    --
    --
    -- The value parameter takes an integer.
    -- For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95.
    minimumHealthyHosts :: Core.Maybe Types.MinimumHealthyHosts,
    -- | The configuration that specifies how the deployment traffic is routed.
    trafficRoutingConfig :: Core.Maybe Types.TrafficRoutingConfig
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateDeploymentConfig' value with any optional fields omitted.
mkCreateDeploymentConfig ::
  -- | 'deploymentConfigName'
  Types.DeploymentConfigName ->
  CreateDeploymentConfig
mkCreateDeploymentConfig deploymentConfigName =
  CreateDeploymentConfig'
    { deploymentConfigName,
      computePlatform = Core.Nothing,
      minimumHealthyHosts = Core.Nothing,
      trafficRoutingConfig = Core.Nothing
    }

-- | The name of the deployment configuration to create.
--
-- /Note:/ Consider using 'deploymentConfigName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdcDeploymentConfigName :: Lens.Lens' CreateDeploymentConfig Types.DeploymentConfigName
cdcDeploymentConfigName = Lens.field @"deploymentConfigName"
{-# DEPRECATED cdcDeploymentConfigName "Use generic-lens or generic-optics with 'deploymentConfigName' instead." #-}

-- | The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
--
-- /Note:/ Consider using 'computePlatform' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdcComputePlatform :: Lens.Lens' CreateDeploymentConfig (Core.Maybe Types.ComputePlatform)
cdcComputePlatform = Lens.field @"computePlatform"
{-# DEPRECATED cdcComputePlatform "Use generic-lens or generic-optics with 'computePlatform' instead." #-}

-- | The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.
--
-- The type parameter takes either of the following values:
--
--     * HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.
--
--
--     * FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instances and rounds up fractional instances.
--
--
-- The value parameter takes an integer.
-- For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95.
--
-- /Note:/ Consider using 'minimumHealthyHosts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdcMinimumHealthyHosts :: Lens.Lens' CreateDeploymentConfig (Core.Maybe Types.MinimumHealthyHosts)
cdcMinimumHealthyHosts = Lens.field @"minimumHealthyHosts"
{-# DEPRECATED cdcMinimumHealthyHosts "Use generic-lens or generic-optics with 'minimumHealthyHosts' instead." #-}

-- | The configuration that specifies how the deployment traffic is routed.
--
-- /Note:/ Consider using 'trafficRoutingConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdcTrafficRoutingConfig :: Lens.Lens' CreateDeploymentConfig (Core.Maybe Types.TrafficRoutingConfig)
cdcTrafficRoutingConfig = Lens.field @"trafficRoutingConfig"
{-# DEPRECATED cdcTrafficRoutingConfig "Use generic-lens or generic-optics with 'trafficRoutingConfig' instead." #-}

instance Core.FromJSON CreateDeploymentConfig where
  toJSON CreateDeploymentConfig {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("deploymentConfigName" Core..= deploymentConfigName),
            ("computePlatform" Core..=) Core.<$> computePlatform,
            ("minimumHealthyHosts" Core..=) Core.<$> minimumHealthyHosts,
            ("trafficRoutingConfig" Core..=) Core.<$> trafficRoutingConfig
          ]
      )

instance Core.AWSRequest CreateDeploymentConfig where
  type Rs CreateDeploymentConfig = CreateDeploymentConfigResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "CodeDeploy_20141006.CreateDeploymentConfig")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDeploymentConfigResponse'
            Core.<$> (x Core..:? "deploymentConfigId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the output of a @CreateDeploymentConfig@ operation.
--
-- /See:/ 'mkCreateDeploymentConfigResponse' smart constructor.
data CreateDeploymentConfigResponse = CreateDeploymentConfigResponse'
  { -- | A unique deployment configuration ID.
    deploymentConfigId :: Core.Maybe Types.DeploymentConfigId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateDeploymentConfigResponse' value with any optional fields omitted.
mkCreateDeploymentConfigResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateDeploymentConfigResponse
mkCreateDeploymentConfigResponse responseStatus =
  CreateDeploymentConfigResponse'
    { deploymentConfigId =
        Core.Nothing,
      responseStatus
    }

-- | A unique deployment configuration ID.
--
-- /Note:/ Consider using 'deploymentConfigId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdcrrsDeploymentConfigId :: Lens.Lens' CreateDeploymentConfigResponse (Core.Maybe Types.DeploymentConfigId)
cdcrrsDeploymentConfigId = Lens.field @"deploymentConfigId"
{-# DEPRECATED cdcrrsDeploymentConfigId "Use generic-lens or generic-optics with 'deploymentConfigId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdcrrsResponseStatus :: Lens.Lens' CreateDeploymentConfigResponse Core.Int
cdcrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cdcrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}