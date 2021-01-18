{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.PutAggregationAuthorization
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Authorizes the aggregator account and region to collect data from the source account and region.
module Network.AWS.Config.PutAggregationAuthorization
  ( -- * Creating a request
    PutAggregationAuthorization (..),
    mkPutAggregationAuthorization,

    -- ** Request lenses
    paaAuthorizedAccountId,
    paaAuthorizedAwsRegion,
    paaTags,

    -- * Destructuring the response
    PutAggregationAuthorizationResponse (..),
    mkPutAggregationAuthorizationResponse,

    -- ** Response lenses
    paarrsAggregationAuthorization,
    paarrsResponseStatus,
  )
where

import qualified Network.AWS.Config.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutAggregationAuthorization' smart constructor.
data PutAggregationAuthorization = PutAggregationAuthorization'
  { -- | The 12-digit account ID of the account authorized to aggregate data.
    authorizedAccountId :: Types.AccountId,
    -- | The region authorized to collect aggregated data.
    authorizedAwsRegion :: Types.AuthorizedAwsRegion,
    -- | An array of tag object.
    tags :: Core.Maybe [Types.Tag]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutAggregationAuthorization' value with any optional fields omitted.
mkPutAggregationAuthorization ::
  -- | 'authorizedAccountId'
  Types.AccountId ->
  -- | 'authorizedAwsRegion'
  Types.AuthorizedAwsRegion ->
  PutAggregationAuthorization
mkPutAggregationAuthorization
  authorizedAccountId
  authorizedAwsRegion =
    PutAggregationAuthorization'
      { authorizedAccountId,
        authorizedAwsRegion,
        tags = Core.Nothing
      }

-- | The 12-digit account ID of the account authorized to aggregate data.
--
-- /Note:/ Consider using 'authorizedAccountId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
paaAuthorizedAccountId :: Lens.Lens' PutAggregationAuthorization Types.AccountId
paaAuthorizedAccountId = Lens.field @"authorizedAccountId"
{-# DEPRECATED paaAuthorizedAccountId "Use generic-lens or generic-optics with 'authorizedAccountId' instead." #-}

-- | The region authorized to collect aggregated data.
--
-- /Note:/ Consider using 'authorizedAwsRegion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
paaAuthorizedAwsRegion :: Lens.Lens' PutAggregationAuthorization Types.AuthorizedAwsRegion
paaAuthorizedAwsRegion = Lens.field @"authorizedAwsRegion"
{-# DEPRECATED paaAuthorizedAwsRegion "Use generic-lens or generic-optics with 'authorizedAwsRegion' instead." #-}

-- | An array of tag object.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
paaTags :: Lens.Lens' PutAggregationAuthorization (Core.Maybe [Types.Tag])
paaTags = Lens.field @"tags"
{-# DEPRECATED paaTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.FromJSON PutAggregationAuthorization where
  toJSON PutAggregationAuthorization {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("AuthorizedAccountId" Core..= authorizedAccountId),
            Core.Just ("AuthorizedAwsRegion" Core..= authorizedAwsRegion),
            ("Tags" Core..=) Core.<$> tags
          ]
      )

instance Core.AWSRequest PutAggregationAuthorization where
  type
    Rs PutAggregationAuthorization =
      PutAggregationAuthorizationResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "StarlingDoveService.PutAggregationAuthorization")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          PutAggregationAuthorizationResponse'
            Core.<$> (x Core..:? "AggregationAuthorization")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkPutAggregationAuthorizationResponse' smart constructor.
data PutAggregationAuthorizationResponse = PutAggregationAuthorizationResponse'
  { -- | Returns an AggregationAuthorization object.
    aggregationAuthorization :: Core.Maybe Types.AggregationAuthorization,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'PutAggregationAuthorizationResponse' value with any optional fields omitted.
mkPutAggregationAuthorizationResponse ::
  -- | 'responseStatus'
  Core.Int ->
  PutAggregationAuthorizationResponse
mkPutAggregationAuthorizationResponse responseStatus =
  PutAggregationAuthorizationResponse'
    { aggregationAuthorization =
        Core.Nothing,
      responseStatus
    }

-- | Returns an AggregationAuthorization object.
--
-- /Note:/ Consider using 'aggregationAuthorization' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
paarrsAggregationAuthorization :: Lens.Lens' PutAggregationAuthorizationResponse (Core.Maybe Types.AggregationAuthorization)
paarrsAggregationAuthorization = Lens.field @"aggregationAuthorization"
{-# DEPRECATED paarrsAggregationAuthorization "Use generic-lens or generic-optics with 'aggregationAuthorization' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
paarrsResponseStatus :: Lens.Lens' PutAggregationAuthorizationResponse Core.Int
paarrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED paarrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}