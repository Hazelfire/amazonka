{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.DeleteTypedLinkFacet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a 'TypedLinkFacet' . For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
module Network.AWS.CloudDirectory.DeleteTypedLinkFacet
  ( -- * Creating a request
    DeleteTypedLinkFacet (..),
    mkDeleteTypedLinkFacet,

    -- ** Request lenses
    dtlfSchemaArn,
    dtlfName,

    -- * Destructuring the response
    DeleteTypedLinkFacetResponse (..),
    mkDeleteTypedLinkFacetResponse,

    -- ** Response lenses
    dtlfrrsResponseStatus,
  )
where

import qualified Network.AWS.CloudDirectory.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteTypedLinkFacet' smart constructor.
data DeleteTypedLinkFacet = DeleteTypedLinkFacet'
  { -- | The Amazon Resource Name (ARN) that is associated with the schema. For more information, see 'arns' .
    schemaArn :: Types.Arn,
    -- | The unique name of the typed link facet.
    name :: Types.TypedLinkName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteTypedLinkFacet' value with any optional fields omitted.
mkDeleteTypedLinkFacet ::
  -- | 'schemaArn'
  Types.Arn ->
  -- | 'name'
  Types.TypedLinkName ->
  DeleteTypedLinkFacet
mkDeleteTypedLinkFacet schemaArn name =
  DeleteTypedLinkFacet' {schemaArn, name}

-- | The Amazon Resource Name (ARN) that is associated with the schema. For more information, see 'arns' .
--
-- /Note:/ Consider using 'schemaArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtlfSchemaArn :: Lens.Lens' DeleteTypedLinkFacet Types.Arn
dtlfSchemaArn = Lens.field @"schemaArn"
{-# DEPRECATED dtlfSchemaArn "Use generic-lens or generic-optics with 'schemaArn' instead." #-}

-- | The unique name of the typed link facet.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtlfName :: Lens.Lens' DeleteTypedLinkFacet Types.TypedLinkName
dtlfName = Lens.field @"name"
{-# DEPRECATED dtlfName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Core.FromJSON DeleteTypedLinkFacet where
  toJSON DeleteTypedLinkFacet {..} =
    Core.object (Core.catMaybes [Core.Just ("Name" Core..= name)])

instance Core.AWSRequest DeleteTypedLinkFacet where
  type Rs DeleteTypedLinkFacet = DeleteTypedLinkFacetResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.PUT,
        Core._rqPath =
          Core.rawPath
            "/amazonclouddirectory/2017-01-11/typedlink/facet/delete",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.toHeaders "x-amz-data-partition" schemaArn,
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteTypedLinkFacetResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDeleteTypedLinkFacetResponse' smart constructor.
newtype DeleteTypedLinkFacetResponse = DeleteTypedLinkFacetResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteTypedLinkFacetResponse' value with any optional fields omitted.
mkDeleteTypedLinkFacetResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeleteTypedLinkFacetResponse
mkDeleteTypedLinkFacetResponse responseStatus =
  DeleteTypedLinkFacetResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtlfrrsResponseStatus :: Lens.Lens' DeleteTypedLinkFacetResponse Core.Int
dtlfrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dtlfrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}