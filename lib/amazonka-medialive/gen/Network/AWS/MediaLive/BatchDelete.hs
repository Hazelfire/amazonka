{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.BatchDelete
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts delete of resources.
module Network.AWS.MediaLive.BatchDelete
  ( -- * Creating a request
    BatchDelete (..),
    mkBatchDelete,

    -- ** Request lenses
    bdChannelIds,
    bdInputIds,
    bdInputSecurityGroupIds,
    bdMultiplexIds,

    -- * Destructuring the response
    BatchDeleteResponse (..),
    mkBatchDeleteResponse,

    -- ** Response lenses
    bdrrsFailed,
    bdrrsSuccessful,
    bdrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaLive.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to delete resources
--
-- /See:/ 'mkBatchDelete' smart constructor.
data BatchDelete = BatchDelete'
  { -- | List of channel IDs
    channelIds :: Core.Maybe [Core.Text],
    -- | List of input IDs
    inputIds :: Core.Maybe [Core.Text],
    -- | List of input security group IDs
    inputSecurityGroupIds :: Core.Maybe [Core.Text],
    -- | List of multiplex IDs
    multiplexIds :: Core.Maybe [Core.Text]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchDelete' value with any optional fields omitted.
mkBatchDelete ::
  BatchDelete
mkBatchDelete =
  BatchDelete'
    { channelIds = Core.Nothing,
      inputIds = Core.Nothing,
      inputSecurityGroupIds = Core.Nothing,
      multiplexIds = Core.Nothing
    }

-- | List of channel IDs
--
-- /Note:/ Consider using 'channelIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdChannelIds :: Lens.Lens' BatchDelete (Core.Maybe [Core.Text])
bdChannelIds = Lens.field @"channelIds"
{-# DEPRECATED bdChannelIds "Use generic-lens or generic-optics with 'channelIds' instead." #-}

-- | List of input IDs
--
-- /Note:/ Consider using 'inputIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdInputIds :: Lens.Lens' BatchDelete (Core.Maybe [Core.Text])
bdInputIds = Lens.field @"inputIds"
{-# DEPRECATED bdInputIds "Use generic-lens or generic-optics with 'inputIds' instead." #-}

-- | List of input security group IDs
--
-- /Note:/ Consider using 'inputSecurityGroupIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdInputSecurityGroupIds :: Lens.Lens' BatchDelete (Core.Maybe [Core.Text])
bdInputSecurityGroupIds = Lens.field @"inputSecurityGroupIds"
{-# DEPRECATED bdInputSecurityGroupIds "Use generic-lens or generic-optics with 'inputSecurityGroupIds' instead." #-}

-- | List of multiplex IDs
--
-- /Note:/ Consider using 'multiplexIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdMultiplexIds :: Lens.Lens' BatchDelete (Core.Maybe [Core.Text])
bdMultiplexIds = Lens.field @"multiplexIds"
{-# DEPRECATED bdMultiplexIds "Use generic-lens or generic-optics with 'multiplexIds' instead." #-}

instance Core.FromJSON BatchDelete where
  toJSON BatchDelete {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelIds" Core..=) Core.<$> channelIds,
            ("inputIds" Core..=) Core.<$> inputIds,
            ("inputSecurityGroupIds" Core..=) Core.<$> inputSecurityGroupIds,
            ("multiplexIds" Core..=) Core.<$> multiplexIds
          ]
      )

instance Core.AWSRequest BatchDelete where
  type Rs BatchDelete = BatchDeleteResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/prod/batch/delete",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDeleteResponse'
            Core.<$> (x Core..:? "failed")
            Core.<*> (x Core..:? "successful")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Placeholder documentation for BatchDeleteResponse
--
-- /See:/ 'mkBatchDeleteResponse' smart constructor.
data BatchDeleteResponse = BatchDeleteResponse'
  { -- | List of failed operations
    failed :: Core.Maybe [Types.BatchFailedResultModel],
    -- | List of successful operations
    successful :: Core.Maybe [Types.BatchSuccessfulResultModel],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchDeleteResponse' value with any optional fields omitted.
mkBatchDeleteResponse ::
  -- | 'responseStatus'
  Core.Int ->
  BatchDeleteResponse
mkBatchDeleteResponse responseStatus =
  BatchDeleteResponse'
    { failed = Core.Nothing,
      successful = Core.Nothing,
      responseStatus
    }

-- | List of failed operations
--
-- /Note:/ Consider using 'failed' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdrrsFailed :: Lens.Lens' BatchDeleteResponse (Core.Maybe [Types.BatchFailedResultModel])
bdrrsFailed = Lens.field @"failed"
{-# DEPRECATED bdrrsFailed "Use generic-lens or generic-optics with 'failed' instead." #-}

-- | List of successful operations
--
-- /Note:/ Consider using 'successful' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdrrsSuccessful :: Lens.Lens' BatchDeleteResponse (Core.Maybe [Types.BatchSuccessfulResultModel])
bdrrsSuccessful = Lens.field @"successful"
{-# DEPRECATED bdrrsSuccessful "Use generic-lens or generic-optics with 'successful' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdrrsResponseStatus :: Lens.Lens' BatchDeleteResponse Core.Int
bdrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED bdrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}