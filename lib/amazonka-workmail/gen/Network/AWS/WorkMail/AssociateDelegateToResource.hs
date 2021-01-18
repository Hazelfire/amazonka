{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.AssociateDelegateToResource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a member (user or group) to the resource's set of delegates.
module Network.AWS.WorkMail.AssociateDelegateToResource
  ( -- * Creating a request
    AssociateDelegateToResource (..),
    mkAssociateDelegateToResource,

    -- ** Request lenses
    adtrOrganizationId,
    adtrResourceId,
    adtrEntityId,

    -- * Destructuring the response
    AssociateDelegateToResourceResponse (..),
    mkAssociateDelegateToResourceResponse,

    -- ** Response lenses
    adtrrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WorkMail.Types as Types

-- | /See:/ 'mkAssociateDelegateToResource' smart constructor.
data AssociateDelegateToResource = AssociateDelegateToResource'
  { -- | The organization under which the resource exists.
    organizationId :: Types.OrganizationId,
    -- | The resource for which members (users or groups) are associated.
    resourceId :: Types.ResourceId,
    -- | The member (user or group) to associate to the resource.
    entityId :: Types.WorkMailIdentifier
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AssociateDelegateToResource' value with any optional fields omitted.
mkAssociateDelegateToResource ::
  -- | 'organizationId'
  Types.OrganizationId ->
  -- | 'resourceId'
  Types.ResourceId ->
  -- | 'entityId'
  Types.WorkMailIdentifier ->
  AssociateDelegateToResource
mkAssociateDelegateToResource organizationId resourceId entityId =
  AssociateDelegateToResource'
    { organizationId,
      resourceId,
      entityId
    }

-- | The organization under which the resource exists.
--
-- /Note:/ Consider using 'organizationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adtrOrganizationId :: Lens.Lens' AssociateDelegateToResource Types.OrganizationId
adtrOrganizationId = Lens.field @"organizationId"
{-# DEPRECATED adtrOrganizationId "Use generic-lens or generic-optics with 'organizationId' instead." #-}

-- | The resource for which members (users or groups) are associated.
--
-- /Note:/ Consider using 'resourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adtrResourceId :: Lens.Lens' AssociateDelegateToResource Types.ResourceId
adtrResourceId = Lens.field @"resourceId"
{-# DEPRECATED adtrResourceId "Use generic-lens or generic-optics with 'resourceId' instead." #-}

-- | The member (user or group) to associate to the resource.
--
-- /Note:/ Consider using 'entityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adtrEntityId :: Lens.Lens' AssociateDelegateToResource Types.WorkMailIdentifier
adtrEntityId = Lens.field @"entityId"
{-# DEPRECATED adtrEntityId "Use generic-lens or generic-optics with 'entityId' instead." #-}

instance Core.FromJSON AssociateDelegateToResource where
  toJSON AssociateDelegateToResource {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("OrganizationId" Core..= organizationId),
            Core.Just ("ResourceId" Core..= resourceId),
            Core.Just ("EntityId" Core..= entityId)
          ]
      )

instance Core.AWSRequest AssociateDelegateToResource where
  type
    Rs AssociateDelegateToResource =
      AssociateDelegateToResourceResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "WorkMailService.AssociateDelegateToResource")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          AssociateDelegateToResourceResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkAssociateDelegateToResourceResponse' smart constructor.
newtype AssociateDelegateToResourceResponse = AssociateDelegateToResourceResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'AssociateDelegateToResourceResponse' value with any optional fields omitted.
mkAssociateDelegateToResourceResponse ::
  -- | 'responseStatus'
  Core.Int ->
  AssociateDelegateToResourceResponse
mkAssociateDelegateToResourceResponse responseStatus =
  AssociateDelegateToResourceResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adtrrrsResponseStatus :: Lens.Lens' AssociateDelegateToResourceResponse Core.Int
adtrrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED adtrrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}