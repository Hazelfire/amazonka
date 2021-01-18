{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.MultiplexProgramSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MultiplexProgramSettings
  ( MultiplexProgramSettings (..),

    -- * Smart constructor
    mkMultiplexProgramSettings,

    -- * Lenses
    mpsProgramNumber,
    mpsPreferredChannelPipeline,
    mpsServiceDescriptor,
    mpsVideoSettings,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaLive.Types.MultiplexProgramServiceDescriptor as Types
import qualified Network.AWS.MediaLive.Types.MultiplexVideoSettings as Types
import qualified Network.AWS.MediaLive.Types.PreferredChannelPipeline as Types
import qualified Network.AWS.Prelude as Core

-- | Multiplex Program settings configuration.
--
-- /See:/ 'mkMultiplexProgramSettings' smart constructor.
data MultiplexProgramSettings = MultiplexProgramSettings'
  { -- | Unique program number.
    programNumber :: Core.Natural,
    -- | Indicates which pipeline is preferred by the multiplex for program ingest.
    preferredChannelPipeline :: Core.Maybe Types.PreferredChannelPipeline,
    -- | Transport stream service descriptor configuration for the Multiplex program.
    serviceDescriptor :: Core.Maybe Types.MultiplexProgramServiceDescriptor,
    -- | Program video settings configuration.
    videoSettings :: Core.Maybe Types.MultiplexVideoSettings
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'MultiplexProgramSettings' value with any optional fields omitted.
mkMultiplexProgramSettings ::
  -- | 'programNumber'
  Core.Natural ->
  MultiplexProgramSettings
mkMultiplexProgramSettings programNumber =
  MultiplexProgramSettings'
    { programNumber,
      preferredChannelPipeline = Core.Nothing,
      serviceDescriptor = Core.Nothing,
      videoSettings = Core.Nothing
    }

-- | Unique program number.
--
-- /Note:/ Consider using 'programNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mpsProgramNumber :: Lens.Lens' MultiplexProgramSettings Core.Natural
mpsProgramNumber = Lens.field @"programNumber"
{-# DEPRECATED mpsProgramNumber "Use generic-lens or generic-optics with 'programNumber' instead." #-}

-- | Indicates which pipeline is preferred by the multiplex for program ingest.
--
-- /Note:/ Consider using 'preferredChannelPipeline' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mpsPreferredChannelPipeline :: Lens.Lens' MultiplexProgramSettings (Core.Maybe Types.PreferredChannelPipeline)
mpsPreferredChannelPipeline = Lens.field @"preferredChannelPipeline"
{-# DEPRECATED mpsPreferredChannelPipeline "Use generic-lens or generic-optics with 'preferredChannelPipeline' instead." #-}

-- | Transport stream service descriptor configuration for the Multiplex program.
--
-- /Note:/ Consider using 'serviceDescriptor' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mpsServiceDescriptor :: Lens.Lens' MultiplexProgramSettings (Core.Maybe Types.MultiplexProgramServiceDescriptor)
mpsServiceDescriptor = Lens.field @"serviceDescriptor"
{-# DEPRECATED mpsServiceDescriptor "Use generic-lens or generic-optics with 'serviceDescriptor' instead." #-}

-- | Program video settings configuration.
--
-- /Note:/ Consider using 'videoSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mpsVideoSettings :: Lens.Lens' MultiplexProgramSettings (Core.Maybe Types.MultiplexVideoSettings)
mpsVideoSettings = Lens.field @"videoSettings"
{-# DEPRECATED mpsVideoSettings "Use generic-lens or generic-optics with 'videoSettings' instead." #-}

instance Core.FromJSON MultiplexProgramSettings where
  toJSON MultiplexProgramSettings {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("programNumber" Core..= programNumber),
            ("preferredChannelPipeline" Core..=)
              Core.<$> preferredChannelPipeline,
            ("serviceDescriptor" Core..=) Core.<$> serviceDescriptor,
            ("videoSettings" Core..=) Core.<$> videoSettings
          ]
      )

instance Core.FromJSON MultiplexProgramSettings where
  parseJSON =
    Core.withObject "MultiplexProgramSettings" Core.$
      \x ->
        MultiplexProgramSettings'
          Core.<$> (x Core..: "programNumber")
          Core.<*> (x Core..:? "preferredChannelPipeline")
          Core.<*> (x Core..:? "serviceDescriptor")
          Core.<*> (x Core..:? "videoSettings")