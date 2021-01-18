{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.DoubleOptions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.DoubleOptions
  ( DoubleOptions (..),

    -- * Smart constructor
    mkDoubleOptions,

    -- * Lenses
    dosDefaultValue,
    dosFacetEnabled,
    dosReturnEnabled,
    dosSearchEnabled,
    dosSortEnabled,
    dosSourceField,
  )
where

import qualified Network.AWS.CloudSearch.Types.SourceField as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Options for a double-precision 64-bit floating point field. Present if @IndexFieldType@ specifies the field is of type @double@ . All options are enabled by default.
--
-- /See:/ 'mkDoubleOptions' smart constructor.
data DoubleOptions = DoubleOptions'
  { -- | A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.
    defaultValue :: Core.Maybe Core.Double,
    -- | Whether facet information can be returned for the field.
    facetEnabled :: Core.Maybe Core.Bool,
    -- | Whether the contents of the field can be returned in the search results.
    returnEnabled :: Core.Maybe Core.Bool,
    -- | Whether the contents of the field are searchable.
    searchEnabled :: Core.Maybe Core.Bool,
    -- | Whether the field can be used to sort the search results.
    sortEnabled :: Core.Maybe Core.Bool,
    -- | The name of the source field to map to the field.
    sourceField :: Core.Maybe Types.SourceField
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DoubleOptions' value with any optional fields omitted.
mkDoubleOptions ::
  DoubleOptions
mkDoubleOptions =
  DoubleOptions'
    { defaultValue = Core.Nothing,
      facetEnabled = Core.Nothing,
      returnEnabled = Core.Nothing,
      searchEnabled = Core.Nothing,
      sortEnabled = Core.Nothing,
      sourceField = Core.Nothing
    }

-- | A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.
--
-- /Note:/ Consider using 'defaultValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dosDefaultValue :: Lens.Lens' DoubleOptions (Core.Maybe Core.Double)
dosDefaultValue = Lens.field @"defaultValue"
{-# DEPRECATED dosDefaultValue "Use generic-lens or generic-optics with 'defaultValue' instead." #-}

-- | Whether facet information can be returned for the field.
--
-- /Note:/ Consider using 'facetEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dosFacetEnabled :: Lens.Lens' DoubleOptions (Core.Maybe Core.Bool)
dosFacetEnabled = Lens.field @"facetEnabled"
{-# DEPRECATED dosFacetEnabled "Use generic-lens or generic-optics with 'facetEnabled' instead." #-}

-- | Whether the contents of the field can be returned in the search results.
--
-- /Note:/ Consider using 'returnEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dosReturnEnabled :: Lens.Lens' DoubleOptions (Core.Maybe Core.Bool)
dosReturnEnabled = Lens.field @"returnEnabled"
{-# DEPRECATED dosReturnEnabled "Use generic-lens or generic-optics with 'returnEnabled' instead." #-}

-- | Whether the contents of the field are searchable.
--
-- /Note:/ Consider using 'searchEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dosSearchEnabled :: Lens.Lens' DoubleOptions (Core.Maybe Core.Bool)
dosSearchEnabled = Lens.field @"searchEnabled"
{-# DEPRECATED dosSearchEnabled "Use generic-lens or generic-optics with 'searchEnabled' instead." #-}

-- | Whether the field can be used to sort the search results.
--
-- /Note:/ Consider using 'sortEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dosSortEnabled :: Lens.Lens' DoubleOptions (Core.Maybe Core.Bool)
dosSortEnabled = Lens.field @"sortEnabled"
{-# DEPRECATED dosSortEnabled "Use generic-lens or generic-optics with 'sortEnabled' instead." #-}

-- | The name of the source field to map to the field.
--
-- /Note:/ Consider using 'sourceField' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dosSourceField :: Lens.Lens' DoubleOptions (Core.Maybe Types.SourceField)
dosSourceField = Lens.field @"sourceField"
{-# DEPRECATED dosSourceField "Use generic-lens or generic-optics with 'sourceField' instead." #-}

instance Core.FromXML DoubleOptions where
  parseXML x =
    DoubleOptions'
      Core.<$> (x Core..@? "DefaultValue")
      Core.<*> (x Core..@? "FacetEnabled")
      Core.<*> (x Core..@? "ReturnEnabled")
      Core.<*> (x Core..@? "SearchEnabled")
      Core.<*> (x Core..@? "SortEnabled")
      Core.<*> (x Core..@? "SourceField")