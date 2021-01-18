{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.RegisterEcsCluster
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html Resource Management> .
--
-- __Required Permissions__ : To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.RegisterEcsCluster
  ( -- * Creating a request
    RegisterEcsCluster (..),
    mkRegisterEcsCluster,

    -- ** Request lenses
    recEcsClusterArn,
    recStackId,

    -- * Destructuring the response
    RegisterEcsClusterResponse (..),
    mkRegisterEcsClusterResponse,

    -- ** Response lenses
    recrrsEcsClusterArn,
    recrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.OpsWorks.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkRegisterEcsCluster' smart constructor.
data RegisterEcsCluster = RegisterEcsCluster'
  { -- | The cluster's ARN.
    ecsClusterArn :: Types.EcsClusterArn,
    -- | The stack ID.
    stackId :: Types.StackId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegisterEcsCluster' value with any optional fields omitted.
mkRegisterEcsCluster ::
  -- | 'ecsClusterArn'
  Types.EcsClusterArn ->
  -- | 'stackId'
  Types.StackId ->
  RegisterEcsCluster
mkRegisterEcsCluster ecsClusterArn stackId =
  RegisterEcsCluster' {ecsClusterArn, stackId}

-- | The cluster's ARN.
--
-- /Note:/ Consider using 'ecsClusterArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
recEcsClusterArn :: Lens.Lens' RegisterEcsCluster Types.EcsClusterArn
recEcsClusterArn = Lens.field @"ecsClusterArn"
{-# DEPRECATED recEcsClusterArn "Use generic-lens or generic-optics with 'ecsClusterArn' instead." #-}

-- | The stack ID.
--
-- /Note:/ Consider using 'stackId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
recStackId :: Lens.Lens' RegisterEcsCluster Types.StackId
recStackId = Lens.field @"stackId"
{-# DEPRECATED recStackId "Use generic-lens or generic-optics with 'stackId' instead." #-}

instance Core.FromJSON RegisterEcsCluster where
  toJSON RegisterEcsCluster {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("EcsClusterArn" Core..= ecsClusterArn),
            Core.Just ("StackId" Core..= stackId)
          ]
      )

instance Core.AWSRequest RegisterEcsCluster where
  type Rs RegisterEcsCluster = RegisterEcsClusterResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "OpsWorks_20130218.RegisterEcsCluster")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          RegisterEcsClusterResponse'
            Core.<$> (x Core..:? "EcsClusterArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Contains the response to a @RegisterEcsCluster@ request.
--
-- /See:/ 'mkRegisterEcsClusterResponse' smart constructor.
data RegisterEcsClusterResponse = RegisterEcsClusterResponse'
  { -- | The cluster's ARN.
    ecsClusterArn :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegisterEcsClusterResponse' value with any optional fields omitted.
mkRegisterEcsClusterResponse ::
  -- | 'responseStatus'
  Core.Int ->
  RegisterEcsClusterResponse
mkRegisterEcsClusterResponse responseStatus =
  RegisterEcsClusterResponse'
    { ecsClusterArn = Core.Nothing,
      responseStatus
    }

-- | The cluster's ARN.
--
-- /Note:/ Consider using 'ecsClusterArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
recrrsEcsClusterArn :: Lens.Lens' RegisterEcsClusterResponse (Core.Maybe Types.String)
recrrsEcsClusterArn = Lens.field @"ecsClusterArn"
{-# DEPRECATED recrrsEcsClusterArn "Use generic-lens or generic-optics with 'ecsClusterArn' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
recrrsResponseStatus :: Lens.Lens' RegisterEcsClusterResponse Core.Int
recrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED recrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}