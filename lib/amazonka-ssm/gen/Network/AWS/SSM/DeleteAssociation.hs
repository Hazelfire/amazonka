{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.DeleteAssociation
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the specified Systems Manager document from the specified instance.
--
-- When you disassociate a document from an instance, it does not change the configuration of the instance. To change the configuration state of an instance after you disassociate a document, you must create a new document with the desired configuration and associate it with the instance.
module Network.AWS.SSM.DeleteAssociation
  ( -- * Creating a request
    DeleteAssociation (..),
    mkDeleteAssociation,

    -- ** Request lenses
    dafAssociationId,
    dafInstanceId,
    dafName,

    -- * Destructuring the response
    DeleteAssociationResponse (..),
    mkDeleteAssociationResponse,

    -- ** Response lenses
    dargrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkDeleteAssociation' smart constructor.
data DeleteAssociation = DeleteAssociation'
  { -- | The association ID that you want to delete.
    associationId :: Core.Maybe Types.AssociationId,
    -- | The ID of the instance.
    instanceId :: Core.Maybe Types.InstanceId,
    -- | The name of the Systems Manager document.
    name :: Core.Maybe Types.DocumentARN
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAssociation' value with any optional fields omitted.
mkDeleteAssociation ::
  DeleteAssociation
mkDeleteAssociation =
  DeleteAssociation'
    { associationId = Core.Nothing,
      instanceId = Core.Nothing,
      name = Core.Nothing
    }

-- | The association ID that you want to delete.
--
-- /Note:/ Consider using 'associationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dafAssociationId :: Lens.Lens' DeleteAssociation (Core.Maybe Types.AssociationId)
dafAssociationId = Lens.field @"associationId"
{-# DEPRECATED dafAssociationId "Use generic-lens or generic-optics with 'associationId' instead." #-}

-- | The ID of the instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dafInstanceId :: Lens.Lens' DeleteAssociation (Core.Maybe Types.InstanceId)
dafInstanceId = Lens.field @"instanceId"
{-# DEPRECATED dafInstanceId "Use generic-lens or generic-optics with 'instanceId' instead." #-}

-- | The name of the Systems Manager document.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dafName :: Lens.Lens' DeleteAssociation (Core.Maybe Types.DocumentARN)
dafName = Lens.field @"name"
{-# DEPRECATED dafName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Core.FromJSON DeleteAssociation where
  toJSON DeleteAssociation {..} =
    Core.object
      ( Core.catMaybes
          [ ("AssociationId" Core..=) Core.<$> associationId,
            ("InstanceId" Core..=) Core.<$> instanceId,
            ("Name" Core..=) Core.<$> name
          ]
      )

instance Core.AWSRequest DeleteAssociation where
  type Rs DeleteAssociation = DeleteAssociationResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AmazonSSM.DeleteAssociation")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteAssociationResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDeleteAssociationResponse' smart constructor.
newtype DeleteAssociationResponse = DeleteAssociationResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAssociationResponse' value with any optional fields omitted.
mkDeleteAssociationResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeleteAssociationResponse
mkDeleteAssociationResponse responseStatus =
  DeleteAssociationResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dargrsResponseStatus :: Lens.Lens' DeleteAssociationResponse Core.Int
dargrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dargrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}