{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.DeleteAnomalySubscription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a cost anomaly subscription.
module Network.AWS.CostExplorer.DeleteAnomalySubscription
  ( -- * Creating a request
    DeleteAnomalySubscription (..),
    mkDeleteAnomalySubscription,

    -- ** Request lenses
    dasSubscriptionArn,

    -- * Destructuring the response
    DeleteAnomalySubscriptionResponse (..),
    mkDeleteAnomalySubscriptionResponse,

    -- ** Response lenses
    dasrrsResponseStatus,
  )
where

import qualified Network.AWS.CostExplorer.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteAnomalySubscription' smart constructor.
newtype DeleteAnomalySubscription = DeleteAnomalySubscription'
  { -- | The unique identifier of the cost anomaly subscription that you want to delete.
    subscriptionArn :: Types.GenericString
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAnomalySubscription' value with any optional fields omitted.
mkDeleteAnomalySubscription ::
  -- | 'subscriptionArn'
  Types.GenericString ->
  DeleteAnomalySubscription
mkDeleteAnomalySubscription subscriptionArn =
  DeleteAnomalySubscription' {subscriptionArn}

-- | The unique identifier of the cost anomaly subscription that you want to delete.
--
-- /Note:/ Consider using 'subscriptionArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasSubscriptionArn :: Lens.Lens' DeleteAnomalySubscription Types.GenericString
dasSubscriptionArn = Lens.field @"subscriptionArn"
{-# DEPRECATED dasSubscriptionArn "Use generic-lens or generic-optics with 'subscriptionArn' instead." #-}

instance Core.FromJSON DeleteAnomalySubscription where
  toJSON DeleteAnomalySubscription {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("SubscriptionArn" Core..= subscriptionArn)]
      )

instance Core.AWSRequest DeleteAnomalySubscription where
  type
    Rs DeleteAnomalySubscription =
      DeleteAnomalySubscriptionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSInsightsIndexService.DeleteAnomalySubscription"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteAnomalySubscriptionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDeleteAnomalySubscriptionResponse' smart constructor.
newtype DeleteAnomalySubscriptionResponse = DeleteAnomalySubscriptionResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAnomalySubscriptionResponse' value with any optional fields omitted.
mkDeleteAnomalySubscriptionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeleteAnomalySubscriptionResponse
mkDeleteAnomalySubscriptionResponse responseStatus =
  DeleteAnomalySubscriptionResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasrrsResponseStatus :: Lens.Lens' DeleteAnomalySubscriptionResponse Core.Int
dasrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dasrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}