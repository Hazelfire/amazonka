{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ComparedFace
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ComparedFace
  ( ComparedFace (..),

    -- * Smart constructor
    mkComparedFace,

    -- * Lenses
    cfBoundingBox,
    cfConfidence,
    cfLandmarks,
    cfPose,
    cfQuality,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types.BoundingBox as Types
import qualified Network.AWS.Rekognition.Types.ImageQuality as Types
import qualified Network.AWS.Rekognition.Types.Landmark as Types
import qualified Network.AWS.Rekognition.Types.Pose as Types

-- | Provides face metadata for target image faces that are analyzed by @CompareFaces@ and @RecognizeCelebrities@ .
--
-- /See:/ 'mkComparedFace' smart constructor.
data ComparedFace = ComparedFace'
  { -- | Bounding box of the face.
    boundingBox :: Core.Maybe Types.BoundingBox,
    -- | Level of confidence that what the bounding box contains is a face.
    confidence :: Core.Maybe Core.Double,
    -- | An array of facial landmarks.
    landmarks :: Core.Maybe [Types.Landmark],
    -- | Indicates the pose of the face as determined by its pitch, roll, and yaw.
    pose :: Core.Maybe Types.Pose,
    -- | Identifies face image brightness and sharpness.
    quality :: Core.Maybe Types.ImageQuality
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ComparedFace' value with any optional fields omitted.
mkComparedFace ::
  ComparedFace
mkComparedFace =
  ComparedFace'
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      landmarks = Core.Nothing,
      pose = Core.Nothing,
      quality = Core.Nothing
    }

-- | Bounding box of the face.
--
-- /Note:/ Consider using 'boundingBox' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfBoundingBox :: Lens.Lens' ComparedFace (Core.Maybe Types.BoundingBox)
cfBoundingBox = Lens.field @"boundingBox"
{-# DEPRECATED cfBoundingBox "Use generic-lens or generic-optics with 'boundingBox' instead." #-}

-- | Level of confidence that what the bounding box contains is a face.
--
-- /Note:/ Consider using 'confidence' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfConfidence :: Lens.Lens' ComparedFace (Core.Maybe Core.Double)
cfConfidence = Lens.field @"confidence"
{-# DEPRECATED cfConfidence "Use generic-lens or generic-optics with 'confidence' instead." #-}

-- | An array of facial landmarks.
--
-- /Note:/ Consider using 'landmarks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfLandmarks :: Lens.Lens' ComparedFace (Core.Maybe [Types.Landmark])
cfLandmarks = Lens.field @"landmarks"
{-# DEPRECATED cfLandmarks "Use generic-lens or generic-optics with 'landmarks' instead." #-}

-- | Indicates the pose of the face as determined by its pitch, roll, and yaw.
--
-- /Note:/ Consider using 'pose' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfPose :: Lens.Lens' ComparedFace (Core.Maybe Types.Pose)
cfPose = Lens.field @"pose"
{-# DEPRECATED cfPose "Use generic-lens or generic-optics with 'pose' instead." #-}

-- | Identifies face image brightness and sharpness.
--
-- /Note:/ Consider using 'quality' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfQuality :: Lens.Lens' ComparedFace (Core.Maybe Types.ImageQuality)
cfQuality = Lens.field @"quality"
{-# DEPRECATED cfQuality "Use generic-lens or generic-optics with 'quality' instead." #-}

instance Core.FromJSON ComparedFace where
  parseJSON =
    Core.withObject "ComparedFace" Core.$
      \x ->
        ComparedFace'
          Core.<$> (x Core..:? "BoundingBox")
          Core.<*> (x Core..:? "Confidence")
          Core.<*> (x Core..:? "Landmarks")
          Core.<*> (x Core..:? "Pose")
          Core.<*> (x Core..:? "Quality")