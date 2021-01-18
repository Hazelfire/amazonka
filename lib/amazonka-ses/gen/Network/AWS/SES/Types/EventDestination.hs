{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.EventDestination
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.EventDestination
  ( EventDestination (..),

    -- * Smart constructor
    mkEventDestination,

    -- * Lenses
    edName,
    edMatchingEventTypes,
    edCloudWatchDestination,
    edEnabled,
    edKinesisFirehoseDestination,
    edSNSDestination,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SES.Types.CloudWatchDestination as Types
import qualified Network.AWS.SES.Types.EventType as Types
import qualified Network.AWS.SES.Types.KinesisFirehoseDestination as Types
import qualified Network.AWS.SES.Types.Name as Types
import qualified Network.AWS.SES.Types.SNSDestination as Types

-- | Contains information about the event destination that the specified email sending events will be published to.
--
-- Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkEventDestination' smart constructor.
data EventDestination = EventDestination'
  { -- | The name of the event destination. The name must:
    --
    --
    --     * This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).
    --
    --
    --     * Contain less than 64 characters.
    name :: Types.Name,
    -- | The type of email sending events to publish to the event destination.
    matchingEventTypes :: [Types.EventType],
    -- | An object that contains the names, default values, and sources of the dimensions associated with an Amazon CloudWatch event destination.
    cloudWatchDestination :: Core.Maybe Types.CloudWatchDestination,
    -- | Sets whether Amazon SES publishes events to this destination when you send an email with the associated configuration set. Set to @true@ to enable publishing to this destination; set to @false@ to prevent publishing to this destination. The default value is @false@ .
    enabled :: Core.Maybe Core.Bool,
    -- | An object that contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.
    kinesisFirehoseDestination :: Core.Maybe Types.KinesisFirehoseDestination,
    -- | An object that contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event destination.
    sNSDestination :: Core.Maybe Types.SNSDestination
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'EventDestination' value with any optional fields omitted.
mkEventDestination ::
  -- | 'name'
  Types.Name ->
  EventDestination
mkEventDestination name =
  EventDestination'
    { name,
      matchingEventTypes = Core.mempty,
      cloudWatchDestination = Core.Nothing,
      enabled = Core.Nothing,
      kinesisFirehoseDestination = Core.Nothing,
      sNSDestination = Core.Nothing
    }

-- | The name of the event destination. The name must:
--
--
--     * This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).
--
--
--     * Contain less than 64 characters.
--
--
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edName :: Lens.Lens' EventDestination Types.Name
edName = Lens.field @"name"
{-# DEPRECATED edName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The type of email sending events to publish to the event destination.
--
-- /Note:/ Consider using 'matchingEventTypes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edMatchingEventTypes :: Lens.Lens' EventDestination [Types.EventType]
edMatchingEventTypes = Lens.field @"matchingEventTypes"
{-# DEPRECATED edMatchingEventTypes "Use generic-lens or generic-optics with 'matchingEventTypes' instead." #-}

-- | An object that contains the names, default values, and sources of the dimensions associated with an Amazon CloudWatch event destination.
--
-- /Note:/ Consider using 'cloudWatchDestination' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edCloudWatchDestination :: Lens.Lens' EventDestination (Core.Maybe Types.CloudWatchDestination)
edCloudWatchDestination = Lens.field @"cloudWatchDestination"
{-# DEPRECATED edCloudWatchDestination "Use generic-lens or generic-optics with 'cloudWatchDestination' instead." #-}

-- | Sets whether Amazon SES publishes events to this destination when you send an email with the associated configuration set. Set to @true@ to enable publishing to this destination; set to @false@ to prevent publishing to this destination. The default value is @false@ .
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edEnabled :: Lens.Lens' EventDestination (Core.Maybe Core.Bool)
edEnabled = Lens.field @"enabled"
{-# DEPRECATED edEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

-- | An object that contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.
--
-- /Note:/ Consider using 'kinesisFirehoseDestination' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edKinesisFirehoseDestination :: Lens.Lens' EventDestination (Core.Maybe Types.KinesisFirehoseDestination)
edKinesisFirehoseDestination = Lens.field @"kinesisFirehoseDestination"
{-# DEPRECATED edKinesisFirehoseDestination "Use generic-lens or generic-optics with 'kinesisFirehoseDestination' instead." #-}

-- | An object that contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event destination.
--
-- /Note:/ Consider using 'sNSDestination' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edSNSDestination :: Lens.Lens' EventDestination (Core.Maybe Types.SNSDestination)
edSNSDestination = Lens.field @"sNSDestination"
{-# DEPRECATED edSNSDestination "Use generic-lens or generic-optics with 'sNSDestination' instead." #-}

instance Core.FromXML EventDestination where
  parseXML x =
    EventDestination'
      Core.<$> (x Core..@ "Name")
      Core.<*> ( x Core..@? "MatchingEventTypes" Core..@! Core.mempty
                   Core..<@> Core.parseXMLList "member"
               )
      Core.<*> (x Core..@? "CloudWatchDestination")
      Core.<*> (x Core..@? "Enabled")
      Core.<*> (x Core..@? "KinesisFirehoseDestination")
      Core.<*> (x Core..@? "SNSDestination")