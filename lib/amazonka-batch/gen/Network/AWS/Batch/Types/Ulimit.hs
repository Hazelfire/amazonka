{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.Ulimit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.Ulimit
  ( Ulimit (..),

    -- * Smart constructor
    mkUlimit,

    -- * Lenses
    uHardLimit,
    uName,
    uSoftLimit,
  )
where

import qualified Network.AWS.Batch.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The @ulimit@ settings to pass to the container.
--
-- /See:/ 'mkUlimit' smart constructor.
data Ulimit = Ulimit'
  { -- | The hard limit for the @ulimit@ type.
    hardLimit :: Core.Int,
    -- | The @type@ of the @ulimit@ .
    name :: Types.String,
    -- | The soft limit for the @ulimit@ type.
    softLimit :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Ulimit' value with any optional fields omitted.
mkUlimit ::
  -- | 'hardLimit'
  Core.Int ->
  -- | 'name'
  Types.String ->
  -- | 'softLimit'
  Core.Int ->
  Ulimit
mkUlimit hardLimit name softLimit =
  Ulimit' {hardLimit, name, softLimit}

-- | The hard limit for the @ulimit@ type.
--
-- /Note:/ Consider using 'hardLimit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uHardLimit :: Lens.Lens' Ulimit Core.Int
uHardLimit = Lens.field @"hardLimit"
{-# DEPRECATED uHardLimit "Use generic-lens or generic-optics with 'hardLimit' instead." #-}

-- | The @type@ of the @ulimit@ .
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uName :: Lens.Lens' Ulimit Types.String
uName = Lens.field @"name"
{-# DEPRECATED uName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The soft limit for the @ulimit@ type.
--
-- /Note:/ Consider using 'softLimit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uSoftLimit :: Lens.Lens' Ulimit Core.Int
uSoftLimit = Lens.field @"softLimit"
{-# DEPRECATED uSoftLimit "Use generic-lens or generic-optics with 'softLimit' instead." #-}

instance Core.FromJSON Ulimit where
  toJSON Ulimit {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("hardLimit" Core..= hardLimit),
            Core.Just ("name" Core..= name),
            Core.Just ("softLimit" Core..= softLimit)
          ]
      )

instance Core.FromJSON Ulimit where
  parseJSON =
    Core.withObject "Ulimit" Core.$
      \x ->
        Ulimit'
          Core.<$> (x Core..: "hardLimit")
          Core.<*> (x Core..: "name")
          Core.<*> (x Core..: "softLimit")