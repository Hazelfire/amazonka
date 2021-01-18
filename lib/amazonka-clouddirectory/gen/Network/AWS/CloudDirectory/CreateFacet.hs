{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.CreateFacet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new 'Facet' in a schema. Facet creation is allowed only in development or applied schemas.
module Network.AWS.CloudDirectory.CreateFacet
  ( -- * Creating a request
    CreateFacet (..),
    mkCreateFacet,

    -- ** Request lenses
    cfSchemaArn,
    cfName,
    cfAttributes,
    cfFacetStyle,
    cfObjectType,

    -- * Destructuring the response
    CreateFacetResponse (..),
    mkCreateFacetResponse,

    -- ** Response lenses
    cfrrsResponseStatus,
  )
where

import qualified Network.AWS.CloudDirectory.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateFacet' smart constructor.
data CreateFacet = CreateFacet'
  { -- | The schema ARN in which the new 'Facet' will be created. For more information, see 'arns' .
    schemaArn :: Types.Arn,
    -- | The name of the 'Facet' , which is unique for a given schema.
    name :: Types.FacetName,
    -- | The attributes that are associated with the 'Facet' .
    attributes :: Core.Maybe [Types.FacetAttribute],
    -- | There are two different styles that you can define on any given facet, @Static@ and @Dynamic@ . For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.
    facetStyle :: Core.Maybe Types.FacetStyle,
    -- | Specifies whether a given object created from this facet is of type node, leaf node, policy or index.
    --
    --
    --     * Node: Can have multiple children but one parent.
    --
    --
    --
    --     * Leaf node: Cannot have children but can have multiple parents.
    --
    --
    --
    --     * Policy: Allows you to store a policy document and policy type. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies> .
    --
    --
    --
    --     * Index: Can be created with the Index API.
    objectType :: Core.Maybe Types.ObjectType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateFacet' value with any optional fields omitted.
mkCreateFacet ::
  -- | 'schemaArn'
  Types.Arn ->
  -- | 'name'
  Types.FacetName ->
  CreateFacet
mkCreateFacet schemaArn name =
  CreateFacet'
    { schemaArn,
      name,
      attributes = Core.Nothing,
      facetStyle = Core.Nothing,
      objectType = Core.Nothing
    }

-- | The schema ARN in which the new 'Facet' will be created. For more information, see 'arns' .
--
-- /Note:/ Consider using 'schemaArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfSchemaArn :: Lens.Lens' CreateFacet Types.Arn
cfSchemaArn = Lens.field @"schemaArn"
{-# DEPRECATED cfSchemaArn "Use generic-lens or generic-optics with 'schemaArn' instead." #-}

-- | The name of the 'Facet' , which is unique for a given schema.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfName :: Lens.Lens' CreateFacet Types.FacetName
cfName = Lens.field @"name"
{-# DEPRECATED cfName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The attributes that are associated with the 'Facet' .
--
-- /Note:/ Consider using 'attributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfAttributes :: Lens.Lens' CreateFacet (Core.Maybe [Types.FacetAttribute])
cfAttributes = Lens.field @"attributes"
{-# DEPRECATED cfAttributes "Use generic-lens or generic-optics with 'attributes' instead." #-}

-- | There are two different styles that you can define on any given facet, @Static@ and @Dynamic@ . For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.
--
-- /Note:/ Consider using 'facetStyle' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfFacetStyle :: Lens.Lens' CreateFacet (Core.Maybe Types.FacetStyle)
cfFacetStyle = Lens.field @"facetStyle"
{-# DEPRECATED cfFacetStyle "Use generic-lens or generic-optics with 'facetStyle' instead." #-}

-- | Specifies whether a given object created from this facet is of type node, leaf node, policy or index.
--
--
--     * Node: Can have multiple children but one parent.
--
--
--
--     * Leaf node: Cannot have children but can have multiple parents.
--
--
--
--     * Policy: Allows you to store a policy document and policy type. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies> .
--
--
--
--     * Index: Can be created with the Index API.
--
--
--
-- /Note:/ Consider using 'objectType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfObjectType :: Lens.Lens' CreateFacet (Core.Maybe Types.ObjectType)
cfObjectType = Lens.field @"objectType"
{-# DEPRECATED cfObjectType "Use generic-lens or generic-optics with 'objectType' instead." #-}

instance Core.FromJSON CreateFacet where
  toJSON CreateFacet {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Name" Core..= name),
            ("Attributes" Core..=) Core.<$> attributes,
            ("FacetStyle" Core..=) Core.<$> facetStyle,
            ("ObjectType" Core..=) Core.<$> objectType
          ]
      )

instance Core.AWSRequest CreateFacet where
  type Rs CreateFacet = CreateFacetResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.PUT,
        Core._rqPath =
          Core.rawPath "/amazonclouddirectory/2017-01-11/facet/create",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.toHeaders "x-amz-data-partition" schemaArn,
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateFacetResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateFacetResponse' smart constructor.
newtype CreateFacetResponse = CreateFacetResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'CreateFacetResponse' value with any optional fields omitted.
mkCreateFacetResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateFacetResponse
mkCreateFacetResponse responseStatus =
  CreateFacetResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfrrsResponseStatus :: Lens.Lens' CreateFacetResponse Core.Int
cfrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cfrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}