{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Problem
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Problem
  ( Problem (..),

    -- * Smart constructor
    mkProblem,

    -- * Lenses
    pDevice,
    pJob,
    pMessage,
    pResult,
    pRun,
    pSuite,
    pTest,
  )
where

import qualified Network.AWS.DeviceFarm.Types.Device as Types
import qualified Network.AWS.DeviceFarm.Types.ExecutionResult as Types
import qualified Network.AWS.DeviceFarm.Types.Message as Types
import qualified Network.AWS.DeviceFarm.Types.ProblemDetail as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents a specific warning or failure.
--
-- /See:/ 'mkProblem' smart constructor.
data Problem = Problem'
  { -- | Information about the associated device.
    device :: Core.Maybe Types.Device,
    -- | Information about the associated job.
    job :: Core.Maybe Types.ProblemDetail,
    -- | A message about the problem's result.
    message :: Core.Maybe Types.Message,
    -- | The problem's result.
    --
    -- Allowed values include:
    --
    --     * PENDING
    --
    --
    --     * PASSED
    --
    --
    --     * WARNED
    --
    --
    --     * FAILED
    --
    --
    --     * SKIPPED
    --
    --
    --     * ERRORED
    --
    --
    --     * STOPPED
    result :: Core.Maybe Types.ExecutionResult,
    -- | Information about the associated run.
    run :: Core.Maybe Types.ProblemDetail,
    -- | Information about the associated suite.
    suite :: Core.Maybe Types.ProblemDetail,
    -- | Information about the associated test.
    test :: Core.Maybe Types.ProblemDetail
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Problem' value with any optional fields omitted.
mkProblem ::
  Problem
mkProblem =
  Problem'
    { device = Core.Nothing,
      job = Core.Nothing,
      message = Core.Nothing,
      result = Core.Nothing,
      run = Core.Nothing,
      suite = Core.Nothing,
      test = Core.Nothing
    }

-- | Information about the associated device.
--
-- /Note:/ Consider using 'device' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pDevice :: Lens.Lens' Problem (Core.Maybe Types.Device)
pDevice = Lens.field @"device"
{-# DEPRECATED pDevice "Use generic-lens or generic-optics with 'device' instead." #-}

-- | Information about the associated job.
--
-- /Note:/ Consider using 'job' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pJob :: Lens.Lens' Problem (Core.Maybe Types.ProblemDetail)
pJob = Lens.field @"job"
{-# DEPRECATED pJob "Use generic-lens or generic-optics with 'job' instead." #-}

-- | A message about the problem's result.
--
-- /Note:/ Consider using 'message' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pMessage :: Lens.Lens' Problem (Core.Maybe Types.Message)
pMessage = Lens.field @"message"
{-# DEPRECATED pMessage "Use generic-lens or generic-optics with 'message' instead." #-}

-- | The problem's result.
--
-- Allowed values include:
--
--     * PENDING
--
--
--     * PASSED
--
--
--     * WARNED
--
--
--     * FAILED
--
--
--     * SKIPPED
--
--
--     * ERRORED
--
--
--     * STOPPED
--
--
--
-- /Note:/ Consider using 'result' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pResult :: Lens.Lens' Problem (Core.Maybe Types.ExecutionResult)
pResult = Lens.field @"result"
{-# DEPRECATED pResult "Use generic-lens or generic-optics with 'result' instead." #-}

-- | Information about the associated run.
--
-- /Note:/ Consider using 'run' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pRun :: Lens.Lens' Problem (Core.Maybe Types.ProblemDetail)
pRun = Lens.field @"run"
{-# DEPRECATED pRun "Use generic-lens or generic-optics with 'run' instead." #-}

-- | Information about the associated suite.
--
-- /Note:/ Consider using 'suite' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pSuite :: Lens.Lens' Problem (Core.Maybe Types.ProblemDetail)
pSuite = Lens.field @"suite"
{-# DEPRECATED pSuite "Use generic-lens or generic-optics with 'suite' instead." #-}

-- | Information about the associated test.
--
-- /Note:/ Consider using 'test' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pTest :: Lens.Lens' Problem (Core.Maybe Types.ProblemDetail)
pTest = Lens.field @"test"
{-# DEPRECATED pTest "Use generic-lens or generic-optics with 'test' instead." #-}

instance Core.FromJSON Problem where
  parseJSON =
    Core.withObject "Problem" Core.$
      \x ->
        Problem'
          Core.<$> (x Core..:? "device")
          Core.<*> (x Core..:? "job")
          Core.<*> (x Core..:? "message")
          Core.<*> (x Core..:? "result")
          Core.<*> (x Core..:? "run")
          Core.<*> (x Core..:? "suite")
          Core.<*> (x Core..:? "test")