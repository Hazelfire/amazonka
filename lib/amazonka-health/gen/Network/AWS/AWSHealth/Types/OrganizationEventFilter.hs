{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.OrganizationEventFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.OrganizationEventFilter
  ( OrganizationEventFilter (..),

    -- * Smart constructor
    mkOrganizationEventFilter,

    -- * Lenses
    oefAwsAccountIds,
    oefEndTime,
    oefEntityArns,
    oefEntityValues,
    oefEventStatusCodes,
    oefEventTypeCategories,
    oefEventTypeCodes,
    oefLastUpdatedTime,
    oefRegions,
    oefServices,
    oefStartTime,
  )
where

import qualified Network.AWS.AWSHealth.Types.AccountId as Types
import qualified Network.AWS.AWSHealth.Types.DateTimeRange as Types
import qualified Network.AWS.AWSHealth.Types.EntityArn as Types
import qualified Network.AWS.AWSHealth.Types.EntityValue as Types
import qualified Network.AWS.AWSHealth.Types.EventStatusCode as Types
import qualified Network.AWS.AWSHealth.Types.EventType as Types
import qualified Network.AWS.AWSHealth.Types.EventTypeCategory as Types
import qualified Network.AWS.AWSHealth.Types.Region as Types
import qualified Network.AWS.AWSHealth.Types.Service as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The values to filter results from the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html DescribeEventsForOrganization> operation.
--
-- /See:/ 'mkOrganizationEventFilter' smart constructor.
data OrganizationEventFilter = OrganizationEventFilter'
  { -- | A list of 12-digit AWS account numbers that contains the affected entities.
    awsAccountIds :: Core.Maybe (Core.NonEmpty Types.AccountId),
    endTime :: Core.Maybe Types.DateTimeRange,
    -- | A list of entity ARNs (unique identifiers).
    entityArns :: Core.Maybe (Core.NonEmpty Types.EntityArn),
    -- | A list of entity identifiers, such as EC2 instance IDs (i-34ab692e) or EBS volumes (vol-426ab23e).
    entityValues :: Core.Maybe (Core.NonEmpty Types.EntityValue),
    -- | A list of event status codes.
    eventStatusCodes :: Core.Maybe (Core.NonEmpty Types.EventStatusCode),
    -- | A list of event type category codes (issue, scheduledChange, or accountNotification).
    eventTypeCategories :: Core.Maybe (Core.NonEmpty Types.EventTypeCategory),
    -- | A list of unique identifiers for event types. For example, @"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".@
    eventTypeCodes :: Core.Maybe (Core.NonEmpty Types.EventType),
    lastUpdatedTime :: Core.Maybe Types.DateTimeRange,
    -- | A list of AWS Regions.
    regions :: Core.Maybe (Core.NonEmpty Types.Region),
    -- | The AWS services associated with the event. For example, @EC2@ , @RDS@ .
    services :: Core.Maybe (Core.NonEmpty Types.Service),
    startTime :: Core.Maybe Types.DateTimeRange
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'OrganizationEventFilter' value with any optional fields omitted.
mkOrganizationEventFilter ::
  OrganizationEventFilter
mkOrganizationEventFilter =
  OrganizationEventFilter'
    { awsAccountIds = Core.Nothing,
      endTime = Core.Nothing,
      entityArns = Core.Nothing,
      entityValues = Core.Nothing,
      eventStatusCodes = Core.Nothing,
      eventTypeCategories = Core.Nothing,
      eventTypeCodes = Core.Nothing,
      lastUpdatedTime = Core.Nothing,
      regions = Core.Nothing,
      services = Core.Nothing,
      startTime = Core.Nothing
    }

-- | A list of 12-digit AWS account numbers that contains the affected entities.
--
-- /Note:/ Consider using 'awsAccountIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefAwsAccountIds :: Lens.Lens' OrganizationEventFilter (Core.Maybe (Core.NonEmpty Types.AccountId))
oefAwsAccountIds = Lens.field @"awsAccountIds"
{-# DEPRECATED oefAwsAccountIds "Use generic-lens or generic-optics with 'awsAccountIds' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefEndTime :: Lens.Lens' OrganizationEventFilter (Core.Maybe Types.DateTimeRange)
oefEndTime = Lens.field @"endTime"
{-# DEPRECATED oefEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | A list of entity ARNs (unique identifiers).
--
-- /Note:/ Consider using 'entityArns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefEntityArns :: Lens.Lens' OrganizationEventFilter (Core.Maybe (Core.NonEmpty Types.EntityArn))
oefEntityArns = Lens.field @"entityArns"
{-# DEPRECATED oefEntityArns "Use generic-lens or generic-optics with 'entityArns' instead." #-}

-- | A list of entity identifiers, such as EC2 instance IDs (i-34ab692e) or EBS volumes (vol-426ab23e).
--
-- /Note:/ Consider using 'entityValues' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefEntityValues :: Lens.Lens' OrganizationEventFilter (Core.Maybe (Core.NonEmpty Types.EntityValue))
oefEntityValues = Lens.field @"entityValues"
{-# DEPRECATED oefEntityValues "Use generic-lens or generic-optics with 'entityValues' instead." #-}

-- | A list of event status codes.
--
-- /Note:/ Consider using 'eventStatusCodes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefEventStatusCodes :: Lens.Lens' OrganizationEventFilter (Core.Maybe (Core.NonEmpty Types.EventStatusCode))
oefEventStatusCodes = Lens.field @"eventStatusCodes"
{-# DEPRECATED oefEventStatusCodes "Use generic-lens or generic-optics with 'eventStatusCodes' instead." #-}

-- | A list of event type category codes (issue, scheduledChange, or accountNotification).
--
-- /Note:/ Consider using 'eventTypeCategories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefEventTypeCategories :: Lens.Lens' OrganizationEventFilter (Core.Maybe (Core.NonEmpty Types.EventTypeCategory))
oefEventTypeCategories = Lens.field @"eventTypeCategories"
{-# DEPRECATED oefEventTypeCategories "Use generic-lens or generic-optics with 'eventTypeCategories' instead." #-}

-- | A list of unique identifiers for event types. For example, @"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".@
--
-- /Note:/ Consider using 'eventTypeCodes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefEventTypeCodes :: Lens.Lens' OrganizationEventFilter (Core.Maybe (Core.NonEmpty Types.EventType))
oefEventTypeCodes = Lens.field @"eventTypeCodes"
{-# DEPRECATED oefEventTypeCodes "Use generic-lens or generic-optics with 'eventTypeCodes' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'lastUpdatedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefLastUpdatedTime :: Lens.Lens' OrganizationEventFilter (Core.Maybe Types.DateTimeRange)
oefLastUpdatedTime = Lens.field @"lastUpdatedTime"
{-# DEPRECATED oefLastUpdatedTime "Use generic-lens or generic-optics with 'lastUpdatedTime' instead." #-}

-- | A list of AWS Regions.
--
-- /Note:/ Consider using 'regions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefRegions :: Lens.Lens' OrganizationEventFilter (Core.Maybe (Core.NonEmpty Types.Region))
oefRegions = Lens.field @"regions"
{-# DEPRECATED oefRegions "Use generic-lens or generic-optics with 'regions' instead." #-}

-- | The AWS services associated with the event. For example, @EC2@ , @RDS@ .
--
-- /Note:/ Consider using 'services' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefServices :: Lens.Lens' OrganizationEventFilter (Core.Maybe (Core.NonEmpty Types.Service))
oefServices = Lens.field @"services"
{-# DEPRECATED oefServices "Use generic-lens or generic-optics with 'services' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oefStartTime :: Lens.Lens' OrganizationEventFilter (Core.Maybe Types.DateTimeRange)
oefStartTime = Lens.field @"startTime"
{-# DEPRECATED oefStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

instance Core.FromJSON OrganizationEventFilter where
  toJSON OrganizationEventFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("awsAccountIds" Core..=) Core.<$> awsAccountIds,
            ("endTime" Core..=) Core.<$> endTime,
            ("entityArns" Core..=) Core.<$> entityArns,
            ("entityValues" Core..=) Core.<$> entityValues,
            ("eventStatusCodes" Core..=) Core.<$> eventStatusCodes,
            ("eventTypeCategories" Core..=) Core.<$> eventTypeCategories,
            ("eventTypeCodes" Core..=) Core.<$> eventTypeCodes,
            ("lastUpdatedTime" Core..=) Core.<$> lastUpdatedTime,
            ("regions" Core..=) Core.<$> regions,
            ("services" Core..=) Core.<$> services,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )