{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Tag
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Tag
  ( Tag (..),

    -- * Smart constructor
    mkTag,

    -- * Lenses
    tKey,
    tValue,
  )
where

import qualified Network.AWS.DeviceFarm.Types.Key as Types
import qualified Network.AWS.DeviceFarm.Types.Value as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The metadata that you apply to a resource to help you categorize and organize it. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters. Tag values can have a maximum length of 256 characters.
--
-- /See:/ 'mkTag' smart constructor.
data Tag = Tag'
  { -- | One part of a key-value pair that makes up a tag. A @key@ is a general label that acts like a category for more specific tag values.
    key :: Types.Key,
    -- | The optional part of a key-value pair that makes up a tag. A @value@ acts as a descriptor in a tag category (key).
    value :: Types.Value
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Tag' value with any optional fields omitted.
mkTag ::
  -- | 'key'
  Types.Key ->
  -- | 'value'
  Types.Value ->
  Tag
mkTag key value = Tag' {key, value}

-- | One part of a key-value pair that makes up a tag. A @key@ is a general label that acts like a category for more specific tag values.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tKey :: Lens.Lens' Tag Types.Key
tKey = Lens.field @"key"
{-# DEPRECATED tKey "Use generic-lens or generic-optics with 'key' instead." #-}

-- | The optional part of a key-value pair that makes up a tag. A @value@ acts as a descriptor in a tag category (key).
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tValue :: Lens.Lens' Tag Types.Value
tValue = Lens.field @"value"
{-# DEPRECATED tValue "Use generic-lens or generic-optics with 'value' instead." #-}

instance Core.FromJSON Tag where
  toJSON Tag {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("Key" Core..= key), Core.Just ("Value" Core..= value)]
      )

instance Core.FromJSON Tag where
  parseJSON =
    Core.withObject "Tag" Core.$
      \x -> Tag' Core.<$> (x Core..: "Key") Core.<*> (x Core..: "Value")