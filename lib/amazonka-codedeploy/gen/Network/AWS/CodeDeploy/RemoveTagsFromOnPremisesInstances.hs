{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.RemoveTagsFromOnPremisesInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more tags from one or more on-premises instances.
module Network.AWS.CodeDeploy.RemoveTagsFromOnPremisesInstances
  ( -- * Creating a request
    RemoveTagsFromOnPremisesInstances (..),
    mkRemoveTagsFromOnPremisesInstances,

    -- ** Request lenses
    rtfopiTags,
    rtfopiInstanceNames,

    -- * Destructuring the response
    RemoveTagsFromOnPremisesInstancesResponse (..),
    mkRemoveTagsFromOnPremisesInstancesResponse,
  )
where

import qualified Network.AWS.CodeDeploy.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @RemoveTagsFromOnPremisesInstances@ operation.
--
-- /See:/ 'mkRemoveTagsFromOnPremisesInstances' smart constructor.
data RemoveTagsFromOnPremisesInstances = RemoveTagsFromOnPremisesInstances'
  { -- | The tag key-value pairs to remove from the on-premises instances.
    tags :: [Types.Tag],
    -- | The names of the on-premises instances from which to remove tags.
    instanceNames :: [Types.InstanceName]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RemoveTagsFromOnPremisesInstances' value with any optional fields omitted.
mkRemoveTagsFromOnPremisesInstances ::
  RemoveTagsFromOnPremisesInstances
mkRemoveTagsFromOnPremisesInstances =
  RemoveTagsFromOnPremisesInstances'
    { tags = Core.mempty,
      instanceNames = Core.mempty
    }

-- | The tag key-value pairs to remove from the on-premises instances.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rtfopiTags :: Lens.Lens' RemoveTagsFromOnPremisesInstances [Types.Tag]
rtfopiTags = Lens.field @"tags"
{-# DEPRECATED rtfopiTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The names of the on-premises instances from which to remove tags.
--
-- /Note:/ Consider using 'instanceNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rtfopiInstanceNames :: Lens.Lens' RemoveTagsFromOnPremisesInstances [Types.InstanceName]
rtfopiInstanceNames = Lens.field @"instanceNames"
{-# DEPRECATED rtfopiInstanceNames "Use generic-lens or generic-optics with 'instanceNames' instead." #-}

instance Core.FromJSON RemoveTagsFromOnPremisesInstances where
  toJSON RemoveTagsFromOnPremisesInstances {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("tags" Core..= tags),
            Core.Just ("instanceNames" Core..= instanceNames)
          ]
      )

instance Core.AWSRequest RemoveTagsFromOnPremisesInstances where
  type
    Rs RemoveTagsFromOnPremisesInstances =
      RemoveTagsFromOnPremisesInstancesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "CodeDeploy_20141006.RemoveTagsFromOnPremisesInstances"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveNull RemoveTagsFromOnPremisesInstancesResponse'

-- | /See:/ 'mkRemoveTagsFromOnPremisesInstancesResponse' smart constructor.
data RemoveTagsFromOnPremisesInstancesResponse = RemoveTagsFromOnPremisesInstancesResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RemoveTagsFromOnPremisesInstancesResponse' value with any optional fields omitted.
mkRemoveTagsFromOnPremisesInstancesResponse ::
  RemoveTagsFromOnPremisesInstancesResponse
mkRemoveTagsFromOnPremisesInstancesResponse =
  RemoveTagsFromOnPremisesInstancesResponse'