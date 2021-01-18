{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.CancelInstanceRefresh
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an instance refresh operation in progress. Cancellation does not roll back any replacements that have already been completed, but it prevents new replacements from being started.
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html Replacing Auto Scaling Instances Based on an Instance Refresh> .
module Network.AWS.AutoScaling.CancelInstanceRefresh
  ( -- * Creating a request
    CancelInstanceRefresh (..),
    mkCancelInstanceRefresh,

    -- ** Request lenses
    cirAutoScalingGroupName,

    -- * Destructuring the response
    CancelInstanceRefreshResponse (..),
    mkCancelInstanceRefreshResponse,

    -- ** Response lenses
    cirrrsInstanceRefreshId,
    cirrrsResponseStatus,
  )
where

import qualified Network.AWS.AutoScaling.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCancelInstanceRefresh' smart constructor.
newtype CancelInstanceRefresh = CancelInstanceRefresh'
  { -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Types.XmlStringMaxLen255
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'CancelInstanceRefresh' value with any optional fields omitted.
mkCancelInstanceRefresh ::
  -- | 'autoScalingGroupName'
  Types.XmlStringMaxLen255 ->
  CancelInstanceRefresh
mkCancelInstanceRefresh autoScalingGroupName =
  CancelInstanceRefresh' {autoScalingGroupName}

-- | The name of the Auto Scaling group.
--
-- /Note:/ Consider using 'autoScalingGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cirAutoScalingGroupName :: Lens.Lens' CancelInstanceRefresh Types.XmlStringMaxLen255
cirAutoScalingGroupName = Lens.field @"autoScalingGroupName"
{-# DEPRECATED cirAutoScalingGroupName "Use generic-lens or generic-optics with 'autoScalingGroupName' instead." #-}

instance Core.AWSRequest CancelInstanceRefresh where
  type Rs CancelInstanceRefresh = CancelInstanceRefreshResponse
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
            ( Core.pure ("Action", "CancelInstanceRefresh")
                Core.<> (Core.pure ("Version", "2011-01-01"))
                Core.<> (Core.toQueryValue "AutoScalingGroupName" autoScalingGroupName)
            )
      }
  response =
    Response.receiveXMLWrapper
      "CancelInstanceRefreshResult"
      ( \s h x ->
          CancelInstanceRefreshResponse'
            Core.<$> (x Core..@? "InstanceRefreshId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCancelInstanceRefreshResponse' smart constructor.
data CancelInstanceRefreshResponse = CancelInstanceRefreshResponse'
  { -- | The instance refresh ID.
    instanceRefreshId :: Core.Maybe Types.XmlStringMaxLen255,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CancelInstanceRefreshResponse' value with any optional fields omitted.
mkCancelInstanceRefreshResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CancelInstanceRefreshResponse
mkCancelInstanceRefreshResponse responseStatus =
  CancelInstanceRefreshResponse'
    { instanceRefreshId = Core.Nothing,
      responseStatus
    }

-- | The instance refresh ID.
--
-- /Note:/ Consider using 'instanceRefreshId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cirrrsInstanceRefreshId :: Lens.Lens' CancelInstanceRefreshResponse (Core.Maybe Types.XmlStringMaxLen255)
cirrrsInstanceRefreshId = Lens.field @"instanceRefreshId"
{-# DEPRECATED cirrrsInstanceRefreshId "Use generic-lens or generic-optics with 'instanceRefreshId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cirrrsResponseStatus :: Lens.Lens' CancelInstanceRefreshResponse Core.Int
cirrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cirrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}