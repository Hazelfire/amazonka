{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.UploadMultipartPart
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation uploads a part of an archive. You can upload archive parts in any order. You can also upload them in parallel. You can upload up to 10,000 parts for a multipart upload.
--
-- Amazon Glacier rejects your upload part request if any of the following conditions is true:
--
--     * __SHA256 tree hash does not match__ To ensure that part data is not corrupted in transmission, you compute a SHA256 tree hash of the part and include it in your request. Upon receiving the part data, Amazon S3 Glacier also computes a SHA256 tree hash. If these hash values don't match, the operation fails. For information about computing a SHA256 tree hash, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html Computing Checksums> .
--
--
--     * __Part size does not match__ The size of each part except the last must match the size specified in the corresponding 'InitiateMultipartUpload' request. The size of the last part must be the same size as, or smaller than, the specified size.
--
--
--     * __Range does not align__ The byte range value in the request does not align with the part size specified in the corresponding initiate request. For example, if you specify a part size of 4194304 bytes (4 MB), then 0 to 4194303 bytes (4 MB - 1) and 4194304 (4 MB) to 8388607 (8 MB - 1) are valid part ranges. However, if you set a range value of 2 MB to 6 MB, the range does not align with the part size and the upload will fail.
--
--
-- This operation is idempotent. If you upload the same part multiple times, the data included in the most recent request overwrites the previously uploaded data.
-- An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)> .
-- For conceptual information and underlying REST API, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html Uploading Large Archives in Parts (Multipart Upload)> and <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html Upload Part > in the /Amazon Glacier Developer Guide/ .
module Network.AWS.Glacier.UploadMultipartPart
  ( -- * Creating a request
    UploadMultipartPart (..),
    mkUploadMultipartPart,

    -- ** Request lenses
    umpAccountId,
    umpVaultName,
    umpUploadId,
    umpBody,
    umpChecksum,
    umpRange,

    -- * Destructuring the response
    UploadMultipartPartResponse (..),
    mkUploadMultipartPartResponse,

    -- ** Response lenses
    umprrsChecksum,
    umprrsResponseStatus,
  )
where

import qualified Network.AWS.Glacier.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Provides options to upload a part of an archive in a multipart upload operation.
--
-- /See:/ 'mkUploadMultipartPart' smart constructor.
data UploadMultipartPart = UploadMultipartPart'
  { -- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
    accountId :: Types.String,
    -- | The name of the vault.
    vaultName :: Types.String,
    -- | The upload ID of the multipart upload.
    uploadId :: Types.String,
    -- | The data to upload.
    body :: Core.HashedBody,
    -- | The SHA256 tree hash of the data being uploaded.
    checksum :: Core.Maybe Types.String,
    -- | Identifies the range of bytes in the assembled archive that will be uploaded in this part. Amazon S3 Glacier uses this information to assemble the archive in the proper sequence. The format of this header follows RFC 2616. An example header is Content-Range:bytes 0-4194303/*.
    range :: Core.Maybe Types.String
  }
  deriving stock (Core.Show, Core.Generic)

-- | Creates a 'UploadMultipartPart' value with any optional fields omitted.
mkUploadMultipartPart ::
  -- | 'accountId'
  Types.String ->
  -- | 'vaultName'
  Types.String ->
  -- | 'uploadId'
  Types.String ->
  -- | 'body'
  Core.HashedBody ->
  UploadMultipartPart
mkUploadMultipartPart accountId vaultName uploadId body =
  UploadMultipartPart'
    { accountId,
      vaultName,
      uploadId,
      body,
      checksum = Core.Nothing,
      range = Core.Nothing
    }

-- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
--
-- /Note:/ Consider using 'accountId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umpAccountId :: Lens.Lens' UploadMultipartPart Types.String
umpAccountId = Lens.field @"accountId"
{-# DEPRECATED umpAccountId "Use generic-lens or generic-optics with 'accountId' instead." #-}

-- | The name of the vault.
--
-- /Note:/ Consider using 'vaultName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umpVaultName :: Lens.Lens' UploadMultipartPart Types.String
umpVaultName = Lens.field @"vaultName"
{-# DEPRECATED umpVaultName "Use generic-lens or generic-optics with 'vaultName' instead." #-}

-- | The upload ID of the multipart upload.
--
-- /Note:/ Consider using 'uploadId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umpUploadId :: Lens.Lens' UploadMultipartPart Types.String
umpUploadId = Lens.field @"uploadId"
{-# DEPRECATED umpUploadId "Use generic-lens or generic-optics with 'uploadId' instead." #-}

-- | The data to upload.
--
-- /Note:/ Consider using 'body' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umpBody :: Lens.Lens' UploadMultipartPart Core.HashedBody
umpBody = Lens.field @"body"
{-# DEPRECATED umpBody "Use generic-lens or generic-optics with 'body' instead." #-}

-- | The SHA256 tree hash of the data being uploaded.
--
-- /Note:/ Consider using 'checksum' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umpChecksum :: Lens.Lens' UploadMultipartPart (Core.Maybe Types.String)
umpChecksum = Lens.field @"checksum"
{-# DEPRECATED umpChecksum "Use generic-lens or generic-optics with 'checksum' instead." #-}

-- | Identifies the range of bytes in the assembled archive that will be uploaded in this part. Amazon S3 Glacier uses this information to assemble the archive in the proper sequence. The format of this header follows RFC 2616. An example header is Content-Range:bytes 0-4194303/*.
--
-- /Note:/ Consider using 'range' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umpRange :: Lens.Lens' UploadMultipartPart (Core.Maybe Types.String)
umpRange = Lens.field @"range"
{-# DEPRECATED umpRange "Use generic-lens or generic-optics with 'range' instead." #-}

instance Core.AWSRequest UploadMultipartPart where
  type Rs UploadMultipartPart = UploadMultipartPartResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.PUT,
        Core._rqPath =
          Core.rawPath
            ( "/" Core.<> (Core.toText accountId) Core.<> ("/vaults/")
                Core.<> (Core.toText vaultName)
                Core.<> ("/multipart-uploads/")
                Core.<> (Core.toText uploadId)
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.toHeaders "x-amz-sha256-tree-hash" checksum
            Core.<> (Core.toHeaders "Content-Range" range),
        Core._rqBody = Core.toBody body
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          UploadMultipartPartResponse'
            Core.<$> (Core.parseHeaderMaybe "x-amz-sha256-tree-hash" h)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Contains the Amazon S3 Glacier response to your request.
--
-- /See:/ 'mkUploadMultipartPartResponse' smart constructor.
data UploadMultipartPartResponse = UploadMultipartPartResponse'
  { -- | The SHA256 tree hash that Amazon S3 Glacier computed for the uploaded part.
    checksum :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UploadMultipartPartResponse' value with any optional fields omitted.
mkUploadMultipartPartResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UploadMultipartPartResponse
mkUploadMultipartPartResponse responseStatus =
  UploadMultipartPartResponse'
    { checksum = Core.Nothing,
      responseStatus
    }

-- | The SHA256 tree hash that Amazon S3 Glacier computed for the uploaded part.
--
-- /Note:/ Consider using 'checksum' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umprrsChecksum :: Lens.Lens' UploadMultipartPartResponse (Core.Maybe Types.String)
umprrsChecksum = Lens.field @"checksum"
{-# DEPRECATED umprrsChecksum "Use generic-lens or generic-optics with 'checksum' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umprrsResponseStatus :: Lens.Lens' UploadMultipartPartResponse Core.Int
umprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED umprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}