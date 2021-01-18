{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.ModifyCapacityReservation
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a Capacity Reservation's capacity and the conditions under which it is to be released. You cannot change a Capacity Reservation's instance type, EBS optimization, instance store settings, platform, Availability Zone, or instance eligibility. If you need to modify any of these attributes, we recommend that you cancel the Capacity Reservation, and then create a new one with the required attributes.
module Network.AWS.EC2.ModifyCapacityReservation
  ( -- * Creating a request
    ModifyCapacityReservation (..),
    mkModifyCapacityReservation,

    -- ** Request lenses
    mcrCapacityReservationId,
    mcrDryRun,
    mcrEndDate,
    mcrEndDateType,
    mcrInstanceCount,

    -- * Destructuring the response
    ModifyCapacityReservationResponse (..),
    mkModifyCapacityReservationResponse,

    -- ** Response lenses
    mcrrrsReturn,
    mcrrrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkModifyCapacityReservation' smart constructor.
data ModifyCapacityReservation = ModifyCapacityReservation'
  { -- | The ID of the Capacity Reservation.
    capacityReservationId :: Types.CapacityReservationId,
    -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool,
    -- | The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to @expired@ when it reaches its end date and time.
    --
    -- The Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019.
    -- You must provide an @EndDate@ value if @EndDateType@ is @limited@ . Omit @EndDate@ if @EndDateType@ is @unlimited@ .
    endDate :: Core.Maybe Core.UTCTime,
    -- | Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:
    --
    --
    --     * @unlimited@ - The Capacity Reservation remains active until you explicitly cancel it. Do not provide an @EndDate@ value if @EndDateType@ is @unlimited@ .
    --
    --
    --     * @limited@ - The Capacity Reservation expires automatically at a specified date and time. You must provide an @EndDate@ value if @EndDateType@ is @limited@ .
    endDateType :: Core.Maybe Types.EndDateType,
    -- | The number of instances for which to reserve capacity.
    instanceCount :: Core.Maybe Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ModifyCapacityReservation' value with any optional fields omitted.
mkModifyCapacityReservation ::
  -- | 'capacityReservationId'
  Types.CapacityReservationId ->
  ModifyCapacityReservation
mkModifyCapacityReservation capacityReservationId =
  ModifyCapacityReservation'
    { capacityReservationId,
      dryRun = Core.Nothing,
      endDate = Core.Nothing,
      endDateType = Core.Nothing,
      instanceCount = Core.Nothing
    }

-- | The ID of the Capacity Reservation.
--
-- /Note:/ Consider using 'capacityReservationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mcrCapacityReservationId :: Lens.Lens' ModifyCapacityReservation Types.CapacityReservationId
mcrCapacityReservationId = Lens.field @"capacityReservationId"
{-# DEPRECATED mcrCapacityReservationId "Use generic-lens or generic-optics with 'capacityReservationId' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mcrDryRun :: Lens.Lens' ModifyCapacityReservation (Core.Maybe Core.Bool)
mcrDryRun = Lens.field @"dryRun"
{-# DEPRECATED mcrDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to @expired@ when it reaches its end date and time.
--
-- The Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019.
-- You must provide an @EndDate@ value if @EndDateType@ is @limited@ . Omit @EndDate@ if @EndDateType@ is @unlimited@ .
--
-- /Note:/ Consider using 'endDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mcrEndDate :: Lens.Lens' ModifyCapacityReservation (Core.Maybe Core.UTCTime)
mcrEndDate = Lens.field @"endDate"
{-# DEPRECATED mcrEndDate "Use generic-lens or generic-optics with 'endDate' instead." #-}

-- | Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:
--
--
--     * @unlimited@ - The Capacity Reservation remains active until you explicitly cancel it. Do not provide an @EndDate@ value if @EndDateType@ is @unlimited@ .
--
--
--     * @limited@ - The Capacity Reservation expires automatically at a specified date and time. You must provide an @EndDate@ value if @EndDateType@ is @limited@ .
--
--
--
-- /Note:/ Consider using 'endDateType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mcrEndDateType :: Lens.Lens' ModifyCapacityReservation (Core.Maybe Types.EndDateType)
mcrEndDateType = Lens.field @"endDateType"
{-# DEPRECATED mcrEndDateType "Use generic-lens or generic-optics with 'endDateType' instead." #-}

-- | The number of instances for which to reserve capacity.
--
-- /Note:/ Consider using 'instanceCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mcrInstanceCount :: Lens.Lens' ModifyCapacityReservation (Core.Maybe Core.Int)
mcrInstanceCount = Lens.field @"instanceCount"
{-# DEPRECATED mcrInstanceCount "Use generic-lens or generic-optics with 'instanceCount' instead." #-}

instance Core.AWSRequest ModifyCapacityReservation where
  type
    Rs ModifyCapacityReservation =
      ModifyCapacityReservationResponse
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
            ( Core.pure ("Action", "ModifyCapacityReservation")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "CapacityReservationId" capacityReservationId)
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
                Core.<> (Core.toQueryValue "EndDate" Core.<$> endDate)
                Core.<> (Core.toQueryValue "EndDateType" Core.<$> endDateType)
                Core.<> (Core.toQueryValue "InstanceCount" Core.<$> instanceCount)
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          ModifyCapacityReservationResponse'
            Core.<$> (x Core..@? "return") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkModifyCapacityReservationResponse' smart constructor.
data ModifyCapacityReservationResponse = ModifyCapacityReservationResponse'
  { -- | Returns @true@ if the request succeeds; otherwise, it returns an error.
    return :: Core.Maybe Core.Bool,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ModifyCapacityReservationResponse' value with any optional fields omitted.
mkModifyCapacityReservationResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ModifyCapacityReservationResponse
mkModifyCapacityReservationResponse responseStatus =
  ModifyCapacityReservationResponse'
    { return = Core.Nothing,
      responseStatus
    }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- /Note:/ Consider using 'return' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mcrrrsReturn :: Lens.Lens' ModifyCapacityReservationResponse (Core.Maybe Core.Bool)
mcrrrsReturn = Lens.field @"return"
{-# DEPRECATED mcrrrsReturn "Use generic-lens or generic-optics with 'return' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mcrrrsResponseStatus :: Lens.Lens' ModifyCapacityReservationResponse Core.Int
mcrrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED mcrrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}