{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.GetTrailStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.
module Network.AWS.CloudTrail.GetTrailStatus
  ( -- * Creating a request
    GetTrailStatus (..),
    mkGetTrailStatus,

    -- ** Request lenses
    gtsName,

    -- * Destructuring the response
    GetTrailStatusResponse (..),
    mkGetTrailStatusResponse,

    -- ** Response lenses
    gtsrrsIsLogging,
    gtsrrsLatestCloudWatchLogsDeliveryError,
    gtsrrsLatestCloudWatchLogsDeliveryTime,
    gtsrrsLatestDeliveryAttemptSucceeded,
    gtsrrsLatestDeliveryAttemptTime,
    gtsrrsLatestDeliveryError,
    gtsrrsLatestDeliveryTime,
    gtsrrsLatestDigestDeliveryError,
    gtsrrsLatestDigestDeliveryTime,
    gtsrrsLatestNotificationAttemptSucceeded,
    gtsrrsLatestNotificationAttemptTime,
    gtsrrsLatestNotificationError,
    gtsrrsLatestNotificationTime,
    gtsrrsStartLoggingTime,
    gtsrrsStopLoggingTime,
    gtsrrsTimeLoggingStarted,
    gtsrrsTimeLoggingStopped,
    gtsrrsResponseStatus,
  )
where

import qualified Network.AWS.CloudTrail.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The name of a trail about which you want the current status.
--
-- /See:/ 'mkGetTrailStatus' smart constructor.
newtype GetTrailStatus = GetTrailStatus'
  { -- | Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is:
    --
    -- @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
    name :: Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetTrailStatus' value with any optional fields omitted.
mkGetTrailStatus ::
  -- | 'name'
  Types.String ->
  GetTrailStatus
mkGetTrailStatus name = GetTrailStatus' {name}

-- | Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is:
--
-- @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsName :: Lens.Lens' GetTrailStatus Types.String
gtsName = Lens.field @"name"
{-# DEPRECATED gtsName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Core.FromJSON GetTrailStatus where
  toJSON GetTrailStatus {..} =
    Core.object (Core.catMaybes [Core.Just ("Name" Core..= name)])

instance Core.AWSRequest GetTrailStatus where
  type Rs GetTrailStatus = GetTrailStatusResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetTrailStatus"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetTrailStatusResponse'
            Core.<$> (x Core..:? "IsLogging")
            Core.<*> (x Core..:? "LatestCloudWatchLogsDeliveryError")
            Core.<*> (x Core..:? "LatestCloudWatchLogsDeliveryTime")
            Core.<*> (x Core..:? "LatestDeliveryAttemptSucceeded")
            Core.<*> (x Core..:? "LatestDeliveryAttemptTime")
            Core.<*> (x Core..:? "LatestDeliveryError")
            Core.<*> (x Core..:? "LatestDeliveryTime")
            Core.<*> (x Core..:? "LatestDigestDeliveryError")
            Core.<*> (x Core..:? "LatestDigestDeliveryTime")
            Core.<*> (x Core..:? "LatestNotificationAttemptSucceeded")
            Core.<*> (x Core..:? "LatestNotificationAttemptTime")
            Core.<*> (x Core..:? "LatestNotificationError")
            Core.<*> (x Core..:? "LatestNotificationTime")
            Core.<*> (x Core..:? "StartLoggingTime")
            Core.<*> (x Core..:? "StopLoggingTime")
            Core.<*> (x Core..:? "TimeLoggingStarted")
            Core.<*> (x Core..:? "TimeLoggingStopped")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Returns the objects or data listed below if successful. Otherwise, returns an error.
--
-- /See:/ 'mkGetTrailStatusResponse' smart constructor.
data GetTrailStatusResponse = GetTrailStatusResponse'
  { -- | Whether the CloudTrail is currently logging AWS API calls.
    isLogging :: Core.Maybe Core.Bool,
    -- | Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.
    latestCloudWatchLogsDeliveryError :: Core.Maybe Types.String,
    -- | Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.
    latestCloudWatchLogsDeliveryTime :: Core.Maybe Core.NominalDiffTime,
    -- | This field is no longer in use.
    latestDeliveryAttemptSucceeded :: Core.Maybe Types.String,
    -- | This field is no longer in use.
    latestDeliveryAttemptTime :: Core.Maybe Types.String,
    -- | Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files to the designated bucket. For more information see the topic <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses> in the Amazon S3 API Reference.
    latestDeliveryError :: Core.Maybe Types.String,
    -- | Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.
    latestDeliveryTime :: Core.Maybe Core.NominalDiffTime,
    -- | Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest file to the designated bucket. For more information see the topic <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses> in the Amazon S3 API Reference.
    latestDigestDeliveryError :: Core.Maybe Types.String,
    -- | Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.
    latestDigestDeliveryTime :: Core.Maybe Core.NominalDiffTime,
    -- | This field is no longer in use.
    latestNotificationAttemptSucceeded :: Core.Maybe Types.String,
    -- | This field is no longer in use.
    latestNotificationAttemptTime :: Core.Maybe Types.String,
    -- | Displays any Amazon SNS error that CloudTrail encountered when attempting to send a notification. For more information about Amazon SNS errors, see the <https://docs.aws.amazon.com/sns/latest/dg/welcome.html Amazon SNS Developer Guide> .
    latestNotificationError :: Core.Maybe Types.String,
    -- | Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.
    latestNotificationTime :: Core.Maybe Core.NominalDiffTime,
    -- | Specifies the most recent date and time when CloudTrail started recording API calls for an AWS account.
    startLoggingTime :: Core.Maybe Core.NominalDiffTime,
    -- | Specifies the most recent date and time when CloudTrail stopped recording API calls for an AWS account.
    stopLoggingTime :: Core.Maybe Core.NominalDiffTime,
    -- | This field is no longer in use.
    timeLoggingStarted :: Core.Maybe Types.String,
    -- | This field is no longer in use.
    timeLoggingStopped :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetTrailStatusResponse' value with any optional fields omitted.
mkGetTrailStatusResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetTrailStatusResponse
mkGetTrailStatusResponse responseStatus =
  GetTrailStatusResponse'
    { isLogging = Core.Nothing,
      latestCloudWatchLogsDeliveryError = Core.Nothing,
      latestCloudWatchLogsDeliveryTime = Core.Nothing,
      latestDeliveryAttemptSucceeded = Core.Nothing,
      latestDeliveryAttemptTime = Core.Nothing,
      latestDeliveryError = Core.Nothing,
      latestDeliveryTime = Core.Nothing,
      latestDigestDeliveryError = Core.Nothing,
      latestDigestDeliveryTime = Core.Nothing,
      latestNotificationAttemptSucceeded = Core.Nothing,
      latestNotificationAttemptTime = Core.Nothing,
      latestNotificationError = Core.Nothing,
      latestNotificationTime = Core.Nothing,
      startLoggingTime = Core.Nothing,
      stopLoggingTime = Core.Nothing,
      timeLoggingStarted = Core.Nothing,
      timeLoggingStopped = Core.Nothing,
      responseStatus
    }

-- | Whether the CloudTrail is currently logging AWS API calls.
--
-- /Note:/ Consider using 'isLogging' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsIsLogging :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Core.Bool)
gtsrrsIsLogging = Lens.field @"isLogging"
{-# DEPRECATED gtsrrsIsLogging "Use generic-lens or generic-optics with 'isLogging' instead." #-}

-- | Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.
--
-- /Note:/ Consider using 'latestCloudWatchLogsDeliveryError' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestCloudWatchLogsDeliveryError :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsLatestCloudWatchLogsDeliveryError = Lens.field @"latestCloudWatchLogsDeliveryError"
{-# DEPRECATED gtsrrsLatestCloudWatchLogsDeliveryError "Use generic-lens or generic-optics with 'latestCloudWatchLogsDeliveryError' instead." #-}

-- | Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.
--
-- /Note:/ Consider using 'latestCloudWatchLogsDeliveryTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestCloudWatchLogsDeliveryTime :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Core.NominalDiffTime)
gtsrrsLatestCloudWatchLogsDeliveryTime = Lens.field @"latestCloudWatchLogsDeliveryTime"
{-# DEPRECATED gtsrrsLatestCloudWatchLogsDeliveryTime "Use generic-lens or generic-optics with 'latestCloudWatchLogsDeliveryTime' instead." #-}

-- | This field is no longer in use.
--
-- /Note:/ Consider using 'latestDeliveryAttemptSucceeded' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestDeliveryAttemptSucceeded :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsLatestDeliveryAttemptSucceeded = Lens.field @"latestDeliveryAttemptSucceeded"
{-# DEPRECATED gtsrrsLatestDeliveryAttemptSucceeded "Use generic-lens or generic-optics with 'latestDeliveryAttemptSucceeded' instead." #-}

-- | This field is no longer in use.
--
-- /Note:/ Consider using 'latestDeliveryAttemptTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestDeliveryAttemptTime :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsLatestDeliveryAttemptTime = Lens.field @"latestDeliveryAttemptTime"
{-# DEPRECATED gtsrrsLatestDeliveryAttemptTime "Use generic-lens or generic-optics with 'latestDeliveryAttemptTime' instead." #-}

-- | Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files to the designated bucket. For more information see the topic <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses> in the Amazon S3 API Reference.
--
-- /Note:/ Consider using 'latestDeliveryError' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestDeliveryError :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsLatestDeliveryError = Lens.field @"latestDeliveryError"
{-# DEPRECATED gtsrrsLatestDeliveryError "Use generic-lens or generic-optics with 'latestDeliveryError' instead." #-}

-- | Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.
--
-- /Note:/ Consider using 'latestDeliveryTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestDeliveryTime :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Core.NominalDiffTime)
gtsrrsLatestDeliveryTime = Lens.field @"latestDeliveryTime"
{-# DEPRECATED gtsrrsLatestDeliveryTime "Use generic-lens or generic-optics with 'latestDeliveryTime' instead." #-}

-- | Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest file to the designated bucket. For more information see the topic <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses> in the Amazon S3 API Reference.
--
-- /Note:/ Consider using 'latestDigestDeliveryError' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestDigestDeliveryError :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsLatestDigestDeliveryError = Lens.field @"latestDigestDeliveryError"
{-# DEPRECATED gtsrrsLatestDigestDeliveryError "Use generic-lens or generic-optics with 'latestDigestDeliveryError' instead." #-}

-- | Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.
--
-- /Note:/ Consider using 'latestDigestDeliveryTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestDigestDeliveryTime :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Core.NominalDiffTime)
gtsrrsLatestDigestDeliveryTime = Lens.field @"latestDigestDeliveryTime"
{-# DEPRECATED gtsrrsLatestDigestDeliveryTime "Use generic-lens or generic-optics with 'latestDigestDeliveryTime' instead." #-}

-- | This field is no longer in use.
--
-- /Note:/ Consider using 'latestNotificationAttemptSucceeded' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestNotificationAttemptSucceeded :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsLatestNotificationAttemptSucceeded = Lens.field @"latestNotificationAttemptSucceeded"
{-# DEPRECATED gtsrrsLatestNotificationAttemptSucceeded "Use generic-lens or generic-optics with 'latestNotificationAttemptSucceeded' instead." #-}

-- | This field is no longer in use.
--
-- /Note:/ Consider using 'latestNotificationAttemptTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestNotificationAttemptTime :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsLatestNotificationAttemptTime = Lens.field @"latestNotificationAttemptTime"
{-# DEPRECATED gtsrrsLatestNotificationAttemptTime "Use generic-lens or generic-optics with 'latestNotificationAttemptTime' instead." #-}

-- | Displays any Amazon SNS error that CloudTrail encountered when attempting to send a notification. For more information about Amazon SNS errors, see the <https://docs.aws.amazon.com/sns/latest/dg/welcome.html Amazon SNS Developer Guide> .
--
-- /Note:/ Consider using 'latestNotificationError' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestNotificationError :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsLatestNotificationError = Lens.field @"latestNotificationError"
{-# DEPRECATED gtsrrsLatestNotificationError "Use generic-lens or generic-optics with 'latestNotificationError' instead." #-}

-- | Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.
--
-- /Note:/ Consider using 'latestNotificationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsLatestNotificationTime :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Core.NominalDiffTime)
gtsrrsLatestNotificationTime = Lens.field @"latestNotificationTime"
{-# DEPRECATED gtsrrsLatestNotificationTime "Use generic-lens or generic-optics with 'latestNotificationTime' instead." #-}

-- | Specifies the most recent date and time when CloudTrail started recording API calls for an AWS account.
--
-- /Note:/ Consider using 'startLoggingTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsStartLoggingTime :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Core.NominalDiffTime)
gtsrrsStartLoggingTime = Lens.field @"startLoggingTime"
{-# DEPRECATED gtsrrsStartLoggingTime "Use generic-lens or generic-optics with 'startLoggingTime' instead." #-}

-- | Specifies the most recent date and time when CloudTrail stopped recording API calls for an AWS account.
--
-- /Note:/ Consider using 'stopLoggingTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsStopLoggingTime :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Core.NominalDiffTime)
gtsrrsStopLoggingTime = Lens.field @"stopLoggingTime"
{-# DEPRECATED gtsrrsStopLoggingTime "Use generic-lens or generic-optics with 'stopLoggingTime' instead." #-}

-- | This field is no longer in use.
--
-- /Note:/ Consider using 'timeLoggingStarted' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsTimeLoggingStarted :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsTimeLoggingStarted = Lens.field @"timeLoggingStarted"
{-# DEPRECATED gtsrrsTimeLoggingStarted "Use generic-lens or generic-optics with 'timeLoggingStarted' instead." #-}

-- | This field is no longer in use.
--
-- /Note:/ Consider using 'timeLoggingStopped' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsTimeLoggingStopped :: Lens.Lens' GetTrailStatusResponse (Core.Maybe Types.String)
gtsrrsTimeLoggingStopped = Lens.field @"timeLoggingStopped"
{-# DEPRECATED gtsrrsTimeLoggingStopped "Use generic-lens or generic-optics with 'timeLoggingStopped' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gtsrrsResponseStatus :: Lens.Lens' GetTrailStatusResponse Core.Int
gtsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gtsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}