{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.TaskStatistics
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TaskStatistics
  ( TaskStatistics (..),

    -- * Smart constructor
    mkTaskStatistics,

    -- * Lenses
    tsCanceledChecks,
    tsCompliantChecks,
    tsFailedChecks,
    tsInProgressChecks,
    tsNonCompliantChecks,
    tsTotalChecks,
    tsWaitingForDataCollectionChecks,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Statistics for the checks performed during the audit.
--
-- /See:/ 'mkTaskStatistics' smart constructor.
data TaskStatistics = TaskStatistics'
  { -- | The number of checks that did not run because the audit was canceled.
    canceledChecks :: Core.Maybe Core.Int,
    -- | The number of checks that found compliant resources.
    compliantChecks :: Core.Maybe Core.Int,
    -- | The number of checks.
    failedChecks :: Core.Maybe Core.Int,
    -- | The number of checks in progress.
    inProgressChecks :: Core.Maybe Core.Int,
    -- | The number of checks that found noncompliant resources.
    nonCompliantChecks :: Core.Maybe Core.Int,
    -- | The number of checks in this audit.
    totalChecks :: Core.Maybe Core.Int,
    -- | The number of checks waiting for data collection.
    waitingForDataCollectionChecks :: Core.Maybe Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'TaskStatistics' value with any optional fields omitted.
mkTaskStatistics ::
  TaskStatistics
mkTaskStatistics =
  TaskStatistics'
    { canceledChecks = Core.Nothing,
      compliantChecks = Core.Nothing,
      failedChecks = Core.Nothing,
      inProgressChecks = Core.Nothing,
      nonCompliantChecks = Core.Nothing,
      totalChecks = Core.Nothing,
      waitingForDataCollectionChecks = Core.Nothing
    }

-- | The number of checks that did not run because the audit was canceled.
--
-- /Note:/ Consider using 'canceledChecks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tsCanceledChecks :: Lens.Lens' TaskStatistics (Core.Maybe Core.Int)
tsCanceledChecks = Lens.field @"canceledChecks"
{-# DEPRECATED tsCanceledChecks "Use generic-lens or generic-optics with 'canceledChecks' instead." #-}

-- | The number of checks that found compliant resources.
--
-- /Note:/ Consider using 'compliantChecks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tsCompliantChecks :: Lens.Lens' TaskStatistics (Core.Maybe Core.Int)
tsCompliantChecks = Lens.field @"compliantChecks"
{-# DEPRECATED tsCompliantChecks "Use generic-lens or generic-optics with 'compliantChecks' instead." #-}

-- | The number of checks.
--
-- /Note:/ Consider using 'failedChecks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tsFailedChecks :: Lens.Lens' TaskStatistics (Core.Maybe Core.Int)
tsFailedChecks = Lens.field @"failedChecks"
{-# DEPRECATED tsFailedChecks "Use generic-lens or generic-optics with 'failedChecks' instead." #-}

-- | The number of checks in progress.
--
-- /Note:/ Consider using 'inProgressChecks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tsInProgressChecks :: Lens.Lens' TaskStatistics (Core.Maybe Core.Int)
tsInProgressChecks = Lens.field @"inProgressChecks"
{-# DEPRECATED tsInProgressChecks "Use generic-lens or generic-optics with 'inProgressChecks' instead." #-}

-- | The number of checks that found noncompliant resources.
--
-- /Note:/ Consider using 'nonCompliantChecks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tsNonCompliantChecks :: Lens.Lens' TaskStatistics (Core.Maybe Core.Int)
tsNonCompliantChecks = Lens.field @"nonCompliantChecks"
{-# DEPRECATED tsNonCompliantChecks "Use generic-lens or generic-optics with 'nonCompliantChecks' instead." #-}

-- | The number of checks in this audit.
--
-- /Note:/ Consider using 'totalChecks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tsTotalChecks :: Lens.Lens' TaskStatistics (Core.Maybe Core.Int)
tsTotalChecks = Lens.field @"totalChecks"
{-# DEPRECATED tsTotalChecks "Use generic-lens or generic-optics with 'totalChecks' instead." #-}

-- | The number of checks waiting for data collection.
--
-- /Note:/ Consider using 'waitingForDataCollectionChecks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tsWaitingForDataCollectionChecks :: Lens.Lens' TaskStatistics (Core.Maybe Core.Int)
tsWaitingForDataCollectionChecks = Lens.field @"waitingForDataCollectionChecks"
{-# DEPRECATED tsWaitingForDataCollectionChecks "Use generic-lens or generic-optics with 'waitingForDataCollectionChecks' instead." #-}

instance Core.FromJSON TaskStatistics where
  parseJSON =
    Core.withObject "TaskStatistics" Core.$
      \x ->
        TaskStatistics'
          Core.<$> (x Core..:? "canceledChecks")
          Core.<*> (x Core..:? "compliantChecks")
          Core.<*> (x Core..:? "failedChecks")
          Core.<*> (x Core..:? "inProgressChecks")
          Core.<*> (x Core..:? "nonCompliantChecks")
          Core.<*> (x Core..:? "totalChecks")
          Core.<*> (x Core..:? "waitingForDataCollectionChecks")