{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.DistributionConfigWithTags
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.DistributionConfigWithTags
  ( DistributionConfigWithTags (..),

    -- * Smart constructor
    mkDistributionConfigWithTags,

    -- * Lenses
    dcwtDistributionConfig,
    dcwtTags,
  )
where

import qualified Network.AWS.CloudFront.Types.DistributionConfig as Types
import qualified Network.AWS.CloudFront.Types.Tags as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A distribution Configuration and a list of tags to be associated with the distribution.
--
-- /See:/ 'mkDistributionConfigWithTags' smart constructor.
data DistributionConfigWithTags = DistributionConfigWithTags'
  { -- | A distribution configuration.
    distributionConfig :: Types.DistributionConfig,
    -- | A complex type that contains zero or more @Tag@ elements.
    tags :: Types.Tags
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DistributionConfigWithTags' value with any optional fields omitted.
mkDistributionConfigWithTags ::
  -- | 'distributionConfig'
  Types.DistributionConfig ->
  -- | 'tags'
  Types.Tags ->
  DistributionConfigWithTags
mkDistributionConfigWithTags distributionConfig tags =
  DistributionConfigWithTags' {distributionConfig, tags}

-- | A distribution configuration.
--
-- /Note:/ Consider using 'distributionConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dcwtDistributionConfig :: Lens.Lens' DistributionConfigWithTags Types.DistributionConfig
dcwtDistributionConfig = Lens.field @"distributionConfig"
{-# DEPRECATED dcwtDistributionConfig "Use generic-lens or generic-optics with 'distributionConfig' instead." #-}

-- | A complex type that contains zero or more @Tag@ elements.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dcwtTags :: Lens.Lens' DistributionConfigWithTags Types.Tags
dcwtTags = Lens.field @"tags"
{-# DEPRECATED dcwtTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.ToXML DistributionConfigWithTags where
  toXML DistributionConfigWithTags {..} =
    Core.toXMLNode "DistributionConfig" distributionConfig
      Core.<> Core.toXMLNode "Tags" tags