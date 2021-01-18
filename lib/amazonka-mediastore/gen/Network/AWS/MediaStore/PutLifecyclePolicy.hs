{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaStore.PutLifecyclePolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect.
--
-- For information about how to construct an object lifecycle policy, see <https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html Components of an Object Lifecycle Policy> .
module Network.AWS.MediaStore.PutLifecyclePolicy
  ( -- * Creating a request
    PutLifecyclePolicy (..),
    mkPutLifecyclePolicy,

    -- ** Request lenses
    plpContainerName,
    plpLifecyclePolicy,

    -- * Destructuring the response
    PutLifecyclePolicyResponse (..),
    mkPutLifecyclePolicyResponse,

    -- ** Response lenses
    plprrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaStore.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutLifecyclePolicy' smart constructor.
data PutLifecyclePolicy = PutLifecyclePolicy'
  { -- | The name of the container that you want to assign the object lifecycle policy to.
    containerName :: Types.ContainerName,
    -- | The object lifecycle policy to apply to the container.
    lifecyclePolicy :: Types.LifecyclePolicy
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutLifecyclePolicy' value with any optional fields omitted.
mkPutLifecyclePolicy ::
  -- | 'containerName'
  Types.ContainerName ->
  -- | 'lifecyclePolicy'
  Types.LifecyclePolicy ->
  PutLifecyclePolicy
mkPutLifecyclePolicy containerName lifecyclePolicy =
  PutLifecyclePolicy' {containerName, lifecyclePolicy}

-- | The name of the container that you want to assign the object lifecycle policy to.
--
-- /Note:/ Consider using 'containerName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
plpContainerName :: Lens.Lens' PutLifecyclePolicy Types.ContainerName
plpContainerName = Lens.field @"containerName"
{-# DEPRECATED plpContainerName "Use generic-lens or generic-optics with 'containerName' instead." #-}

-- | The object lifecycle policy to apply to the container.
--
-- /Note:/ Consider using 'lifecyclePolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
plpLifecyclePolicy :: Lens.Lens' PutLifecyclePolicy Types.LifecyclePolicy
plpLifecyclePolicy = Lens.field @"lifecyclePolicy"
{-# DEPRECATED plpLifecyclePolicy "Use generic-lens or generic-optics with 'lifecyclePolicy' instead." #-}

instance Core.FromJSON PutLifecyclePolicy where
  toJSON PutLifecyclePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ContainerName" Core..= containerName),
            Core.Just ("LifecyclePolicy" Core..= lifecyclePolicy)
          ]
      )

instance Core.AWSRequest PutLifecyclePolicy where
  type Rs PutLifecyclePolicy = PutLifecyclePolicyResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "MediaStore_20170901.PutLifecyclePolicy")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutLifecyclePolicyResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkPutLifecyclePolicyResponse' smart constructor.
newtype PutLifecyclePolicyResponse = PutLifecyclePolicyResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'PutLifecyclePolicyResponse' value with any optional fields omitted.
mkPutLifecyclePolicyResponse ::
  -- | 'responseStatus'
  Core.Int ->
  PutLifecyclePolicyResponse
mkPutLifecyclePolicyResponse responseStatus =
  PutLifecyclePolicyResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
plprrsResponseStatus :: Lens.Lens' PutLifecyclePolicyResponse Core.Int
plprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED plprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}