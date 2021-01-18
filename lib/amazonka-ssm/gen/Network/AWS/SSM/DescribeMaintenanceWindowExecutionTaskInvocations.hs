{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.DescribeMaintenanceWindowExecutionTaskInvocations
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the individual task executions (one per target) for a particular task run as part of a maintenance window execution.
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeMaintenanceWindowExecutionTaskInvocations
  ( -- * Creating a request
    DescribeMaintenanceWindowExecutionTaskInvocations (..),
    mkDescribeMaintenanceWindowExecutionTaskInvocations,

    -- ** Request lenses
    dmwetiWindowExecutionId,
    dmwetiTaskId,
    dmwetiFilters,
    dmwetiMaxResults,
    dmwetiNextToken,

    -- * Destructuring the response
    DescribeMaintenanceWindowExecutionTaskInvocationsResponse (..),
    mkDescribeMaintenanceWindowExecutionTaskInvocationsResponse,

    -- ** Response lenses
    dmwetirrsNextToken,
    dmwetirrsWindowExecutionTaskInvocationIdentities,
    dmwetirrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkDescribeMaintenanceWindowExecutionTaskInvocations' smart constructor.
data DescribeMaintenanceWindowExecutionTaskInvocations = DescribeMaintenanceWindowExecutionTaskInvocations'
  { -- | The ID of the maintenance window execution the task is part of.
    windowExecutionId :: Types.MaintenanceWindowExecutionId,
    -- | The ID of the specific task in the maintenance window task that should be retrieved.
    taskId :: Types.MaintenanceWindowExecutionTaskId,
    -- | Optional filters used to scope down the returned task invocations. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.
    filters :: Core.Maybe [Types.MaintenanceWindowFilter],
    -- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token for the next set of items to return. (You received this token from a previous call.)
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeMaintenanceWindowExecutionTaskInvocations' value with any optional fields omitted.
mkDescribeMaintenanceWindowExecutionTaskInvocations ::
  -- | 'windowExecutionId'
  Types.MaintenanceWindowExecutionId ->
  -- | 'taskId'
  Types.MaintenanceWindowExecutionTaskId ->
  DescribeMaintenanceWindowExecutionTaskInvocations
mkDescribeMaintenanceWindowExecutionTaskInvocations
  windowExecutionId
  taskId =
    DescribeMaintenanceWindowExecutionTaskInvocations'
      { windowExecutionId,
        taskId,
        filters = Core.Nothing,
        maxResults = Core.Nothing,
        nextToken = Core.Nothing
      }

-- | The ID of the maintenance window execution the task is part of.
--
-- /Note:/ Consider using 'windowExecutionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmwetiWindowExecutionId :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations Types.MaintenanceWindowExecutionId
dmwetiWindowExecutionId = Lens.field @"windowExecutionId"
{-# DEPRECATED dmwetiWindowExecutionId "Use generic-lens or generic-optics with 'windowExecutionId' instead." #-}

-- | The ID of the specific task in the maintenance window task that should be retrieved.
--
-- /Note:/ Consider using 'taskId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmwetiTaskId :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations Types.MaintenanceWindowExecutionTaskId
dmwetiTaskId = Lens.field @"taskId"
{-# DEPRECATED dmwetiTaskId "Use generic-lens or generic-optics with 'taskId' instead." #-}

-- | Optional filters used to scope down the returned task invocations. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmwetiFilters :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations (Core.Maybe [Types.MaintenanceWindowFilter])
dmwetiFilters = Lens.field @"filters"
{-# DEPRECATED dmwetiFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmwetiMaxResults :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations (Core.Maybe Core.Natural)
dmwetiMaxResults = Lens.field @"maxResults"
{-# DEPRECATED dmwetiMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token for the next set of items to return. (You received this token from a previous call.)
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmwetiNextToken :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations (Core.Maybe Types.NextToken)
dmwetiNextToken = Lens.field @"nextToken"
{-# DEPRECATED dmwetiNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance
  Core.FromJSON
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  toJSON DescribeMaintenanceWindowExecutionTaskInvocations {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("WindowExecutionId" Core..= windowExecutionId),
            Core.Just ("TaskId" Core..= taskId),
            ("Filters" Core..=) Core.<$> filters,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance
  Core.AWSRequest
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  type
    Rs DescribeMaintenanceWindowExecutionTaskInvocations =
      DescribeMaintenanceWindowExecutionTaskInvocationsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AmazonSSM.DescribeMaintenanceWindowExecutionTaskInvocations"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeMaintenanceWindowExecutionTaskInvocationsResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "WindowExecutionTaskInvocationIdentities")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Pager.AWSPager
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        ( rs
            Lens.^? Lens.field @"windowExecutionTaskInvocationIdentities"
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkDescribeMaintenanceWindowExecutionTaskInvocationsResponse' smart constructor.
data DescribeMaintenanceWindowExecutionTaskInvocationsResponse = DescribeMaintenanceWindowExecutionTaskInvocationsResponse'
  { -- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
    nextToken :: Core.Maybe Types.NextToken,
    -- | Information about the task invocation results per invocation.
    windowExecutionTaskInvocationIdentities :: Core.Maybe [Types.MaintenanceWindowExecutionTaskInvocationIdentity],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeMaintenanceWindowExecutionTaskInvocationsResponse' value with any optional fields omitted.
mkDescribeMaintenanceWindowExecutionTaskInvocationsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeMaintenanceWindowExecutionTaskInvocationsResponse
mkDescribeMaintenanceWindowExecutionTaskInvocationsResponse
  responseStatus =
    DescribeMaintenanceWindowExecutionTaskInvocationsResponse'
      { nextToken =
          Core.Nothing,
        windowExecutionTaskInvocationIdentities =
          Core.Nothing,
        responseStatus
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmwetirrsNextToken :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocationsResponse (Core.Maybe Types.NextToken)
dmwetirrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED dmwetirrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Information about the task invocation results per invocation.
--
-- /Note:/ Consider using 'windowExecutionTaskInvocationIdentities' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmwetirrsWindowExecutionTaskInvocationIdentities :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocationsResponse (Core.Maybe [Types.MaintenanceWindowExecutionTaskInvocationIdentity])
dmwetirrsWindowExecutionTaskInvocationIdentities = Lens.field @"windowExecutionTaskInvocationIdentities"
{-# DEPRECATED dmwetirrsWindowExecutionTaskInvocationIdentities "Use generic-lens or generic-optics with 'windowExecutionTaskInvocationIdentities' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmwetirrsResponseStatus :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocationsResponse Core.Int
dmwetirrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dmwetirrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}