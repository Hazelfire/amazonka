{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.Subscription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.Subscription
  ( Subscription (..),

    -- * Smart constructor
    mkSubscription,

    -- * Lenses
    sResourceArn,
    sTopicArn,
    sEventSubscriptions,
  )
where

import qualified Network.AWS.Inspector.Types.Arn as Types
import qualified Network.AWS.Inspector.Types.EventSubscription as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | This data type is used as a response element in the 'ListEventSubscriptions' action.
--
-- /See:/ 'mkSubscription' smart constructor.
data Subscription = Subscription'
  { -- | The ARN of the assessment template that is used during the event for which the SNS notification is sent.
    resourceArn :: Types.Arn,
    -- | The ARN of the Amazon Simple Notification Service (SNS) topic to which the SNS notifications are sent.
    topicArn :: Types.Arn,
    -- | The list of existing event subscriptions.
    eventSubscriptions :: Core.NonEmpty Types.EventSubscription
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'Subscription' value with any optional fields omitted.
mkSubscription ::
  -- | 'resourceArn'
  Types.Arn ->
  -- | 'topicArn'
  Types.Arn ->
  -- | 'eventSubscriptions'
  Core.NonEmpty Types.EventSubscription ->
  Subscription
mkSubscription resourceArn topicArn eventSubscriptions =
  Subscription' {resourceArn, topicArn, eventSubscriptions}

-- | The ARN of the assessment template that is used during the event for which the SNS notification is sent.
--
-- /Note:/ Consider using 'resourceArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sResourceArn :: Lens.Lens' Subscription Types.Arn
sResourceArn = Lens.field @"resourceArn"
{-# DEPRECATED sResourceArn "Use generic-lens or generic-optics with 'resourceArn' instead." #-}

-- | The ARN of the Amazon Simple Notification Service (SNS) topic to which the SNS notifications are sent.
--
-- /Note:/ Consider using 'topicArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sTopicArn :: Lens.Lens' Subscription Types.Arn
sTopicArn = Lens.field @"topicArn"
{-# DEPRECATED sTopicArn "Use generic-lens or generic-optics with 'topicArn' instead." #-}

-- | The list of existing event subscriptions.
--
-- /Note:/ Consider using 'eventSubscriptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sEventSubscriptions :: Lens.Lens' Subscription (Core.NonEmpty Types.EventSubscription)
sEventSubscriptions = Lens.field @"eventSubscriptions"
{-# DEPRECATED sEventSubscriptions "Use generic-lens or generic-optics with 'eventSubscriptions' instead." #-}

instance Core.FromJSON Subscription where
  parseJSON =
    Core.withObject "Subscription" Core.$
      \x ->
        Subscription'
          Core.<$> (x Core..: "resourceArn")
          Core.<*> (x Core..: "topicArn")
          Core.<*> (x Core..: "eventSubscriptions")