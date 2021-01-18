{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.DescribeLoadBalancerPolicies
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified policies.
--
-- If you specify a load balancer name, the action returns the descriptions of all policies created for the load balancer. If you specify a policy name associated with your load balancer, the action returns the description of that policy. If you don't specify a load balancer name, the action returns descriptions of the specified sample policies, or descriptions of all sample policies. The names of the sample policies have the @ELBSample-@ prefix.
module Network.AWS.ELB.DescribeLoadBalancerPolicies
  ( -- * Creating a request
    DescribeLoadBalancerPolicies (..),
    mkDescribeLoadBalancerPolicies,

    -- ** Request lenses
    dlbpLoadBalancerName,
    dlbpPolicyNames,

    -- * Destructuring the response
    DescribeLoadBalancerPoliciesResponse (..),
    mkDescribeLoadBalancerPoliciesResponse,

    -- ** Response lenses
    dlbprrsPolicyDescriptions,
    dlbprrsResponseStatus,
  )
where

import qualified Network.AWS.ELB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for DescribeLoadBalancerPolicies.
--
-- /See:/ 'mkDescribeLoadBalancerPolicies' smart constructor.
data DescribeLoadBalancerPolicies = DescribeLoadBalancerPolicies'
  { -- | The name of the load balancer.
    loadBalancerName :: Core.Maybe Types.AccessPointName,
    -- | The names of the policies.
    policyNames :: Core.Maybe [Types.PolicyName]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeLoadBalancerPolicies' value with any optional fields omitted.
mkDescribeLoadBalancerPolicies ::
  DescribeLoadBalancerPolicies
mkDescribeLoadBalancerPolicies =
  DescribeLoadBalancerPolicies'
    { loadBalancerName = Core.Nothing,
      policyNames = Core.Nothing
    }

-- | The name of the load balancer.
--
-- /Note:/ Consider using 'loadBalancerName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlbpLoadBalancerName :: Lens.Lens' DescribeLoadBalancerPolicies (Core.Maybe Types.AccessPointName)
dlbpLoadBalancerName = Lens.field @"loadBalancerName"
{-# DEPRECATED dlbpLoadBalancerName "Use generic-lens or generic-optics with 'loadBalancerName' instead." #-}

-- | The names of the policies.
--
-- /Note:/ Consider using 'policyNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlbpPolicyNames :: Lens.Lens' DescribeLoadBalancerPolicies (Core.Maybe [Types.PolicyName])
dlbpPolicyNames = Lens.field @"policyNames"
{-# DEPRECATED dlbpPolicyNames "Use generic-lens or generic-optics with 'policyNames' instead." #-}

instance Core.AWSRequest DescribeLoadBalancerPolicies where
  type
    Rs DescribeLoadBalancerPolicies =
      DescribeLoadBalancerPoliciesResponse
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
            ( Core.pure ("Action", "DescribeLoadBalancerPolicies")
                Core.<> (Core.pure ("Version", "2012-06-01"))
                Core.<> (Core.toQueryValue "LoadBalancerName" Core.<$> loadBalancerName)
                Core.<> ( Core.toQueryValue
                            "PolicyNames"
                            (Core.toQueryList "member" Core.<$> policyNames)
                        )
            )
      }
  response =
    Response.receiveXMLWrapper
      "DescribeLoadBalancerPoliciesResult"
      ( \s h x ->
          DescribeLoadBalancerPoliciesResponse'
            Core.<$> ( x Core..@? "PolicyDescriptions"
                         Core..<@> Core.parseXMLList "member"
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Contains the output of DescribeLoadBalancerPolicies.
--
-- /See:/ 'mkDescribeLoadBalancerPoliciesResponse' smart constructor.
data DescribeLoadBalancerPoliciesResponse = DescribeLoadBalancerPoliciesResponse'
  { -- | Information about the policies.
    policyDescriptions :: Core.Maybe [Types.PolicyDescription],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeLoadBalancerPoliciesResponse' value with any optional fields omitted.
mkDescribeLoadBalancerPoliciesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeLoadBalancerPoliciesResponse
mkDescribeLoadBalancerPoliciesResponse responseStatus =
  DescribeLoadBalancerPoliciesResponse'
    { policyDescriptions =
        Core.Nothing,
      responseStatus
    }

-- | Information about the policies.
--
-- /Note:/ Consider using 'policyDescriptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlbprrsPolicyDescriptions :: Lens.Lens' DescribeLoadBalancerPoliciesResponse (Core.Maybe [Types.PolicyDescription])
dlbprrsPolicyDescriptions = Lens.field @"policyDescriptions"
{-# DEPRECATED dlbprrsPolicyDescriptions "Use generic-lens or generic-optics with 'policyDescriptions' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlbprrsResponseStatus :: Lens.Lens' DescribeLoadBalancerPoliciesResponse Core.Int
dlbprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dlbprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}