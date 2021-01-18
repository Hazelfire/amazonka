{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ContainerSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.ContainerSummary
  ( ContainerSummary (..),

    -- * Smart constructor
    mkContainerSummary,

    -- * Lenses
    csExitCode,
    csReason,
  )
where

import qualified Network.AWS.Batch.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | An object representing summary details of a container within a job.
--
-- /See:/ 'mkContainerSummary' smart constructor.
data ContainerSummary = ContainerSummary'
  { -- | The exit code to return upon completion.
    exitCode :: Core.Maybe Core.Int,
    -- | A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
    reason :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ContainerSummary' value with any optional fields omitted.
mkContainerSummary ::
  ContainerSummary
mkContainerSummary =
  ContainerSummary' {exitCode = Core.Nothing, reason = Core.Nothing}

-- | The exit code to return upon completion.
--
-- /Note:/ Consider using 'exitCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csExitCode :: Lens.Lens' ContainerSummary (Core.Maybe Core.Int)
csExitCode = Lens.field @"exitCode"
{-# DEPRECATED csExitCode "Use generic-lens or generic-optics with 'exitCode' instead." #-}

-- | A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
--
-- /Note:/ Consider using 'reason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csReason :: Lens.Lens' ContainerSummary (Core.Maybe Types.String)
csReason = Lens.field @"reason"
{-# DEPRECATED csReason "Use generic-lens or generic-optics with 'reason' instead." #-}

instance Core.FromJSON ContainerSummary where
  parseJSON =
    Core.withObject "ContainerSummary" Core.$
      \x ->
        ContainerSummary'
          Core.<$> (x Core..:? "exitCode") Core.<*> (x Core..:? "reason")