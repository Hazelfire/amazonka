{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AssessmentRunNotification
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssessmentRunNotification
  ( AssessmentRunNotification (..),

    -- * Smart constructor
    mkAssessmentRunNotification,

    -- * Lenses
    arnDate,
    arnEvent,
    arnError,
    arnMessage,
    arnSnsPublishStatusCode,
    arnSnsTopicArn,
  )
where

import qualified Network.AWS.Inspector.Types.AssessmentRunNotificationSnsStatusCode as Types
import qualified Network.AWS.Inspector.Types.InspectorEvent as Types
import qualified Network.AWS.Inspector.Types.Message as Types
import qualified Network.AWS.Inspector.Types.SnsTopicArn as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Used as one of the elements of the 'AssessmentRun' data type.
--
-- /See:/ 'mkAssessmentRunNotification' smart constructor.
data AssessmentRunNotification = AssessmentRunNotification'
  { -- | The date of the notification.
    date :: Core.NominalDiffTime,
    -- | The event for which a notification is sent.
    event :: Types.InspectorEvent,
    -- | The Boolean value that specifies whether the notification represents an error.
    error :: Core.Bool,
    -- | The message included in the notification.
    message :: Core.Maybe Types.Message,
    -- | The status code of the SNS notification.
    snsPublishStatusCode :: Core.Maybe Types.AssessmentRunNotificationSnsStatusCode,
    -- | The SNS topic to which the SNS notification is sent.
    snsTopicArn :: Core.Maybe Types.SnsTopicArn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'AssessmentRunNotification' value with any optional fields omitted.
mkAssessmentRunNotification ::
  -- | 'date'
  Core.NominalDiffTime ->
  -- | 'event'
  Types.InspectorEvent ->
  -- | 'error'
  Core.Bool ->
  AssessmentRunNotification
mkAssessmentRunNotification date event error =
  AssessmentRunNotification'
    { date,
      event,
      error,
      message = Core.Nothing,
      snsPublishStatusCode = Core.Nothing,
      snsTopicArn = Core.Nothing
    }

-- | The date of the notification.
--
-- /Note:/ Consider using 'date' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
arnDate :: Lens.Lens' AssessmentRunNotification Core.NominalDiffTime
arnDate = Lens.field @"date"
{-# DEPRECATED arnDate "Use generic-lens or generic-optics with 'date' instead." #-}

-- | The event for which a notification is sent.
--
-- /Note:/ Consider using 'event' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
arnEvent :: Lens.Lens' AssessmentRunNotification Types.InspectorEvent
arnEvent = Lens.field @"event"
{-# DEPRECATED arnEvent "Use generic-lens or generic-optics with 'event' instead." #-}

-- | The Boolean value that specifies whether the notification represents an error.
--
-- /Note:/ Consider using 'error' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
arnError :: Lens.Lens' AssessmentRunNotification Core.Bool
arnError = Lens.field @"error"
{-# DEPRECATED arnError "Use generic-lens or generic-optics with 'error' instead." #-}

-- | The message included in the notification.
--
-- /Note:/ Consider using 'message' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
arnMessage :: Lens.Lens' AssessmentRunNotification (Core.Maybe Types.Message)
arnMessage = Lens.field @"message"
{-# DEPRECATED arnMessage "Use generic-lens or generic-optics with 'message' instead." #-}

-- | The status code of the SNS notification.
--
-- /Note:/ Consider using 'snsPublishStatusCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
arnSnsPublishStatusCode :: Lens.Lens' AssessmentRunNotification (Core.Maybe Types.AssessmentRunNotificationSnsStatusCode)
arnSnsPublishStatusCode = Lens.field @"snsPublishStatusCode"
{-# DEPRECATED arnSnsPublishStatusCode "Use generic-lens or generic-optics with 'snsPublishStatusCode' instead." #-}

-- | The SNS topic to which the SNS notification is sent.
--
-- /Note:/ Consider using 'snsTopicArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
arnSnsTopicArn :: Lens.Lens' AssessmentRunNotification (Core.Maybe Types.SnsTopicArn)
arnSnsTopicArn = Lens.field @"snsTopicArn"
{-# DEPRECATED arnSnsTopicArn "Use generic-lens or generic-optics with 'snsTopicArn' instead." #-}

instance Core.FromJSON AssessmentRunNotification where
  parseJSON =
    Core.withObject "AssessmentRunNotification" Core.$
      \x ->
        AssessmentRunNotification'
          Core.<$> (x Core..: "date")
          Core.<*> (x Core..: "event")
          Core.<*> (x Core..: "error")
          Core.<*> (x Core..:? "message")
          Core.<*> (x Core..:? "snsPublishStatusCode")
          Core.<*> (x Core..:? "snsTopicArn")