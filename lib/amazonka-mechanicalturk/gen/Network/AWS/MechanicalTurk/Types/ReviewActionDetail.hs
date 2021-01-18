{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.ReviewActionDetail
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.ReviewActionDetail
  ( ReviewActionDetail (..),

    -- * Smart constructor
    mkReviewActionDetail,

    -- * Lenses
    radActionId,
    radActionName,
    radCompleteTime,
    radErrorCode,
    radResult,
    radStatus,
    radTargetId,
    radTargetType,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MechanicalTurk.Types.ActionId as Types
import qualified Network.AWS.MechanicalTurk.Types.ReviewActionStatus as Types
import qualified Network.AWS.MechanicalTurk.Types.String as Types
import qualified Network.AWS.MechanicalTurk.Types.TargetId as Types
import qualified Network.AWS.Prelude as Core

-- | Both the AssignmentReviewReport and the HITReviewReport elements contains the ReviewActionDetail data structure. This structure is returned multiple times for each action specified in the Review Policy.
--
-- /See:/ 'mkReviewActionDetail' smart constructor.
data ReviewActionDetail = ReviewActionDetail'
  { -- | The unique identifier for the action.
    actionId :: Core.Maybe Types.ActionId,
    -- | The nature of the action itself. The Review Policy is responsible for examining the HIT and Assignments, emitting results, and deciding which other actions will be necessary.
    actionName :: Core.Maybe Types.String,
    -- | The date when the action was completed.
    completeTime :: Core.Maybe Core.NominalDiffTime,
    -- | Present only when the Results have a FAILED Status.
    errorCode :: Core.Maybe Types.String,
    -- | A description of the outcome of the review.
    result :: Core.Maybe Types.String,
    -- | The current disposition of the action: INTENDED, SUCCEEDED, FAILED, or CANCELLED.
    status :: Core.Maybe Types.ReviewActionStatus,
    -- | The specific HITId or AssignmentID targeted by the action.
    targetId :: Core.Maybe Types.TargetId,
    -- | The type of object in TargetId.
    targetType :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ReviewActionDetail' value with any optional fields omitted.
mkReviewActionDetail ::
  ReviewActionDetail
mkReviewActionDetail =
  ReviewActionDetail'
    { actionId = Core.Nothing,
      actionName = Core.Nothing,
      completeTime = Core.Nothing,
      errorCode = Core.Nothing,
      result = Core.Nothing,
      status = Core.Nothing,
      targetId = Core.Nothing,
      targetType = Core.Nothing
    }

-- | The unique identifier for the action.
--
-- /Note:/ Consider using 'actionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
radActionId :: Lens.Lens' ReviewActionDetail (Core.Maybe Types.ActionId)
radActionId = Lens.field @"actionId"
{-# DEPRECATED radActionId "Use generic-lens or generic-optics with 'actionId' instead." #-}

-- | The nature of the action itself. The Review Policy is responsible for examining the HIT and Assignments, emitting results, and deciding which other actions will be necessary.
--
-- /Note:/ Consider using 'actionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
radActionName :: Lens.Lens' ReviewActionDetail (Core.Maybe Types.String)
radActionName = Lens.field @"actionName"
{-# DEPRECATED radActionName "Use generic-lens or generic-optics with 'actionName' instead." #-}

-- | The date when the action was completed.
--
-- /Note:/ Consider using 'completeTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
radCompleteTime :: Lens.Lens' ReviewActionDetail (Core.Maybe Core.NominalDiffTime)
radCompleteTime = Lens.field @"completeTime"
{-# DEPRECATED radCompleteTime "Use generic-lens or generic-optics with 'completeTime' instead." #-}

-- | Present only when the Results have a FAILED Status.
--
-- /Note:/ Consider using 'errorCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
radErrorCode :: Lens.Lens' ReviewActionDetail (Core.Maybe Types.String)
radErrorCode = Lens.field @"errorCode"
{-# DEPRECATED radErrorCode "Use generic-lens or generic-optics with 'errorCode' instead." #-}

-- | A description of the outcome of the review.
--
-- /Note:/ Consider using 'result' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
radResult :: Lens.Lens' ReviewActionDetail (Core.Maybe Types.String)
radResult = Lens.field @"result"
{-# DEPRECATED radResult "Use generic-lens or generic-optics with 'result' instead." #-}

-- | The current disposition of the action: INTENDED, SUCCEEDED, FAILED, or CANCELLED.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
radStatus :: Lens.Lens' ReviewActionDetail (Core.Maybe Types.ReviewActionStatus)
radStatus = Lens.field @"status"
{-# DEPRECATED radStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The specific HITId or AssignmentID targeted by the action.
--
-- /Note:/ Consider using 'targetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
radTargetId :: Lens.Lens' ReviewActionDetail (Core.Maybe Types.TargetId)
radTargetId = Lens.field @"targetId"
{-# DEPRECATED radTargetId "Use generic-lens or generic-optics with 'targetId' instead." #-}

-- | The type of object in TargetId.
--
-- /Note:/ Consider using 'targetType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
radTargetType :: Lens.Lens' ReviewActionDetail (Core.Maybe Types.String)
radTargetType = Lens.field @"targetType"
{-# DEPRECATED radTargetType "Use generic-lens or generic-optics with 'targetType' instead." #-}

instance Core.FromJSON ReviewActionDetail where
  parseJSON =
    Core.withObject "ReviewActionDetail" Core.$
      \x ->
        ReviewActionDetail'
          Core.<$> (x Core..:? "ActionId")
          Core.<*> (x Core..:? "ActionName")
          Core.<*> (x Core..:? "CompleteTime")
          Core.<*> (x Core..:? "ErrorCode")
          Core.<*> (x Core..:? "Result")
          Core.<*> (x Core..:? "Status")
          Core.<*> (x Core..:? "TargetId")
          Core.<*> (x Core..:? "TargetType")