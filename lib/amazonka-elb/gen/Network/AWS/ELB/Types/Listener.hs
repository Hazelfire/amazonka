{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.Types.Listener
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.Listener
  ( Listener (..),

    -- * Smart constructor
    mkListener,

    -- * Lenses
    lProtocol,
    lLoadBalancerPort,
    lInstancePort,
    lInstanceProtocol,
    lSSLCertificateId,
  )
where

import qualified Network.AWS.ELB.Internal as Types
import qualified Network.AWS.ELB.Types.Protocol as Types
import qualified Network.AWS.ELB.Types.SSLCertificateId as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Information about a listener.
--
-- For information about the protocols and the ports supported by Elastic Load Balancing, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html Listeners for Your Classic Load Balancer> in the /Classic Load Balancers Guide/ .
--
-- /See:/ 'mkListener' smart constructor.
data Listener = Listener'
  { -- | The load balancer transport protocol to use for routing: HTTP, HTTPS, TCP, or SSL.
    protocol :: Types.Protocol,
    -- | The port on which the load balancer is listening. On EC2-VPC, you can specify any port from the range 1-65535. On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587, 1024-65535.
    loadBalancerPort :: Core.Int,
    -- | The port on which the instance is listening.
    instancePort :: Core.Natural,
    -- | The protocol to use for routing traffic to instances: HTTP, HTTPS, TCP, or SSL.
    --
    -- If the front-end protocol is TCP or SSL, the back-end protocol must be TCP or SSL. If the front-end protocol is HTTP or HTTPS, the back-end protocol must be HTTP or HTTPS.
    -- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is secure, (HTTPS or SSL), the listener's @InstanceProtocol@ must also be secure.
    -- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is HTTP or TCP, the listener's @InstanceProtocol@ must be HTTP or TCP.
    instanceProtocol :: Core.Maybe Types.Protocol,
    -- | The Amazon Resource Name (ARN) of the server certificate.
    sSLCertificateId :: Core.Maybe Types.SSLCertificateId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Listener' value with any optional fields omitted.
mkListener ::
  -- | 'protocol'
  Types.Protocol ->
  -- | 'loadBalancerPort'
  Core.Int ->
  -- | 'instancePort'
  Core.Natural ->
  Listener
mkListener protocol loadBalancerPort instancePort =
  Listener'
    { protocol,
      loadBalancerPort,
      instancePort,
      instanceProtocol = Core.Nothing,
      sSLCertificateId = Core.Nothing
    }

-- | The load balancer transport protocol to use for routing: HTTP, HTTPS, TCP, or SSL.
--
-- /Note:/ Consider using 'protocol' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lProtocol :: Lens.Lens' Listener Types.Protocol
lProtocol = Lens.field @"protocol"
{-# DEPRECATED lProtocol "Use generic-lens or generic-optics with 'protocol' instead." #-}

-- | The port on which the load balancer is listening. On EC2-VPC, you can specify any port from the range 1-65535. On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587, 1024-65535.
--
-- /Note:/ Consider using 'loadBalancerPort' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lLoadBalancerPort :: Lens.Lens' Listener Core.Int
lLoadBalancerPort = Lens.field @"loadBalancerPort"
{-# DEPRECATED lLoadBalancerPort "Use generic-lens or generic-optics with 'loadBalancerPort' instead." #-}

-- | The port on which the instance is listening.
--
-- /Note:/ Consider using 'instancePort' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lInstancePort :: Lens.Lens' Listener Core.Natural
lInstancePort = Lens.field @"instancePort"
{-# DEPRECATED lInstancePort "Use generic-lens or generic-optics with 'instancePort' instead." #-}

-- | The protocol to use for routing traffic to instances: HTTP, HTTPS, TCP, or SSL.
--
-- If the front-end protocol is TCP or SSL, the back-end protocol must be TCP or SSL. If the front-end protocol is HTTP or HTTPS, the back-end protocol must be HTTP or HTTPS.
-- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is secure, (HTTPS or SSL), the listener's @InstanceProtocol@ must also be secure.
-- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is HTTP or TCP, the listener's @InstanceProtocol@ must be HTTP or TCP.
--
-- /Note:/ Consider using 'instanceProtocol' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lInstanceProtocol :: Lens.Lens' Listener (Core.Maybe Types.Protocol)
lInstanceProtocol = Lens.field @"instanceProtocol"
{-# DEPRECATED lInstanceProtocol "Use generic-lens or generic-optics with 'instanceProtocol' instead." #-}

-- | The Amazon Resource Name (ARN) of the server certificate.
--
-- /Note:/ Consider using 'sSLCertificateId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lSSLCertificateId :: Lens.Lens' Listener (Core.Maybe Types.SSLCertificateId)
lSSLCertificateId = Lens.field @"sSLCertificateId"
{-# DEPRECATED lSSLCertificateId "Use generic-lens or generic-optics with 'sSLCertificateId' instead." #-}

instance Core.FromXML Listener where
  parseXML x =
    Listener'
      Core.<$> (x Core..@ "Protocol")
      Core.<*> (x Core..@ "LoadBalancerPort")
      Core.<*> (x Core..@ "InstancePort")
      Core.<*> (x Core..@? "InstanceProtocol")
      Core.<*> (x Core..@? "SSLCertificateId")