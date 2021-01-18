{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.CachePolicyConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyConfig
  ( CachePolicyConfig (..),

    -- * Smart constructor
    mkCachePolicyConfig,

    -- * Lenses
    cpcName,
    cpcMinTTL,
    cpcComment,
    cpcDefaultTTL,
    cpcMaxTTL,
    cpcParametersInCacheKeyAndForwardedToOrigin,
  )
where

import qualified Network.AWS.CloudFront.Types.ParametersInCacheKeyAndForwardedToOrigin as Types
import qualified Network.AWS.CloudFront.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A cache policy configuration.
--
-- This configuration determines the following:
--
--     * The values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.
--
--
--     * The default, minimum, and maximum time to live (TTL) values that you want objects to stay in the CloudFront cache.
--
--
-- The headers, cookies, and query strings that are included in the cache key are automatically included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t find a valid object in its cache that matches the request’s cache key. If you want to send values to the origin but /not/ include them in the cache key, use @OriginRequestPolicy@ .
--
-- /See:/ 'mkCachePolicyConfig' smart constructor.
data CachePolicyConfig = CachePolicyConfig'
  { -- | A unique name to identify the cache policy.
    name :: Types.String,
    -- | The minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
    minTTL :: Core.Integer,
    -- | A comment to describe the cache policy.
    comment :: Core.Maybe Types.String,
    -- | The default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value as the object’s time to live (TTL) only when the origin does /not/ send @Cache-Control@ or @Expires@ headers with the object. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
    --
    -- The default value for this field is 86400 seconds (one day). If the value of @MinTTL@ is more than 86400 seconds, then the default value for this field is the same as the value of @MinTTL@ .
    defaultTTL :: Core.Maybe Core.Integer,
    -- | The maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value only when the origin sends @Cache-Control@ or @Expires@ headers with the object. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
    --
    -- The default value for this field is 31536000 seconds (one year). If the value of @MinTTL@ or @DefaultTTL@ is more than 31536000 seconds, then the default value for this field is the same as the value of @DefaultTTL@ .
    maxTTL :: Core.Maybe Core.Integer,
    -- | The HTTP headers, cookies, and URL query strings to include in the cache key. The values included in the cache key are automatically included in requests that CloudFront sends to the origin.
    parametersInCacheKeyAndForwardedToOrigin :: Core.Maybe Types.ParametersInCacheKeyAndForwardedToOrigin
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CachePolicyConfig' value with any optional fields omitted.
mkCachePolicyConfig ::
  -- | 'name'
  Types.String ->
  -- | 'minTTL'
  Core.Integer ->
  CachePolicyConfig
mkCachePolicyConfig name minTTL =
  CachePolicyConfig'
    { name,
      minTTL,
      comment = Core.Nothing,
      defaultTTL = Core.Nothing,
      maxTTL = Core.Nothing,
      parametersInCacheKeyAndForwardedToOrigin = Core.Nothing
    }

-- | A unique name to identify the cache policy.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpcName :: Lens.Lens' CachePolicyConfig Types.String
cpcName = Lens.field @"name"
{-# DEPRECATED cpcName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
--
-- /Note:/ Consider using 'minTTL' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpcMinTTL :: Lens.Lens' CachePolicyConfig Core.Integer
cpcMinTTL = Lens.field @"minTTL"
{-# DEPRECATED cpcMinTTL "Use generic-lens or generic-optics with 'minTTL' instead." #-}

-- | A comment to describe the cache policy.
--
-- /Note:/ Consider using 'comment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpcComment :: Lens.Lens' CachePolicyConfig (Core.Maybe Types.String)
cpcComment = Lens.field @"comment"
{-# DEPRECATED cpcComment "Use generic-lens or generic-optics with 'comment' instead." #-}

-- | The default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value as the object’s time to live (TTL) only when the origin does /not/ send @Cache-Control@ or @Expires@ headers with the object. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
--
-- The default value for this field is 86400 seconds (one day). If the value of @MinTTL@ is more than 86400 seconds, then the default value for this field is the same as the value of @MinTTL@ .
--
-- /Note:/ Consider using 'defaultTTL' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpcDefaultTTL :: Lens.Lens' CachePolicyConfig (Core.Maybe Core.Integer)
cpcDefaultTTL = Lens.field @"defaultTTL"
{-# DEPRECATED cpcDefaultTTL "Use generic-lens or generic-optics with 'defaultTTL' instead." #-}

-- | The maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value only when the origin sends @Cache-Control@ or @Expires@ headers with the object. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html Managing How Long Content Stays in an Edge Cache (Expiration)> in the /Amazon CloudFront Developer Guide/ .
--
-- The default value for this field is 31536000 seconds (one year). If the value of @MinTTL@ or @DefaultTTL@ is more than 31536000 seconds, then the default value for this field is the same as the value of @DefaultTTL@ .
--
-- /Note:/ Consider using 'maxTTL' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpcMaxTTL :: Lens.Lens' CachePolicyConfig (Core.Maybe Core.Integer)
cpcMaxTTL = Lens.field @"maxTTL"
{-# DEPRECATED cpcMaxTTL "Use generic-lens or generic-optics with 'maxTTL' instead." #-}

-- | The HTTP headers, cookies, and URL query strings to include in the cache key. The values included in the cache key are automatically included in requests that CloudFront sends to the origin.
--
-- /Note:/ Consider using 'parametersInCacheKeyAndForwardedToOrigin' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpcParametersInCacheKeyAndForwardedToOrigin :: Lens.Lens' CachePolicyConfig (Core.Maybe Types.ParametersInCacheKeyAndForwardedToOrigin)
cpcParametersInCacheKeyAndForwardedToOrigin = Lens.field @"parametersInCacheKeyAndForwardedToOrigin"
{-# DEPRECATED cpcParametersInCacheKeyAndForwardedToOrigin "Use generic-lens or generic-optics with 'parametersInCacheKeyAndForwardedToOrigin' instead." #-}

instance Core.ToXML CachePolicyConfig where
  toXML CachePolicyConfig {..} =
    Core.toXMLNode "Name" name Core.<> Core.toXMLNode "MinTTL" minTTL
      Core.<> Core.toXMLNode "Comment" Core.<$> comment
      Core.<> Core.toXMLNode "DefaultTTL" Core.<$> defaultTTL
      Core.<> Core.toXMLNode "MaxTTL" Core.<$> maxTTL
      Core.<> Core.toXMLNode "ParametersInCacheKeyAndForwardedToOrigin"
        Core.<$> parametersInCacheKeyAndForwardedToOrigin

instance Core.FromXML CachePolicyConfig where
  parseXML x =
    CachePolicyConfig'
      Core.<$> (x Core..@ "Name")
      Core.<*> (x Core..@ "MinTTL")
      Core.<*> (x Core..@? "Comment")
      Core.<*> (x Core..@? "DefaultTTL")
      Core.<*> (x Core..@? "MaxTTL")
      Core.<*> (x Core..@? "ParametersInCacheKeyAndForwardedToOrigin")