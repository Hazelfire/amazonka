{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateSpotMarketOptionsRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateSpotMarketOptionsRequest
  ( LaunchTemplateSpotMarketOptionsRequest (..),

    -- * Smart constructor
    mkLaunchTemplateSpotMarketOptionsRequest,

    -- * Lenses
    ltsmorBlockDurationMinutes,
    ltsmorInstanceInterruptionBehavior,
    ltsmorMaxPrice,
    ltsmorSpotInstanceType,
    ltsmorValidUntil,
  )
where

import qualified Network.AWS.EC2.Types.InstanceInterruptionBehavior as Types
import qualified Network.AWS.EC2.Types.SpotInstanceType as Types
import qualified Network.AWS.EC2.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The options for Spot Instances.
--
-- /See:/ 'mkLaunchTemplateSpotMarketOptionsRequest' smart constructor.
data LaunchTemplateSpotMarketOptionsRequest = LaunchTemplateSpotMarketOptionsRequest'
  { -- | The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360).
    blockDurationMinutes :: Core.Maybe Core.Int,
    -- | The behavior when a Spot Instance is interrupted. The default is @terminate@ .
    instanceInterruptionBehavior :: Core.Maybe Types.InstanceInterruptionBehavior,
    -- | The maximum hourly price you're willing to pay for the Spot Instances.
    maxPrice :: Core.Maybe Types.String,
    -- | The Spot Instance request type.
    spotInstanceType :: Core.Maybe Types.SpotInstanceType,
    -- | The end date of the request. For a one-time request, the request remains active until all instances launch, the request is canceled, or this date is reached. If the request is persistent, it remains active until it is canceled or this date and time is reached. The default end date is 7 days from the current date.
    validUntil :: Core.Maybe Core.UTCTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'LaunchTemplateSpotMarketOptionsRequest' value with any optional fields omitted.
mkLaunchTemplateSpotMarketOptionsRequest ::
  LaunchTemplateSpotMarketOptionsRequest
mkLaunchTemplateSpotMarketOptionsRequest =
  LaunchTemplateSpotMarketOptionsRequest'
    { blockDurationMinutes =
        Core.Nothing,
      instanceInterruptionBehavior = Core.Nothing,
      maxPrice = Core.Nothing,
      spotInstanceType = Core.Nothing,
      validUntil = Core.Nothing
    }

-- | The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360).
--
-- /Note:/ Consider using 'blockDurationMinutes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltsmorBlockDurationMinutes :: Lens.Lens' LaunchTemplateSpotMarketOptionsRequest (Core.Maybe Core.Int)
ltsmorBlockDurationMinutes = Lens.field @"blockDurationMinutes"
{-# DEPRECATED ltsmorBlockDurationMinutes "Use generic-lens or generic-optics with 'blockDurationMinutes' instead." #-}

-- | The behavior when a Spot Instance is interrupted. The default is @terminate@ .
--
-- /Note:/ Consider using 'instanceInterruptionBehavior' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltsmorInstanceInterruptionBehavior :: Lens.Lens' LaunchTemplateSpotMarketOptionsRequest (Core.Maybe Types.InstanceInterruptionBehavior)
ltsmorInstanceInterruptionBehavior = Lens.field @"instanceInterruptionBehavior"
{-# DEPRECATED ltsmorInstanceInterruptionBehavior "Use generic-lens or generic-optics with 'instanceInterruptionBehavior' instead." #-}

-- | The maximum hourly price you're willing to pay for the Spot Instances.
--
-- /Note:/ Consider using 'maxPrice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltsmorMaxPrice :: Lens.Lens' LaunchTemplateSpotMarketOptionsRequest (Core.Maybe Types.String)
ltsmorMaxPrice = Lens.field @"maxPrice"
{-# DEPRECATED ltsmorMaxPrice "Use generic-lens or generic-optics with 'maxPrice' instead." #-}

-- | The Spot Instance request type.
--
-- /Note:/ Consider using 'spotInstanceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltsmorSpotInstanceType :: Lens.Lens' LaunchTemplateSpotMarketOptionsRequest (Core.Maybe Types.SpotInstanceType)
ltsmorSpotInstanceType = Lens.field @"spotInstanceType"
{-# DEPRECATED ltsmorSpotInstanceType "Use generic-lens or generic-optics with 'spotInstanceType' instead." #-}

-- | The end date of the request. For a one-time request, the request remains active until all instances launch, the request is canceled, or this date is reached. If the request is persistent, it remains active until it is canceled or this date and time is reached. The default end date is 7 days from the current date.
--
-- /Note:/ Consider using 'validUntil' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltsmorValidUntil :: Lens.Lens' LaunchTemplateSpotMarketOptionsRequest (Core.Maybe Core.UTCTime)
ltsmorValidUntil = Lens.field @"validUntil"
{-# DEPRECATED ltsmorValidUntil "Use generic-lens or generic-optics with 'validUntil' instead." #-}