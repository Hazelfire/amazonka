{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.CreateLBCookieStickinessPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period. This policy can be associated only with HTTP/HTTPS listeners.
--
-- When a load balancer implements this policy, the load balancer uses a special cookie to track the instance for each request. When the load balancer receives a request, it first checks to see if this cookie is present in the request. If so, the load balancer sends the request to the application server specified in the cookie. If not, the load balancer sends the request to a server that is chosen based on the existing load-balancing algorithm.
-- A cookie is inserted into the response for binding subsequent requests from the same user to that server. The validity of the cookie is based on the cookie expiration time, which is specified in the policy configuration.
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration Duration-Based Session Stickiness> in the /Classic Load Balancers Guide/ .
module Network.AWS.ELB.CreateLBCookieStickinessPolicy
  ( -- * Creating a request
    CreateLBCookieStickinessPolicy (..),
    mkCreateLBCookieStickinessPolicy,

    -- ** Request lenses
    clbcspLoadBalancerName,
    clbcspPolicyName,
    clbcspCookieExpirationPeriod,

    -- * Destructuring the response
    CreateLBCookieStickinessPolicyResponse (..),
    mkCreateLBCookieStickinessPolicyResponse,

    -- ** Response lenses
    clbcsprrsResponseStatus,
  )
where

import qualified Network.AWS.ELB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for CreateLBCookieStickinessPolicy.
--
-- /See:/ 'mkCreateLBCookieStickinessPolicy' smart constructor.
data CreateLBCookieStickinessPolicy = CreateLBCookieStickinessPolicy'
  { -- | The name of the load balancer.
    loadBalancerName :: Types.AccessPointName,
    -- | The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.
    policyName :: Types.PolicyName,
    -- | The time period, in seconds, after which the cookie should be considered stale. If you do not specify this parameter, the default value is 0, which indicates that the sticky session should last for the duration of the browser session.
    cookieExpirationPeriod :: Core.Maybe Core.Integer
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateLBCookieStickinessPolicy' value with any optional fields omitted.
mkCreateLBCookieStickinessPolicy ::
  -- | 'loadBalancerName'
  Types.AccessPointName ->
  -- | 'policyName'
  Types.PolicyName ->
  CreateLBCookieStickinessPolicy
mkCreateLBCookieStickinessPolicy loadBalancerName policyName =
  CreateLBCookieStickinessPolicy'
    { loadBalancerName,
      policyName,
      cookieExpirationPeriod = Core.Nothing
    }

-- | The name of the load balancer.
--
-- /Note:/ Consider using 'loadBalancerName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clbcspLoadBalancerName :: Lens.Lens' CreateLBCookieStickinessPolicy Types.AccessPointName
clbcspLoadBalancerName = Lens.field @"loadBalancerName"
{-# DEPRECATED clbcspLoadBalancerName "Use generic-lens or generic-optics with 'loadBalancerName' instead." #-}

-- | The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.
--
-- /Note:/ Consider using 'policyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clbcspPolicyName :: Lens.Lens' CreateLBCookieStickinessPolicy Types.PolicyName
clbcspPolicyName = Lens.field @"policyName"
{-# DEPRECATED clbcspPolicyName "Use generic-lens or generic-optics with 'policyName' instead." #-}

-- | The time period, in seconds, after which the cookie should be considered stale. If you do not specify this parameter, the default value is 0, which indicates that the sticky session should last for the duration of the browser session.
--
-- /Note:/ Consider using 'cookieExpirationPeriod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clbcspCookieExpirationPeriod :: Lens.Lens' CreateLBCookieStickinessPolicy (Core.Maybe Core.Integer)
clbcspCookieExpirationPeriod = Lens.field @"cookieExpirationPeriod"
{-# DEPRECATED clbcspCookieExpirationPeriod "Use generic-lens or generic-optics with 'cookieExpirationPeriod' instead." #-}

instance Core.AWSRequest CreateLBCookieStickinessPolicy where
  type
    Rs CreateLBCookieStickinessPolicy =
      CreateLBCookieStickinessPolicyResponse
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
            ( Core.pure ("Action", "CreateLBCookieStickinessPolicy")
                Core.<> (Core.pure ("Version", "2012-06-01"))
                Core.<> (Core.toQueryValue "LoadBalancerName" loadBalancerName)
                Core.<> (Core.toQueryValue "PolicyName" policyName)
                Core.<> ( Core.toQueryValue "CookieExpirationPeriod"
                            Core.<$> cookieExpirationPeriod
                        )
            )
      }
  response =
    Response.receiveXMLWrapper
      "CreateLBCookieStickinessPolicyResult"
      ( \s h x ->
          CreateLBCookieStickinessPolicyResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | Contains the output for CreateLBCookieStickinessPolicy.
--
-- /See:/ 'mkCreateLBCookieStickinessPolicyResponse' smart constructor.
newtype CreateLBCookieStickinessPolicyResponse = CreateLBCookieStickinessPolicyResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'CreateLBCookieStickinessPolicyResponse' value with any optional fields omitted.
mkCreateLBCookieStickinessPolicyResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateLBCookieStickinessPolicyResponse
mkCreateLBCookieStickinessPolicyResponse responseStatus =
  CreateLBCookieStickinessPolicyResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clbcsprrsResponseStatus :: Lens.Lens' CreateLBCookieStickinessPolicyResponse Core.Int
clbcsprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED clbcsprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}