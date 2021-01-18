{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.Limit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.Limit
  ( Limit (..),

    -- * Smart constructor
    mkLimit,

    -- * Lenses
    lMax,
    lType,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Shield.Types.String as Types

-- | Specifies how many protections of a given type you can create.
--
-- /See:/ 'mkLimit' smart constructor.
data Limit = Limit'
  { -- | The maximum number of protections that can be created for the specified @Type@ .
    max :: Core.Maybe Core.Integer,
    -- | The type of protection.
    type' :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Limit' value with any optional fields omitted.
mkLimit ::
  Limit
mkLimit = Limit' {max = Core.Nothing, type' = Core.Nothing}

-- | The maximum number of protections that can be created for the specified @Type@ .
--
-- /Note:/ Consider using 'max' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lMax :: Lens.Lens' Limit (Core.Maybe Core.Integer)
lMax = Lens.field @"max"
{-# DEPRECATED lMax "Use generic-lens or generic-optics with 'max' instead." #-}

-- | The type of protection.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lType :: Lens.Lens' Limit (Core.Maybe Types.String)
lType = Lens.field @"type'"
{-# DEPRECATED lType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.FromJSON Limit where
  parseJSON =
    Core.withObject "Limit" Core.$
      \x ->
        Limit' Core.<$> (x Core..:? "Max") Core.<*> (x Core..:? "Type")