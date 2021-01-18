{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.CreateInstanceSnapshot
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot of a specific virtual private server, or /instance/ . You can use a snapshot to create a new instance that is based on that snapshot.
--
-- The @create instance snapshot@ operation supports tag-based access control via request tags. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.CreateInstanceSnapshot
  ( -- * Creating a request
    CreateInstanceSnapshot (..),
    mkCreateInstanceSnapshot,

    -- ** Request lenses
    cisInstanceSnapshotName,
    cisInstanceName,
    cisTags,

    -- * Destructuring the response
    CreateInstanceSnapshotResponse (..),
    mkCreateInstanceSnapshotResponse,

    -- ** Response lenses
    cisrrsOperations,
    cisrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateInstanceSnapshot' smart constructor.
data CreateInstanceSnapshot = CreateInstanceSnapshot'
  { -- | The name for your new snapshot.
    instanceSnapshotName :: Types.ResourceName,
    -- | The Lightsail instance on which to base your snapshot.
    instanceName :: Types.ResourceName,
    -- | The tag keys and optional values to add to the resource during create.
    --
    -- Use the @TagResource@ action to tag a resource after it's created.
    tags :: Core.Maybe [Types.Tag]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateInstanceSnapshot' value with any optional fields omitted.
mkCreateInstanceSnapshot ::
  -- | 'instanceSnapshotName'
  Types.ResourceName ->
  -- | 'instanceName'
  Types.ResourceName ->
  CreateInstanceSnapshot
mkCreateInstanceSnapshot instanceSnapshotName instanceName =
  CreateInstanceSnapshot'
    { instanceSnapshotName,
      instanceName,
      tags = Core.Nothing
    }

-- | The name for your new snapshot.
--
-- /Note:/ Consider using 'instanceSnapshotName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cisInstanceSnapshotName :: Lens.Lens' CreateInstanceSnapshot Types.ResourceName
cisInstanceSnapshotName = Lens.field @"instanceSnapshotName"
{-# DEPRECATED cisInstanceSnapshotName "Use generic-lens or generic-optics with 'instanceSnapshotName' instead." #-}

-- | The Lightsail instance on which to base your snapshot.
--
-- /Note:/ Consider using 'instanceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cisInstanceName :: Lens.Lens' CreateInstanceSnapshot Types.ResourceName
cisInstanceName = Lens.field @"instanceName"
{-# DEPRECATED cisInstanceName "Use generic-lens or generic-optics with 'instanceName' instead." #-}

-- | The tag keys and optional values to add to the resource during create.
--
-- Use the @TagResource@ action to tag a resource after it's created.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cisTags :: Lens.Lens' CreateInstanceSnapshot (Core.Maybe [Types.Tag])
cisTags = Lens.field @"tags"
{-# DEPRECATED cisTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.FromJSON CreateInstanceSnapshot where
  toJSON CreateInstanceSnapshot {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("instanceSnapshotName" Core..= instanceSnapshotName),
            Core.Just ("instanceName" Core..= instanceName),
            ("tags" Core..=) Core.<$> tags
          ]
      )

instance Core.AWSRequest CreateInstanceSnapshot where
  type Rs CreateInstanceSnapshot = CreateInstanceSnapshotResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "Lightsail_20161128.CreateInstanceSnapshot")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateInstanceSnapshotResponse'
            Core.<$> (x Core..:? "operations") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateInstanceSnapshotResponse' smart constructor.
data CreateInstanceSnapshotResponse = CreateInstanceSnapshotResponse'
  { -- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
    operations :: Core.Maybe [Types.Operation],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateInstanceSnapshotResponse' value with any optional fields omitted.
mkCreateInstanceSnapshotResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateInstanceSnapshotResponse
mkCreateInstanceSnapshotResponse responseStatus =
  CreateInstanceSnapshotResponse'
    { operations = Core.Nothing,
      responseStatus
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- /Note:/ Consider using 'operations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cisrrsOperations :: Lens.Lens' CreateInstanceSnapshotResponse (Core.Maybe [Types.Operation])
cisrrsOperations = Lens.field @"operations"
{-# DEPRECATED cisrrsOperations "Use generic-lens or generic-optics with 'operations' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cisrrsResponseStatus :: Lens.Lens' CreateInstanceSnapshotResponse Core.Int
cisrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cisrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}