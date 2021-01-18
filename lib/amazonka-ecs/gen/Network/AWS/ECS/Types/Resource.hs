{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.Resource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.Resource
  ( Resource (..),

    -- * Smart constructor
    mkResource,

    -- * Lenses
    rDoubleValue,
    rIntegerValue,
    rLongValue,
    rName,
    rStringSetValue,
    rType,
  )
where

import qualified Network.AWS.ECS.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes the resources available for a container instance.
--
-- /See:/ 'mkResource' smart constructor.
data Resource = Resource'
  { -- | When the @doubleValue@ type is set, the value of the resource must be a double precision floating-point type.
    doubleValue :: Core.Maybe Core.Double,
    -- | When the @integerValue@ type is set, the value of the resource must be an integer.
    integerValue :: Core.Maybe Core.Int,
    -- | When the @longValue@ type is set, the value of the resource must be an extended precision floating-point type.
    longValue :: Core.Maybe Core.Integer,
    -- | The name of the resource, such as @CPU@ , @MEMORY@ , @PORTS@ , @PORTS_UDP@ , or a user-defined resource.
    name :: Core.Maybe Types.String,
    -- | When the @stringSetValue@ type is set, the value of the resource must be a string type.
    stringSetValue :: Core.Maybe [Types.String],
    -- | The type of the resource, such as @INTEGER@ , @DOUBLE@ , @LONG@ , or @STRINGSET@ .
    type' :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Resource' value with any optional fields omitted.
mkResource ::
  Resource
mkResource =
  Resource'
    { doubleValue = Core.Nothing,
      integerValue = Core.Nothing,
      longValue = Core.Nothing,
      name = Core.Nothing,
      stringSetValue = Core.Nothing,
      type' = Core.Nothing
    }

-- | When the @doubleValue@ type is set, the value of the resource must be a double precision floating-point type.
--
-- /Note:/ Consider using 'doubleValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rDoubleValue :: Lens.Lens' Resource (Core.Maybe Core.Double)
rDoubleValue = Lens.field @"doubleValue"
{-# DEPRECATED rDoubleValue "Use generic-lens or generic-optics with 'doubleValue' instead." #-}

-- | When the @integerValue@ type is set, the value of the resource must be an integer.
--
-- /Note:/ Consider using 'integerValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rIntegerValue :: Lens.Lens' Resource (Core.Maybe Core.Int)
rIntegerValue = Lens.field @"integerValue"
{-# DEPRECATED rIntegerValue "Use generic-lens or generic-optics with 'integerValue' instead." #-}

-- | When the @longValue@ type is set, the value of the resource must be an extended precision floating-point type.
--
-- /Note:/ Consider using 'longValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rLongValue :: Lens.Lens' Resource (Core.Maybe Core.Integer)
rLongValue = Lens.field @"longValue"
{-# DEPRECATED rLongValue "Use generic-lens or generic-optics with 'longValue' instead." #-}

-- | The name of the resource, such as @CPU@ , @MEMORY@ , @PORTS@ , @PORTS_UDP@ , or a user-defined resource.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rName :: Lens.Lens' Resource (Core.Maybe Types.String)
rName = Lens.field @"name"
{-# DEPRECATED rName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | When the @stringSetValue@ type is set, the value of the resource must be a string type.
--
-- /Note:/ Consider using 'stringSetValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rStringSetValue :: Lens.Lens' Resource (Core.Maybe [Types.String])
rStringSetValue = Lens.field @"stringSetValue"
{-# DEPRECATED rStringSetValue "Use generic-lens or generic-optics with 'stringSetValue' instead." #-}

-- | The type of the resource, such as @INTEGER@ , @DOUBLE@ , @LONG@ , or @STRINGSET@ .
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rType :: Lens.Lens' Resource (Core.Maybe Types.String)
rType = Lens.field @"type'"
{-# DEPRECATED rType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.FromJSON Resource where
  toJSON Resource {..} =
    Core.object
      ( Core.catMaybes
          [ ("doubleValue" Core..=) Core.<$> doubleValue,
            ("integerValue" Core..=) Core.<$> integerValue,
            ("longValue" Core..=) Core.<$> longValue,
            ("name" Core..=) Core.<$> name,
            ("stringSetValue" Core..=) Core.<$> stringSetValue,
            ("type" Core..=) Core.<$> type'
          ]
      )

instance Core.FromJSON Resource where
  parseJSON =
    Core.withObject "Resource" Core.$
      \x ->
        Resource'
          Core.<$> (x Core..:? "doubleValue")
          Core.<*> (x Core..:? "integerValue")
          Core.<*> (x Core..:? "longValue")
          Core.<*> (x Core..:? "name")
          Core.<*> (x Core..:? "stringSetValue")
          Core.<*> (x Core..:? "type")