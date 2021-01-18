{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TransformJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TransformJob
  ( TransformJob (..),

    -- * Smart constructor
    mkTransformJob,

    -- * Lenses
    tjfAutoMLJobArn,
    tjfBatchStrategy,
    tjfCreationTime,
    tjfDataProcessing,
    tjfEnvironment,
    tjfExperimentConfig,
    tjfFailureReason,
    tjfLabelingJobArn,
    tjfMaxConcurrentTransforms,
    tjfMaxPayloadInMB,
    tjfModelClientConfig,
    tjfModelName,
    tjfTags,
    tjfTransformEndTime,
    tjfTransformInput,
    tjfTransformJobArn,
    tjfTransformJobName,
    tjfTransformJobStatus,
    tjfTransformOutput,
    tjfTransformResources,
    tjfTransformStartTime,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SageMaker.Types.AutoMLJobArn as Types
import qualified Network.AWS.SageMaker.Types.BatchStrategy as Types
import qualified Network.AWS.SageMaker.Types.DataProcessing as Types
import qualified Network.AWS.SageMaker.Types.ExperimentConfig as Types
import qualified Network.AWS.SageMaker.Types.FailureReason as Types
import qualified Network.AWS.SageMaker.Types.LabelingJobArn as Types
import qualified Network.AWS.SageMaker.Types.ModelClientConfig as Types
import qualified Network.AWS.SageMaker.Types.ModelName as Types
import qualified Network.AWS.SageMaker.Types.Tag as Types
import qualified Network.AWS.SageMaker.Types.TransformEnvironmentKey as Types
import qualified Network.AWS.SageMaker.Types.TransformEnvironmentValue as Types
import qualified Network.AWS.SageMaker.Types.TransformInput as Types
import qualified Network.AWS.SageMaker.Types.TransformJobArn as Types
import qualified Network.AWS.SageMaker.Types.TransformJobName as Types
import qualified Network.AWS.SageMaker.Types.TransformJobStatus as Types
import qualified Network.AWS.SageMaker.Types.TransformOutput as Types
import qualified Network.AWS.SageMaker.Types.TransformResources as Types

-- | A batch transform job. For information about SageMaker batch transform, see <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html Use Batch Transform> .
--
-- /See:/ 'mkTransformJob' smart constructor.
data TransformJob = TransformJob'
  { -- | The Amazon Resource Name (ARN) of the AutoML job that created the transform job.
    autoMLJobArn :: Core.Maybe Types.AutoMLJobArn,
    -- | Specifies the number of records to include in a mini-batch for an HTTP inference request. A record is a single unit of input data that inference can be made on. For example, a single line in a CSV file is a record.
    batchStrategy :: Core.Maybe Types.BatchStrategy,
    -- | A timestamp that shows when the transform Job was created.
    creationTime :: Core.Maybe Core.NominalDiffTime,
    dataProcessing :: Core.Maybe Types.DataProcessing,
    -- | The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.
    environment :: Core.Maybe (Core.HashMap Types.TransformEnvironmentKey Types.TransformEnvironmentValue),
    experimentConfig :: Core.Maybe Types.ExperimentConfig,
    -- | If the transform job failed, the reason it failed.
    failureReason :: Core.Maybe Types.FailureReason,
    -- | The Amazon Resource Name (ARN) of the labeling job that created the transform job.
    labelingJobArn :: Core.Maybe Types.LabelingJobArn,
    -- | The maximum number of parallel requests that can be sent to each instance in a transform job. If @MaxConcurrentTransforms@ is set to 0 or left unset, SageMaker checks the optional execution-parameters to determine the settings for your chosen algorithm. If the execution-parameters endpoint is not enabled, the default value is 1. For built-in algorithms, you don't need to set a value for @MaxConcurrentTransforms@ .
    maxConcurrentTransforms :: Core.Maybe Core.Natural,
    -- | The maximum allowed size of the payload, in MB. A payload is the data portion of a record (without metadata). The value in @MaxPayloadInMB@ must be greater than, or equal to, the size of a single record. To estimate the size of a record in MB, divide the size of your dataset by the number of records. To ensure that the records fit within the maximum payload size, we recommend using a slightly larger value. The default value is 6 MB. For cases where the payload might be arbitrarily large and is transmitted using HTTP chunked encoding, set the value to 0. This feature works only in supported algorithms. Currently, SageMaker built-in algorithms do not support HTTP chunked encoding.
    maxPayloadInMB :: Core.Maybe Core.Natural,
    modelClientConfig :: Core.Maybe Types.ModelClientConfig,
    -- | The name of the model associated with the transform job.
    modelName :: Core.Maybe Types.ModelName,
    -- | A list of tags associated with the transform job.
    tags :: Core.Maybe [Types.Tag],
    -- | Indicates when the transform job has been completed, or has stopped or failed. You are billed for the time interval between this time and the value of @TransformStartTime@ .
    transformEndTime :: Core.Maybe Core.NominalDiffTime,
    transformInput :: Core.Maybe Types.TransformInput,
    -- | The Amazon Resource Name (ARN) of the transform job.
    transformJobArn :: Core.Maybe Types.TransformJobArn,
    -- | The name of the transform job.
    transformJobName :: Core.Maybe Types.TransformJobName,
    -- | The status of the transform job.
    --
    -- Transform job statuses are:
    --
    --     * @InProgress@ - The job is in progress.
    --
    --
    --     * @Completed@ - The job has completed.
    --
    --
    --     * @Failed@ - The transform job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTransformJob@ call.
    --
    --
    --     * @Stopping@ - The transform job is stopping.
    --
    --
    --     * @Stopped@ - The transform job has stopped.
    transformJobStatus :: Core.Maybe Types.TransformJobStatus,
    transformOutput :: Core.Maybe Types.TransformOutput,
    transformResources :: Core.Maybe Types.TransformResources,
    -- | Indicates when the transform job starts on ML instances. You are billed for the time interval between this time and the value of @TransformEndTime@ .
    transformStartTime :: Core.Maybe Core.NominalDiffTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'TransformJob' value with any optional fields omitted.
mkTransformJob ::
  TransformJob
mkTransformJob =
  TransformJob'
    { autoMLJobArn = Core.Nothing,
      batchStrategy = Core.Nothing,
      creationTime = Core.Nothing,
      dataProcessing = Core.Nothing,
      environment = Core.Nothing,
      experimentConfig = Core.Nothing,
      failureReason = Core.Nothing,
      labelingJobArn = Core.Nothing,
      maxConcurrentTransforms = Core.Nothing,
      maxPayloadInMB = Core.Nothing,
      modelClientConfig = Core.Nothing,
      modelName = Core.Nothing,
      tags = Core.Nothing,
      transformEndTime = Core.Nothing,
      transformInput = Core.Nothing,
      transformJobArn = Core.Nothing,
      transformJobName = Core.Nothing,
      transformJobStatus = Core.Nothing,
      transformOutput = Core.Nothing,
      transformResources = Core.Nothing,
      transformStartTime = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) of the AutoML job that created the transform job.
--
-- /Note:/ Consider using 'autoMLJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfAutoMLJobArn :: Lens.Lens' TransformJob (Core.Maybe Types.AutoMLJobArn)
tjfAutoMLJobArn = Lens.field @"autoMLJobArn"
{-# DEPRECATED tjfAutoMLJobArn "Use generic-lens or generic-optics with 'autoMLJobArn' instead." #-}

-- | Specifies the number of records to include in a mini-batch for an HTTP inference request. A record is a single unit of input data that inference can be made on. For example, a single line in a CSV file is a record.
--
-- /Note:/ Consider using 'batchStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfBatchStrategy :: Lens.Lens' TransformJob (Core.Maybe Types.BatchStrategy)
tjfBatchStrategy = Lens.field @"batchStrategy"
{-# DEPRECATED tjfBatchStrategy "Use generic-lens or generic-optics with 'batchStrategy' instead." #-}

-- | A timestamp that shows when the transform Job was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfCreationTime :: Lens.Lens' TransformJob (Core.Maybe Core.NominalDiffTime)
tjfCreationTime = Lens.field @"creationTime"
{-# DEPRECATED tjfCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'dataProcessing' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfDataProcessing :: Lens.Lens' TransformJob (Core.Maybe Types.DataProcessing)
tjfDataProcessing = Lens.field @"dataProcessing"
{-# DEPRECATED tjfDataProcessing "Use generic-lens or generic-optics with 'dataProcessing' instead." #-}

-- | The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.
--
-- /Note:/ Consider using 'environment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfEnvironment :: Lens.Lens' TransformJob (Core.Maybe (Core.HashMap Types.TransformEnvironmentKey Types.TransformEnvironmentValue))
tjfEnvironment = Lens.field @"environment"
{-# DEPRECATED tjfEnvironment "Use generic-lens or generic-optics with 'environment' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'experimentConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfExperimentConfig :: Lens.Lens' TransformJob (Core.Maybe Types.ExperimentConfig)
tjfExperimentConfig = Lens.field @"experimentConfig"
{-# DEPRECATED tjfExperimentConfig "Use generic-lens or generic-optics with 'experimentConfig' instead." #-}

-- | If the transform job failed, the reason it failed.
--
-- /Note:/ Consider using 'failureReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfFailureReason :: Lens.Lens' TransformJob (Core.Maybe Types.FailureReason)
tjfFailureReason = Lens.field @"failureReason"
{-# DEPRECATED tjfFailureReason "Use generic-lens or generic-optics with 'failureReason' instead." #-}

-- | The Amazon Resource Name (ARN) of the labeling job that created the transform job.
--
-- /Note:/ Consider using 'labelingJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfLabelingJobArn :: Lens.Lens' TransformJob (Core.Maybe Types.LabelingJobArn)
tjfLabelingJobArn = Lens.field @"labelingJobArn"
{-# DEPRECATED tjfLabelingJobArn "Use generic-lens or generic-optics with 'labelingJobArn' instead." #-}

-- | The maximum number of parallel requests that can be sent to each instance in a transform job. If @MaxConcurrentTransforms@ is set to 0 or left unset, SageMaker checks the optional execution-parameters to determine the settings for your chosen algorithm. If the execution-parameters endpoint is not enabled, the default value is 1. For built-in algorithms, you don't need to set a value for @MaxConcurrentTransforms@ .
--
-- /Note:/ Consider using 'maxConcurrentTransforms' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfMaxConcurrentTransforms :: Lens.Lens' TransformJob (Core.Maybe Core.Natural)
tjfMaxConcurrentTransforms = Lens.field @"maxConcurrentTransforms"
{-# DEPRECATED tjfMaxConcurrentTransforms "Use generic-lens or generic-optics with 'maxConcurrentTransforms' instead." #-}

-- | The maximum allowed size of the payload, in MB. A payload is the data portion of a record (without metadata). The value in @MaxPayloadInMB@ must be greater than, or equal to, the size of a single record. To estimate the size of a record in MB, divide the size of your dataset by the number of records. To ensure that the records fit within the maximum payload size, we recommend using a slightly larger value. The default value is 6 MB. For cases where the payload might be arbitrarily large and is transmitted using HTTP chunked encoding, set the value to 0. This feature works only in supported algorithms. Currently, SageMaker built-in algorithms do not support HTTP chunked encoding.
--
-- /Note:/ Consider using 'maxPayloadInMB' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfMaxPayloadInMB :: Lens.Lens' TransformJob (Core.Maybe Core.Natural)
tjfMaxPayloadInMB = Lens.field @"maxPayloadInMB"
{-# DEPRECATED tjfMaxPayloadInMB "Use generic-lens or generic-optics with 'maxPayloadInMB' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'modelClientConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfModelClientConfig :: Lens.Lens' TransformJob (Core.Maybe Types.ModelClientConfig)
tjfModelClientConfig = Lens.field @"modelClientConfig"
{-# DEPRECATED tjfModelClientConfig "Use generic-lens or generic-optics with 'modelClientConfig' instead." #-}

-- | The name of the model associated with the transform job.
--
-- /Note:/ Consider using 'modelName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfModelName :: Lens.Lens' TransformJob (Core.Maybe Types.ModelName)
tjfModelName = Lens.field @"modelName"
{-# DEPRECATED tjfModelName "Use generic-lens or generic-optics with 'modelName' instead." #-}

-- | A list of tags associated with the transform job.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfTags :: Lens.Lens' TransformJob (Core.Maybe [Types.Tag])
tjfTags = Lens.field @"tags"
{-# DEPRECATED tjfTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | Indicates when the transform job has been completed, or has stopped or failed. You are billed for the time interval between this time and the value of @TransformStartTime@ .
--
-- /Note:/ Consider using 'transformEndTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfTransformEndTime :: Lens.Lens' TransformJob (Core.Maybe Core.NominalDiffTime)
tjfTransformEndTime = Lens.field @"transformEndTime"
{-# DEPRECATED tjfTransformEndTime "Use generic-lens or generic-optics with 'transformEndTime' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'transformInput' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfTransformInput :: Lens.Lens' TransformJob (Core.Maybe Types.TransformInput)
tjfTransformInput = Lens.field @"transformInput"
{-# DEPRECATED tjfTransformInput "Use generic-lens or generic-optics with 'transformInput' instead." #-}

-- | The Amazon Resource Name (ARN) of the transform job.
--
-- /Note:/ Consider using 'transformJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfTransformJobArn :: Lens.Lens' TransformJob (Core.Maybe Types.TransformJobArn)
tjfTransformJobArn = Lens.field @"transformJobArn"
{-# DEPRECATED tjfTransformJobArn "Use generic-lens or generic-optics with 'transformJobArn' instead." #-}

-- | The name of the transform job.
--
-- /Note:/ Consider using 'transformJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfTransformJobName :: Lens.Lens' TransformJob (Core.Maybe Types.TransformJobName)
tjfTransformJobName = Lens.field @"transformJobName"
{-# DEPRECATED tjfTransformJobName "Use generic-lens or generic-optics with 'transformJobName' instead." #-}

-- | The status of the transform job.
--
-- Transform job statuses are:
--
--     * @InProgress@ - The job is in progress.
--
--
--     * @Completed@ - The job has completed.
--
--
--     * @Failed@ - The transform job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTransformJob@ call.
--
--
--     * @Stopping@ - The transform job is stopping.
--
--
--     * @Stopped@ - The transform job has stopped.
--
--
--
-- /Note:/ Consider using 'transformJobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfTransformJobStatus :: Lens.Lens' TransformJob (Core.Maybe Types.TransformJobStatus)
tjfTransformJobStatus = Lens.field @"transformJobStatus"
{-# DEPRECATED tjfTransformJobStatus "Use generic-lens or generic-optics with 'transformJobStatus' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'transformOutput' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfTransformOutput :: Lens.Lens' TransformJob (Core.Maybe Types.TransformOutput)
tjfTransformOutput = Lens.field @"transformOutput"
{-# DEPRECATED tjfTransformOutput "Use generic-lens or generic-optics with 'transformOutput' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'transformResources' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfTransformResources :: Lens.Lens' TransformJob (Core.Maybe Types.TransformResources)
tjfTransformResources = Lens.field @"transformResources"
{-# DEPRECATED tjfTransformResources "Use generic-lens or generic-optics with 'transformResources' instead." #-}

-- | Indicates when the transform job starts on ML instances. You are billed for the time interval between this time and the value of @TransformEndTime@ .
--
-- /Note:/ Consider using 'transformStartTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjfTransformStartTime :: Lens.Lens' TransformJob (Core.Maybe Core.NominalDiffTime)
tjfTransformStartTime = Lens.field @"transformStartTime"
{-# DEPRECATED tjfTransformStartTime "Use generic-lens or generic-optics with 'transformStartTime' instead." #-}

instance Core.FromJSON TransformJob where
  parseJSON =
    Core.withObject "TransformJob" Core.$
      \x ->
        TransformJob'
          Core.<$> (x Core..:? "AutoMLJobArn")
          Core.<*> (x Core..:? "BatchStrategy")
          Core.<*> (x Core..:? "CreationTime")
          Core.<*> (x Core..:? "DataProcessing")
          Core.<*> (x Core..:? "Environment")
          Core.<*> (x Core..:? "ExperimentConfig")
          Core.<*> (x Core..:? "FailureReason")
          Core.<*> (x Core..:? "LabelingJobArn")
          Core.<*> (x Core..:? "MaxConcurrentTransforms")
          Core.<*> (x Core..:? "MaxPayloadInMB")
          Core.<*> (x Core..:? "ModelClientConfig")
          Core.<*> (x Core..:? "ModelName")
          Core.<*> (x Core..:? "Tags")
          Core.<*> (x Core..:? "TransformEndTime")
          Core.<*> (x Core..:? "TransformInput")
          Core.<*> (x Core..:? "TransformJobArn")
          Core.<*> (x Core..:? "TransformJobName")
          Core.<*> (x Core..:? "TransformJobStatus")
          Core.<*> (x Core..:? "TransformOutput")
          Core.<*> (x Core..:? "TransformResources")
          Core.<*> (x Core..:? "TransformStartTime")