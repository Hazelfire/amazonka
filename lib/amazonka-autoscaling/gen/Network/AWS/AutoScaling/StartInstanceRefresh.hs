{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.StartInstanceRefresh
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a new instance refresh operation, which triggers a rolling replacement of all previously launched instances in the Auto Scaling group with a new group of instances.
--
-- If successful, this call creates a new instance refresh request with a unique ID that you can use to track its progress. To query its status, call the 'DescribeInstanceRefreshes' API. To describe the instance refreshes that have already run, call the 'DescribeInstanceRefreshes' API. To cancel an instance refresh operation in progress, use the 'CancelInstanceRefresh' API.
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html Replacing Auto Scaling Instances Based on an Instance Refresh> .
module Network.AWS.AutoScaling.StartInstanceRefresh
  ( -- * Creating a request
    StartInstanceRefresh (..),
    mkStartInstanceRefresh,

    -- ** Request lenses
    sirAutoScalingGroupName,
    sirPreferences,
    sirStrategy,

    -- * Destructuring the response
    StartInstanceRefreshResponse (..),
    mkStartInstanceRefreshResponse,

    -- ** Response lenses
    sirrrsInstanceRefreshId,
    sirrrsResponseStatus,
  )
where

import qualified Network.AWS.AutoScaling.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStartInstanceRefresh' smart constructor.
data StartInstanceRefresh = StartInstanceRefresh'
  { -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Types.XmlStringMaxLen255,
    -- | Set of preferences associated with the instance refresh request.
    --
    -- If not provided, the default values are used. For @MinHealthyPercentage@ , the default value is @90@ . For @InstanceWarmup@ , the default is to use the value specified for the health check grace period for the Auto Scaling group.
    -- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RefreshPreferences.html RefreshPreferences> in the /Amazon EC2 Auto Scaling API Reference/ .
    preferences :: Core.Maybe Types.RefreshPreferences,
    -- | The strategy to use for the instance refresh. The only valid value is @Rolling@ .
    --
    -- A rolling update is an update that is applied to all instances in an Auto Scaling group until all instances have been updated. A rolling update can fail due to failed health checks or if instances are on standby or are protected from scale in. If the rolling update process fails, any instances that were already replaced are not rolled back to their previous configuration.
    strategy :: Core.Maybe Types.RefreshStrategy
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartInstanceRefresh' value with any optional fields omitted.
mkStartInstanceRefresh ::
  -- | 'autoScalingGroupName'
  Types.XmlStringMaxLen255 ->
  StartInstanceRefresh
mkStartInstanceRefresh autoScalingGroupName =
  StartInstanceRefresh'
    { autoScalingGroupName,
      preferences = Core.Nothing,
      strategy = Core.Nothing
    }

-- | The name of the Auto Scaling group.
--
-- /Note:/ Consider using 'autoScalingGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sirAutoScalingGroupName :: Lens.Lens' StartInstanceRefresh Types.XmlStringMaxLen255
sirAutoScalingGroupName = Lens.field @"autoScalingGroupName"
{-# DEPRECATED sirAutoScalingGroupName "Use generic-lens or generic-optics with 'autoScalingGroupName' instead." #-}

-- | Set of preferences associated with the instance refresh request.
--
-- If not provided, the default values are used. For @MinHealthyPercentage@ , the default value is @90@ . For @InstanceWarmup@ , the default is to use the value specified for the health check grace period for the Auto Scaling group.
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RefreshPreferences.html RefreshPreferences> in the /Amazon EC2 Auto Scaling API Reference/ .
--
-- /Note:/ Consider using 'preferences' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sirPreferences :: Lens.Lens' StartInstanceRefresh (Core.Maybe Types.RefreshPreferences)
sirPreferences = Lens.field @"preferences"
{-# DEPRECATED sirPreferences "Use generic-lens or generic-optics with 'preferences' instead." #-}

-- | The strategy to use for the instance refresh. The only valid value is @Rolling@ .
--
-- A rolling update is an update that is applied to all instances in an Auto Scaling group until all instances have been updated. A rolling update can fail due to failed health checks or if instances are on standby or are protected from scale in. If the rolling update process fails, any instances that were already replaced are not rolled back to their previous configuration.
--
-- /Note:/ Consider using 'strategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sirStrategy :: Lens.Lens' StartInstanceRefresh (Core.Maybe Types.RefreshStrategy)
sirStrategy = Lens.field @"strategy"
{-# DEPRECATED sirStrategy "Use generic-lens or generic-optics with 'strategy' instead." #-}

instance Core.AWSRequest StartInstanceRefresh where
  type Rs StartInstanceRefresh = StartInstanceRefreshResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "StartInstanceRefresh")
                Core.<> (Core.pure ("Version", "2011-01-01"))
                Core.<> (Core.toQueryValue "AutoScalingGroupName" autoScalingGroupName)
                Core.<> (Core.toQueryValue "Preferences" Core.<$> preferences)
                Core.<> (Core.toQueryValue "Strategy" Core.<$> strategy)
            )
      }
  response =
    Response.receiveXMLWrapper
      "StartInstanceRefreshResult"
      ( \s h x ->
          StartInstanceRefreshResponse'
            Core.<$> (x Core..@? "InstanceRefreshId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkStartInstanceRefreshResponse' smart constructor.
data StartInstanceRefreshResponse = StartInstanceRefreshResponse'
  { -- | A unique ID for tracking the progress of the request.
    instanceRefreshId :: Core.Maybe Types.XmlStringMaxLen255,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartInstanceRefreshResponse' value with any optional fields omitted.
mkStartInstanceRefreshResponse ::
  -- | 'responseStatus'
  Core.Int ->
  StartInstanceRefreshResponse
mkStartInstanceRefreshResponse responseStatus =
  StartInstanceRefreshResponse'
    { instanceRefreshId = Core.Nothing,
      responseStatus
    }

-- | A unique ID for tracking the progress of the request.
--
-- /Note:/ Consider using 'instanceRefreshId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sirrrsInstanceRefreshId :: Lens.Lens' StartInstanceRefreshResponse (Core.Maybe Types.XmlStringMaxLen255)
sirrrsInstanceRefreshId = Lens.field @"instanceRefreshId"
{-# DEPRECATED sirrrsInstanceRefreshId "Use generic-lens or generic-optics with 'instanceRefreshId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sirrrsResponseStatus :: Lens.Lens' StartInstanceRefreshResponse Core.Int
sirrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED sirrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}