{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServerlessApplicationRepository.UnshareApplication
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unshares an application from an AWS Organization.
--
-- This operation can be called only from the organization's master account.
module Network.AWS.ServerlessApplicationRepository.UnshareApplication
  ( -- * Creating a request
    UnshareApplication (..),
    mkUnshareApplication,

    -- ** Request lenses
    uaApplicationId,
    uaOrganizationId,

    -- * Destructuring the response
    UnshareApplicationResponse (..),
    mkUnshareApplicationResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.ServerlessApplicationRepository.Types as Types

-- | /See:/ 'mkUnshareApplication' smart constructor.
data UnshareApplication = UnshareApplication'
  { -- | The Amazon Resource Name (ARN) of the application.
    applicationId :: Core.Text,
    -- | The AWS Organization ID to unshare the application from.
    organizationId :: Core.Text
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UnshareApplication' value with any optional fields omitted.
mkUnshareApplication ::
  -- | 'applicationId'
  Core.Text ->
  -- | 'organizationId'
  Core.Text ->
  UnshareApplication
mkUnshareApplication applicationId organizationId =
  UnshareApplication' {applicationId, organizationId}

-- | The Amazon Resource Name (ARN) of the application.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaApplicationId :: Lens.Lens' UnshareApplication Core.Text
uaApplicationId = Lens.field @"applicationId"
{-# DEPRECATED uaApplicationId "Use generic-lens or generic-optics with 'applicationId' instead." #-}

-- | The AWS Organization ID to unshare the application from.
--
-- /Note:/ Consider using 'organizationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaOrganizationId :: Lens.Lens' UnshareApplication Core.Text
uaOrganizationId = Lens.field @"organizationId"
{-# DEPRECATED uaOrganizationId "Use generic-lens or generic-optics with 'organizationId' instead." #-}

instance Core.FromJSON UnshareApplication where
  toJSON UnshareApplication {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("organizationId" Core..= organizationId)]
      )

instance Core.AWSRequest UnshareApplication where
  type Rs UnshareApplication = UnshareApplicationResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath =
          Core.rawPath
            ( "/applications/" Core.<> (Core.toText applicationId)
                Core.<> ("/unshare")
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull UnshareApplicationResponse'

-- | /See:/ 'mkUnshareApplicationResponse' smart constructor.
data UnshareApplicationResponse = UnshareApplicationResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UnshareApplicationResponse' value with any optional fields omitted.
mkUnshareApplicationResponse ::
  UnshareApplicationResponse
mkUnshareApplicationResponse = UnshareApplicationResponse'