{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.GetAccountBalance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @GetAccountBalance@ operation retrieves the amount of money in your Amazon Mechanical Turk account.
module Network.AWS.MechanicalTurk.GetAccountBalance
  ( -- * Creating a request
    GetAccountBalance (..),
    mkGetAccountBalance,

    -- * Destructuring the response
    GetAccountBalanceResponse (..),
    mkGetAccountBalanceResponse,

    -- ** Response lenses
    gabrrsAvailableBalance,
    gabrrsOnHoldBalance,
    gabrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MechanicalTurk.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetAccountBalance' smart constructor.
data GetAccountBalance = GetAccountBalance'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetAccountBalance' value with any optional fields omitted.
mkGetAccountBalance ::
  GetAccountBalance
mkGetAccountBalance = GetAccountBalance'

instance Core.FromJSON GetAccountBalance where
  toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest GetAccountBalance where
  type Rs GetAccountBalance = GetAccountBalanceResponse
  request x@_ =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "MTurkRequesterServiceV20170117.GetAccountBalance"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAccountBalanceResponse'
            Core.<$> (x Core..:? "AvailableBalance")
            Core.<*> (x Core..:? "OnHoldBalance")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetAccountBalanceResponse' smart constructor.
data GetAccountBalanceResponse = GetAccountBalanceResponse'
  { availableBalance :: Core.Maybe Types.AvailableBalance,
    onHoldBalance :: Core.Maybe Types.OnHoldBalance,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetAccountBalanceResponse' value with any optional fields omitted.
mkGetAccountBalanceResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetAccountBalanceResponse
mkGetAccountBalanceResponse responseStatus =
  GetAccountBalanceResponse'
    { availableBalance = Core.Nothing,
      onHoldBalance = Core.Nothing,
      responseStatus
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'availableBalance' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gabrrsAvailableBalance :: Lens.Lens' GetAccountBalanceResponse (Core.Maybe Types.AvailableBalance)
gabrrsAvailableBalance = Lens.field @"availableBalance"
{-# DEPRECATED gabrrsAvailableBalance "Use generic-lens or generic-optics with 'availableBalance' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'onHoldBalance' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gabrrsOnHoldBalance :: Lens.Lens' GetAccountBalanceResponse (Core.Maybe Types.OnHoldBalance)
gabrrsOnHoldBalance = Lens.field @"onHoldBalance"
{-# DEPRECATED gabrrsOnHoldBalance "Use generic-lens or generic-optics with 'onHoldBalance' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gabrrsResponseStatus :: Lens.Lens' GetAccountBalanceResponse Core.Int
gabrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gabrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}