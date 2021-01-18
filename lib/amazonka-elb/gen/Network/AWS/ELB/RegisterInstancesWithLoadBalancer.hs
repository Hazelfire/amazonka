{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.RegisterInstancesWithLoadBalancer
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds the specified instances to the specified load balancer.
--
-- The instance must be a running instance in the same network as the load balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances and a load balancer in a VPC with ClassicLink enabled, you can link the EC2-Classic instances to that VPC and then register the linked EC2-Classic instances with the load balancer in the VPC.
-- Note that @RegisterInstanceWithLoadBalancer@ completes when the request has been registered. Instance registration takes a little time to complete. To check the state of the registered instances, use 'DescribeLoadBalancers' or 'DescribeInstanceHealth' .
-- After the instance is registered, it starts receiving traffic and requests from the load balancer. Any instance that is not in one of the Availability Zones registered for the load balancer is moved to the @OutOfService@ state. If an Availability Zone is added to the load balancer later, any instances registered with the load balancer move to the @InService@ state.
-- To deregister instances from a load balancer, use 'DeregisterInstancesFromLoadBalancer' .
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html Register or De-Register EC2 Instances> in the /Classic Load Balancers Guide/ .
module Network.AWS.ELB.RegisterInstancesWithLoadBalancer
  ( -- * Creating a request
    RegisterInstancesWithLoadBalancer (..),
    mkRegisterInstancesWithLoadBalancer,

    -- ** Request lenses
    riwlbLoadBalancerName,
    riwlbInstances,

    -- * Destructuring the response
    RegisterInstancesWithLoadBalancerResponse (..),
    mkRegisterInstancesWithLoadBalancerResponse,

    -- ** Response lenses
    riwlbrrsInstances,
    riwlbrrsResponseStatus,
  )
where

import qualified Network.AWS.ELB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for RegisterInstancesWithLoadBalancer.
--
-- /See:/ 'mkRegisterInstancesWithLoadBalancer' smart constructor.
data RegisterInstancesWithLoadBalancer = RegisterInstancesWithLoadBalancer'
  { -- | The name of the load balancer.
    loadBalancerName :: Types.AccessPointName,
    -- | The IDs of the instances.
    instances :: [Types.Instance]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegisterInstancesWithLoadBalancer' value with any optional fields omitted.
mkRegisterInstancesWithLoadBalancer ::
  -- | 'loadBalancerName'
  Types.AccessPointName ->
  RegisterInstancesWithLoadBalancer
mkRegisterInstancesWithLoadBalancer loadBalancerName =
  RegisterInstancesWithLoadBalancer'
    { loadBalancerName,
      instances = Core.mempty
    }

-- | The name of the load balancer.
--
-- /Note:/ Consider using 'loadBalancerName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riwlbLoadBalancerName :: Lens.Lens' RegisterInstancesWithLoadBalancer Types.AccessPointName
riwlbLoadBalancerName = Lens.field @"loadBalancerName"
{-# DEPRECATED riwlbLoadBalancerName "Use generic-lens or generic-optics with 'loadBalancerName' instead." #-}

-- | The IDs of the instances.
--
-- /Note:/ Consider using 'instances' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riwlbInstances :: Lens.Lens' RegisterInstancesWithLoadBalancer [Types.Instance]
riwlbInstances = Lens.field @"instances"
{-# DEPRECATED riwlbInstances "Use generic-lens or generic-optics with 'instances' instead." #-}

instance Core.AWSRequest RegisterInstancesWithLoadBalancer where
  type
    Rs RegisterInstancesWithLoadBalancer =
      RegisterInstancesWithLoadBalancerResponse
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
            ( Core.pure ("Action", "RegisterInstancesWithLoadBalancer")
                Core.<> (Core.pure ("Version", "2012-06-01"))
                Core.<> (Core.toQueryValue "LoadBalancerName" loadBalancerName)
                Core.<> ( Core.toQueryValue
                            "Instances"
                            (Core.toQueryList "member" instances)
                        )
            )
      }
  response =
    Response.receiveXMLWrapper
      "RegisterInstancesWithLoadBalancerResult"
      ( \s h x ->
          RegisterInstancesWithLoadBalancerResponse'
            Core.<$> (x Core..@? "Instances" Core..<@> Core.parseXMLList "member")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Contains the output of RegisterInstancesWithLoadBalancer.
--
-- /See:/ 'mkRegisterInstancesWithLoadBalancerResponse' smart constructor.
data RegisterInstancesWithLoadBalancerResponse = RegisterInstancesWithLoadBalancerResponse'
  { -- | The updated list of instances for the load balancer.
    instances :: Core.Maybe [Types.Instance],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegisterInstancesWithLoadBalancerResponse' value with any optional fields omitted.
mkRegisterInstancesWithLoadBalancerResponse ::
  -- | 'responseStatus'
  Core.Int ->
  RegisterInstancesWithLoadBalancerResponse
mkRegisterInstancesWithLoadBalancerResponse responseStatus =
  RegisterInstancesWithLoadBalancerResponse'
    { instances =
        Core.Nothing,
      responseStatus
    }

-- | The updated list of instances for the load balancer.
--
-- /Note:/ Consider using 'instances' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riwlbrrsInstances :: Lens.Lens' RegisterInstancesWithLoadBalancerResponse (Core.Maybe [Types.Instance])
riwlbrrsInstances = Lens.field @"instances"
{-# DEPRECATED riwlbrrsInstances "Use generic-lens or generic-optics with 'instances' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riwlbrrsResponseStatus :: Lens.Lens' RegisterInstancesWithLoadBalancerResponse Core.Int
riwlbrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED riwlbrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}