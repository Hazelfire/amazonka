{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.DeleteBucketWebsite
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation removes the website configuration for a bucket. Amazon S3 returns a @200 OK@ response upon successfully deleting a website configuration on the specified bucket. You will get a @200 OK@ response if the website configuration you are trying to delete does not exist on the bucket. Amazon S3 returns a @404@ response if the bucket specified in the request does not exist.
--
-- This DELETE operation requires the @S3:DeleteBucketWebsite@ permission. By default, only the bucket owner can delete the website configuration attached to a bucket. However, bucket owners can grant other users permission to delete the website configuration by writing a bucket policy granting them the @S3:DeleteBucketWebsite@ permission.
-- For more information about hosting websites, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html Hosting Websites on Amazon S3> .
-- The following operations are related to @DeleteBucketWebsite@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketWebsite.html GetBucketWebsite>
--
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketWebsite.html PutBucketWebsite>
module Network.AWS.S3.DeleteBucketWebsite
  ( -- * Creating a request
    DeleteBucketWebsite (..),
    mkDeleteBucketWebsite,

    -- ** Request lenses
    dbwBucket,
    dbwExpectedBucketOwner,

    -- * Destructuring the response
    DeleteBucketWebsiteResponse (..),
    mkDeleteBucketWebsiteResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.S3.Types as Types

-- | /See:/ 'mkDeleteBucketWebsite' smart constructor.
data DeleteBucketWebsite = DeleteBucketWebsite'
  { -- | The bucket name for which you want to remove the website configuration.
    bucket :: Types.BucketName,
    -- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
    expectedBucketOwner :: Core.Maybe Types.ExpectedBucketOwner
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteBucketWebsite' value with any optional fields omitted.
mkDeleteBucketWebsite ::
  -- | 'bucket'
  Types.BucketName ->
  DeleteBucketWebsite
mkDeleteBucketWebsite bucket =
  DeleteBucketWebsite' {bucket, expectedBucketOwner = Core.Nothing}

-- | The bucket name for which you want to remove the website configuration.
--
-- /Note:/ Consider using 'bucket' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbwBucket :: Lens.Lens' DeleteBucketWebsite Types.BucketName
dbwBucket = Lens.field @"bucket"
{-# DEPRECATED dbwBucket "Use generic-lens or generic-optics with 'bucket' instead." #-}

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- /Note:/ Consider using 'expectedBucketOwner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbwExpectedBucketOwner :: Lens.Lens' DeleteBucketWebsite (Core.Maybe Types.ExpectedBucketOwner)
dbwExpectedBucketOwner = Lens.field @"expectedBucketOwner"
{-# DEPRECATED dbwExpectedBucketOwner "Use generic-lens or generic-optics with 'expectedBucketOwner' instead." #-}

instance Core.AWSRequest DeleteBucketWebsite where
  type Rs DeleteBucketWebsite = DeleteBucketWebsiteResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.DELETE,
        Core._rqPath = Core.rawPath ("/" Core.<> (Core.toText bucket)),
        Core._rqQuery = Core.pure ("website", ""),
        Core._rqHeaders =
          Core.toHeaders "x-amz-expected-bucket-owner" expectedBucketOwner,
        Core._rqBody = ""
      }
  response = Response.receiveNull DeleteBucketWebsiteResponse'

-- | /See:/ 'mkDeleteBucketWebsiteResponse' smart constructor.
data DeleteBucketWebsiteResponse = DeleteBucketWebsiteResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteBucketWebsiteResponse' value with any optional fields omitted.
mkDeleteBucketWebsiteResponse ::
  DeleteBucketWebsiteResponse
mkDeleteBucketWebsiteResponse = DeleteBucketWebsiteResponse'