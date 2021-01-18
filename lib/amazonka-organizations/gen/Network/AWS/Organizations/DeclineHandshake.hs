{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.DeclineHandshake
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Declines a handshake request. This sets the handshake state to @DECLINED@ and effectively deactivates the request.
--
-- This operation can be called only from the account that received the handshake. The originator of the handshake can use 'CancelHandshake' instead. The originator can't reactivate a declined request, but can reinitiate the process with a new handshake request.
-- After you decline a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that, it's deleted.
module Network.AWS.Organizations.DeclineHandshake
  ( -- * Creating a request
    DeclineHandshake (..),
    mkDeclineHandshake,

    -- ** Request lenses
    dHandshakeId,

    -- * Destructuring the response
    DeclineHandshakeResponse (..),
    mkDeclineHandshakeResponse,

    -- ** Response lenses
    drsHandshake,
    drsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Organizations.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeclineHandshake' smart constructor.
newtype DeclineHandshake = DeclineHandshake'
  { -- | The unique identifier (ID) of the handshake that you want to decline. You can get the ID from the 'ListHandshakesForAccount' operation.
    --
    -- The <http://wikipedia.org/wiki/regex regex pattern> for handshake ID string requires "h-" followed by from 8 to 32 lowercase letters or digits.
    handshakeId :: Types.HandshakeId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeclineHandshake' value with any optional fields omitted.
mkDeclineHandshake ::
  -- | 'handshakeId'
  Types.HandshakeId ->
  DeclineHandshake
mkDeclineHandshake handshakeId = DeclineHandshake' {handshakeId}

-- | The unique identifier (ID) of the handshake that you want to decline. You can get the ID from the 'ListHandshakesForAccount' operation.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for handshake ID string requires "h-" followed by from 8 to 32 lowercase letters or digits.
--
-- /Note:/ Consider using 'handshakeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dHandshakeId :: Lens.Lens' DeclineHandshake Types.HandshakeId
dHandshakeId = Lens.field @"handshakeId"
{-# DEPRECATED dHandshakeId "Use generic-lens or generic-optics with 'handshakeId' instead." #-}

instance Core.FromJSON DeclineHandshake where
  toJSON DeclineHandshake {..} =
    Core.object
      (Core.catMaybes [Core.Just ("HandshakeId" Core..= handshakeId)])

instance Core.AWSRequest DeclineHandshake where
  type Rs DeclineHandshake = DeclineHandshakeResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AWSOrganizationsV20161128.DeclineHandshake")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DeclineHandshakeResponse'
            Core.<$> (x Core..:? "Handshake") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDeclineHandshakeResponse' smart constructor.
data DeclineHandshakeResponse = DeclineHandshakeResponse'
  { -- | A structure that contains details about the declined handshake. The state is updated to show the value @DECLINED@ .
    handshake :: Core.Maybe Types.Handshake,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DeclineHandshakeResponse' value with any optional fields omitted.
mkDeclineHandshakeResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeclineHandshakeResponse
mkDeclineHandshakeResponse responseStatus =
  DeclineHandshakeResponse'
    { handshake = Core.Nothing,
      responseStatus
    }

-- | A structure that contains details about the declined handshake. The state is updated to show the value @DECLINED@ .
--
-- /Note:/ Consider using 'handshake' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsHandshake :: Lens.Lens' DeclineHandshakeResponse (Core.Maybe Types.Handshake)
drsHandshake = Lens.field @"handshake"
{-# DEPRECATED drsHandshake "Use generic-lens or generic-optics with 'handshake' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsResponseStatus :: Lens.Lens' DeclineHandshakeResponse Core.Int
drsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED drsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}