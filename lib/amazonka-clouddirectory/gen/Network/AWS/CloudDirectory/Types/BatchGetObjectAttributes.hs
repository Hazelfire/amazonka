{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchGetObjectAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchGetObjectAttributes
  ( BatchGetObjectAttributes (..),

    -- * Smart constructor
    mkBatchGetObjectAttributes,

    -- * Lenses
    bgoaObjectReference,
    bgoaSchemaFacet,
    bgoaAttributeNames,
  )
where

import qualified Network.AWS.CloudDirectory.Types.AttributeName as Types
import qualified Network.AWS.CloudDirectory.Types.ObjectReference as Types
import qualified Network.AWS.CloudDirectory.Types.SchemaFacet as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Retrieves attributes within a facet that are associated with an object inside an 'BatchRead' operation. For more information, see 'GetObjectAttributes' and 'BatchReadRequest$Operations' .
--
-- /See:/ 'mkBatchGetObjectAttributes' smart constructor.
data BatchGetObjectAttributes = BatchGetObjectAttributes'
  { -- | Reference that identifies the object whose attributes will be retrieved.
    objectReference :: Types.ObjectReference,
    -- | Identifier for the facet whose attributes will be retrieved. See 'SchemaFacet' for details.
    schemaFacet :: Types.SchemaFacet,
    -- | List of attribute names whose values will be retrieved.
    attributeNames :: [Types.AttributeName]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchGetObjectAttributes' value with any optional fields omitted.
mkBatchGetObjectAttributes ::
  -- | 'objectReference'
  Types.ObjectReference ->
  -- | 'schemaFacet'
  Types.SchemaFacet ->
  BatchGetObjectAttributes
mkBatchGetObjectAttributes objectReference schemaFacet =
  BatchGetObjectAttributes'
    { objectReference,
      schemaFacet,
      attributeNames = Core.mempty
    }

-- | Reference that identifies the object whose attributes will be retrieved.
--
-- /Note:/ Consider using 'objectReference' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgoaObjectReference :: Lens.Lens' BatchGetObjectAttributes Types.ObjectReference
bgoaObjectReference = Lens.field @"objectReference"
{-# DEPRECATED bgoaObjectReference "Use generic-lens or generic-optics with 'objectReference' instead." #-}

-- | Identifier for the facet whose attributes will be retrieved. See 'SchemaFacet' for details.
--
-- /Note:/ Consider using 'schemaFacet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgoaSchemaFacet :: Lens.Lens' BatchGetObjectAttributes Types.SchemaFacet
bgoaSchemaFacet = Lens.field @"schemaFacet"
{-# DEPRECATED bgoaSchemaFacet "Use generic-lens or generic-optics with 'schemaFacet' instead." #-}

-- | List of attribute names whose values will be retrieved.
--
-- /Note:/ Consider using 'attributeNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgoaAttributeNames :: Lens.Lens' BatchGetObjectAttributes [Types.AttributeName]
bgoaAttributeNames = Lens.field @"attributeNames"
{-# DEPRECATED bgoaAttributeNames "Use generic-lens or generic-optics with 'attributeNames' instead." #-}

instance Core.FromJSON BatchGetObjectAttributes where
  toJSON BatchGetObjectAttributes {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ObjectReference" Core..= objectReference),
            Core.Just ("SchemaFacet" Core..= schemaFacet),
            Core.Just ("AttributeNames" Core..= attributeNames)
          ]
      )