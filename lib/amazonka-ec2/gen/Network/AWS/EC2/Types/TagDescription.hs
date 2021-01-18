{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TagDescription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TagDescription
  ( TagDescription (..),

    -- * Smart constructor
    mkTagDescription,

    -- * Lenses
    tdKey,
    tdResourceId,
    tdResourceType,
    tdValue,
  )
where

import qualified Network.AWS.EC2.Types.Key as Types
import qualified Network.AWS.EC2.Types.ResourceId as Types
import qualified Network.AWS.EC2.Types.ResourceType as Types
import qualified Network.AWS.EC2.Types.Value as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a tag.
--
-- /See:/ 'mkTagDescription' smart constructor.
data TagDescription = TagDescription'
  { -- | The tag key.
    key :: Types.Key,
    -- | The ID of the resource.
    resourceId :: Types.ResourceId,
    -- | The resource type.
    resourceType :: Types.ResourceType,
    -- | The tag value.
    value :: Types.Value
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'TagDescription' value with any optional fields omitted.
mkTagDescription ::
  -- | 'key'
  Types.Key ->
  -- | 'resourceId'
  Types.ResourceId ->
  -- | 'resourceType'
  Types.ResourceType ->
  -- | 'value'
  Types.Value ->
  TagDescription
mkTagDescription key resourceId resourceType value =
  TagDescription' {key, resourceId, resourceType, value}

-- | The tag key.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tdKey :: Lens.Lens' TagDescription Types.Key
tdKey = Lens.field @"key"
{-# DEPRECATED tdKey "Use generic-lens or generic-optics with 'key' instead." #-}

-- | The ID of the resource.
--
-- /Note:/ Consider using 'resourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tdResourceId :: Lens.Lens' TagDescription Types.ResourceId
tdResourceId = Lens.field @"resourceId"
{-# DEPRECATED tdResourceId "Use generic-lens or generic-optics with 'resourceId' instead." #-}

-- | The resource type.
--
-- /Note:/ Consider using 'resourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tdResourceType :: Lens.Lens' TagDescription Types.ResourceType
tdResourceType = Lens.field @"resourceType"
{-# DEPRECATED tdResourceType "Use generic-lens or generic-optics with 'resourceType' instead." #-}

-- | The tag value.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tdValue :: Lens.Lens' TagDescription Types.Value
tdValue = Lens.field @"value"
{-# DEPRECATED tdValue "Use generic-lens or generic-optics with 'value' instead." #-}

instance Core.FromXML TagDescription where
  parseXML x =
    TagDescription'
      Core.<$> (x Core..@ "key")
      Core.<*> (x Core..@ "resourceId")
      Core.<*> (x Core..@ "resourceType")
      Core.<*> (x Core..@ "value")