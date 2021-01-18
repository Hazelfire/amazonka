{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.JobData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.JobData
  ( JobData (..),

    -- * Smart constructor
    mkJobData,

    -- * Lenses
    jdActionConfiguration,
    jdActionTypeId,
    jdArtifactCredentials,
    jdContinuationToken,
    jdEncryptionKey,
    jdInputArtifacts,
    jdOutputArtifacts,
    jdPipelineContext,
  )
where

import qualified Network.AWS.CodePipeline.Types.AWSSessionCredentials as Types
import qualified Network.AWS.CodePipeline.Types.ActionConfiguration as Types
import qualified Network.AWS.CodePipeline.Types.ActionTypeId as Types
import qualified Network.AWS.CodePipeline.Types.Artifact as Types
import qualified Network.AWS.CodePipeline.Types.ContinuationToken as Types
import qualified Network.AWS.CodePipeline.Types.EncryptionKey as Types
import qualified Network.AWS.CodePipeline.Types.PipelineContext as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents other information about a job required for a job worker to complete the job.
--
-- /See:/ 'mkJobData' smart constructor.
data JobData = JobData'
  { -- | Represents information about an action configuration.
    actionConfiguration :: Core.Maybe Types.ActionConfiguration,
    -- | Represents information about an action type.
    actionTypeId :: Core.Maybe Types.ActionTypeId,
    -- | Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifacts for the pipeline in AWS CodePipeline.
    artifactCredentials :: Core.Maybe Types.AWSSessionCredentials,
    -- | A system-generated token, such as a AWS CodeDeploy deployment ID, required by a job to continue the job asynchronously.
    continuationToken :: Core.Maybe Types.ContinuationToken,
    -- | Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS) key.
    encryptionKey :: Core.Maybe Types.EncryptionKey,
    -- | The artifact supplied to the job.
    inputArtifacts :: Core.Maybe [Types.Artifact],
    -- | The output of the job.
    outputArtifacts :: Core.Maybe [Types.Artifact],
    -- | Represents information about a pipeline to a job worker.
    pipelineContext :: Core.Maybe Types.PipelineContext
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'JobData' value with any optional fields omitted.
mkJobData ::
  JobData
mkJobData =
  JobData'
    { actionConfiguration = Core.Nothing,
      actionTypeId = Core.Nothing,
      artifactCredentials = Core.Nothing,
      continuationToken = Core.Nothing,
      encryptionKey = Core.Nothing,
      inputArtifacts = Core.Nothing,
      outputArtifacts = Core.Nothing,
      pipelineContext = Core.Nothing
    }

-- | Represents information about an action configuration.
--
-- /Note:/ Consider using 'actionConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
jdActionConfiguration :: Lens.Lens' JobData (Core.Maybe Types.ActionConfiguration)
jdActionConfiguration = Lens.field @"actionConfiguration"
{-# DEPRECATED jdActionConfiguration "Use generic-lens or generic-optics with 'actionConfiguration' instead." #-}

-- | Represents information about an action type.
--
-- /Note:/ Consider using 'actionTypeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
jdActionTypeId :: Lens.Lens' JobData (Core.Maybe Types.ActionTypeId)
jdActionTypeId = Lens.field @"actionTypeId"
{-# DEPRECATED jdActionTypeId "Use generic-lens or generic-optics with 'actionTypeId' instead." #-}

-- | Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifacts for the pipeline in AWS CodePipeline.
--
-- /Note:/ Consider using 'artifactCredentials' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
jdArtifactCredentials :: Lens.Lens' JobData (Core.Maybe Types.AWSSessionCredentials)
jdArtifactCredentials = Lens.field @"artifactCredentials"
{-# DEPRECATED jdArtifactCredentials "Use generic-lens or generic-optics with 'artifactCredentials' instead." #-}

-- | A system-generated token, such as a AWS CodeDeploy deployment ID, required by a job to continue the job asynchronously.
--
-- /Note:/ Consider using 'continuationToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
jdContinuationToken :: Lens.Lens' JobData (Core.Maybe Types.ContinuationToken)
jdContinuationToken = Lens.field @"continuationToken"
{-# DEPRECATED jdContinuationToken "Use generic-lens or generic-optics with 'continuationToken' instead." #-}

-- | Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS) key.
--
-- /Note:/ Consider using 'encryptionKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
jdEncryptionKey :: Lens.Lens' JobData (Core.Maybe Types.EncryptionKey)
jdEncryptionKey = Lens.field @"encryptionKey"
{-# DEPRECATED jdEncryptionKey "Use generic-lens or generic-optics with 'encryptionKey' instead." #-}

-- | The artifact supplied to the job.
--
-- /Note:/ Consider using 'inputArtifacts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
jdInputArtifacts :: Lens.Lens' JobData (Core.Maybe [Types.Artifact])
jdInputArtifacts = Lens.field @"inputArtifacts"
{-# DEPRECATED jdInputArtifacts "Use generic-lens or generic-optics with 'inputArtifacts' instead." #-}

-- | The output of the job.
--
-- /Note:/ Consider using 'outputArtifacts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
jdOutputArtifacts :: Lens.Lens' JobData (Core.Maybe [Types.Artifact])
jdOutputArtifacts = Lens.field @"outputArtifacts"
{-# DEPRECATED jdOutputArtifacts "Use generic-lens or generic-optics with 'outputArtifacts' instead." #-}

-- | Represents information about a pipeline to a job worker.
--
-- /Note:/ Consider using 'pipelineContext' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
jdPipelineContext :: Lens.Lens' JobData (Core.Maybe Types.PipelineContext)
jdPipelineContext = Lens.field @"pipelineContext"
{-# DEPRECATED jdPipelineContext "Use generic-lens or generic-optics with 'pipelineContext' instead." #-}

instance Core.FromJSON JobData where
  parseJSON =
    Core.withObject "JobData" Core.$
      \x ->
        JobData'
          Core.<$> (x Core..:? "actionConfiguration")
          Core.<*> (x Core..:? "actionTypeId")
          Core.<*> (x Core..:? "artifactCredentials")
          Core.<*> (x Core..:? "continuationToken")
          Core.<*> (x Core..:? "encryptionKey")
          Core.<*> (x Core..:? "inputArtifacts")
          Core.<*> (x Core..:? "outputArtifacts")
          Core.<*> (x Core..:? "pipelineContext")