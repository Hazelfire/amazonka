{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Mobile.DescribeBundle
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the bundle details for the requested bundle id.
module Network.AWS.Mobile.DescribeBundle
  ( -- * Creating a request
    DescribeBundle (..),
    mkDescribeBundle,

    -- ** Request lenses
    dbBundleId,

    -- * Destructuring the response
    DescribeBundleResponse (..),
    mkDescribeBundleResponse,

    -- ** Response lenses
    dbrrsDetails,
    dbrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Mobile.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Request structure to request the details of a specific bundle.
--
-- /See:/ 'mkDescribeBundle' smart constructor.
newtype DescribeBundle = DescribeBundle'
  { -- | Unique bundle identifier.
    bundleId :: Types.BundleId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeBundle' value with any optional fields omitted.
mkDescribeBundle ::
  -- | 'bundleId'
  Types.BundleId ->
  DescribeBundle
mkDescribeBundle bundleId = DescribeBundle' {bundleId}

-- | Unique bundle identifier.
--
-- /Note:/ Consider using 'bundleId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbBundleId :: Lens.Lens' DescribeBundle Types.BundleId
dbBundleId = Lens.field @"bundleId"
{-# DEPRECATED dbBundleId "Use generic-lens or generic-optics with 'bundleId' instead." #-}

instance Core.AWSRequest DescribeBundle where
  type Rs DescribeBundle = DescribeBundleResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath ("/bundles/" Core.<> (Core.toText bundleId)),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeBundleResponse'
            Core.<$> (x Core..:? "details") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Result structure contains the details of the bundle.
--
-- /See:/ 'mkDescribeBundleResponse' smart constructor.
data DescribeBundleResponse = DescribeBundleResponse'
  { -- | The details of the bundle.
    details :: Core.Maybe Types.BundleDetails,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeBundleResponse' value with any optional fields omitted.
mkDescribeBundleResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeBundleResponse
mkDescribeBundleResponse responseStatus =
  DescribeBundleResponse' {details = Core.Nothing, responseStatus}

-- | The details of the bundle.
--
-- /Note:/ Consider using 'details' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrrsDetails :: Lens.Lens' DescribeBundleResponse (Core.Maybe Types.BundleDetails)
dbrrsDetails = Lens.field @"details"
{-# DEPRECATED dbrrsDetails "Use generic-lens or generic-optics with 'details' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrrsResponseStatus :: Lens.Lens' DescribeBundleResponse Core.Int
dbrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dbrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}