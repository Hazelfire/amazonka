{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.DescribeDomainControllers
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about any domain controllers in your directory.
--
-- This operation returns paginated results.
module Network.AWS.DirectoryService.DescribeDomainControllers
  ( -- * Creating a request
    DescribeDomainControllers (..),
    mkDescribeDomainControllers,

    -- ** Request lenses
    ddcDirectoryId,
    ddcDomainControllerIds,
    ddcLimit,
    ddcNextToken,

    -- * Destructuring the response
    DescribeDomainControllersResponse (..),
    mkDescribeDomainControllersResponse,

    -- ** Response lenses
    ddcrrsDomainControllers,
    ddcrrsNextToken,
    ddcrrsResponseStatus,
  )
where

import qualified Network.AWS.DirectoryService.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeDomainControllers' smart constructor.
data DescribeDomainControllers = DescribeDomainControllers'
  { -- | Identifier of the directory for which to retrieve the domain controller information.
    directoryId :: Types.DirectoryId,
    -- | A list of identifiers for the domain controllers whose information will be provided.
    domainControllerIds :: Core.Maybe [Types.DomainControllerId],
    -- | The maximum number of items to return.
    limit :: Core.Maybe Core.Natural,
    -- | The /DescribeDomainControllers.NextToken/ value from a previous call to 'DescribeDomainControllers' . Pass null if this is the first call.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeDomainControllers' value with any optional fields omitted.
mkDescribeDomainControllers ::
  -- | 'directoryId'
  Types.DirectoryId ->
  DescribeDomainControllers
mkDescribeDomainControllers directoryId =
  DescribeDomainControllers'
    { directoryId,
      domainControllerIds = Core.Nothing,
      limit = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | Identifier of the directory for which to retrieve the domain controller information.
--
-- /Note:/ Consider using 'directoryId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcDirectoryId :: Lens.Lens' DescribeDomainControllers Types.DirectoryId
ddcDirectoryId = Lens.field @"directoryId"
{-# DEPRECATED ddcDirectoryId "Use generic-lens or generic-optics with 'directoryId' instead." #-}

-- | A list of identifiers for the domain controllers whose information will be provided.
--
-- /Note:/ Consider using 'domainControllerIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcDomainControllerIds :: Lens.Lens' DescribeDomainControllers (Core.Maybe [Types.DomainControllerId])
ddcDomainControllerIds = Lens.field @"domainControllerIds"
{-# DEPRECATED ddcDomainControllerIds "Use generic-lens or generic-optics with 'domainControllerIds' instead." #-}

-- | The maximum number of items to return.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcLimit :: Lens.Lens' DescribeDomainControllers (Core.Maybe Core.Natural)
ddcLimit = Lens.field @"limit"
{-# DEPRECATED ddcLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | The /DescribeDomainControllers.NextToken/ value from a previous call to 'DescribeDomainControllers' . Pass null if this is the first call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcNextToken :: Lens.Lens' DescribeDomainControllers (Core.Maybe Types.NextToken)
ddcNextToken = Lens.field @"nextToken"
{-# DEPRECATED ddcNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON DescribeDomainControllers where
  toJSON DescribeDomainControllers {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("DirectoryId" Core..= directoryId),
            ("DomainControllerIds" Core..=) Core.<$> domainControllerIds,
            ("Limit" Core..=) Core.<$> limit,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest DescribeDomainControllers where
  type
    Rs DescribeDomainControllers =
      DescribeDomainControllersResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "DirectoryService_20150416.DescribeDomainControllers"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDomainControllersResponse'
            Core.<$> (x Core..:? "DomainControllers")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeDomainControllers where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"domainControllers" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeDomainControllersResponse' smart constructor.
data DescribeDomainControllersResponse = DescribeDomainControllersResponse'
  { -- | List of the 'DomainController' objects that were retrieved.
    domainControllers :: Core.Maybe [Types.DomainController],
    -- | If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeDomainControllers' retrieve the next set of items.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeDomainControllersResponse' value with any optional fields omitted.
mkDescribeDomainControllersResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeDomainControllersResponse
mkDescribeDomainControllersResponse responseStatus =
  DescribeDomainControllersResponse'
    { domainControllers =
        Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | List of the 'DomainController' objects that were retrieved.
--
-- /Note:/ Consider using 'domainControllers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcrrsDomainControllers :: Lens.Lens' DescribeDomainControllersResponse (Core.Maybe [Types.DomainController])
ddcrrsDomainControllers = Lens.field @"domainControllers"
{-# DEPRECATED ddcrrsDomainControllers "Use generic-lens or generic-optics with 'domainControllers' instead." #-}

-- | If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeDomainControllers' retrieve the next set of items.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcrrsNextToken :: Lens.Lens' DescribeDomainControllersResponse (Core.Maybe Types.NextToken)
ddcrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED ddcrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddcrrsResponseStatus :: Lens.Lens' DescribeDomainControllersResponse Core.Int
ddcrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ddcrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}