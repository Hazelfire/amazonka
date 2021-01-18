{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.ListSecurityConfigurations
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.
--
-- This operation returns paginated results.
module Network.AWS.EMR.ListSecurityConfigurations
  ( -- * Creating a request
    ListSecurityConfigurations (..),
    mkListSecurityConfigurations,

    -- ** Request lenses
    lscMarker,

    -- * Destructuring the response
    ListSecurityConfigurationsResponse (..),
    mkListSecurityConfigurationsResponse,

    -- ** Response lenses
    lscrrsMarker,
    lscrrsSecurityConfigurations,
    lscrrsResponseStatus,
  )
where

import qualified Network.AWS.EMR.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListSecurityConfigurations' smart constructor.
newtype ListSecurityConfigurations = ListSecurityConfigurations'
  { -- | The pagination token that indicates the set of results to retrieve.
    marker :: Core.Maybe Types.Marker
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'ListSecurityConfigurations' value with any optional fields omitted.
mkListSecurityConfigurations ::
  ListSecurityConfigurations
mkListSecurityConfigurations =
  ListSecurityConfigurations' {marker = Core.Nothing}

-- | The pagination token that indicates the set of results to retrieve.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lscMarker :: Lens.Lens' ListSecurityConfigurations (Core.Maybe Types.Marker)
lscMarker = Lens.field @"marker"
{-# DEPRECATED lscMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

instance Core.FromJSON ListSecurityConfigurations where
  toJSON ListSecurityConfigurations {..} =
    Core.object (Core.catMaybes [("Marker" Core..=) Core.<$> marker])

instance Core.AWSRequest ListSecurityConfigurations where
  type
    Rs ListSecurityConfigurations =
      ListSecurityConfigurationsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "ElasticMapReduce.ListSecurityConfigurations")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSecurityConfigurationsResponse'
            Core.<$> (x Core..:? "Marker")
            Core.<*> (x Core..:? "SecurityConfigurations")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListSecurityConfigurations where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"marker") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"securityConfigurations" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"marker"
        )

-- | /See:/ 'mkListSecurityConfigurationsResponse' smart constructor.
data ListSecurityConfigurationsResponse = ListSecurityConfigurationsResponse'
  { -- | A pagination token that indicates the next set of results to retrieve. Include the marker in the next ListSecurityConfiguration call to retrieve the next page of results, if required.
    marker :: Core.Maybe Types.Marker,
    -- | The creation date and time, and name, of each security configuration.
    securityConfigurations :: Core.Maybe [Types.SecurityConfigurationSummary],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListSecurityConfigurationsResponse' value with any optional fields omitted.
mkListSecurityConfigurationsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListSecurityConfigurationsResponse
mkListSecurityConfigurationsResponse responseStatus =
  ListSecurityConfigurationsResponse'
    { marker = Core.Nothing,
      securityConfigurations = Core.Nothing,
      responseStatus
    }

-- | A pagination token that indicates the next set of results to retrieve. Include the marker in the next ListSecurityConfiguration call to retrieve the next page of results, if required.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lscrrsMarker :: Lens.Lens' ListSecurityConfigurationsResponse (Core.Maybe Types.Marker)
lscrrsMarker = Lens.field @"marker"
{-# DEPRECATED lscrrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The creation date and time, and name, of each security configuration.
--
-- /Note:/ Consider using 'securityConfigurations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lscrrsSecurityConfigurations :: Lens.Lens' ListSecurityConfigurationsResponse (Core.Maybe [Types.SecurityConfigurationSummary])
lscrrsSecurityConfigurations = Lens.field @"securityConfigurations"
{-# DEPRECATED lscrrsSecurityConfigurations "Use generic-lens or generic-optics with 'securityConfigurations' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lscrrsResponseStatus :: Lens.Lens' ListSecurityConfigurationsResponse Core.Int
lscrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lscrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}