{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.UpdateDistribution
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing Amazon Lightsail content delivery network (CDN) distribution.
--
-- Use this action to update the configuration of your existing distribution
module Network.AWS.Lightsail.UpdateDistribution
  ( -- * Creating a request
    UpdateDistribution (..),
    mkUpdateDistribution,

    -- ** Request lenses
    udDistributionName,
    udCacheBehaviorSettings,
    udCacheBehaviors,
    udDefaultCacheBehavior,
    udIsEnabled,
    udOrigin,

    -- * Destructuring the response
    UpdateDistributionResponse (..),
    mkUpdateDistributionResponse,

    -- ** Response lenses
    udrrsOperation,
    udrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateDistribution' smart constructor.
data UpdateDistribution = UpdateDistribution'
  { -- | The name of the distribution to update.
    --
    -- Use the @GetDistributions@ action to get a list of distribution names that you can specify.
    distributionName :: Types.ResourceName,
    -- | An object that describes the cache behavior settings for the distribution.
    cacheBehaviorSettings :: Core.Maybe Types.CacheSettings,
    -- | An array of objects that describe the per-path cache behavior for the distribution.
    cacheBehaviors :: Core.Maybe [Types.CacheBehaviorPerPath],
    -- | An object that describes the default cache behavior for the distribution.
    defaultCacheBehavior :: Core.Maybe Types.CacheBehavior,
    -- | Indicates whether to enable the distribution.
    isEnabled :: Core.Maybe Core.Bool,
    -- | An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer.
    --
    -- The distribution pulls, caches, and serves content from the origin.
    origin :: Core.Maybe Types.InputOrigin
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateDistribution' value with any optional fields omitted.
mkUpdateDistribution ::
  -- | 'distributionName'
  Types.ResourceName ->
  UpdateDistribution
mkUpdateDistribution distributionName =
  UpdateDistribution'
    { distributionName,
      cacheBehaviorSettings = Core.Nothing,
      cacheBehaviors = Core.Nothing,
      defaultCacheBehavior = Core.Nothing,
      isEnabled = Core.Nothing,
      origin = Core.Nothing
    }

-- | The name of the distribution to update.
--
-- Use the @GetDistributions@ action to get a list of distribution names that you can specify.
--
-- /Note:/ Consider using 'distributionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udDistributionName :: Lens.Lens' UpdateDistribution Types.ResourceName
udDistributionName = Lens.field @"distributionName"
{-# DEPRECATED udDistributionName "Use generic-lens or generic-optics with 'distributionName' instead." #-}

-- | An object that describes the cache behavior settings for the distribution.
--
-- /Note:/ Consider using 'cacheBehaviorSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udCacheBehaviorSettings :: Lens.Lens' UpdateDistribution (Core.Maybe Types.CacheSettings)
udCacheBehaviorSettings = Lens.field @"cacheBehaviorSettings"
{-# DEPRECATED udCacheBehaviorSettings "Use generic-lens or generic-optics with 'cacheBehaviorSettings' instead." #-}

-- | An array of objects that describe the per-path cache behavior for the distribution.
--
-- /Note:/ Consider using 'cacheBehaviors' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udCacheBehaviors :: Lens.Lens' UpdateDistribution (Core.Maybe [Types.CacheBehaviorPerPath])
udCacheBehaviors = Lens.field @"cacheBehaviors"
{-# DEPRECATED udCacheBehaviors "Use generic-lens or generic-optics with 'cacheBehaviors' instead." #-}

-- | An object that describes the default cache behavior for the distribution.
--
-- /Note:/ Consider using 'defaultCacheBehavior' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udDefaultCacheBehavior :: Lens.Lens' UpdateDistribution (Core.Maybe Types.CacheBehavior)
udDefaultCacheBehavior = Lens.field @"defaultCacheBehavior"
{-# DEPRECATED udDefaultCacheBehavior "Use generic-lens or generic-optics with 'defaultCacheBehavior' instead." #-}

-- | Indicates whether to enable the distribution.
--
-- /Note:/ Consider using 'isEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udIsEnabled :: Lens.Lens' UpdateDistribution (Core.Maybe Core.Bool)
udIsEnabled = Lens.field @"isEnabled"
{-# DEPRECATED udIsEnabled "Use generic-lens or generic-optics with 'isEnabled' instead." #-}

-- | An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer.
--
-- The distribution pulls, caches, and serves content from the origin.
--
-- /Note:/ Consider using 'origin' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udOrigin :: Lens.Lens' UpdateDistribution (Core.Maybe Types.InputOrigin)
udOrigin = Lens.field @"origin"
{-# DEPRECATED udOrigin "Use generic-lens or generic-optics with 'origin' instead." #-}

instance Core.FromJSON UpdateDistribution where
  toJSON UpdateDistribution {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("distributionName" Core..= distributionName),
            ("cacheBehaviorSettings" Core..=) Core.<$> cacheBehaviorSettings,
            ("cacheBehaviors" Core..=) Core.<$> cacheBehaviors,
            ("defaultCacheBehavior" Core..=) Core.<$> defaultCacheBehavior,
            ("isEnabled" Core..=) Core.<$> isEnabled,
            ("origin" Core..=) Core.<$> origin
          ]
      )

instance Core.AWSRequest UpdateDistribution where
  type Rs UpdateDistribution = UpdateDistributionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "Lightsail_20161128.UpdateDistribution")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDistributionResponse'
            Core.<$> (x Core..:? "operation") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateDistributionResponse' smart constructor.
data UpdateDistributionResponse = UpdateDistributionResponse'
  { -- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
    operation :: Core.Maybe Types.Operation,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'UpdateDistributionResponse' value with any optional fields omitted.
mkUpdateDistributionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateDistributionResponse
mkUpdateDistributionResponse responseStatus =
  UpdateDistributionResponse'
    { operation = Core.Nothing,
      responseStatus
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- /Note:/ Consider using 'operation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udrrsOperation :: Lens.Lens' UpdateDistributionResponse (Core.Maybe Types.Operation)
udrrsOperation = Lens.field @"operation"
{-# DEPRECATED udrrsOperation "Use generic-lens or generic-optics with 'operation' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udrrsResponseStatus :: Lens.Lens' UpdateDistributionResponse Core.Int
udrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED udrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}