{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeReservedInstancesModifications
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the modifications made to your Reserved Instances. If no parameter is specified, information about all your Reserved Instances modification requests is returned. If a modification ID is specified, only information about the specific modification is returned.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html Modifying Reserved Instances> in the Amazon Elastic Compute Cloud User Guide.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeReservedInstancesModifications
  ( -- * Creating a request
    DescribeReservedInstancesModifications (..),
    mkDescribeReservedInstancesModifications,

    -- ** Request lenses
    drimFilters,
    drimNextToken,
    drimReservedInstancesModificationIds,

    -- * Destructuring the response
    DescribeReservedInstancesModificationsResponse (..),
    mkDescribeReservedInstancesModificationsResponse,

    -- ** Response lenses
    drimrrsNextToken,
    drimrrsReservedInstancesModifications,
    drimrrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for DescribeReservedInstancesModifications.
--
-- /See:/ 'mkDescribeReservedInstancesModifications' smart constructor.
data DescribeReservedInstancesModifications = DescribeReservedInstancesModifications'
  { -- | One or more filters.
    --
    --
    --     * @client-token@ - The idempotency token for the modification request.
    --
    --
    --     * @create-date@ - The time when the modification request was created.
    --
    --
    --     * @effective-date@ - The time when the modification becomes effective.
    --
    --
    --     * @modification-result.reserved-instances-id@ - The ID for the Reserved Instances created as part of the modification request. This ID is only available when the status of the modification is @fulfilled@ .
    --
    --
    --     * @modification-result.target-configuration.availability-zone@ - The Availability Zone for the new Reserved Instances.
    --
    --
    --     * @modification-result.target-configuration.instance-count @ - The number of new Reserved Instances.
    --
    --
    --     * @modification-result.target-configuration.instance-type@ - The instance type of the new Reserved Instances.
    --
    --
    --     * @modification-result.target-configuration.platform@ - The network platform of the new Reserved Instances (@EC2-Classic@ | @EC2-VPC@ ).
    --
    --
    --     * @reserved-instances-id@ - The ID of the Reserved Instances modified.
    --
    --
    --     * @reserved-instances-modification-id@ - The ID of the modification request.
    --
    --
    --     * @status@ - The status of the Reserved Instances modification request (@processing@ | @fulfilled@ | @failed@ ).
    --
    --
    --     * @status-message@ - The reason for the status.
    --
    --
    --     * @update-date@ - The time when the modification request was last updated.
    filters :: Core.Maybe [Types.Filter],
    -- | The token to retrieve the next page of results.
    nextToken :: Core.Maybe Types.String,
    -- | IDs for the submitted modification request.
    reservedInstancesModificationIds :: Core.Maybe [Types.ReservedInstancesModificationId]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReservedInstancesModifications' value with any optional fields omitted.
mkDescribeReservedInstancesModifications ::
  DescribeReservedInstancesModifications
mkDescribeReservedInstancesModifications =
  DescribeReservedInstancesModifications'
    { filters = Core.Nothing,
      nextToken = Core.Nothing,
      reservedInstancesModificationIds = Core.Nothing
    }

-- | One or more filters.
--
--
--     * @client-token@ - The idempotency token for the modification request.
--
--
--     * @create-date@ - The time when the modification request was created.
--
--
--     * @effective-date@ - The time when the modification becomes effective.
--
--
--     * @modification-result.reserved-instances-id@ - The ID for the Reserved Instances created as part of the modification request. This ID is only available when the status of the modification is @fulfilled@ .
--
--
--     * @modification-result.target-configuration.availability-zone@ - The Availability Zone for the new Reserved Instances.
--
--
--     * @modification-result.target-configuration.instance-count @ - The number of new Reserved Instances.
--
--
--     * @modification-result.target-configuration.instance-type@ - The instance type of the new Reserved Instances.
--
--
--     * @modification-result.target-configuration.platform@ - The network platform of the new Reserved Instances (@EC2-Classic@ | @EC2-VPC@ ).
--
--
--     * @reserved-instances-id@ - The ID of the Reserved Instances modified.
--
--
--     * @reserved-instances-modification-id@ - The ID of the modification request.
--
--
--     * @status@ - The status of the Reserved Instances modification request (@processing@ | @fulfilled@ | @failed@ ).
--
--
--     * @status-message@ - The reason for the status.
--
--
--     * @update-date@ - The time when the modification request was last updated.
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drimFilters :: Lens.Lens' DescribeReservedInstancesModifications (Core.Maybe [Types.Filter])
drimFilters = Lens.field @"filters"
{-# DEPRECATED drimFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The token to retrieve the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drimNextToken :: Lens.Lens' DescribeReservedInstancesModifications (Core.Maybe Types.String)
drimNextToken = Lens.field @"nextToken"
{-# DEPRECATED drimNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | IDs for the submitted modification request.
--
-- /Note:/ Consider using 'reservedInstancesModificationIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drimReservedInstancesModificationIds :: Lens.Lens' DescribeReservedInstancesModifications (Core.Maybe [Types.ReservedInstancesModificationId])
drimReservedInstancesModificationIds = Lens.field @"reservedInstancesModificationIds"
{-# DEPRECATED drimReservedInstancesModificationIds "Use generic-lens or generic-optics with 'reservedInstancesModificationIds' instead." #-}

instance Core.AWSRequest DescribeReservedInstancesModifications where
  type
    Rs DescribeReservedInstancesModifications =
      DescribeReservedInstancesModificationsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "DescribeReservedInstancesModifications")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryList "Filter" Core.<$> filters)
                Core.<> (Core.toQueryValue "NextToken" Core.<$> nextToken)
                Core.<> ( Core.toQueryList "ReservedInstancesModificationId"
                            Core.<$> reservedInstancesModificationIds
                        )
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeReservedInstancesModificationsResponse'
            Core.<$> (x Core..@? "nextToken")
            Core.<*> ( x Core..@? "reservedInstancesModificationsSet"
                         Core..<@> Core.parseXMLList "item"
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeReservedInstancesModifications where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        ( rs
            Lens.^? Lens.field @"reservedInstancesModifications" Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | Contains the output of DescribeReservedInstancesModifications.
--
-- /See:/ 'mkDescribeReservedInstancesModificationsResponse' smart constructor.
data DescribeReservedInstancesModificationsResponse = DescribeReservedInstancesModificationsResponse'
  { -- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The Reserved Instance modification information.
    reservedInstancesModifications :: Core.Maybe [Types.ReservedInstancesModification],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeReservedInstancesModificationsResponse' value with any optional fields omitted.
mkDescribeReservedInstancesModificationsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeReservedInstancesModificationsResponse
mkDescribeReservedInstancesModificationsResponse responseStatus =
  DescribeReservedInstancesModificationsResponse'
    { nextToken =
        Core.Nothing,
      reservedInstancesModifications = Core.Nothing,
      responseStatus
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drimrrsNextToken :: Lens.Lens' DescribeReservedInstancesModificationsResponse (Core.Maybe Types.NextToken)
drimrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED drimrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The Reserved Instance modification information.
--
-- /Note:/ Consider using 'reservedInstancesModifications' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drimrrsReservedInstancesModifications :: Lens.Lens' DescribeReservedInstancesModificationsResponse (Core.Maybe [Types.ReservedInstancesModification])
drimrrsReservedInstancesModifications = Lens.field @"reservedInstancesModifications"
{-# DEPRECATED drimrrsReservedInstancesModifications "Use generic-lens or generic-optics with 'reservedInstancesModifications' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drimrrsResponseStatus :: Lens.Lens' DescribeReservedInstancesModificationsResponse Core.Int
drimrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED drimrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}