{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.AnomalySubscription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.AnomalySubscription
  ( AnomalySubscription (..),

    -- * Smart constructor
    mkAnomalySubscription,

    -- * Lenses
    asMonitorArnList,
    asSubscribers,
    asThreshold,
    asFrequency,
    asSubscriptionName,
    asAccountId,
    asSubscriptionArn,
  )
where

import qualified Network.AWS.CostExplorer.Types.AnomalySubscriptionFrequency as Types
import qualified Network.AWS.CostExplorer.Types.GenericString as Types
import qualified Network.AWS.CostExplorer.Types.Subscriber as Types
import qualified Network.AWS.CostExplorer.Types.Value as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The association between a monitor, threshold, and list of subscribers used to deliver notifications about anomalies detected by a monitor that exceeds a threshold. The content consists of the detailed metadata and the current status of the @AnomalySubscription@ object.
--
-- /See:/ 'mkAnomalySubscription' smart constructor.
data AnomalySubscription = AnomalySubscription'
  { -- | A list of cost anomaly monitors.
    monitorArnList :: [Types.Value],
    -- | A list of subscribers to notify.
    subscribers :: [Types.Subscriber],
    -- | The dollar value that triggers a notification if the threshold is exceeded.
    threshold :: Core.Double,
    -- | The frequency at which anomaly reports are sent over email.
    frequency :: Types.AnomalySubscriptionFrequency,
    -- | The name for the subscription.
    subscriptionName :: Types.GenericString,
    -- | Your unique account identifier.
    accountId :: Core.Maybe Types.GenericString,
    -- | The @AnomalySubscription@ Amazon Resource Name (ARN).
    subscriptionArn :: Core.Maybe Types.GenericString
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AnomalySubscription' value with any optional fields omitted.
mkAnomalySubscription ::
  -- | 'threshold'
  Core.Double ->
  -- | 'frequency'
  Types.AnomalySubscriptionFrequency ->
  -- | 'subscriptionName'
  Types.GenericString ->
  AnomalySubscription
mkAnomalySubscription threshold frequency subscriptionName =
  AnomalySubscription'
    { monitorArnList = Core.mempty,
      subscribers = Core.mempty,
      threshold,
      frequency,
      subscriptionName,
      accountId = Core.Nothing,
      subscriptionArn = Core.Nothing
    }

-- | A list of cost anomaly monitors.
--
-- /Note:/ Consider using 'monitorArnList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asMonitorArnList :: Lens.Lens' AnomalySubscription [Types.Value]
asMonitorArnList = Lens.field @"monitorArnList"
{-# DEPRECATED asMonitorArnList "Use generic-lens or generic-optics with 'monitorArnList' instead." #-}

-- | A list of subscribers to notify.
--
-- /Note:/ Consider using 'subscribers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asSubscribers :: Lens.Lens' AnomalySubscription [Types.Subscriber]
asSubscribers = Lens.field @"subscribers"
{-# DEPRECATED asSubscribers "Use generic-lens or generic-optics with 'subscribers' instead." #-}

-- | The dollar value that triggers a notification if the threshold is exceeded.
--
-- /Note:/ Consider using 'threshold' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asThreshold :: Lens.Lens' AnomalySubscription Core.Double
asThreshold = Lens.field @"threshold"
{-# DEPRECATED asThreshold "Use generic-lens or generic-optics with 'threshold' instead." #-}

-- | The frequency at which anomaly reports are sent over email.
--
-- /Note:/ Consider using 'frequency' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asFrequency :: Lens.Lens' AnomalySubscription Types.AnomalySubscriptionFrequency
asFrequency = Lens.field @"frequency"
{-# DEPRECATED asFrequency "Use generic-lens or generic-optics with 'frequency' instead." #-}

-- | The name for the subscription.
--
-- /Note:/ Consider using 'subscriptionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asSubscriptionName :: Lens.Lens' AnomalySubscription Types.GenericString
asSubscriptionName = Lens.field @"subscriptionName"
{-# DEPRECATED asSubscriptionName "Use generic-lens or generic-optics with 'subscriptionName' instead." #-}

-- | Your unique account identifier.
--
-- /Note:/ Consider using 'accountId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asAccountId :: Lens.Lens' AnomalySubscription (Core.Maybe Types.GenericString)
asAccountId = Lens.field @"accountId"
{-# DEPRECATED asAccountId "Use generic-lens or generic-optics with 'accountId' instead." #-}

-- | The @AnomalySubscription@ Amazon Resource Name (ARN).
--
-- /Note:/ Consider using 'subscriptionArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asSubscriptionArn :: Lens.Lens' AnomalySubscription (Core.Maybe Types.GenericString)
asSubscriptionArn = Lens.field @"subscriptionArn"
{-# DEPRECATED asSubscriptionArn "Use generic-lens or generic-optics with 'subscriptionArn' instead." #-}

instance Core.FromJSON AnomalySubscription where
  toJSON AnomalySubscription {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("MonitorArnList" Core..= monitorArnList),
            Core.Just ("Subscribers" Core..= subscribers),
            Core.Just ("Threshold" Core..= threshold),
            Core.Just ("Frequency" Core..= frequency),
            Core.Just ("SubscriptionName" Core..= subscriptionName),
            ("AccountId" Core..=) Core.<$> accountId,
            ("SubscriptionArn" Core..=) Core.<$> subscriptionArn
          ]
      )

instance Core.FromJSON AnomalySubscription where
  parseJSON =
    Core.withObject "AnomalySubscription" Core.$
      \x ->
        AnomalySubscription'
          Core.<$> (x Core..:? "MonitorArnList" Core..!= Core.mempty)
          Core.<*> (x Core..:? "Subscribers" Core..!= Core.mempty)
          Core.<*> (x Core..: "Threshold")
          Core.<*> (x Core..: "Frequency")
          Core.<*> (x Core..: "SubscriptionName")
          Core.<*> (x Core..:? "AccountId")
          Core.<*> (x Core..:? "SubscriptionArn")