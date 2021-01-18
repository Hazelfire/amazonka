{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.ListDevicePools
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about device pools.
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListDevicePools
  ( -- * Creating a request
    ListDevicePools (..),
    mkListDevicePools,

    -- ** Request lenses
    ldpArn,
    ldpNextToken,
    ldpType,

    -- * Destructuring the response
    ListDevicePoolsResponse (..),
    mkListDevicePoolsResponse,

    -- ** Response lenses
    ldprrsDevicePools,
    ldprrsNextToken,
    ldprrsResponseStatus,
  )
where

import qualified Network.AWS.DeviceFarm.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the result of a list device pools request.
--
-- /See:/ 'mkListDevicePools' smart constructor.
data ListDevicePools = ListDevicePools'
  { -- | The project ARN.
    arn :: Types.Arn,
    -- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The device pools' type.
    --
    -- Allowed values include:
    --
    --     * CURATED: A device pool that is created and managed by AWS Device Farm.
    --
    --
    --     * PRIVATE: A device pool that is created and managed by the device pool developer.
    type' :: Core.Maybe Types.DevicePoolType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListDevicePools' value with any optional fields omitted.
mkListDevicePools ::
  -- | 'arn'
  Types.Arn ->
  ListDevicePools
mkListDevicePools arn =
  ListDevicePools'
    { arn,
      nextToken = Core.Nothing,
      type' = Core.Nothing
    }

-- | The project ARN.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldpArn :: Lens.Lens' ListDevicePools Types.Arn
ldpArn = Lens.field @"arn"
{-# DEPRECATED ldpArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldpNextToken :: Lens.Lens' ListDevicePools (Core.Maybe Types.NextToken)
ldpNextToken = Lens.field @"nextToken"
{-# DEPRECATED ldpNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The device pools' type.
--
-- Allowed values include:
--
--     * CURATED: A device pool that is created and managed by AWS Device Farm.
--
--
--     * PRIVATE: A device pool that is created and managed by the device pool developer.
--
--
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldpType :: Lens.Lens' ListDevicePools (Core.Maybe Types.DevicePoolType)
ldpType = Lens.field @"type'"
{-# DEPRECATED ldpType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.FromJSON ListDevicePools where
  toJSON ListDevicePools {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("arn" Core..= arn),
            ("nextToken" Core..=) Core.<$> nextToken,
            ("type" Core..=) Core.<$> type'
          ]
      )

instance Core.AWSRequest ListDevicePools where
  type Rs ListDevicePools = ListDevicePoolsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "DeviceFarm_20150623.ListDevicePools")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDevicePoolsResponse'
            Core.<$> (x Core..:? "devicePools")
            Core.<*> (x Core..:? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListDevicePools where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"devicePools" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | Represents the result of a list device pools request.
--
-- /See:/ 'mkListDevicePoolsResponse' smart constructor.
data ListDevicePoolsResponse = ListDevicePoolsResponse'
  { -- | Information about the device pools.
    devicePools :: Core.Maybe [Types.DevicePool],
    -- | If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListDevicePoolsResponse' value with any optional fields omitted.
mkListDevicePoolsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListDevicePoolsResponse
mkListDevicePoolsResponse responseStatus =
  ListDevicePoolsResponse'
    { devicePools = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | Information about the device pools.
--
-- /Note:/ Consider using 'devicePools' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldprrsDevicePools :: Lens.Lens' ListDevicePoolsResponse (Core.Maybe [Types.DevicePool])
ldprrsDevicePools = Lens.field @"devicePools"
{-# DEPRECATED ldprrsDevicePools "Use generic-lens or generic-optics with 'devicePools' instead." #-}

-- | If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldprrsNextToken :: Lens.Lens' ListDevicePoolsResponse (Core.Maybe Types.NextToken)
ldprrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED ldprrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldprrsResponseStatus :: Lens.Lens' ListDevicePoolsResponse Core.Int
ldprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ldprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}