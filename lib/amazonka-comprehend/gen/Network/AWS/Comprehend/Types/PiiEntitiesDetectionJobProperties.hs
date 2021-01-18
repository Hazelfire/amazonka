{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobProperties
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobProperties
  ( PiiEntitiesDetectionJobProperties (..),

    -- * Smart constructor
    mkPiiEntitiesDetectionJobProperties,

    -- * Lenses
    pedjpDataAccessRoleArn,
    pedjpEndTime,
    pedjpInputDataConfig,
    pedjpJobId,
    pedjpJobName,
    pedjpJobStatus,
    pedjpLanguageCode,
    pedjpMessage,
    pedjpMode,
    pedjpOutputDataConfig,
    pedjpRedactionConfig,
    pedjpSubmitTime,
  )
where

import qualified Network.AWS.Comprehend.Types.IamRoleArn as Types
import qualified Network.AWS.Comprehend.Types.InputDataConfig as Types
import qualified Network.AWS.Comprehend.Types.JobId as Types
import qualified Network.AWS.Comprehend.Types.JobName as Types
import qualified Network.AWS.Comprehend.Types.JobStatus as Types
import qualified Network.AWS.Comprehend.Types.LanguageCode as Types
import qualified Network.AWS.Comprehend.Types.Message as Types
import qualified Network.AWS.Comprehend.Types.PiiEntitiesDetectionMode as Types
import qualified Network.AWS.Comprehend.Types.PiiOutputDataConfig as Types
import qualified Network.AWS.Comprehend.Types.RedactionConfig as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Provides information about a PII entities detection job.
--
-- /See:/ 'mkPiiEntitiesDetectionJobProperties' smart constructor.
data PiiEntitiesDetectionJobProperties = PiiEntitiesDetectionJobProperties'
  { -- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
    dataAccessRoleArn :: Core.Maybe Types.IamRoleArn,
    -- | The time that the PII entities detection job completed.
    endTime :: Core.Maybe Core.NominalDiffTime,
    -- | The input properties for a PII entities detection job.
    inputDataConfig :: Core.Maybe Types.InputDataConfig,
    -- | The identifier assigned to the PII entities detection job.
    jobId :: Core.Maybe Types.JobId,
    -- | The name that you assigned the PII entities detection job.
    jobName :: Core.Maybe Types.JobName,
    -- | The current status of the PII entities detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
    jobStatus :: Core.Maybe Types.JobStatus,
    -- | The language code of the input documents
    languageCode :: Core.Maybe Types.LanguageCode,
    -- | A description of the status of a job.
    message :: Core.Maybe Types.Message,
    -- | Specifies whether the output provides the locations (offsets) of PII entities or a file in which PII entities are redacted.
    mode :: Core.Maybe Types.PiiEntitiesDetectionMode,
    -- | The output data configuration that you supplied when you created the PII entities detection job.
    outputDataConfig :: Core.Maybe Types.PiiOutputDataConfig,
    -- | Provides configuration parameters for PII entity redaction.
    --
    -- This parameter is required if you set the @Mode@ parameter to @ONLY_REDACTION@ . In that case, you must provide a @RedactionConfig@ definition that includes the @PiiEntityTypes@ parameter.
    redactionConfig :: Core.Maybe Types.RedactionConfig,
    -- | The time that the PII entities detection job was submitted for processing.
    submitTime :: Core.Maybe Core.NominalDiffTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'PiiEntitiesDetectionJobProperties' value with any optional fields omitted.
mkPiiEntitiesDetectionJobProperties ::
  PiiEntitiesDetectionJobProperties
mkPiiEntitiesDetectionJobProperties =
  PiiEntitiesDetectionJobProperties'
    { dataAccessRoleArn =
        Core.Nothing,
      endTime = Core.Nothing,
      inputDataConfig = Core.Nothing,
      jobId = Core.Nothing,
      jobName = Core.Nothing,
      jobStatus = Core.Nothing,
      languageCode = Core.Nothing,
      message = Core.Nothing,
      mode = Core.Nothing,
      outputDataConfig = Core.Nothing,
      redactionConfig = Core.Nothing,
      submitTime = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- /Note:/ Consider using 'dataAccessRoleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpDataAccessRoleArn :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.IamRoleArn)
pedjpDataAccessRoleArn = Lens.field @"dataAccessRoleArn"
{-# DEPRECATED pedjpDataAccessRoleArn "Use generic-lens or generic-optics with 'dataAccessRoleArn' instead." #-}

-- | The time that the PII entities detection job completed.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpEndTime :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Core.NominalDiffTime)
pedjpEndTime = Lens.field @"endTime"
{-# DEPRECATED pedjpEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The input properties for a PII entities detection job.
--
-- /Note:/ Consider using 'inputDataConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpInputDataConfig :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.InputDataConfig)
pedjpInputDataConfig = Lens.field @"inputDataConfig"
{-# DEPRECATED pedjpInputDataConfig "Use generic-lens or generic-optics with 'inputDataConfig' instead." #-}

-- | The identifier assigned to the PII entities detection job.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpJobId :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.JobId)
pedjpJobId = Lens.field @"jobId"
{-# DEPRECATED pedjpJobId "Use generic-lens or generic-optics with 'jobId' instead." #-}

-- | The name that you assigned the PII entities detection job.
--
-- /Note:/ Consider using 'jobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpJobName :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.JobName)
pedjpJobName = Lens.field @"jobName"
{-# DEPRECATED pedjpJobName "Use generic-lens or generic-optics with 'jobName' instead." #-}

-- | The current status of the PII entities detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
--
-- /Note:/ Consider using 'jobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpJobStatus :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.JobStatus)
pedjpJobStatus = Lens.field @"jobStatus"
{-# DEPRECATED pedjpJobStatus "Use generic-lens or generic-optics with 'jobStatus' instead." #-}

-- | The language code of the input documents
--
-- /Note:/ Consider using 'languageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpLanguageCode :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.LanguageCode)
pedjpLanguageCode = Lens.field @"languageCode"
{-# DEPRECATED pedjpLanguageCode "Use generic-lens or generic-optics with 'languageCode' instead." #-}

-- | A description of the status of a job.
--
-- /Note:/ Consider using 'message' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpMessage :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.Message)
pedjpMessage = Lens.field @"message"
{-# DEPRECATED pedjpMessage "Use generic-lens or generic-optics with 'message' instead." #-}

-- | Specifies whether the output provides the locations (offsets) of PII entities or a file in which PII entities are redacted.
--
-- /Note:/ Consider using 'mode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpMode :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.PiiEntitiesDetectionMode)
pedjpMode = Lens.field @"mode"
{-# DEPRECATED pedjpMode "Use generic-lens or generic-optics with 'mode' instead." #-}

-- | The output data configuration that you supplied when you created the PII entities detection job.
--
-- /Note:/ Consider using 'outputDataConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpOutputDataConfig :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.PiiOutputDataConfig)
pedjpOutputDataConfig = Lens.field @"outputDataConfig"
{-# DEPRECATED pedjpOutputDataConfig "Use generic-lens or generic-optics with 'outputDataConfig' instead." #-}

-- | Provides configuration parameters for PII entity redaction.
--
-- This parameter is required if you set the @Mode@ parameter to @ONLY_REDACTION@ . In that case, you must provide a @RedactionConfig@ definition that includes the @PiiEntityTypes@ parameter.
--
-- /Note:/ Consider using 'redactionConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpRedactionConfig :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Types.RedactionConfig)
pedjpRedactionConfig = Lens.field @"redactionConfig"
{-# DEPRECATED pedjpRedactionConfig "Use generic-lens or generic-optics with 'redactionConfig' instead." #-}

-- | The time that the PII entities detection job was submitted for processing.
--
-- /Note:/ Consider using 'submitTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pedjpSubmitTime :: Lens.Lens' PiiEntitiesDetectionJobProperties (Core.Maybe Core.NominalDiffTime)
pedjpSubmitTime = Lens.field @"submitTime"
{-# DEPRECATED pedjpSubmitTime "Use generic-lens or generic-optics with 'submitTime' instead." #-}

instance Core.FromJSON PiiEntitiesDetectionJobProperties where
  parseJSON =
    Core.withObject "PiiEntitiesDetectionJobProperties" Core.$
      \x ->
        PiiEntitiesDetectionJobProperties'
          Core.<$> (x Core..:? "DataAccessRoleArn")
          Core.<*> (x Core..:? "EndTime")
          Core.<*> (x Core..:? "InputDataConfig")
          Core.<*> (x Core..:? "JobId")
          Core.<*> (x Core..:? "JobName")
          Core.<*> (x Core..:? "JobStatus")
          Core.<*> (x Core..:? "LanguageCode")
          Core.<*> (x Core..:? "Message")
          Core.<*> (x Core..:? "Mode")
          Core.<*> (x Core..:? "OutputDataConfig")
          Core.<*> (x Core..:? "RedactionConfig")
          Core.<*> (x Core..:? "SubmitTime")