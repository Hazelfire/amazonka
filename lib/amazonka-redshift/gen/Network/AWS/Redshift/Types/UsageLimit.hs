{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.UsageLimit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.UsageLimit
  ( UsageLimit (..),

    -- * Smart constructor
    mkUsageLimit,

    -- * Lenses
    ulAmount,
    ulBreachAction,
    ulClusterIdentifier,
    ulFeatureType,
    ulLimitType,
    ulPeriod,
    ulTags,
    ulUsageLimitId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Redshift.Internal as Types
import qualified Network.AWS.Redshift.Types.String as Types
import qualified Network.AWS.Redshift.Types.Tag as Types
import qualified Network.AWS.Redshift.Types.UsageLimitBreachAction as Types
import qualified Network.AWS.Redshift.Types.UsageLimitFeatureType as Types
import qualified Network.AWS.Redshift.Types.UsageLimitLimitType as Types
import qualified Network.AWS.Redshift.Types.UsageLimitPeriod as Types

-- | Describes a usage limit object for a cluster.
--
-- /See:/ 'mkUsageLimit' smart constructor.
data UsageLimit = UsageLimit'
  { -- | The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).
    amount :: Core.Maybe Core.Integer,
    -- | The action that Amazon Redshift takes when the limit is reached. Possible values are:
    --
    --
    --     * __log__ - To log an event in a system table. The default is log.
    --
    --
    --     * __emit-metric__ - To emit CloudWatch metrics.
    --
    --
    --     * __disable__ - To disable the feature until the next usage period begins.
    breachAction :: Core.Maybe Types.UsageLimitBreachAction,
    -- | The identifier of the cluster with a usage limit.
    clusterIdentifier :: Core.Maybe Types.String,
    -- | The Amazon Redshift feature to which the limit applies.
    featureType :: Core.Maybe Types.UsageLimitFeatureType,
    -- | The type of limit. Depending on the feature type, this can be based on a time duration or data size.
    limitType :: Core.Maybe Types.UsageLimitLimitType,
    -- | The time period that the amount applies to. A @weekly@ period begins on Sunday. The default is @monthly@ .
    period :: Core.Maybe Types.UsageLimitPeriod,
    -- | A list of tag instances.
    tags :: Core.Maybe [Types.Tag],
    -- | The identifier of the usage limit.
    usageLimitId :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UsageLimit' value with any optional fields omitted.
mkUsageLimit ::
  UsageLimit
mkUsageLimit =
  UsageLimit'
    { amount = Core.Nothing,
      breachAction = Core.Nothing,
      clusterIdentifier = Core.Nothing,
      featureType = Core.Nothing,
      limitType = Core.Nothing,
      period = Core.Nothing,
      tags = Core.Nothing,
      usageLimitId = Core.Nothing
    }

-- | The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).
--
-- /Note:/ Consider using 'amount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulAmount :: Lens.Lens' UsageLimit (Core.Maybe Core.Integer)
ulAmount = Lens.field @"amount"
{-# DEPRECATED ulAmount "Use generic-lens or generic-optics with 'amount' instead." #-}

-- | The action that Amazon Redshift takes when the limit is reached. Possible values are:
--
--
--     * __log__ - To log an event in a system table. The default is log.
--
--
--     * __emit-metric__ - To emit CloudWatch metrics.
--
--
--     * __disable__ - To disable the feature until the next usage period begins.
--
--
--
-- /Note:/ Consider using 'breachAction' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulBreachAction :: Lens.Lens' UsageLimit (Core.Maybe Types.UsageLimitBreachAction)
ulBreachAction = Lens.field @"breachAction"
{-# DEPRECATED ulBreachAction "Use generic-lens or generic-optics with 'breachAction' instead." #-}

-- | The identifier of the cluster with a usage limit.
--
-- /Note:/ Consider using 'clusterIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulClusterIdentifier :: Lens.Lens' UsageLimit (Core.Maybe Types.String)
ulClusterIdentifier = Lens.field @"clusterIdentifier"
{-# DEPRECATED ulClusterIdentifier "Use generic-lens or generic-optics with 'clusterIdentifier' instead." #-}

-- | The Amazon Redshift feature to which the limit applies.
--
-- /Note:/ Consider using 'featureType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulFeatureType :: Lens.Lens' UsageLimit (Core.Maybe Types.UsageLimitFeatureType)
ulFeatureType = Lens.field @"featureType"
{-# DEPRECATED ulFeatureType "Use generic-lens or generic-optics with 'featureType' instead." #-}

-- | The type of limit. Depending on the feature type, this can be based on a time duration or data size.
--
-- /Note:/ Consider using 'limitType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulLimitType :: Lens.Lens' UsageLimit (Core.Maybe Types.UsageLimitLimitType)
ulLimitType = Lens.field @"limitType"
{-# DEPRECATED ulLimitType "Use generic-lens or generic-optics with 'limitType' instead." #-}

-- | The time period that the amount applies to. A @weekly@ period begins on Sunday. The default is @monthly@ .
--
-- /Note:/ Consider using 'period' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulPeriod :: Lens.Lens' UsageLimit (Core.Maybe Types.UsageLimitPeriod)
ulPeriod = Lens.field @"period"
{-# DEPRECATED ulPeriod "Use generic-lens or generic-optics with 'period' instead." #-}

-- | A list of tag instances.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulTags :: Lens.Lens' UsageLimit (Core.Maybe [Types.Tag])
ulTags = Lens.field @"tags"
{-# DEPRECATED ulTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The identifier of the usage limit.
--
-- /Note:/ Consider using 'usageLimitId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulUsageLimitId :: Lens.Lens' UsageLimit (Core.Maybe Types.String)
ulUsageLimitId = Lens.field @"usageLimitId"
{-# DEPRECATED ulUsageLimitId "Use generic-lens or generic-optics with 'usageLimitId' instead." #-}

instance Core.FromXML UsageLimit where
  parseXML x =
    UsageLimit'
      Core.<$> (x Core..@? "Amount")
      Core.<*> (x Core..@? "BreachAction")
      Core.<*> (x Core..@? "ClusterIdentifier")
      Core.<*> (x Core..@? "FeatureType")
      Core.<*> (x Core..@? "LimitType")
      Core.<*> (x Core..@? "Period")
      Core.<*> (x Core..@? "Tags" Core..<@> Core.parseXMLList "Tag")
      Core.<*> (x Core..@? "UsageLimitId")