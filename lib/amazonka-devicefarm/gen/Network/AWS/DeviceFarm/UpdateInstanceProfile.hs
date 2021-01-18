{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.UpdateInstanceProfile
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information about an existing private device instance profile.
module Network.AWS.DeviceFarm.UpdateInstanceProfile
  ( -- * Creating a request
    UpdateInstanceProfile (..),
    mkUpdateInstanceProfile,

    -- ** Request lenses
    uipArn,
    uipDescription,
    uipExcludeAppPackagesFromCleanup,
    uipName,
    uipPackageCleanup,
    uipRebootAfterUse,

    -- * Destructuring the response
    UpdateInstanceProfileResponse (..),
    mkUpdateInstanceProfileResponse,

    -- ** Response lenses
    uiprrsInstanceProfile,
    uiprrsResponseStatus,
  )
where

import qualified Network.AWS.DeviceFarm.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateInstanceProfile' smart constructor.
data UpdateInstanceProfile = UpdateInstanceProfile'
  { -- | The Amazon Resource Name (ARN) of the instance profile.
    arn :: Types.Arn,
    -- | The updated description for your instance profile.
    description :: Core.Maybe Types.Description,
    -- | An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run is over.
    --
    -- The list of packages is only considered if you set @packageCleanup@ to @true@ .
    excludeAppPackagesFromCleanup :: Core.Maybe [Types.String],
    -- | The updated name for your instance profile.
    name :: Core.Maybe Types.Name,
    -- | The updated choice for whether you want to specify package cleanup. The default value is @false@ for private devices.
    packageCleanup :: Core.Maybe Core.Bool,
    -- | The updated choice for whether you want to reboot the device after use. The default value is @true@ .
    rebootAfterUse :: Core.Maybe Core.Bool
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateInstanceProfile' value with any optional fields omitted.
mkUpdateInstanceProfile ::
  -- | 'arn'
  Types.Arn ->
  UpdateInstanceProfile
mkUpdateInstanceProfile arn =
  UpdateInstanceProfile'
    { arn,
      description = Core.Nothing,
      excludeAppPackagesFromCleanup = Core.Nothing,
      name = Core.Nothing,
      packageCleanup = Core.Nothing,
      rebootAfterUse = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) of the instance profile.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uipArn :: Lens.Lens' UpdateInstanceProfile Types.Arn
uipArn = Lens.field @"arn"
{-# DEPRECATED uipArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The updated description for your instance profile.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uipDescription :: Lens.Lens' UpdateInstanceProfile (Core.Maybe Types.Description)
uipDescription = Lens.field @"description"
{-# DEPRECATED uipDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run is over.
--
-- The list of packages is only considered if you set @packageCleanup@ to @true@ .
--
-- /Note:/ Consider using 'excludeAppPackagesFromCleanup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uipExcludeAppPackagesFromCleanup :: Lens.Lens' UpdateInstanceProfile (Core.Maybe [Types.String])
uipExcludeAppPackagesFromCleanup = Lens.field @"excludeAppPackagesFromCleanup"
{-# DEPRECATED uipExcludeAppPackagesFromCleanup "Use generic-lens or generic-optics with 'excludeAppPackagesFromCleanup' instead." #-}

-- | The updated name for your instance profile.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uipName :: Lens.Lens' UpdateInstanceProfile (Core.Maybe Types.Name)
uipName = Lens.field @"name"
{-# DEPRECATED uipName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The updated choice for whether you want to specify package cleanup. The default value is @false@ for private devices.
--
-- /Note:/ Consider using 'packageCleanup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uipPackageCleanup :: Lens.Lens' UpdateInstanceProfile (Core.Maybe Core.Bool)
uipPackageCleanup = Lens.field @"packageCleanup"
{-# DEPRECATED uipPackageCleanup "Use generic-lens or generic-optics with 'packageCleanup' instead." #-}

-- | The updated choice for whether you want to reboot the device after use. The default value is @true@ .
--
-- /Note:/ Consider using 'rebootAfterUse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uipRebootAfterUse :: Lens.Lens' UpdateInstanceProfile (Core.Maybe Core.Bool)
uipRebootAfterUse = Lens.field @"rebootAfterUse"
{-# DEPRECATED uipRebootAfterUse "Use generic-lens or generic-optics with 'rebootAfterUse' instead." #-}

instance Core.FromJSON UpdateInstanceProfile where
  toJSON UpdateInstanceProfile {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("arn" Core..= arn),
            ("description" Core..=) Core.<$> description,
            ("excludeAppPackagesFromCleanup" Core..=)
              Core.<$> excludeAppPackagesFromCleanup,
            ("name" Core..=) Core.<$> name,
            ("packageCleanup" Core..=) Core.<$> packageCleanup,
            ("rebootAfterUse" Core..=) Core.<$> rebootAfterUse
          ]
      )

instance Core.AWSRequest UpdateInstanceProfile where
  type Rs UpdateInstanceProfile = UpdateInstanceProfileResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "DeviceFarm_20150623.UpdateInstanceProfile")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateInstanceProfileResponse'
            Core.<$> (x Core..:? "instanceProfile")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateInstanceProfileResponse' smart constructor.
data UpdateInstanceProfileResponse = UpdateInstanceProfileResponse'
  { -- | An object that contains information about your instance profile.
    instanceProfile :: Core.Maybe Types.InstanceProfile,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateInstanceProfileResponse' value with any optional fields omitted.
mkUpdateInstanceProfileResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateInstanceProfileResponse
mkUpdateInstanceProfileResponse responseStatus =
  UpdateInstanceProfileResponse'
    { instanceProfile = Core.Nothing,
      responseStatus
    }

-- | An object that contains information about your instance profile.
--
-- /Note:/ Consider using 'instanceProfile' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiprrsInstanceProfile :: Lens.Lens' UpdateInstanceProfileResponse (Core.Maybe Types.InstanceProfile)
uiprrsInstanceProfile = Lens.field @"instanceProfile"
{-# DEPRECATED uiprrsInstanceProfile "Use generic-lens or generic-optics with 'instanceProfile' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiprrsResponseStatus :: Lens.Lens' UpdateInstanceProfileResponse Core.Int
uiprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED uiprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}