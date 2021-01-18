{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.AdvertiseByoipCidr
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Advertises an IPv4 or IPv6 address range that is provisioned for use with your AWS resources through bring your own IP addresses (BYOIP).
--
-- You can perform this operation at most once every 10 seconds, even if you specify different address ranges each time.
-- We recommend that you stop advertising the BYOIP CIDR from other locations when you advertise it from AWS. To minimize down time, you can configure your AWS resources to use an address from a BYOIP CIDR before it is advertised, and then simultaneously stop advertising it from the current location and start advertising it through AWS.
-- It can take a few minutes before traffic to the specified addresses starts routing to AWS because of BGP propagation delays.
-- To stop advertising the BYOIP CIDR, use 'WithdrawByoipCidr' .
module Network.AWS.EC2.AdvertiseByoipCidr
  ( -- * Creating a request
    AdvertiseByoipCidr (..),
    mkAdvertiseByoipCidr,

    -- ** Request lenses
    abcCidr,
    abcDryRun,

    -- * Destructuring the response
    AdvertiseByoipCidrResponse (..),
    mkAdvertiseByoipCidrResponse,

    -- ** Response lenses
    abcrrsByoipCidr,
    abcrrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkAdvertiseByoipCidr' smart constructor.
data AdvertiseByoipCidr = AdvertiseByoipCidr'
  { -- | The address range, in CIDR notation. This must be the exact range that you provisioned. You can't advertise only a portion of the provisioned range.
    cidr :: Types.Cidr,
    -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AdvertiseByoipCidr' value with any optional fields omitted.
mkAdvertiseByoipCidr ::
  -- | 'cidr'
  Types.Cidr ->
  AdvertiseByoipCidr
mkAdvertiseByoipCidr cidr =
  AdvertiseByoipCidr' {cidr, dryRun = Core.Nothing}

-- | The address range, in CIDR notation. This must be the exact range that you provisioned. You can't advertise only a portion of the provisioned range.
--
-- /Note:/ Consider using 'cidr' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
abcCidr :: Lens.Lens' AdvertiseByoipCidr Types.Cidr
abcCidr = Lens.field @"cidr"
{-# DEPRECATED abcCidr "Use generic-lens or generic-optics with 'cidr' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
abcDryRun :: Lens.Lens' AdvertiseByoipCidr (Core.Maybe Core.Bool)
abcDryRun = Lens.field @"dryRun"
{-# DEPRECATED abcDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

instance Core.AWSRequest AdvertiseByoipCidr where
  type Rs AdvertiseByoipCidr = AdvertiseByoipCidrResponse
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
            ( Core.pure ("Action", "AdvertiseByoipCidr")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "Cidr" cidr)
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          AdvertiseByoipCidrResponse'
            Core.<$> (x Core..@? "byoipCidr") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkAdvertiseByoipCidrResponse' smart constructor.
data AdvertiseByoipCidrResponse = AdvertiseByoipCidrResponse'
  { -- | Information about the address range.
    byoipCidr :: Core.Maybe Types.ByoipCidr,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AdvertiseByoipCidrResponse' value with any optional fields omitted.
mkAdvertiseByoipCidrResponse ::
  -- | 'responseStatus'
  Core.Int ->
  AdvertiseByoipCidrResponse
mkAdvertiseByoipCidrResponse responseStatus =
  AdvertiseByoipCidrResponse'
    { byoipCidr = Core.Nothing,
      responseStatus
    }

-- | Information about the address range.
--
-- /Note:/ Consider using 'byoipCidr' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
abcrrsByoipCidr :: Lens.Lens' AdvertiseByoipCidrResponse (Core.Maybe Types.ByoipCidr)
abcrrsByoipCidr = Lens.field @"byoipCidr"
{-# DEPRECATED abcrrsByoipCidr "Use generic-lens or generic-optics with 'byoipCidr' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
abcrrsResponseStatus :: Lens.Lens' AdvertiseByoipCidrResponse Core.Int
abcrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED abcrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}