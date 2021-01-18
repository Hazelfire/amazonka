{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.LayerVersionsListItem
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.LayerVersionsListItem
  ( LayerVersionsListItem (..),

    -- * Smart constructor
    mkLayerVersionsListItem,

    -- * Lenses
    lvliCompatibleRuntimes,
    lvliCreatedDate,
    lvliDescription,
    lvliLayerVersionArn,
    lvliLicenseInfo,
    lvliVersion,
  )
where

import qualified Network.AWS.Lambda.Types.CreatedDate as Types
import qualified Network.AWS.Lambda.Types.Description as Types
import qualified Network.AWS.Lambda.Types.LayerVersionArn as Types
import qualified Network.AWS.Lambda.Types.LicenseInfo as Types
import qualified Network.AWS.Lambda.Types.Runtime as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Details about a version of an <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html AWS Lambda layer> .
--
-- /See:/ 'mkLayerVersionsListItem' smart constructor.
data LayerVersionsListItem = LayerVersionsListItem'
  { -- | The layer's compatible runtimes.
    compatibleRuntimes :: Core.Maybe [Types.Runtime],
    -- | The date that the version was created, in ISO 8601 format. For example, @2018-11-27T15:10:45.123+0000@ .
    createdDate :: Core.Maybe Types.CreatedDate,
    -- | The description of the version.
    description :: Core.Maybe Types.Description,
    -- | The ARN of the layer version.
    layerVersionArn :: Core.Maybe Types.LayerVersionArn,
    -- | The layer's open-source license.
    licenseInfo :: Core.Maybe Types.LicenseInfo,
    -- | The version number.
    version :: Core.Maybe Core.Integer
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'LayerVersionsListItem' value with any optional fields omitted.
mkLayerVersionsListItem ::
  LayerVersionsListItem
mkLayerVersionsListItem =
  LayerVersionsListItem'
    { compatibleRuntimes = Core.Nothing,
      createdDate = Core.Nothing,
      description = Core.Nothing,
      layerVersionArn = Core.Nothing,
      licenseInfo = Core.Nothing,
      version = Core.Nothing
    }

-- | The layer's compatible runtimes.
--
-- /Note:/ Consider using 'compatibleRuntimes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lvliCompatibleRuntimes :: Lens.Lens' LayerVersionsListItem (Core.Maybe [Types.Runtime])
lvliCompatibleRuntimes = Lens.field @"compatibleRuntimes"
{-# DEPRECATED lvliCompatibleRuntimes "Use generic-lens or generic-optics with 'compatibleRuntimes' instead." #-}

-- | The date that the version was created, in ISO 8601 format. For example, @2018-11-27T15:10:45.123+0000@ .
--
-- /Note:/ Consider using 'createdDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lvliCreatedDate :: Lens.Lens' LayerVersionsListItem (Core.Maybe Types.CreatedDate)
lvliCreatedDate = Lens.field @"createdDate"
{-# DEPRECATED lvliCreatedDate "Use generic-lens or generic-optics with 'createdDate' instead." #-}

-- | The description of the version.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lvliDescription :: Lens.Lens' LayerVersionsListItem (Core.Maybe Types.Description)
lvliDescription = Lens.field @"description"
{-# DEPRECATED lvliDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The ARN of the layer version.
--
-- /Note:/ Consider using 'layerVersionArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lvliLayerVersionArn :: Lens.Lens' LayerVersionsListItem (Core.Maybe Types.LayerVersionArn)
lvliLayerVersionArn = Lens.field @"layerVersionArn"
{-# DEPRECATED lvliLayerVersionArn "Use generic-lens or generic-optics with 'layerVersionArn' instead." #-}

-- | The layer's open-source license.
--
-- /Note:/ Consider using 'licenseInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lvliLicenseInfo :: Lens.Lens' LayerVersionsListItem (Core.Maybe Types.LicenseInfo)
lvliLicenseInfo = Lens.field @"licenseInfo"
{-# DEPRECATED lvliLicenseInfo "Use generic-lens or generic-optics with 'licenseInfo' instead." #-}

-- | The version number.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lvliVersion :: Lens.Lens' LayerVersionsListItem (Core.Maybe Core.Integer)
lvliVersion = Lens.field @"version"
{-# DEPRECATED lvliVersion "Use generic-lens or generic-optics with 'version' instead." #-}

instance Core.FromJSON LayerVersionsListItem where
  parseJSON =
    Core.withObject "LayerVersionsListItem" Core.$
      \x ->
        LayerVersionsListItem'
          Core.<$> (x Core..:? "CompatibleRuntimes")
          Core.<*> (x Core..:? "CreatedDate")
          Core.<*> (x Core..:? "Description")
          Core.<*> (x Core..:? "LayerVersionArn")
          Core.<*> (x Core..:? "LicenseInfo")
          Core.<*> (x Core..:? "Version")