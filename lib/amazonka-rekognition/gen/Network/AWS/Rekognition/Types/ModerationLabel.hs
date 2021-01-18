{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ModerationLabel
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ModerationLabel
  ( ModerationLabel (..),

    -- * Smart constructor
    mkModerationLabel,

    -- * Lenses
    mlConfidence,
    mlName,
    mlParentName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types.Name as Types
import qualified Network.AWS.Rekognition.Types.ParentName as Types

-- | Provides information about a single type of unsafe content found in an image or video. Each type of moderated content has a label within a hierarchical taxonomy. For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.
--
-- /See:/ 'mkModerationLabel' smart constructor.
data ModerationLabel = ModerationLabel'
  { -- | Specifies the confidence that Amazon Rekognition has that the label has been correctly identified.
    --
    -- If you don't specify the @MinConfidence@ parameter in the call to @DetectModerationLabels@ , the operation returns labels with a confidence value greater than or equal to 50 percent.
    confidence :: Core.Maybe Core.Double,
    -- | The label name for the type of unsafe content detected in the image.
    name :: Core.Maybe Types.Name,
    -- | The name for the parent label. Labels at the top level of the hierarchy have the parent label @""@ .
    parentName :: Core.Maybe Types.ParentName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ModerationLabel' value with any optional fields omitted.
mkModerationLabel ::
  ModerationLabel
mkModerationLabel =
  ModerationLabel'
    { confidence = Core.Nothing,
      name = Core.Nothing,
      parentName = Core.Nothing
    }

-- | Specifies the confidence that Amazon Rekognition has that the label has been correctly identified.
--
-- If you don't specify the @MinConfidence@ parameter in the call to @DetectModerationLabels@ , the operation returns labels with a confidence value greater than or equal to 50 percent.
--
-- /Note:/ Consider using 'confidence' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mlConfidence :: Lens.Lens' ModerationLabel (Core.Maybe Core.Double)
mlConfidence = Lens.field @"confidence"
{-# DEPRECATED mlConfidence "Use generic-lens or generic-optics with 'confidence' instead." #-}

-- | The label name for the type of unsafe content detected in the image.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mlName :: Lens.Lens' ModerationLabel (Core.Maybe Types.Name)
mlName = Lens.field @"name"
{-# DEPRECATED mlName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The name for the parent label. Labels at the top level of the hierarchy have the parent label @""@ .
--
-- /Note:/ Consider using 'parentName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mlParentName :: Lens.Lens' ModerationLabel (Core.Maybe Types.ParentName)
mlParentName = Lens.field @"parentName"
{-# DEPRECATED mlParentName "Use generic-lens or generic-optics with 'parentName' instead." #-}

instance Core.FromJSON ModerationLabel where
  parseJSON =
    Core.withObject "ModerationLabel" Core.$
      \x ->
        ModerationLabel'
          Core.<$> (x Core..:? "Confidence")
          Core.<*> (x Core..:? "Name")
          Core.<*> (x Core..:? "ParentName")