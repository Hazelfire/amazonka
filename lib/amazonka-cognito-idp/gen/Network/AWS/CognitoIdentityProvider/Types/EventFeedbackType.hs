{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.EventFeedbackType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.EventFeedbackType
  ( EventFeedbackType (..),

    -- * Smart constructor
    mkEventFeedbackType,

    -- * Lenses
    eftFeedbackValue,
    eftProvider,
    eftFeedbackDate,
  )
where

import qualified Network.AWS.CognitoIdentityProvider.Types.FeedbackValueType as Types
import qualified Network.AWS.CognitoIdentityProvider.Types.Provider as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Specifies the event feedback type.
--
-- /See:/ 'mkEventFeedbackType' smart constructor.
data EventFeedbackType = EventFeedbackType'
  { -- | The event feedback value.
    feedbackValue :: Types.FeedbackValueType,
    -- | The provider.
    provider :: Types.Provider,
    -- | The event feedback date.
    feedbackDate :: Core.Maybe Core.NominalDiffTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'EventFeedbackType' value with any optional fields omitted.
mkEventFeedbackType ::
  -- | 'feedbackValue'
  Types.FeedbackValueType ->
  -- | 'provider'
  Types.Provider ->
  EventFeedbackType
mkEventFeedbackType feedbackValue provider =
  EventFeedbackType'
    { feedbackValue,
      provider,
      feedbackDate = Core.Nothing
    }

-- | The event feedback value.
--
-- /Note:/ Consider using 'feedbackValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eftFeedbackValue :: Lens.Lens' EventFeedbackType Types.FeedbackValueType
eftFeedbackValue = Lens.field @"feedbackValue"
{-# DEPRECATED eftFeedbackValue "Use generic-lens or generic-optics with 'feedbackValue' instead." #-}

-- | The provider.
--
-- /Note:/ Consider using 'provider' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eftProvider :: Lens.Lens' EventFeedbackType Types.Provider
eftProvider = Lens.field @"provider"
{-# DEPRECATED eftProvider "Use generic-lens or generic-optics with 'provider' instead." #-}

-- | The event feedback date.
--
-- /Note:/ Consider using 'feedbackDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eftFeedbackDate :: Lens.Lens' EventFeedbackType (Core.Maybe Core.NominalDiffTime)
eftFeedbackDate = Lens.field @"feedbackDate"
{-# DEPRECATED eftFeedbackDate "Use generic-lens or generic-optics with 'feedbackDate' instead." #-}

instance Core.FromJSON EventFeedbackType where
  parseJSON =
    Core.withObject "EventFeedbackType" Core.$
      \x ->
        EventFeedbackType'
          Core.<$> (x Core..: "FeedbackValue")
          Core.<*> (x Core..: "Provider")
          Core.<*> (x Core..:? "FeedbackDate")