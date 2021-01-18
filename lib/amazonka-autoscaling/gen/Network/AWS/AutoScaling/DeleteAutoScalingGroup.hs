{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.DeleteAutoScalingGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Auto Scaling group.
--
-- If the group has instances or scaling activities in progress, you must specify the option to force the deletion in order for it to succeed.
-- If the group has policies, deleting the group deletes the policies, the underlying alarm actions, and any alarm that no longer has an associated action.
-- To remove instances from the Auto Scaling group before deleting it, call the 'DetachInstances' API with the list of instances and the option to decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch replacement instances.
-- To terminate all instances before deleting the Auto Scaling group, call the 'UpdateAutoScalingGroup' API and set the minimum size and desired capacity of the Auto Scaling group to zero.
module Network.AWS.AutoScaling.DeleteAutoScalingGroup
  ( -- * Creating a request
    DeleteAutoScalingGroup (..),
    mkDeleteAutoScalingGroup,

    -- ** Request lenses
    dasgAutoScalingGroupName,
    dasgForceDelete,

    -- * Destructuring the response
    DeleteAutoScalingGroupResponse (..),
    mkDeleteAutoScalingGroupResponse,
  )
where

import qualified Network.AWS.AutoScaling.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteAutoScalingGroup' smart constructor.
data DeleteAutoScalingGroup = DeleteAutoScalingGroup'
  { -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Types.AutoScalingGroupName,
    -- | Specifies that the group is to be deleted along with all instances associated with the group, without waiting for all instances to be terminated. This parameter also deletes any lifecycle actions associated with the group.
    forceDelete :: Core.Maybe Core.Bool
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAutoScalingGroup' value with any optional fields omitted.
mkDeleteAutoScalingGroup ::
  -- | 'autoScalingGroupName'
  Types.AutoScalingGroupName ->
  DeleteAutoScalingGroup
mkDeleteAutoScalingGroup autoScalingGroupName =
  DeleteAutoScalingGroup'
    { autoScalingGroupName,
      forceDelete = Core.Nothing
    }

-- | The name of the Auto Scaling group.
--
-- /Note:/ Consider using 'autoScalingGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasgAutoScalingGroupName :: Lens.Lens' DeleteAutoScalingGroup Types.AutoScalingGroupName
dasgAutoScalingGroupName = Lens.field @"autoScalingGroupName"
{-# DEPRECATED dasgAutoScalingGroupName "Use generic-lens or generic-optics with 'autoScalingGroupName' instead." #-}

-- | Specifies that the group is to be deleted along with all instances associated with the group, without waiting for all instances to be terminated. This parameter also deletes any lifecycle actions associated with the group.
--
-- /Note:/ Consider using 'forceDelete' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasgForceDelete :: Lens.Lens' DeleteAutoScalingGroup (Core.Maybe Core.Bool)
dasgForceDelete = Lens.field @"forceDelete"
{-# DEPRECATED dasgForceDelete "Use generic-lens or generic-optics with 'forceDelete' instead." #-}

instance Core.AWSRequest DeleteAutoScalingGroup where
  type Rs DeleteAutoScalingGroup = DeleteAutoScalingGroupResponse
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
            ( Core.pure ("Action", "DeleteAutoScalingGroup")
                Core.<> (Core.pure ("Version", "2011-01-01"))
                Core.<> (Core.toQueryValue "AutoScalingGroupName" autoScalingGroupName)
                Core.<> (Core.toQueryValue "ForceDelete" Core.<$> forceDelete)
            )
      }
  response = Response.receiveNull DeleteAutoScalingGroupResponse'

-- | /See:/ 'mkDeleteAutoScalingGroupResponse' smart constructor.
data DeleteAutoScalingGroupResponse = DeleteAutoScalingGroupResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAutoScalingGroupResponse' value with any optional fields omitted.
mkDeleteAutoScalingGroupResponse ::
  DeleteAutoScalingGroupResponse
mkDeleteAutoScalingGroupResponse = DeleteAutoScalingGroupResponse'