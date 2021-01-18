{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.DeleteBandwidthRateLimit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the bandwidth rate limits of a gateway. You can delete either the upload and download bandwidth rate limit, or you can delete both. If you delete only one of the limits, the other limit remains unchanged. To specify which gateway to work with, use the Amazon Resource Name (ARN) of the gateway in your request. This operation is supported for the stored volume, cached volume and tape gateway types.
module Network.AWS.StorageGateway.DeleteBandwidthRateLimit
  ( -- * Creating a request
    DeleteBandwidthRateLimit (..),
    mkDeleteBandwidthRateLimit,

    -- ** Request lenses
    dbrlfGatewayARN,
    dbrlfBandwidthType,

    -- * Destructuring the response
    DeleteBandwidthRateLimitResponse (..),
    mkDeleteBandwidthRateLimitResponse,

    -- ** Response lenses
    dbrlrfrsGatewayARN,
    dbrlrfrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StorageGateway.Types as Types

-- | A JSON object containing the following fields:
--
--
--     * 'DeleteBandwidthRateLimitInput$BandwidthType'
--
--
--
-- /See:/ 'mkDeleteBandwidthRateLimit' smart constructor.
data DeleteBandwidthRateLimit = DeleteBandwidthRateLimit'
  { gatewayARN :: Types.GatewayARN,
    -- | One of the BandwidthType values that indicates the gateway bandwidth rate limit to delete.
    --
    -- Valid Values: @UPLOAD@ | @DOWNLOAD@ | @ALL@
    bandwidthType :: Types.BandwidthType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteBandwidthRateLimit' value with any optional fields omitted.
mkDeleteBandwidthRateLimit ::
  -- | 'gatewayARN'
  Types.GatewayARN ->
  -- | 'bandwidthType'
  Types.BandwidthType ->
  DeleteBandwidthRateLimit
mkDeleteBandwidthRateLimit gatewayARN bandwidthType =
  DeleteBandwidthRateLimit' {gatewayARN, bandwidthType}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrlfGatewayARN :: Lens.Lens' DeleteBandwidthRateLimit Types.GatewayARN
dbrlfGatewayARN = Lens.field @"gatewayARN"
{-# DEPRECATED dbrlfGatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead." #-}

-- | One of the BandwidthType values that indicates the gateway bandwidth rate limit to delete.
--
-- Valid Values: @UPLOAD@ | @DOWNLOAD@ | @ALL@
--
-- /Note:/ Consider using 'bandwidthType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrlfBandwidthType :: Lens.Lens' DeleteBandwidthRateLimit Types.BandwidthType
dbrlfBandwidthType = Lens.field @"bandwidthType"
{-# DEPRECATED dbrlfBandwidthType "Use generic-lens or generic-optics with 'bandwidthType' instead." #-}

instance Core.FromJSON DeleteBandwidthRateLimit where
  toJSON DeleteBandwidthRateLimit {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("GatewayARN" Core..= gatewayARN),
            Core.Just ("BandwidthType" Core..= bandwidthType)
          ]
      )

instance Core.AWSRequest DeleteBandwidthRateLimit where
  type Rs DeleteBandwidthRateLimit = DeleteBandwidthRateLimitResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "StorageGateway_20130630.DeleteBandwidthRateLimit"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteBandwidthRateLimitResponse'
            Core.<$> (x Core..:? "GatewayARN") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway whose bandwidth rate information was deleted.
--
-- /See:/ 'mkDeleteBandwidthRateLimitResponse' smart constructor.
data DeleteBandwidthRateLimitResponse = DeleteBandwidthRateLimitResponse'
  { gatewayARN :: Core.Maybe Types.GatewayARN,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteBandwidthRateLimitResponse' value with any optional fields omitted.
mkDeleteBandwidthRateLimitResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeleteBandwidthRateLimitResponse
mkDeleteBandwidthRateLimitResponse responseStatus =
  DeleteBandwidthRateLimitResponse'
    { gatewayARN = Core.Nothing,
      responseStatus
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrlrfrsGatewayARN :: Lens.Lens' DeleteBandwidthRateLimitResponse (Core.Maybe Types.GatewayARN)
dbrlrfrsGatewayARN = Lens.field @"gatewayARN"
{-# DEPRECATED dbrlrfrsGatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrlrfrsResponseStatus :: Lens.Lens' DeleteBandwidthRateLimitResponse Core.Int
dbrlrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dbrlrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}