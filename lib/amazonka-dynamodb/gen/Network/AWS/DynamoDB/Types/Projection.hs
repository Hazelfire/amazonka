{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.Projection
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.Projection
  ( Projection (..),

    -- * Smart constructor
    mkProjection,

    -- * Lenses
    pNonKeyAttributes,
    pProjectionType,
  )
where

import qualified Network.AWS.DynamoDB.Types.NonKeyAttributeName as Types
import qualified Network.AWS.DynamoDB.Types.ProjectionType as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
--
-- /See:/ 'mkProjection' smart constructor.
data Projection = Projection'
  { -- | Represents the non-key attribute names which will be projected into the index.
    --
    -- For local secondary indexes, the total count of @NonKeyAttributes@ summed across all of the local secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.
    nonKeyAttributes :: Core.Maybe (Core.NonEmpty Types.NonKeyAttributeName),
    -- | The set of attributes that are projected into the index:
    --
    --
    --     * @KEYS_ONLY@ - Only the index and primary keys are projected into the index.
    --
    --
    --     * @INCLUDE@ - In addition to the attributes described in @KEYS_ONLY@ , the secondary index will include other non-key attributes that you specify.
    --
    --
    --     * @ALL@ - All of the table attributes are projected into the index.
    projectionType :: Core.Maybe Types.ProjectionType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Projection' value with any optional fields omitted.
mkProjection ::
  Projection
mkProjection =
  Projection'
    { nonKeyAttributes = Core.Nothing,
      projectionType = Core.Nothing
    }

-- | Represents the non-key attribute names which will be projected into the index.
--
-- For local secondary indexes, the total count of @NonKeyAttributes@ summed across all of the local secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.
--
-- /Note:/ Consider using 'nonKeyAttributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pNonKeyAttributes :: Lens.Lens' Projection (Core.Maybe (Core.NonEmpty Types.NonKeyAttributeName))
pNonKeyAttributes = Lens.field @"nonKeyAttributes"
{-# DEPRECATED pNonKeyAttributes "Use generic-lens or generic-optics with 'nonKeyAttributes' instead." #-}

-- | The set of attributes that are projected into the index:
--
--
--     * @KEYS_ONLY@ - Only the index and primary keys are projected into the index.
--
--
--     * @INCLUDE@ - In addition to the attributes described in @KEYS_ONLY@ , the secondary index will include other non-key attributes that you specify.
--
--
--     * @ALL@ - All of the table attributes are projected into the index.
--
--
--
-- /Note:/ Consider using 'projectionType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pProjectionType :: Lens.Lens' Projection (Core.Maybe Types.ProjectionType)
pProjectionType = Lens.field @"projectionType"
{-# DEPRECATED pProjectionType "Use generic-lens or generic-optics with 'projectionType' instead." #-}

instance Core.FromJSON Projection where
  toJSON Projection {..} =
    Core.object
      ( Core.catMaybes
          [ ("NonKeyAttributes" Core..=) Core.<$> nonKeyAttributes,
            ("ProjectionType" Core..=) Core.<$> projectionType
          ]
      )

instance Core.FromJSON Projection where
  parseJSON =
    Core.withObject "Projection" Core.$
      \x ->
        Projection'
          Core.<$> (x Core..:? "NonKeyAttributes")
          Core.<*> (x Core..:? "ProjectionType")