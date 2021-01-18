{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ProjectVersionDescription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ProjectVersionDescription
  ( ProjectVersionDescription (..),

    -- * Smart constructor
    mkProjectVersionDescription,

    -- * Lenses
    pvdBillableTrainingTimeInSeconds,
    pvdCreationTimestamp,
    pvdEvaluationResult,
    pvdManifestSummary,
    pvdMinInferenceUnits,
    pvdOutputConfig,
    pvdProjectVersionArn,
    pvdStatus,
    pvdStatusMessage,
    pvdTestingDataResult,
    pvdTrainingDataResult,
    pvdTrainingEndTimestamp,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types.EvaluationResult as Types
import qualified Network.AWS.Rekognition.Types.GroundTruthManifest as Types
import qualified Network.AWS.Rekognition.Types.OutputConfig as Types
import qualified Network.AWS.Rekognition.Types.ProjectVersionArn as Types
import qualified Network.AWS.Rekognition.Types.ProjectVersionStatus as Types
import qualified Network.AWS.Rekognition.Types.StatusMessage as Types
import qualified Network.AWS.Rekognition.Types.TestingDataResult as Types
import qualified Network.AWS.Rekognition.Types.TrainingDataResult as Types

-- | The description of a version of a model.
--
-- /See:/ 'mkProjectVersionDescription' smart constructor.
data ProjectVersionDescription = ProjectVersionDescription'
  { -- | The duration, in seconds, that the model version has been billed for training. This value is only returned if the model version has been successfully trained.
    billableTrainingTimeInSeconds :: Core.Maybe Core.Natural,
    -- | The Unix datetime for the date and time that training started.
    creationTimestamp :: Core.Maybe Core.NominalDiffTime,
    -- | The training results. @EvaluationResult@ is only returned if training is successful.
    evaluationResult :: Core.Maybe Types.EvaluationResult,
    -- | The location of the summary manifest. The summary manifest provides aggregate data validation results for the training and test datasets.
    manifestSummary :: Core.Maybe Types.GroundTruthManifest,
    -- | The minimum number of inference units used by the model. For more information, see 'StartProjectVersion' .
    minInferenceUnits :: Core.Maybe Core.Natural,
    -- | The location where training results are saved.
    outputConfig :: Core.Maybe Types.OutputConfig,
    -- | The Amazon Resource Name (ARN) of the model version.
    projectVersionArn :: Core.Maybe Types.ProjectVersionArn,
    -- | The current status of the model version.
    status :: Core.Maybe Types.ProjectVersionStatus,
    -- | A descriptive message for an error or warning that occurred.
    statusMessage :: Core.Maybe Types.StatusMessage,
    -- | Contains information about the testing results.
    testingDataResult :: Core.Maybe Types.TestingDataResult,
    -- | Contains information about the training results.
    trainingDataResult :: Core.Maybe Types.TrainingDataResult,
    -- | The Unix date and time that training of the model ended.
    trainingEndTimestamp :: Core.Maybe Core.NominalDiffTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ProjectVersionDescription' value with any optional fields omitted.
mkProjectVersionDescription ::
  ProjectVersionDescription
mkProjectVersionDescription =
  ProjectVersionDescription'
    { billableTrainingTimeInSeconds =
        Core.Nothing,
      creationTimestamp = Core.Nothing,
      evaluationResult = Core.Nothing,
      manifestSummary = Core.Nothing,
      minInferenceUnits = Core.Nothing,
      outputConfig = Core.Nothing,
      projectVersionArn = Core.Nothing,
      status = Core.Nothing,
      statusMessage = Core.Nothing,
      testingDataResult = Core.Nothing,
      trainingDataResult = Core.Nothing,
      trainingEndTimestamp = Core.Nothing
    }

-- | The duration, in seconds, that the model version has been billed for training. This value is only returned if the model version has been successfully trained.
--
-- /Note:/ Consider using 'billableTrainingTimeInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdBillableTrainingTimeInSeconds :: Lens.Lens' ProjectVersionDescription (Core.Maybe Core.Natural)
pvdBillableTrainingTimeInSeconds = Lens.field @"billableTrainingTimeInSeconds"
{-# DEPRECATED pvdBillableTrainingTimeInSeconds "Use generic-lens or generic-optics with 'billableTrainingTimeInSeconds' instead." #-}

-- | The Unix datetime for the date and time that training started.
--
-- /Note:/ Consider using 'creationTimestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdCreationTimestamp :: Lens.Lens' ProjectVersionDescription (Core.Maybe Core.NominalDiffTime)
pvdCreationTimestamp = Lens.field @"creationTimestamp"
{-# DEPRECATED pvdCreationTimestamp "Use generic-lens or generic-optics with 'creationTimestamp' instead." #-}

-- | The training results. @EvaluationResult@ is only returned if training is successful.
--
-- /Note:/ Consider using 'evaluationResult' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdEvaluationResult :: Lens.Lens' ProjectVersionDescription (Core.Maybe Types.EvaluationResult)
pvdEvaluationResult = Lens.field @"evaluationResult"
{-# DEPRECATED pvdEvaluationResult "Use generic-lens or generic-optics with 'evaluationResult' instead." #-}

-- | The location of the summary manifest. The summary manifest provides aggregate data validation results for the training and test datasets.
--
-- /Note:/ Consider using 'manifestSummary' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdManifestSummary :: Lens.Lens' ProjectVersionDescription (Core.Maybe Types.GroundTruthManifest)
pvdManifestSummary = Lens.field @"manifestSummary"
{-# DEPRECATED pvdManifestSummary "Use generic-lens or generic-optics with 'manifestSummary' instead." #-}

-- | The minimum number of inference units used by the model. For more information, see 'StartProjectVersion' .
--
-- /Note:/ Consider using 'minInferenceUnits' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdMinInferenceUnits :: Lens.Lens' ProjectVersionDescription (Core.Maybe Core.Natural)
pvdMinInferenceUnits = Lens.field @"minInferenceUnits"
{-# DEPRECATED pvdMinInferenceUnits "Use generic-lens or generic-optics with 'minInferenceUnits' instead." #-}

-- | The location where training results are saved.
--
-- /Note:/ Consider using 'outputConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdOutputConfig :: Lens.Lens' ProjectVersionDescription (Core.Maybe Types.OutputConfig)
pvdOutputConfig = Lens.field @"outputConfig"
{-# DEPRECATED pvdOutputConfig "Use generic-lens or generic-optics with 'outputConfig' instead." #-}

-- | The Amazon Resource Name (ARN) of the model version.
--
-- /Note:/ Consider using 'projectVersionArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdProjectVersionArn :: Lens.Lens' ProjectVersionDescription (Core.Maybe Types.ProjectVersionArn)
pvdProjectVersionArn = Lens.field @"projectVersionArn"
{-# DEPRECATED pvdProjectVersionArn "Use generic-lens or generic-optics with 'projectVersionArn' instead." #-}

-- | The current status of the model version.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdStatus :: Lens.Lens' ProjectVersionDescription (Core.Maybe Types.ProjectVersionStatus)
pvdStatus = Lens.field @"status"
{-# DEPRECATED pvdStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | A descriptive message for an error or warning that occurred.
--
-- /Note:/ Consider using 'statusMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdStatusMessage :: Lens.Lens' ProjectVersionDescription (Core.Maybe Types.StatusMessage)
pvdStatusMessage = Lens.field @"statusMessage"
{-# DEPRECATED pvdStatusMessage "Use generic-lens or generic-optics with 'statusMessage' instead." #-}

-- | Contains information about the testing results.
--
-- /Note:/ Consider using 'testingDataResult' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdTestingDataResult :: Lens.Lens' ProjectVersionDescription (Core.Maybe Types.TestingDataResult)
pvdTestingDataResult = Lens.field @"testingDataResult"
{-# DEPRECATED pvdTestingDataResult "Use generic-lens or generic-optics with 'testingDataResult' instead." #-}

-- | Contains information about the training results.
--
-- /Note:/ Consider using 'trainingDataResult' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdTrainingDataResult :: Lens.Lens' ProjectVersionDescription (Core.Maybe Types.TrainingDataResult)
pvdTrainingDataResult = Lens.field @"trainingDataResult"
{-# DEPRECATED pvdTrainingDataResult "Use generic-lens or generic-optics with 'trainingDataResult' instead." #-}

-- | The Unix date and time that training of the model ended.
--
-- /Note:/ Consider using 'trainingEndTimestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pvdTrainingEndTimestamp :: Lens.Lens' ProjectVersionDescription (Core.Maybe Core.NominalDiffTime)
pvdTrainingEndTimestamp = Lens.field @"trainingEndTimestamp"
{-# DEPRECATED pvdTrainingEndTimestamp "Use generic-lens or generic-optics with 'trainingEndTimestamp' instead." #-}

instance Core.FromJSON ProjectVersionDescription where
  parseJSON =
    Core.withObject "ProjectVersionDescription" Core.$
      \x ->
        ProjectVersionDescription'
          Core.<$> (x Core..:? "BillableTrainingTimeInSeconds")
          Core.<*> (x Core..:? "CreationTimestamp")
          Core.<*> (x Core..:? "EvaluationResult")
          Core.<*> (x Core..:? "ManifestSummary")
          Core.<*> (x Core..:? "MinInferenceUnits")
          Core.<*> (x Core..:? "OutputConfig")
          Core.<*> (x Core..:? "ProjectVersionArn")
          Core.<*> (x Core..:? "Status")
          Core.<*> (x Core..:? "StatusMessage")
          Core.<*> (x Core..:? "TestingDataResult")
          Core.<*> (x Core..:? "TrainingDataResult")
          Core.<*> (x Core..:? "TrainingEndTimestamp")