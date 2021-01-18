{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.ExportTableToPointInTime
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports table data to an S3 bucket. The table must have point in time recovery enabled, and you can export data from any time within the point in time recovery window.
module Network.AWS.DynamoDB.ExportTableToPointInTime
  ( -- * Creating a request
    ExportTableToPointInTime (..),
    mkExportTableToPointInTime,

    -- ** Request lenses
    ettpitTableArn,
    ettpitS3Bucket,
    ettpitClientToken,
    ettpitExportFormat,
    ettpitExportTime,
    ettpitS3BucketOwner,
    ettpitS3Prefix,
    ettpitS3SseAlgorithm,
    ettpitS3SseKmsKeyId,

    -- * Destructuring the response
    ExportTableToPointInTimeResponse (..),
    mkExportTableToPointInTimeResponse,

    -- ** Response lenses
    ettpitrrsExportDescription,
    ettpitrrsResponseStatus,
  )
where

import qualified Network.AWS.DynamoDB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkExportTableToPointInTime' smart constructor.
data ExportTableToPointInTime = ExportTableToPointInTime'
  { -- | The Amazon Resource Name (ARN) associated with the table to export.
    tableArn :: Types.TableArn,
    -- | The name of the Amazon S3 bucket to export the snapshot to.
    s3Bucket :: Types.S3Bucket,
    -- | Providing a @ClientToken@ makes the call to @ExportTableToPointInTimeInput@ idempotent, meaning that multiple identical calls have the same effect as one single call.
    --
    -- A client token is valid for 8 hours after the first request that uses it is completed. After 8 hours, any request with the same client token is treated as a new request. Do not resubmit the same request with the same client token for more than 8 hours, or the result might not be idempotent.
    -- If you submit a request with the same client token but a change in other parameters within the 8-hour idempotency window, DynamoDB returns an @IdempotentParameterMismatch@ exception.
    clientToken :: Core.Maybe Types.ClientToken,
    -- | The format for the exported data. Valid values for @ExportFormat@ are @DYNAMODB_JSON@ or @ION@ .
    exportFormat :: Core.Maybe Types.ExportFormat,
    -- | Time in the past from which to export table data. The table export will be a snapshot of the table's state at this point in time.
    exportTime :: Core.Maybe Core.NominalDiffTime,
    -- | The ID of the AWS account that owns the bucket the export will be stored in.
    s3BucketOwner :: Core.Maybe Types.S3BucketOwner,
    -- | The Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
    s3Prefix :: Core.Maybe Types.S3Prefix,
    -- | Type of encryption used on the bucket where export data will be stored. Valid values for @S3SseAlgorithm@ are:
    --
    --
    --     * @AES256@ - server-side encryption with Amazon S3 managed keys
    --
    --
    --     * @KMS@ - server-side encryption with AWS KMS managed keys
    s3SseAlgorithm :: Core.Maybe Types.S3SseAlgorithm,
    -- | The ID of the AWS KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
    s3SseKmsKeyId :: Core.Maybe Types.S3SseKmsKeyId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ExportTableToPointInTime' value with any optional fields omitted.
mkExportTableToPointInTime ::
  -- | 'tableArn'
  Types.TableArn ->
  -- | 's3Bucket'
  Types.S3Bucket ->
  ExportTableToPointInTime
mkExportTableToPointInTime tableArn s3Bucket =
  ExportTableToPointInTime'
    { tableArn,
      s3Bucket,
      clientToken = Core.Nothing,
      exportFormat = Core.Nothing,
      exportTime = Core.Nothing,
      s3BucketOwner = Core.Nothing,
      s3Prefix = Core.Nothing,
      s3SseAlgorithm = Core.Nothing,
      s3SseKmsKeyId = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) associated with the table to export.
--
-- /Note:/ Consider using 'tableArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitTableArn :: Lens.Lens' ExportTableToPointInTime Types.TableArn
ettpitTableArn = Lens.field @"tableArn"
{-# DEPRECATED ettpitTableArn "Use generic-lens or generic-optics with 'tableArn' instead." #-}

-- | The name of the Amazon S3 bucket to export the snapshot to.
--
-- /Note:/ Consider using 's3Bucket' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitS3Bucket :: Lens.Lens' ExportTableToPointInTime Types.S3Bucket
ettpitS3Bucket = Lens.field @"s3Bucket"
{-# DEPRECATED ettpitS3Bucket "Use generic-lens or generic-optics with 's3Bucket' instead." #-}

-- | Providing a @ClientToken@ makes the call to @ExportTableToPointInTimeInput@ idempotent, meaning that multiple identical calls have the same effect as one single call.
--
-- A client token is valid for 8 hours after the first request that uses it is completed. After 8 hours, any request with the same client token is treated as a new request. Do not resubmit the same request with the same client token for more than 8 hours, or the result might not be idempotent.
-- If you submit a request with the same client token but a change in other parameters within the 8-hour idempotency window, DynamoDB returns an @IdempotentParameterMismatch@ exception.
--
-- /Note:/ Consider using 'clientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitClientToken :: Lens.Lens' ExportTableToPointInTime (Core.Maybe Types.ClientToken)
ettpitClientToken = Lens.field @"clientToken"
{-# DEPRECATED ettpitClientToken "Use generic-lens or generic-optics with 'clientToken' instead." #-}

-- | The format for the exported data. Valid values for @ExportFormat@ are @DYNAMODB_JSON@ or @ION@ .
--
-- /Note:/ Consider using 'exportFormat' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitExportFormat :: Lens.Lens' ExportTableToPointInTime (Core.Maybe Types.ExportFormat)
ettpitExportFormat = Lens.field @"exportFormat"
{-# DEPRECATED ettpitExportFormat "Use generic-lens or generic-optics with 'exportFormat' instead." #-}

-- | Time in the past from which to export table data. The table export will be a snapshot of the table's state at this point in time.
--
-- /Note:/ Consider using 'exportTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitExportTime :: Lens.Lens' ExportTableToPointInTime (Core.Maybe Core.NominalDiffTime)
ettpitExportTime = Lens.field @"exportTime"
{-# DEPRECATED ettpitExportTime "Use generic-lens or generic-optics with 'exportTime' instead." #-}

-- | The ID of the AWS account that owns the bucket the export will be stored in.
--
-- /Note:/ Consider using 's3BucketOwner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitS3BucketOwner :: Lens.Lens' ExportTableToPointInTime (Core.Maybe Types.S3BucketOwner)
ettpitS3BucketOwner = Lens.field @"s3BucketOwner"
{-# DEPRECATED ettpitS3BucketOwner "Use generic-lens or generic-optics with 's3BucketOwner' instead." #-}

-- | The Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
--
-- /Note:/ Consider using 's3Prefix' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitS3Prefix :: Lens.Lens' ExportTableToPointInTime (Core.Maybe Types.S3Prefix)
ettpitS3Prefix = Lens.field @"s3Prefix"
{-# DEPRECATED ettpitS3Prefix "Use generic-lens or generic-optics with 's3Prefix' instead." #-}

-- | Type of encryption used on the bucket where export data will be stored. Valid values for @S3SseAlgorithm@ are:
--
--
--     * @AES256@ - server-side encryption with Amazon S3 managed keys
--
--
--     * @KMS@ - server-side encryption with AWS KMS managed keys
--
--
--
-- /Note:/ Consider using 's3SseAlgorithm' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitS3SseAlgorithm :: Lens.Lens' ExportTableToPointInTime (Core.Maybe Types.S3SseAlgorithm)
ettpitS3SseAlgorithm = Lens.field @"s3SseAlgorithm"
{-# DEPRECATED ettpitS3SseAlgorithm "Use generic-lens or generic-optics with 's3SseAlgorithm' instead." #-}

-- | The ID of the AWS KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
--
-- /Note:/ Consider using 's3SseKmsKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitS3SseKmsKeyId :: Lens.Lens' ExportTableToPointInTime (Core.Maybe Types.S3SseKmsKeyId)
ettpitS3SseKmsKeyId = Lens.field @"s3SseKmsKeyId"
{-# DEPRECATED ettpitS3SseKmsKeyId "Use generic-lens or generic-optics with 's3SseKmsKeyId' instead." #-}

instance Core.FromJSON ExportTableToPointInTime where
  toJSON ExportTableToPointInTime {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("TableArn" Core..= tableArn),
            Core.Just ("S3Bucket" Core..= s3Bucket),
            ("ClientToken" Core..=) Core.<$> clientToken,
            ("ExportFormat" Core..=) Core.<$> exportFormat,
            ("ExportTime" Core..=) Core.<$> exportTime,
            ("S3BucketOwner" Core..=) Core.<$> s3BucketOwner,
            ("S3Prefix" Core..=) Core.<$> s3Prefix,
            ("S3SseAlgorithm" Core..=) Core.<$> s3SseAlgorithm,
            ("S3SseKmsKeyId" Core..=) Core.<$> s3SseKmsKeyId
          ]
      )

instance Core.AWSRequest ExportTableToPointInTime where
  type Rs ExportTableToPointInTime = ExportTableToPointInTimeResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "DynamoDB_20120810.ExportTableToPointInTime")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.0")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ExportTableToPointInTimeResponse'
            Core.<$> (x Core..:? "ExportDescription")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkExportTableToPointInTimeResponse' smart constructor.
data ExportTableToPointInTimeResponse = ExportTableToPointInTimeResponse'
  { -- | Contains a description of the table export.
    exportDescription :: Core.Maybe Types.ExportDescription,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ExportTableToPointInTimeResponse' value with any optional fields omitted.
mkExportTableToPointInTimeResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ExportTableToPointInTimeResponse
mkExportTableToPointInTimeResponse responseStatus =
  ExportTableToPointInTimeResponse'
    { exportDescription =
        Core.Nothing,
      responseStatus
    }

-- | Contains a description of the table export.
--
-- /Note:/ Consider using 'exportDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitrrsExportDescription :: Lens.Lens' ExportTableToPointInTimeResponse (Core.Maybe Types.ExportDescription)
ettpitrrsExportDescription = Lens.field @"exportDescription"
{-# DEPRECATED ettpitrrsExportDescription "Use generic-lens or generic-optics with 'exportDescription' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ettpitrrsResponseStatus :: Lens.Lens' ExportTableToPointInTimeResponse Core.Int
ettpitrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ettpitrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}