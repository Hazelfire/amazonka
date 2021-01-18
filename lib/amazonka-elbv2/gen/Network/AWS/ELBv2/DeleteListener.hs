{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.DeleteListener
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified listener.
--
-- Alternatively, your listener is deleted when you delete the load balancer to which it is attached.
module Network.AWS.ELBv2.DeleteListener
  ( -- * Creating a request
    DeleteListener (..),
    mkDeleteListener,

    -- ** Request lenses
    dlListenerArn,

    -- * Destructuring the response
    DeleteListenerResponse (..),
    mkDeleteListenerResponse,

    -- ** Response lenses
    dlrrsResponseStatus,
  )
where

import qualified Network.AWS.ELBv2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteListener' smart constructor.
newtype DeleteListener = DeleteListener'
  { -- | The Amazon Resource Name (ARN) of the listener.
    listenerArn :: Types.ListenerArn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteListener' value with any optional fields omitted.
mkDeleteListener ::
  -- | 'listenerArn'
  Types.ListenerArn ->
  DeleteListener
mkDeleteListener listenerArn = DeleteListener' {listenerArn}

-- | The Amazon Resource Name (ARN) of the listener.
--
-- /Note:/ Consider using 'listenerArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlListenerArn :: Lens.Lens' DeleteListener Types.ListenerArn
dlListenerArn = Lens.field @"listenerArn"
{-# DEPRECATED dlListenerArn "Use generic-lens or generic-optics with 'listenerArn' instead." #-}

instance Core.AWSRequest DeleteListener where
  type Rs DeleteListener = DeleteListenerResponse
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
            ( Core.pure ("Action", "DeleteListener")
                Core.<> (Core.pure ("Version", "2015-12-01"))
                Core.<> (Core.toQueryValue "ListenerArn" listenerArn)
            )
      }
  response =
    Response.receiveXMLWrapper
      "DeleteListenerResult"
      ( \s h x ->
          DeleteListenerResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDeleteListenerResponse' smart constructor.
newtype DeleteListenerResponse = DeleteListenerResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteListenerResponse' value with any optional fields omitted.
mkDeleteListenerResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeleteListenerResponse
mkDeleteListenerResponse responseStatus =
  DeleteListenerResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlrrsResponseStatus :: Lens.Lens' DeleteListenerResponse Core.Int
dlrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dlrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}