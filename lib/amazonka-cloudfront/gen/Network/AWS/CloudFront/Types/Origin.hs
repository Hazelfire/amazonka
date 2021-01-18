{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.Origin
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.Origin
  ( Origin (..),

    -- * Smart constructor
    mkOrigin,

    -- * Lenses
    oId,
    oDomainName,
    oConnectionAttempts,
    oConnectionTimeout,
    oCustomHeaders,
    oCustomOriginConfig,
    oOriginPath,
    oOriginShield,
    oS3OriginConfig,
  )
where

import qualified Network.AWS.CloudFront.Types.CustomHeaders as Types
import qualified Network.AWS.CloudFront.Types.CustomOriginConfig as Types
import qualified Network.AWS.CloudFront.Types.DomainName as Types
import qualified Network.AWS.CloudFront.Types.Id as Types
import qualified Network.AWS.CloudFront.Types.OriginPath as Types
import qualified Network.AWS.CloudFront.Types.OriginShield as Types
import qualified Network.AWS.CloudFront.Types.S3OriginConfig as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | An origin.
--
-- An origin is the location where content is stored, and from which CloudFront gets content to serve to viewers. To specify an origin:
--
--     * Use @S3OriginConfig@ to specify an Amazon S3 bucket that is not configured with static website hosting.
--
--
--     * Use @CustomOriginConfig@ to specify all other kinds of origins, including:
--
--     * An Amazon S3 bucket that is configured with static website hosting
--
--
--     * An Elastic Load Balancing load balancer
--
--
--     * An AWS Elemental MediaPackage endpoint
--
--
--     * An AWS Elemental MediaStore container
--
--
--     * Any other HTTP server, running on an Amazon EC2 instance or any other kind of host
--
--
--
--
-- For the current maximum number of origins that you can specify per distribution, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html#limits-web-distributions General Quotas on Web Distributions> in the /Amazon CloudFront Developer Guide/ (quotas were formerly referred to as limits).
--
-- /See:/ 'mkOrigin' smart constructor.
data Origin = Origin'
  { -- | A unique identifier for the origin. This value must be unique within the distribution.
    --
    -- Use this value to specify the @TargetOriginId@ in a @CacheBehavior@ or @DefaultCacheBehavior@ .
    id :: Types.Id,
    -- | The domain name for the origin.
    --
    -- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName Origin Domain Name> in the /Amazon CloudFront Developer Guide/ .
    domainName :: Types.DomainName,
    -- | The number of times that CloudFront attempts to connect to the origin. The minimum number is 1, the maximum is 3, and the default (if you don’t specify otherwise) is 3.
    --
    -- For a custom origin (including an Amazon S3 bucket that’s configured with static website hosting), this value also specifies the number of times that CloudFront attempts to get a response from the origin, in the case of an <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout Origin Response Timeout> .
    -- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-attempts Origin Connection Attempts> in the /Amazon CloudFront Developer Guide/ .
    connectionAttempts :: Core.Maybe Core.Int,
    -- | The number of seconds that CloudFront waits when trying to establish a connection to the origin. The minimum timeout is 1 second, the maximum is 10 seconds, and the default (if you don’t specify otherwise) is 10 seconds.
    --
    -- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-timeout Origin Connection Timeout> in the /Amazon CloudFront Developer Guide/ .
    connectionTimeout :: Core.Maybe Core.Int,
    -- | A list of HTTP header names and values that CloudFront adds to the requests that it sends to the origin.
    --
    -- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html Adding Custom Headers to Origin Requests> in the /Amazon CloudFront Developer Guide/ .
    customHeaders :: Core.Maybe Types.CustomHeaders,
    -- | Use this type to specify an origin that is not an Amazon S3 bucket, with one exception. If the Amazon S3 bucket is configured with static website hosting, use this type. If the Amazon S3 bucket is not configured with static website hosting, use the @S3OriginConfig@ type instead.
    customOriginConfig :: Core.Maybe Types.CustomOriginConfig,
    -- | An optional path that CloudFront appends to the origin domain name when CloudFront requests content from the origin.
    --
    -- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginPath Origin Path> in the /Amazon CloudFront Developer Guide/ .
    originPath :: Core.Maybe Types.OriginPath,
    -- | CloudFront Origin Shield. Using Origin Shield can help reduce the load on your origin.
    --
    -- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html Using Origin Shield> in the /Amazon CloudFront Developer Guide/ .
    originShield :: Core.Maybe Types.OriginShield,
    -- | Use this type to specify an origin that is an Amazon S3 bucket that is not configured with static website hosting. To specify any other type of origin, including an Amazon S3 bucket that is configured with static website hosting, use the @CustomOriginConfig@ type instead.
    s3OriginConfig :: Core.Maybe Types.S3OriginConfig
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Origin' value with any optional fields omitted.
mkOrigin ::
  -- | 'id'
  Types.Id ->
  -- | 'domainName'
  Types.DomainName ->
  Origin
mkOrigin id domainName =
  Origin'
    { id,
      domainName,
      connectionAttempts = Core.Nothing,
      connectionTimeout = Core.Nothing,
      customHeaders = Core.Nothing,
      customOriginConfig = Core.Nothing,
      originPath = Core.Nothing,
      originShield = Core.Nothing,
      s3OriginConfig = Core.Nothing
    }

-- | A unique identifier for the origin. This value must be unique within the distribution.
--
-- Use this value to specify the @TargetOriginId@ in a @CacheBehavior@ or @DefaultCacheBehavior@ .
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oId :: Lens.Lens' Origin Types.Id
oId = Lens.field @"id"
{-# DEPRECATED oId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The domain name for the origin.
--
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName Origin Domain Name> in the /Amazon CloudFront Developer Guide/ .
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oDomainName :: Lens.Lens' Origin Types.DomainName
oDomainName = Lens.field @"domainName"
{-# DEPRECATED oDomainName "Use generic-lens or generic-optics with 'domainName' instead." #-}

-- | The number of times that CloudFront attempts to connect to the origin. The minimum number is 1, the maximum is 3, and the default (if you don’t specify otherwise) is 3.
--
-- For a custom origin (including an Amazon S3 bucket that’s configured with static website hosting), this value also specifies the number of times that CloudFront attempts to get a response from the origin, in the case of an <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout Origin Response Timeout> .
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-attempts Origin Connection Attempts> in the /Amazon CloudFront Developer Guide/ .
--
-- /Note:/ Consider using 'connectionAttempts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oConnectionAttempts :: Lens.Lens' Origin (Core.Maybe Core.Int)
oConnectionAttempts = Lens.field @"connectionAttempts"
{-# DEPRECATED oConnectionAttempts "Use generic-lens or generic-optics with 'connectionAttempts' instead." #-}

-- | The number of seconds that CloudFront waits when trying to establish a connection to the origin. The minimum timeout is 1 second, the maximum is 10 seconds, and the default (if you don’t specify otherwise) is 10 seconds.
--
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-timeout Origin Connection Timeout> in the /Amazon CloudFront Developer Guide/ .
--
-- /Note:/ Consider using 'connectionTimeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oConnectionTimeout :: Lens.Lens' Origin (Core.Maybe Core.Int)
oConnectionTimeout = Lens.field @"connectionTimeout"
{-# DEPRECATED oConnectionTimeout "Use generic-lens or generic-optics with 'connectionTimeout' instead." #-}

-- | A list of HTTP header names and values that CloudFront adds to the requests that it sends to the origin.
--
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html Adding Custom Headers to Origin Requests> in the /Amazon CloudFront Developer Guide/ .
--
-- /Note:/ Consider using 'customHeaders' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oCustomHeaders :: Lens.Lens' Origin (Core.Maybe Types.CustomHeaders)
oCustomHeaders = Lens.field @"customHeaders"
{-# DEPRECATED oCustomHeaders "Use generic-lens or generic-optics with 'customHeaders' instead." #-}

-- | Use this type to specify an origin that is not an Amazon S3 bucket, with one exception. If the Amazon S3 bucket is configured with static website hosting, use this type. If the Amazon S3 bucket is not configured with static website hosting, use the @S3OriginConfig@ type instead.
--
-- /Note:/ Consider using 'customOriginConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oCustomOriginConfig :: Lens.Lens' Origin (Core.Maybe Types.CustomOriginConfig)
oCustomOriginConfig = Lens.field @"customOriginConfig"
{-# DEPRECATED oCustomOriginConfig "Use generic-lens or generic-optics with 'customOriginConfig' instead." #-}

-- | An optional path that CloudFront appends to the origin domain name when CloudFront requests content from the origin.
--
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginPath Origin Path> in the /Amazon CloudFront Developer Guide/ .
--
-- /Note:/ Consider using 'originPath' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oOriginPath :: Lens.Lens' Origin (Core.Maybe Types.OriginPath)
oOriginPath = Lens.field @"originPath"
{-# DEPRECATED oOriginPath "Use generic-lens or generic-optics with 'originPath' instead." #-}

-- | CloudFront Origin Shield. Using Origin Shield can help reduce the load on your origin.
--
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html Using Origin Shield> in the /Amazon CloudFront Developer Guide/ .
--
-- /Note:/ Consider using 'originShield' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oOriginShield :: Lens.Lens' Origin (Core.Maybe Types.OriginShield)
oOriginShield = Lens.field @"originShield"
{-# DEPRECATED oOriginShield "Use generic-lens or generic-optics with 'originShield' instead." #-}

-- | Use this type to specify an origin that is an Amazon S3 bucket that is not configured with static website hosting. To specify any other type of origin, including an Amazon S3 bucket that is configured with static website hosting, use the @CustomOriginConfig@ type instead.
--
-- /Note:/ Consider using 's3OriginConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oS3OriginConfig :: Lens.Lens' Origin (Core.Maybe Types.S3OriginConfig)
oS3OriginConfig = Lens.field @"s3OriginConfig"
{-# DEPRECATED oS3OriginConfig "Use generic-lens or generic-optics with 's3OriginConfig' instead." #-}

instance Core.ToXML Origin where
  toXML Origin {..} =
    Core.toXMLNode "Id" id
      Core.<> Core.toXMLNode "DomainName" domainName
      Core.<> Core.toXMLNode "ConnectionAttempts" Core.<$> connectionAttempts
      Core.<> Core.toXMLNode "ConnectionTimeout" Core.<$> connectionTimeout
      Core.<> Core.toXMLNode "CustomHeaders" Core.<$> customHeaders
      Core.<> Core.toXMLNode "CustomOriginConfig" Core.<$> customOriginConfig
      Core.<> Core.toXMLNode "OriginPath" Core.<$> originPath
      Core.<> Core.toXMLNode "OriginShield" Core.<$> originShield
      Core.<> Core.toXMLNode "S3OriginConfig" Core.<$> s3OriginConfig

instance Core.FromXML Origin where
  parseXML x =
    Origin'
      Core.<$> (x Core..@ "Id")
      Core.<*> (x Core..@ "DomainName")
      Core.<*> (x Core..@? "ConnectionAttempts")
      Core.<*> (x Core..@? "ConnectionTimeout")
      Core.<*> (x Core..@? "CustomHeaders")
      Core.<*> (x Core..@? "CustomOriginConfig")
      Core.<*> (x Core..@? "OriginPath")
      Core.<*> (x Core..@? "OriginShield")
      Core.<*> (x Core..@? "S3OriginConfig")