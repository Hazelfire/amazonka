{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.DetachInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more instances from the specified Auto Scaling group.
--
-- After the instances are detached, you can manage them independent of the Auto Scaling group.
-- If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are detached.
-- If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are deregistered from the load balancer. If there are target groups attached to the Auto Scaling group, the instances are deregistered from the target groups.
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html Detach EC2 instances from your Auto Scaling group> in the /Amazon EC2 Auto Scaling User Guide/ .
module Network.AWS.AutoScaling.DetachInstances
  ( -- * Creating a request
    DetachInstances (..),
    mkDetachInstances,

    -- ** Request lenses
    diAutoScalingGroupName,
    diShouldDecrementDesiredCapacity,
    diInstanceIds,

    -- * Destructuring the response
    DetachInstancesResponse (..),
    mkDetachInstancesResponse,

    -- ** Response lenses
    dirrsActivities,
    dirrsResponseStatus,
  )
where

import qualified Network.AWS.AutoScaling.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDetachInstances' smart constructor.
data DetachInstances = DetachInstances'
  { -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Types.AutoScalingGroupName,
    -- | Indicates whether the Auto Scaling group decrements the desired capacity value by the number of instances detached.
    shouldDecrementDesiredCapacity :: Core.Bool,
    -- | The IDs of the instances. You can specify up to 20 instances.
    instanceIds :: Core.Maybe [Types.XmlStringMaxLen19]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DetachInstances' value with any optional fields omitted.
mkDetachInstances ::
  -- | 'autoScalingGroupName'
  Types.AutoScalingGroupName ->
  -- | 'shouldDecrementDesiredCapacity'
  Core.Bool ->
  DetachInstances
mkDetachInstances
  autoScalingGroupName
  shouldDecrementDesiredCapacity =
    DetachInstances'
      { autoScalingGroupName,
        shouldDecrementDesiredCapacity,
        instanceIds = Core.Nothing
      }

-- | The name of the Auto Scaling group.
--
-- /Note:/ Consider using 'autoScalingGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diAutoScalingGroupName :: Lens.Lens' DetachInstances Types.AutoScalingGroupName
diAutoScalingGroupName = Lens.field @"autoScalingGroupName"
{-# DEPRECATED diAutoScalingGroupName "Use generic-lens or generic-optics with 'autoScalingGroupName' instead." #-}

-- | Indicates whether the Auto Scaling group decrements the desired capacity value by the number of instances detached.
--
-- /Note:/ Consider using 'shouldDecrementDesiredCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diShouldDecrementDesiredCapacity :: Lens.Lens' DetachInstances Core.Bool
diShouldDecrementDesiredCapacity = Lens.field @"shouldDecrementDesiredCapacity"
{-# DEPRECATED diShouldDecrementDesiredCapacity "Use generic-lens or generic-optics with 'shouldDecrementDesiredCapacity' instead." #-}

-- | The IDs of the instances. You can specify up to 20 instances.
--
-- /Note:/ Consider using 'instanceIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diInstanceIds :: Lens.Lens' DetachInstances (Core.Maybe [Types.XmlStringMaxLen19])
diInstanceIds = Lens.field @"instanceIds"
{-# DEPRECATED diInstanceIds "Use generic-lens or generic-optics with 'instanceIds' instead." #-}

instance Core.AWSRequest DetachInstances where
  type Rs DetachInstances = DetachInstancesResponse
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
            ( Core.pure ("Action", "DetachInstances")
                Core.<> (Core.pure ("Version", "2011-01-01"))
                Core.<> (Core.toQueryValue "AutoScalingGroupName" autoScalingGroupName)
                Core.<> ( Core.toQueryValue
                            "ShouldDecrementDesiredCapacity"
                            shouldDecrementDesiredCapacity
                        )
                Core.<> ( Core.toQueryValue
                            "InstanceIds"
                            (Core.toQueryList "member" Core.<$> instanceIds)
                        )
            )
      }
  response =
    Response.receiveXMLWrapper
      "DetachInstancesResult"
      ( \s h x ->
          DetachInstancesResponse'
            Core.<$> (x Core..@? "Activities" Core..<@> Core.parseXMLList "member")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDetachInstancesResponse' smart constructor.
data DetachInstancesResponse = DetachInstancesResponse'
  { -- | The activities related to detaching the instances from the Auto Scaling group.
    activities :: Core.Maybe [Types.Activity],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DetachInstancesResponse' value with any optional fields omitted.
mkDetachInstancesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DetachInstancesResponse
mkDetachInstancesResponse responseStatus =
  DetachInstancesResponse'
    { activities = Core.Nothing,
      responseStatus
    }

-- | The activities related to detaching the instances from the Auto Scaling group.
--
-- /Note:/ Consider using 'activities' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dirrsActivities :: Lens.Lens' DetachInstancesResponse (Core.Maybe [Types.Activity])
dirrsActivities = Lens.field @"activities"
{-# DEPRECATED dirrsActivities "Use generic-lens or generic-optics with 'activities' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dirrsResponseStatus :: Lens.Lens' DetachInstancesResponse Core.Int
dirrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dirrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}