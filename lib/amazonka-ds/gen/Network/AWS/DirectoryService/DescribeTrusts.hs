{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.DescribeTrusts
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains information about the trust relationships for this account.
--
-- If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.
--
-- This operation returns paginated results.
module Network.AWS.DirectoryService.DescribeTrusts
  ( -- * Creating a request
    DescribeTrusts (..),
    mkDescribeTrusts,

    -- ** Request lenses
    dtDirectoryId,
    dtLimit,
    dtNextToken,
    dtTrustIds,

    -- * Destructuring the response
    DescribeTrustsResponse (..),
    mkDescribeTrustsResponse,

    -- ** Response lenses
    dtrrsNextToken,
    dtrrsTrusts,
    dtrrsResponseStatus,
  )
where

import qualified Network.AWS.DirectoryService.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Describes the trust relationships for a particular AWS Managed Microsoft AD directory. If no input parameters are are provided, such as directory ID or trust ID, this request describes all the trust relationships.
--
-- /See:/ 'mkDescribeTrusts' smart constructor.
data DescribeTrusts = DescribeTrusts'
  { -- | The Directory ID of the AWS directory that is a part of the requested trust relationship.
    directoryId :: Core.Maybe Types.DirectoryId,
    -- | The maximum number of objects to return.
    limit :: Core.Maybe Core.Natural,
    -- | The /DescribeTrustsResult.NextToken/ value from a previous call to 'DescribeTrusts' . Pass null if this is the first call.
    nextToken :: Core.Maybe Types.NextToken,
    -- | A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned.
    --
    -- An empty list results in an @InvalidParameterException@ being thrown.
    trustIds :: Core.Maybe [Types.TrustId]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeTrusts' value with any optional fields omitted.
mkDescribeTrusts ::
  DescribeTrusts
mkDescribeTrusts =
  DescribeTrusts'
    { directoryId = Core.Nothing,
      limit = Core.Nothing,
      nextToken = Core.Nothing,
      trustIds = Core.Nothing
    }

-- | The Directory ID of the AWS directory that is a part of the requested trust relationship.
--
-- /Note:/ Consider using 'directoryId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtDirectoryId :: Lens.Lens' DescribeTrusts (Core.Maybe Types.DirectoryId)
dtDirectoryId = Lens.field @"directoryId"
{-# DEPRECATED dtDirectoryId "Use generic-lens or generic-optics with 'directoryId' instead." #-}

-- | The maximum number of objects to return.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtLimit :: Lens.Lens' DescribeTrusts (Core.Maybe Core.Natural)
dtLimit = Lens.field @"limit"
{-# DEPRECATED dtLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | The /DescribeTrustsResult.NextToken/ value from a previous call to 'DescribeTrusts' . Pass null if this is the first call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtNextToken :: Lens.Lens' DescribeTrusts (Core.Maybe Types.NextToken)
dtNextToken = Lens.field @"nextToken"
{-# DEPRECATED dtNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned.
--
-- An empty list results in an @InvalidParameterException@ being thrown.
--
-- /Note:/ Consider using 'trustIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtTrustIds :: Lens.Lens' DescribeTrusts (Core.Maybe [Types.TrustId])
dtTrustIds = Lens.field @"trustIds"
{-# DEPRECATED dtTrustIds "Use generic-lens or generic-optics with 'trustIds' instead." #-}

instance Core.FromJSON DescribeTrusts where
  toJSON DescribeTrusts {..} =
    Core.object
      ( Core.catMaybes
          [ ("DirectoryId" Core..=) Core.<$> directoryId,
            ("Limit" Core..=) Core.<$> limit,
            ("NextToken" Core..=) Core.<$> nextToken,
            ("TrustIds" Core..=) Core.<$> trustIds
          ]
      )

instance Core.AWSRequest DescribeTrusts where
  type Rs DescribeTrusts = DescribeTrustsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "DirectoryService_20150416.DescribeTrusts")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeTrustsResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "Trusts")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeTrusts where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"trusts" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | The result of a DescribeTrust request.
--
-- /See:/ 'mkDescribeTrustsResponse' smart constructor.
data DescribeTrustsResponse = DescribeTrustsResponse'
  { -- | If not null, more results are available. Pass this value for the /NextToken/ parameter in a subsequent call to 'DescribeTrusts' to retrieve the next set of items.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The list of Trust objects that were retrieved.
    --
    -- It is possible that this list contains less than the number of items specified in the /Limit/ member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.
    trusts :: Core.Maybe [Types.Trust],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeTrustsResponse' value with any optional fields omitted.
mkDescribeTrustsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeTrustsResponse
mkDescribeTrustsResponse responseStatus =
  DescribeTrustsResponse'
    { nextToken = Core.Nothing,
      trusts = Core.Nothing,
      responseStatus
    }

-- | If not null, more results are available. Pass this value for the /NextToken/ parameter in a subsequent call to 'DescribeTrusts' to retrieve the next set of items.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrrsNextToken :: Lens.Lens' DescribeTrustsResponse (Core.Maybe Types.NextToken)
dtrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dtrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The list of Trust objects that were retrieved.
--
-- It is possible that this list contains less than the number of items specified in the /Limit/ member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.
--
-- /Note:/ Consider using 'trusts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrrsTrusts :: Lens.Lens' DescribeTrustsResponse (Core.Maybe [Types.Trust])
dtrrsTrusts = Lens.field @"trusts"
{-# DEPRECATED dtrrsTrusts "Use generic-lens or generic-optics with 'trusts' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrrsResponseStatus :: Lens.Lens' DescribeTrustsResponse Core.Int
dtrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dtrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}