{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.HumanLoopConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HumanLoopConfig
  ( HumanLoopConfig (..),

    -- * Smart constructor
    mkHumanLoopConfig,

    -- * Lenses
    hlcWorkteamArn,
    hlcHumanTaskUiArn,
    hlcTaskTitle,
    hlcTaskDescription,
    hlcTaskCount,
    hlcPublicWorkforceTaskPrice,
    hlcTaskAvailabilityLifetimeInSeconds,
    hlcTaskKeywords,
    hlcTaskTimeLimitInSeconds,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SageMaker.Types.FlowDefinitionTaskKeyword as Types
import qualified Network.AWS.SageMaker.Types.FlowDefinitionTaskTitle as Types
import qualified Network.AWS.SageMaker.Types.HumanTaskUiArn as Types
import qualified Network.AWS.SageMaker.Types.PublicWorkforceTaskPrice as Types
import qualified Network.AWS.SageMaker.Types.TaskDescription as Types
import qualified Network.AWS.SageMaker.Types.WorkteamArn as Types

-- | Describes the work to be performed by human workers.
--
-- /See:/ 'mkHumanLoopConfig' smart constructor.
data HumanLoopConfig = HumanLoopConfig'
  { -- | Amazon Resource Name (ARN) of a team of workers.
    workteamArn :: Types.WorkteamArn,
    -- | The Amazon Resource Name (ARN) of the human task user interface.
    humanTaskUiArn :: Types.HumanTaskUiArn,
    -- | A title for the human worker task.
    taskTitle :: Types.FlowDefinitionTaskTitle,
    -- | A description for the human worker task.
    taskDescription :: Types.TaskDescription,
    -- | The number of distinct workers who will perform the same task on each object. For example, if @TaskCount@ is set to @3@ for an image classification labeling job, three workers will classify each input image. Increasing @TaskCount@ can improve label accuracy.
    taskCount :: Core.Natural,
    publicWorkforceTaskPrice :: Core.Maybe Types.PublicWorkforceTaskPrice,
    -- | The length of time that a task remains available for review by human workers.
    taskAvailabilityLifetimeInSeconds :: Core.Maybe Core.Natural,
    -- | Keywords used to describe the task so that workers can discover the task.
    taskKeywords :: Core.Maybe (Core.NonEmpty Types.FlowDefinitionTaskKeyword),
    -- | The amount of time that a worker has to complete a task. The default value is 3,600 seconds (1 hour)
    taskTimeLimitInSeconds :: Core.Maybe Core.Natural
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'HumanLoopConfig' value with any optional fields omitted.
mkHumanLoopConfig ::
  -- | 'workteamArn'
  Types.WorkteamArn ->
  -- | 'humanTaskUiArn'
  Types.HumanTaskUiArn ->
  -- | 'taskTitle'
  Types.FlowDefinitionTaskTitle ->
  -- | 'taskDescription'
  Types.TaskDescription ->
  -- | 'taskCount'
  Core.Natural ->
  HumanLoopConfig
mkHumanLoopConfig
  workteamArn
  humanTaskUiArn
  taskTitle
  taskDescription
  taskCount =
    HumanLoopConfig'
      { workteamArn,
        humanTaskUiArn,
        taskTitle,
        taskDescription,
        taskCount,
        publicWorkforceTaskPrice = Core.Nothing,
        taskAvailabilityLifetimeInSeconds = Core.Nothing,
        taskKeywords = Core.Nothing,
        taskTimeLimitInSeconds = Core.Nothing
      }

-- | Amazon Resource Name (ARN) of a team of workers.
--
-- /Note:/ Consider using 'workteamArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlcWorkteamArn :: Lens.Lens' HumanLoopConfig Types.WorkteamArn
hlcWorkteamArn = Lens.field @"workteamArn"
{-# DEPRECATED hlcWorkteamArn "Use generic-lens or generic-optics with 'workteamArn' instead." #-}

-- | The Amazon Resource Name (ARN) of the human task user interface.
--
-- /Note:/ Consider using 'humanTaskUiArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlcHumanTaskUiArn :: Lens.Lens' HumanLoopConfig Types.HumanTaskUiArn
hlcHumanTaskUiArn = Lens.field @"humanTaskUiArn"
{-# DEPRECATED hlcHumanTaskUiArn "Use generic-lens or generic-optics with 'humanTaskUiArn' instead." #-}

-- | A title for the human worker task.
--
-- /Note:/ Consider using 'taskTitle' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlcTaskTitle :: Lens.Lens' HumanLoopConfig Types.FlowDefinitionTaskTitle
hlcTaskTitle = Lens.field @"taskTitle"
{-# DEPRECATED hlcTaskTitle "Use generic-lens or generic-optics with 'taskTitle' instead." #-}

-- | A description for the human worker task.
--
-- /Note:/ Consider using 'taskDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlcTaskDescription :: Lens.Lens' HumanLoopConfig Types.TaskDescription
hlcTaskDescription = Lens.field @"taskDescription"
{-# DEPRECATED hlcTaskDescription "Use generic-lens or generic-optics with 'taskDescription' instead." #-}

-- | The number of distinct workers who will perform the same task on each object. For example, if @TaskCount@ is set to @3@ for an image classification labeling job, three workers will classify each input image. Increasing @TaskCount@ can improve label accuracy.
--
-- /Note:/ Consider using 'taskCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlcTaskCount :: Lens.Lens' HumanLoopConfig Core.Natural
hlcTaskCount = Lens.field @"taskCount"
{-# DEPRECATED hlcTaskCount "Use generic-lens or generic-optics with 'taskCount' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'publicWorkforceTaskPrice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlcPublicWorkforceTaskPrice :: Lens.Lens' HumanLoopConfig (Core.Maybe Types.PublicWorkforceTaskPrice)
hlcPublicWorkforceTaskPrice = Lens.field @"publicWorkforceTaskPrice"
{-# DEPRECATED hlcPublicWorkforceTaskPrice "Use generic-lens or generic-optics with 'publicWorkforceTaskPrice' instead." #-}

-- | The length of time that a task remains available for review by human workers.
--
-- /Note:/ Consider using 'taskAvailabilityLifetimeInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlcTaskAvailabilityLifetimeInSeconds :: Lens.Lens' HumanLoopConfig (Core.Maybe Core.Natural)
hlcTaskAvailabilityLifetimeInSeconds = Lens.field @"taskAvailabilityLifetimeInSeconds"
{-# DEPRECATED hlcTaskAvailabilityLifetimeInSeconds "Use generic-lens or generic-optics with 'taskAvailabilityLifetimeInSeconds' instead." #-}

-- | Keywords used to describe the task so that workers can discover the task.
--
-- /Note:/ Consider using 'taskKeywords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlcTaskKeywords :: Lens.Lens' HumanLoopConfig (Core.Maybe (Core.NonEmpty Types.FlowDefinitionTaskKeyword))
hlcTaskKeywords = Lens.field @"taskKeywords"
{-# DEPRECATED hlcTaskKeywords "Use generic-lens or generic-optics with 'taskKeywords' instead." #-}

-- | The amount of time that a worker has to complete a task. The default value is 3,600 seconds (1 hour)
--
-- /Note:/ Consider using 'taskTimeLimitInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlcTaskTimeLimitInSeconds :: Lens.Lens' HumanLoopConfig (Core.Maybe Core.Natural)
hlcTaskTimeLimitInSeconds = Lens.field @"taskTimeLimitInSeconds"
{-# DEPRECATED hlcTaskTimeLimitInSeconds "Use generic-lens or generic-optics with 'taskTimeLimitInSeconds' instead." #-}

instance Core.FromJSON HumanLoopConfig where
  toJSON HumanLoopConfig {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("WorkteamArn" Core..= workteamArn),
            Core.Just ("HumanTaskUiArn" Core..= humanTaskUiArn),
            Core.Just ("TaskTitle" Core..= taskTitle),
            Core.Just ("TaskDescription" Core..= taskDescription),
            Core.Just ("TaskCount" Core..= taskCount),
            ("PublicWorkforceTaskPrice" Core..=)
              Core.<$> publicWorkforceTaskPrice,
            ("TaskAvailabilityLifetimeInSeconds" Core..=)
              Core.<$> taskAvailabilityLifetimeInSeconds,
            ("TaskKeywords" Core..=) Core.<$> taskKeywords,
            ("TaskTimeLimitInSeconds" Core..=)
              Core.<$> taskTimeLimitInSeconds
          ]
      )

instance Core.FromJSON HumanLoopConfig where
  parseJSON =
    Core.withObject "HumanLoopConfig" Core.$
      \x ->
        HumanLoopConfig'
          Core.<$> (x Core..: "WorkteamArn")
          Core.<*> (x Core..: "HumanTaskUiArn")
          Core.<*> (x Core..: "TaskTitle")
          Core.<*> (x Core..: "TaskDescription")
          Core.<*> (x Core..: "TaskCount")
          Core.<*> (x Core..:? "PublicWorkforceTaskPrice")
          Core.<*> (x Core..:? "TaskAvailabilityLifetimeInSeconds")
          Core.<*> (x Core..:? "TaskKeywords")
          Core.<*> (x Core..:? "TaskTimeLimitInSeconds")