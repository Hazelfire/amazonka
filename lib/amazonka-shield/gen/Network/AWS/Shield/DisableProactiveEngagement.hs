{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.DisableProactiveEngagement
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes authorization from the DDoS Response Team (DRT) to notify contacts about escalations to the DRT and to initiate proactive customer support.
module Network.AWS.Shield.DisableProactiveEngagement
  ( -- * Creating a request
    DisableProactiveEngagement (..),
    mkDisableProactiveEngagement,

    -- * Destructuring the response
    DisableProactiveEngagementResponse (..),
    mkDisableProactiveEngagementResponse,

    -- ** Response lenses
    dperrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Shield.Types as Types

-- | /See:/ 'mkDisableProactiveEngagement' smart constructor.
data DisableProactiveEngagement = DisableProactiveEngagement'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DisableProactiveEngagement' value with any optional fields omitted.
mkDisableProactiveEngagement ::
  DisableProactiveEngagement
mkDisableProactiveEngagement = DisableProactiveEngagement'

instance Core.FromJSON DisableProactiveEngagement where
  toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest DisableProactiveEngagement where
  type
    Rs DisableProactiveEngagement =
      DisableProactiveEngagementResponse
  request x@_ =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AWSShield_20160616.DisableProactiveEngagement")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisableProactiveEngagementResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDisableProactiveEngagementResponse' smart constructor.
newtype DisableProactiveEngagementResponse = DisableProactiveEngagementResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DisableProactiveEngagementResponse' value with any optional fields omitted.
mkDisableProactiveEngagementResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DisableProactiveEngagementResponse
mkDisableProactiveEngagementResponse responseStatus =
  DisableProactiveEngagementResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dperrsResponseStatus :: Lens.Lens' DisableProactiveEngagementResponse Core.Int
dperrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dperrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}