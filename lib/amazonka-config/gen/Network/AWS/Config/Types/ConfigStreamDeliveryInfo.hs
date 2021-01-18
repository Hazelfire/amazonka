{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConfigStreamDeliveryInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigStreamDeliveryInfo
  ( ConfigStreamDeliveryInfo (..),

    -- * Smart constructor
    mkConfigStreamDeliveryInfo,

    -- * Lenses
    csdiLastErrorCode,
    csdiLastErrorMessage,
    csdiLastStatus,
    csdiLastStatusChangeTime,
  )
where

import qualified Network.AWS.Config.Types.DeliveryStatus as Types
import qualified Network.AWS.Config.Types.LastErrorCode as Types
import qualified Network.AWS.Config.Types.LastErrorMessage as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.
--
-- /See:/ 'mkConfigStreamDeliveryInfo' smart constructor.
data ConfigStreamDeliveryInfo = ConfigStreamDeliveryInfo'
  { -- | The error code from the last attempted delivery.
    lastErrorCode :: Core.Maybe Types.LastErrorCode,
    -- | The error message from the last attempted delivery.
    lastErrorMessage :: Core.Maybe Types.LastErrorMessage,
    -- | Status of the last attempted delivery.
    --
    -- __Note__ Providing an SNS topic on a <https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html DeliveryChannel> for AWS Config is optional. If the SNS delivery is turned off, the last status will be __Not_Applicable__ .
    lastStatus :: Core.Maybe Types.DeliveryStatus,
    -- | The time from the last status change.
    lastStatusChangeTime :: Core.Maybe Core.NominalDiffTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ConfigStreamDeliveryInfo' value with any optional fields omitted.
mkConfigStreamDeliveryInfo ::
  ConfigStreamDeliveryInfo
mkConfigStreamDeliveryInfo =
  ConfigStreamDeliveryInfo'
    { lastErrorCode = Core.Nothing,
      lastErrorMessage = Core.Nothing,
      lastStatus = Core.Nothing,
      lastStatusChangeTime = Core.Nothing
    }

-- | The error code from the last attempted delivery.
--
-- /Note:/ Consider using 'lastErrorCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csdiLastErrorCode :: Lens.Lens' ConfigStreamDeliveryInfo (Core.Maybe Types.LastErrorCode)
csdiLastErrorCode = Lens.field @"lastErrorCode"
{-# DEPRECATED csdiLastErrorCode "Use generic-lens or generic-optics with 'lastErrorCode' instead." #-}

-- | The error message from the last attempted delivery.
--
-- /Note:/ Consider using 'lastErrorMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csdiLastErrorMessage :: Lens.Lens' ConfigStreamDeliveryInfo (Core.Maybe Types.LastErrorMessage)
csdiLastErrorMessage = Lens.field @"lastErrorMessage"
{-# DEPRECATED csdiLastErrorMessage "Use generic-lens or generic-optics with 'lastErrorMessage' instead." #-}

-- | Status of the last attempted delivery.
--
-- __Note__ Providing an SNS topic on a <https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html DeliveryChannel> for AWS Config is optional. If the SNS delivery is turned off, the last status will be __Not_Applicable__ .
--
-- /Note:/ Consider using 'lastStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csdiLastStatus :: Lens.Lens' ConfigStreamDeliveryInfo (Core.Maybe Types.DeliveryStatus)
csdiLastStatus = Lens.field @"lastStatus"
{-# DEPRECATED csdiLastStatus "Use generic-lens or generic-optics with 'lastStatus' instead." #-}

-- | The time from the last status change.
--
-- /Note:/ Consider using 'lastStatusChangeTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csdiLastStatusChangeTime :: Lens.Lens' ConfigStreamDeliveryInfo (Core.Maybe Core.NominalDiffTime)
csdiLastStatusChangeTime = Lens.field @"lastStatusChangeTime"
{-# DEPRECATED csdiLastStatusChangeTime "Use generic-lens or generic-optics with 'lastStatusChangeTime' instead." #-}

instance Core.FromJSON ConfigStreamDeliveryInfo where
  parseJSON =
    Core.withObject "ConfigStreamDeliveryInfo" Core.$
      \x ->
        ConfigStreamDeliveryInfo'
          Core.<$> (x Core..:? "lastErrorCode")
          Core.<*> (x Core..:? "lastErrorMessage")
          Core.<*> (x Core..:? "lastStatus")
          Core.<*> (x Core..:? "lastStatusChangeTime")