{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.TimerStartedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.TimerStartedEventAttributes
  ( TimerStartedEventAttributes (..),

    -- * Smart constructor
    mkTimerStartedEventAttributes,

    -- * Lenses
    tseaTimerId,
    tseaStartToFireTimeout,
    tseaDecisionTaskCompletedEventId,
    tseaControl,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SWF.Types.Data as Types
import qualified Network.AWS.SWF.Types.DurationInSeconds as Types
import qualified Network.AWS.SWF.Types.TimerId as Types

-- | Provides the details of the @TimerStarted@ event.
--
-- /See:/ 'mkTimerStartedEventAttributes' smart constructor.
data TimerStartedEventAttributes = TimerStartedEventAttributes'
  { -- | The unique ID of the timer that was started.
    timerId :: Types.TimerId,
    -- | The duration of time after which the timer fires.
    --
    -- The duration is specified in seconds, an integer greater than or equal to @0@ .
    startToFireTimeout :: Types.DurationInSeconds,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @StartTimer@ decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
    decisionTaskCompletedEventId :: Core.Integer,
    -- | Data attached to the event that can be used by the decider in subsequent workflow tasks.
    control :: Core.Maybe Types.Data
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'TimerStartedEventAttributes' value with any optional fields omitted.
mkTimerStartedEventAttributes ::
  -- | 'timerId'
  Types.TimerId ->
  -- | 'startToFireTimeout'
  Types.DurationInSeconds ->
  -- | 'decisionTaskCompletedEventId'
  Core.Integer ->
  TimerStartedEventAttributes
mkTimerStartedEventAttributes
  timerId
  startToFireTimeout
  decisionTaskCompletedEventId =
    TimerStartedEventAttributes'
      { timerId,
        startToFireTimeout,
        decisionTaskCompletedEventId,
        control = Core.Nothing
      }

-- | The unique ID of the timer that was started.
--
-- /Note:/ Consider using 'timerId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tseaTimerId :: Lens.Lens' TimerStartedEventAttributes Types.TimerId
tseaTimerId = Lens.field @"timerId"
{-# DEPRECATED tseaTimerId "Use generic-lens or generic-optics with 'timerId' instead." #-}

-- | The duration of time after which the timer fires.
--
-- The duration is specified in seconds, an integer greater than or equal to @0@ .
--
-- /Note:/ Consider using 'startToFireTimeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tseaStartToFireTimeout :: Lens.Lens' TimerStartedEventAttributes Types.DurationInSeconds
tseaStartToFireTimeout = Lens.field @"startToFireTimeout"
{-# DEPRECATED tseaStartToFireTimeout "Use generic-lens or generic-optics with 'startToFireTimeout' instead." #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @StartTimer@ decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tseaDecisionTaskCompletedEventId :: Lens.Lens' TimerStartedEventAttributes Core.Integer
tseaDecisionTaskCompletedEventId = Lens.field @"decisionTaskCompletedEventId"
{-# DEPRECATED tseaDecisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead." #-}

-- | Data attached to the event that can be used by the decider in subsequent workflow tasks.
--
-- /Note:/ Consider using 'control' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tseaControl :: Lens.Lens' TimerStartedEventAttributes (Core.Maybe Types.Data)
tseaControl = Lens.field @"control"
{-# DEPRECATED tseaControl "Use generic-lens or generic-optics with 'control' instead." #-}

instance Core.FromJSON TimerStartedEventAttributes where
  parseJSON =
    Core.withObject "TimerStartedEventAttributes" Core.$
      \x ->
        TimerStartedEventAttributes'
          Core.<$> (x Core..: "timerId")
          Core.<*> (x Core..: "startToFireTimeout")
          Core.<*> (x Core..: "decisionTaskCompletedEventId")
          Core.<*> (x Core..:? "control")