{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ThirdPartyJobData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ThirdPartyJobData
  ( ThirdPartyJobData (..),

    -- * Smart constructor
    mkThirdPartyJobData,

    -- * Lenses
    tpjdActionConfiguration,
    tpjdActionTypeId,
    tpjdArtifactCredentials,
    tpjdContinuationToken,
    tpjdEncryptionKey,
    tpjdInputArtifacts,
    tpjdOutputArtifacts,
    tpjdPipelineContext,
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

-- | Represents information about the job data for a partner action.
--
-- /See:/ 'mkThirdPartyJobData' smart constructor.
data ThirdPartyJobData = ThirdPartyJobData'
  { -- | Represents information about an action configuration.
    actionConfiguration :: Core.Maybe Types.ActionConfiguration,
    -- | Represents information about an action type.
    actionTypeId :: Core.Maybe Types.ActionTypeId,
    -- | Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifact for the pipeline in AWS CodePipeline.
    artifactCredentials :: Core.Maybe Types.AWSSessionCredentials,
    -- | A system-generated token, such as a AWS CodeDeploy deployment ID, that a job requires to continue the job asynchronously.
    continuationToken :: Core.Maybe Types.ContinuationToken,
    -- | The encryption key used to encrypt and decrypt data in the artifact store for the pipeline, such as an AWS Key Management Service (AWS KMS) key. This is optional and might not be present.
    encryptionKey :: Core.Maybe Types.EncryptionKey,
    -- | The name of the artifact that is worked on by the action, if any. This name might be system-generated, such as "MyApp", or it might be defined by the user when the action is created. The input artifact name must match the name of an output artifact generated by an action in an earlier action or stage of the pipeline.
    inputArtifacts :: Core.Maybe [Types.Artifact],
    -- | The name of the artifact that is the result of the action, if any. This name might be system-generated, such as "MyBuiltApp", or it might be defined by the user when the action is created.
    outputArtifacts :: Core.Maybe [Types.Artifact],
    -- | Represents information about a pipeline to a job worker.
    pipelineContext :: Core.Maybe Types.PipelineContext
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ThirdPartyJobData' value with any optional fields omitted.
mkThirdPartyJobData ::
  ThirdPartyJobData
mkThirdPartyJobData =
  ThirdPartyJobData'
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
tpjdActionConfiguration :: Lens.Lens' ThirdPartyJobData (Core.Maybe Types.ActionConfiguration)
tpjdActionConfiguration = Lens.field @"actionConfiguration"
{-# DEPRECATED tpjdActionConfiguration "Use generic-lens or generic-optics with 'actionConfiguration' instead." #-}

-- | Represents information about an action type.
--
-- /Note:/ Consider using 'actionTypeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdActionTypeId :: Lens.Lens' ThirdPartyJobData (Core.Maybe Types.ActionTypeId)
tpjdActionTypeId = Lens.field @"actionTypeId"
{-# DEPRECATED tpjdActionTypeId "Use generic-lens or generic-optics with 'actionTypeId' instead." #-}

-- | Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifact for the pipeline in AWS CodePipeline.
--
-- /Note:/ Consider using 'artifactCredentials' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdArtifactCredentials :: Lens.Lens' ThirdPartyJobData (Core.Maybe Types.AWSSessionCredentials)
tpjdArtifactCredentials = Lens.field @"artifactCredentials"
{-# DEPRECATED tpjdArtifactCredentials "Use generic-lens or generic-optics with 'artifactCredentials' instead." #-}

-- | A system-generated token, such as a AWS CodeDeploy deployment ID, that a job requires to continue the job asynchronously.
--
-- /Note:/ Consider using 'continuationToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdContinuationToken :: Lens.Lens' ThirdPartyJobData (Core.Maybe Types.ContinuationToken)
tpjdContinuationToken = Lens.field @"continuationToken"
{-# DEPRECATED tpjdContinuationToken "Use generic-lens or generic-optics with 'continuationToken' instead." #-}

-- | The encryption key used to encrypt and decrypt data in the artifact store for the pipeline, such as an AWS Key Management Service (AWS KMS) key. This is optional and might not be present.
--
-- /Note:/ Consider using 'encryptionKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdEncryptionKey :: Lens.Lens' ThirdPartyJobData (Core.Maybe Types.EncryptionKey)
tpjdEncryptionKey = Lens.field @"encryptionKey"
{-# DEPRECATED tpjdEncryptionKey "Use generic-lens or generic-optics with 'encryptionKey' instead." #-}

-- | The name of the artifact that is worked on by the action, if any. This name might be system-generated, such as "MyApp", or it might be defined by the user when the action is created. The input artifact name must match the name of an output artifact generated by an action in an earlier action or stage of the pipeline.
--
-- /Note:/ Consider using 'inputArtifacts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdInputArtifacts :: Lens.Lens' ThirdPartyJobData (Core.Maybe [Types.Artifact])
tpjdInputArtifacts = Lens.field @"inputArtifacts"
{-# DEPRECATED tpjdInputArtifacts "Use generic-lens or generic-optics with 'inputArtifacts' instead." #-}

-- | The name of the artifact that is the result of the action, if any. This name might be system-generated, such as "MyBuiltApp", or it might be defined by the user when the action is created.
--
-- /Note:/ Consider using 'outputArtifacts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdOutputArtifacts :: Lens.Lens' ThirdPartyJobData (Core.Maybe [Types.Artifact])
tpjdOutputArtifacts = Lens.field @"outputArtifacts"
{-# DEPRECATED tpjdOutputArtifacts "Use generic-lens or generic-optics with 'outputArtifacts' instead." #-}

-- | Represents information about a pipeline to a job worker.
--
-- /Note:/ Consider using 'pipelineContext' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdPipelineContext :: Lens.Lens' ThirdPartyJobData (Core.Maybe Types.PipelineContext)
tpjdPipelineContext = Lens.field @"pipelineContext"
{-# DEPRECATED tpjdPipelineContext "Use generic-lens or generic-optics with 'pipelineContext' instead." #-}

instance Core.FromJSON ThirdPartyJobData where
  parseJSON =
    Core.withObject "ThirdPartyJobData" Core.$
      \x ->
        ThirdPartyJobData'
          Core.<$> (x Core..:? "actionConfiguration")
          Core.<*> (x Core..:? "actionTypeId")
          Core.<*> (x Core..:? "artifactCredentials")
          Core.<*> (x Core..:? "continuationToken")
          Core.<*> (x Core..:? "encryptionKey")
          Core.<*> (x Core..:? "inputArtifacts")
          Core.<*> (x Core..:? "outputArtifacts")
          Core.<*> (x Core..:? "pipelineContext")