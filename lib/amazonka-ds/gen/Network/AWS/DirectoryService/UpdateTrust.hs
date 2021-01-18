{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.UpdateTrust
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory.
module Network.AWS.DirectoryService.UpdateTrust
  ( -- * Creating a request
    UpdateTrust (..),
    mkUpdateTrust,

    -- ** Request lenses
    utTrustId,
    utSelectiveAuth,

    -- * Destructuring the response
    UpdateTrustResponse (..),
    mkUpdateTrustResponse,

    -- ** Response lenses
    utrrsRequestId,
    utrrsTrustId,
    utrrsResponseStatus,
  )
where

import qualified Network.AWS.DirectoryService.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateTrust' smart constructor.
data UpdateTrust = UpdateTrust'
  { -- | Identifier of the trust relationship.
    trustId :: Types.TrustId,
    -- | Updates selective authentication for the trust.
    selectiveAuth :: Core.Maybe Types.SelectiveAuth
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateTrust' value with any optional fields omitted.
mkUpdateTrust ::
  -- | 'trustId'
  Types.TrustId ->
  UpdateTrust
mkUpdateTrust trustId =
  UpdateTrust' {trustId, selectiveAuth = Core.Nothing}

-- | Identifier of the trust relationship.
--
-- /Note:/ Consider using 'trustId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utTrustId :: Lens.Lens' UpdateTrust Types.TrustId
utTrustId = Lens.field @"trustId"
{-# DEPRECATED utTrustId "Use generic-lens or generic-optics with 'trustId' instead." #-}

-- | Updates selective authentication for the trust.
--
-- /Note:/ Consider using 'selectiveAuth' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utSelectiveAuth :: Lens.Lens' UpdateTrust (Core.Maybe Types.SelectiveAuth)
utSelectiveAuth = Lens.field @"selectiveAuth"
{-# DEPRECATED utSelectiveAuth "Use generic-lens or generic-optics with 'selectiveAuth' instead." #-}

instance Core.FromJSON UpdateTrust where
  toJSON UpdateTrust {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("TrustId" Core..= trustId),
            ("SelectiveAuth" Core..=) Core.<$> selectiveAuth
          ]
      )

instance Core.AWSRequest UpdateTrust where
  type Rs UpdateTrust = UpdateTrustResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "DirectoryService_20150416.UpdateTrust")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateTrustResponse'
            Core.<$> (x Core..:? "RequestId")
            Core.<*> (x Core..:? "TrustId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateTrustResponse' smart constructor.
data UpdateTrustResponse = UpdateTrustResponse'
  { requestId :: Core.Maybe Types.RequestId,
    -- | Identifier of the trust relationship.
    trustId :: Core.Maybe Types.TrustId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateTrustResponse' value with any optional fields omitted.
mkUpdateTrustResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateTrustResponse
mkUpdateTrustResponse responseStatus =
  UpdateTrustResponse'
    { requestId = Core.Nothing,
      trustId = Core.Nothing,
      responseStatus
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'requestId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utrrsRequestId :: Lens.Lens' UpdateTrustResponse (Core.Maybe Types.RequestId)
utrrsRequestId = Lens.field @"requestId"
{-# DEPRECATED utrrsRequestId "Use generic-lens or generic-optics with 'requestId' instead." #-}

-- | Identifier of the trust relationship.
--
-- /Note:/ Consider using 'trustId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utrrsTrustId :: Lens.Lens' UpdateTrustResponse (Core.Maybe Types.TrustId)
utrrsTrustId = Lens.field @"trustId"
{-# DEPRECATED utrrsTrustId "Use generic-lens or generic-optics with 'trustId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utrrsResponseStatus :: Lens.Lens' UpdateTrustResponse Core.Int
utrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED utrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}