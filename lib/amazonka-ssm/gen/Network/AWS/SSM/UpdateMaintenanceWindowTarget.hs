{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.UpdateMaintenanceWindowTarget
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the target of an existing maintenance window. You can change the following:
--
--
--     * Name
--
--
--     * Description
--
--
--     * Owner
--
--
--     * IDs for an ID target
--
--
--     * Tags for a Tag target
--
--
--     * From any supported tag type to another. The three supported tag types are ID target, Tag target, and resource group. For more information, see 'Target' .
module Network.AWS.SSM.UpdateMaintenanceWindowTarget
  ( -- * Creating a request
    UpdateMaintenanceWindowTarget (..),
    mkUpdateMaintenanceWindowTarget,

    -- ** Request lenses
    uWindowId,
    uWindowTargetId,
    uDescription,
    uName,
    uOwnerInformation,
    uReplace,
    uTargets,

    -- * Destructuring the response
    UpdateMaintenanceWindowTargetResponse (..),
    mkUpdateMaintenanceWindowTargetResponse,

    -- ** Response lenses
    ursDescription,
    ursName,
    ursOwnerInformation,
    ursTargets,
    ursWindowId,
    ursWindowTargetId,
    ursResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkUpdateMaintenanceWindowTarget' smart constructor.
data UpdateMaintenanceWindowTarget = UpdateMaintenanceWindowTarget'
  { -- | The maintenance window ID with which to modify the target.
    windowId :: Types.MaintenanceWindowId,
    -- | The target ID to modify.
    windowTargetId :: Types.MaintenanceWindowTargetId,
    -- | An optional description for the update.
    description :: Core.Maybe Types.MaintenanceWindowDescription,
    -- | A name for the update.
    name :: Core.Maybe Types.MaintenanceWindowName,
    -- | User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.
    ownerInformation :: Core.Maybe Types.OwnerInformation,
    -- | If True, then all fields that are required by the RegisterTargetWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
    replace :: Core.Maybe Core.Bool,
    -- | The targets to add or replace.
    targets :: Core.Maybe [Types.Target]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateMaintenanceWindowTarget' value with any optional fields omitted.
mkUpdateMaintenanceWindowTarget ::
  -- | 'windowId'
  Types.MaintenanceWindowId ->
  -- | 'windowTargetId'
  Types.MaintenanceWindowTargetId ->
  UpdateMaintenanceWindowTarget
mkUpdateMaintenanceWindowTarget windowId windowTargetId =
  UpdateMaintenanceWindowTarget'
    { windowId,
      windowTargetId,
      description = Core.Nothing,
      name = Core.Nothing,
      ownerInformation = Core.Nothing,
      replace = Core.Nothing,
      targets = Core.Nothing
    }

-- | The maintenance window ID with which to modify the target.
--
-- /Note:/ Consider using 'windowId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uWindowId :: Lens.Lens' UpdateMaintenanceWindowTarget Types.MaintenanceWindowId
uWindowId = Lens.field @"windowId"
{-# DEPRECATED uWindowId "Use generic-lens or generic-optics with 'windowId' instead." #-}

-- | The target ID to modify.
--
-- /Note:/ Consider using 'windowTargetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uWindowTargetId :: Lens.Lens' UpdateMaintenanceWindowTarget Types.MaintenanceWindowTargetId
uWindowTargetId = Lens.field @"windowTargetId"
{-# DEPRECATED uWindowTargetId "Use generic-lens or generic-optics with 'windowTargetId' instead." #-}

-- | An optional description for the update.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uDescription :: Lens.Lens' UpdateMaintenanceWindowTarget (Core.Maybe Types.MaintenanceWindowDescription)
uDescription = Lens.field @"description"
{-# DEPRECATED uDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | A name for the update.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uName :: Lens.Lens' UpdateMaintenanceWindowTarget (Core.Maybe Types.MaintenanceWindowName)
uName = Lens.field @"name"
{-# DEPRECATED uName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.
--
-- /Note:/ Consider using 'ownerInformation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uOwnerInformation :: Lens.Lens' UpdateMaintenanceWindowTarget (Core.Maybe Types.OwnerInformation)
uOwnerInformation = Lens.field @"ownerInformation"
{-# DEPRECATED uOwnerInformation "Use generic-lens or generic-optics with 'ownerInformation' instead." #-}

-- | If True, then all fields that are required by the RegisterTargetWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
--
-- /Note:/ Consider using 'replace' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uReplace :: Lens.Lens' UpdateMaintenanceWindowTarget (Core.Maybe Core.Bool)
uReplace = Lens.field @"replace"
{-# DEPRECATED uReplace "Use generic-lens or generic-optics with 'replace' instead." #-}

-- | The targets to add or replace.
--
-- /Note:/ Consider using 'targets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uTargets :: Lens.Lens' UpdateMaintenanceWindowTarget (Core.Maybe [Types.Target])
uTargets = Lens.field @"targets"
{-# DEPRECATED uTargets "Use generic-lens or generic-optics with 'targets' instead." #-}

instance Core.FromJSON UpdateMaintenanceWindowTarget where
  toJSON UpdateMaintenanceWindowTarget {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("WindowId" Core..= windowId),
            Core.Just ("WindowTargetId" Core..= windowTargetId),
            ("Description" Core..=) Core.<$> description,
            ("Name" Core..=) Core.<$> name,
            ("OwnerInformation" Core..=) Core.<$> ownerInformation,
            ("Replace" Core..=) Core.<$> replace,
            ("Targets" Core..=) Core.<$> targets
          ]
      )

instance Core.AWSRequest UpdateMaintenanceWindowTarget where
  type
    Rs UpdateMaintenanceWindowTarget =
      UpdateMaintenanceWindowTargetResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AmazonSSM.UpdateMaintenanceWindowTarget")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateMaintenanceWindowTargetResponse'
            Core.<$> (x Core..:? "Description")
            Core.<*> (x Core..:? "Name")
            Core.<*> (x Core..:? "OwnerInformation")
            Core.<*> (x Core..:? "Targets")
            Core.<*> (x Core..:? "WindowId")
            Core.<*> (x Core..:? "WindowTargetId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateMaintenanceWindowTargetResponse' smart constructor.
data UpdateMaintenanceWindowTargetResponse = UpdateMaintenanceWindowTargetResponse'
  { -- | The updated description.
    description :: Core.Maybe Types.MaintenanceWindowDescription,
    -- | The updated name.
    name :: Core.Maybe Types.MaintenanceWindowName,
    -- | The updated owner.
    ownerInformation :: Core.Maybe Types.OwnerInformation,
    -- | The updated targets.
    targets :: Core.Maybe [Types.Target],
    -- | The maintenance window ID specified in the update request.
    windowId :: Core.Maybe Types.MaintenanceWindowId,
    -- | The target ID specified in the update request.
    windowTargetId :: Core.Maybe Types.MaintenanceWindowTargetId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateMaintenanceWindowTargetResponse' value with any optional fields omitted.
mkUpdateMaintenanceWindowTargetResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateMaintenanceWindowTargetResponse
mkUpdateMaintenanceWindowTargetResponse responseStatus =
  UpdateMaintenanceWindowTargetResponse'
    { description =
        Core.Nothing,
      name = Core.Nothing,
      ownerInformation = Core.Nothing,
      targets = Core.Nothing,
      windowId = Core.Nothing,
      windowTargetId = Core.Nothing,
      responseStatus
    }

-- | The updated description.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursDescription :: Lens.Lens' UpdateMaintenanceWindowTargetResponse (Core.Maybe Types.MaintenanceWindowDescription)
ursDescription = Lens.field @"description"
{-# DEPRECATED ursDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The updated name.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursName :: Lens.Lens' UpdateMaintenanceWindowTargetResponse (Core.Maybe Types.MaintenanceWindowName)
ursName = Lens.field @"name"
{-# DEPRECATED ursName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The updated owner.
--
-- /Note:/ Consider using 'ownerInformation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursOwnerInformation :: Lens.Lens' UpdateMaintenanceWindowTargetResponse (Core.Maybe Types.OwnerInformation)
ursOwnerInformation = Lens.field @"ownerInformation"
{-# DEPRECATED ursOwnerInformation "Use generic-lens or generic-optics with 'ownerInformation' instead." #-}

-- | The updated targets.
--
-- /Note:/ Consider using 'targets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursTargets :: Lens.Lens' UpdateMaintenanceWindowTargetResponse (Core.Maybe [Types.Target])
ursTargets = Lens.field @"targets"
{-# DEPRECATED ursTargets "Use generic-lens or generic-optics with 'targets' instead." #-}

-- | The maintenance window ID specified in the update request.
--
-- /Note:/ Consider using 'windowId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursWindowId :: Lens.Lens' UpdateMaintenanceWindowTargetResponse (Core.Maybe Types.MaintenanceWindowId)
ursWindowId = Lens.field @"windowId"
{-# DEPRECATED ursWindowId "Use generic-lens or generic-optics with 'windowId' instead." #-}

-- | The target ID specified in the update request.
--
-- /Note:/ Consider using 'windowTargetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursWindowTargetId :: Lens.Lens' UpdateMaintenanceWindowTargetResponse (Core.Maybe Types.MaintenanceWindowTargetId)
ursWindowTargetId = Lens.field @"windowTargetId"
{-# DEPRECATED ursWindowTargetId "Use generic-lens or generic-optics with 'windowTargetId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursResponseStatus :: Lens.Lens' UpdateMaintenanceWindowTargetResponse Core.Int
ursResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ursResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}