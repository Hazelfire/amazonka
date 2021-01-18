{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.StageState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.StageState
  ( StageState (..),

    -- * Smart constructor
    mkStageState,

    -- * Lenses
    ssActionStates,
    ssInboundExecution,
    ssInboundTransitionState,
    ssLatestExecution,
    ssStageName,
  )
where

import qualified Network.AWS.CodePipeline.Types.ActionState as Types
import qualified Network.AWS.CodePipeline.Types.StageExecution as Types
import qualified Network.AWS.CodePipeline.Types.StageName as Types
import qualified Network.AWS.CodePipeline.Types.TransitionState as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents information about the state of the stage.
--
-- /See:/ 'mkStageState' smart constructor.
data StageState = StageState'
  { -- | The state of the stage.
    actionStates :: Core.Maybe [Types.ActionState],
    inboundExecution :: Core.Maybe Types.StageExecution,
    -- | The state of the inbound transition, which is either enabled or disabled.
    inboundTransitionState :: Core.Maybe Types.TransitionState,
    -- | Information about the latest execution in the stage, including its ID and status.
    latestExecution :: Core.Maybe Types.StageExecution,
    -- | The name of the stage.
    stageName :: Core.Maybe Types.StageName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'StageState' value with any optional fields omitted.
mkStageState ::
  StageState
mkStageState =
  StageState'
    { actionStates = Core.Nothing,
      inboundExecution = Core.Nothing,
      inboundTransitionState = Core.Nothing,
      latestExecution = Core.Nothing,
      stageName = Core.Nothing
    }

-- | The state of the stage.
--
-- /Note:/ Consider using 'actionStates' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssActionStates :: Lens.Lens' StageState (Core.Maybe [Types.ActionState])
ssActionStates = Lens.field @"actionStates"
{-# DEPRECATED ssActionStates "Use generic-lens or generic-optics with 'actionStates' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'inboundExecution' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssInboundExecution :: Lens.Lens' StageState (Core.Maybe Types.StageExecution)
ssInboundExecution = Lens.field @"inboundExecution"
{-# DEPRECATED ssInboundExecution "Use generic-lens or generic-optics with 'inboundExecution' instead." #-}

-- | The state of the inbound transition, which is either enabled or disabled.
--
-- /Note:/ Consider using 'inboundTransitionState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssInboundTransitionState :: Lens.Lens' StageState (Core.Maybe Types.TransitionState)
ssInboundTransitionState = Lens.field @"inboundTransitionState"
{-# DEPRECATED ssInboundTransitionState "Use generic-lens or generic-optics with 'inboundTransitionState' instead." #-}

-- | Information about the latest execution in the stage, including its ID and status.
--
-- /Note:/ Consider using 'latestExecution' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssLatestExecution :: Lens.Lens' StageState (Core.Maybe Types.StageExecution)
ssLatestExecution = Lens.field @"latestExecution"
{-# DEPRECATED ssLatestExecution "Use generic-lens or generic-optics with 'latestExecution' instead." #-}

-- | The name of the stage.
--
-- /Note:/ Consider using 'stageName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssStageName :: Lens.Lens' StageState (Core.Maybe Types.StageName)
ssStageName = Lens.field @"stageName"
{-# DEPRECATED ssStageName "Use generic-lens or generic-optics with 'stageName' instead." #-}

instance Core.FromJSON StageState where
  parseJSON =
    Core.withObject "StageState" Core.$
      \x ->
        StageState'
          Core.<$> (x Core..:? "actionStates")
          Core.<*> (x Core..:? "inboundExecution")
          Core.<*> (x Core..:? "inboundTransitionState")
          Core.<*> (x Core..:? "latestExecution")
          Core.<*> (x Core..:? "stageName")