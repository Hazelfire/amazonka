{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.OTAUpdateInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.OTAUpdateInfo
  ( OTAUpdateInfo (..),

    -- * Smart constructor
    mkOTAUpdateInfo,

    -- * Lenses
    otauiAdditionalParameters,
    otauiAwsIotJobArn,
    otauiAwsIotJobId,
    otauiAwsJobExecutionsRolloutConfig,
    otauiAwsJobPresignedUrlConfig,
    otauiCreationDate,
    otauiDescription,
    otauiErrorInfo,
    otauiLastModifiedDate,
    otauiOtaUpdateArn,
    otauiOtaUpdateFiles,
    otauiOtaUpdateId,
    otauiOtaUpdateStatus,
    otauiProtocols,
    otauiTargetSelection,
    otauiTargets,
  )
where

import qualified Network.AWS.IoT.Types.AttributeKey as Types
import qualified Network.AWS.IoT.Types.AwsIotJobArn as Types
import qualified Network.AWS.IoT.Types.AwsIotJobId as Types
import qualified Network.AWS.IoT.Types.AwsJobExecutionsRolloutConfig as Types
import qualified Network.AWS.IoT.Types.AwsJobPresignedUrlConfig as Types
import qualified Network.AWS.IoT.Types.ErrorInfo as Types
import qualified Network.AWS.IoT.Types.OTAUpdateDescription as Types
import qualified Network.AWS.IoT.Types.OTAUpdateFile as Types
import qualified Network.AWS.IoT.Types.OTAUpdateStatus as Types
import qualified Network.AWS.IoT.Types.OtaUpdateArn as Types
import qualified Network.AWS.IoT.Types.OtaUpdateId as Types
import qualified Network.AWS.IoT.Types.Protocol as Types
import qualified Network.AWS.IoT.Types.Target as Types
import qualified Network.AWS.IoT.Types.TargetSelection as Types
import qualified Network.AWS.IoT.Types.Value as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Information about an OTA update.
--
-- /See:/ 'mkOTAUpdateInfo' smart constructor.
data OTAUpdateInfo = OTAUpdateInfo'
  { -- | A collection of name/value pairs
    additionalParameters :: Core.Maybe (Core.HashMap Types.AttributeKey Types.Value),
    -- | The AWS IoT job ARN associated with the OTA update.
    awsIotJobArn :: Core.Maybe Types.AwsIotJobArn,
    -- | The AWS IoT job ID associated with the OTA update.
    awsIotJobId :: Core.Maybe Types.AwsIotJobId,
    -- | Configuration for the rollout of OTA updates.
    awsJobExecutionsRolloutConfig :: Core.Maybe Types.AwsJobExecutionsRolloutConfig,
    -- | Configuration information for pre-signed URLs. Valid when @protocols@ contains HTTP.
    awsJobPresignedUrlConfig :: Core.Maybe Types.AwsJobPresignedUrlConfig,
    -- | The date when the OTA update was created.
    creationDate :: Core.Maybe Core.NominalDiffTime,
    -- | A description of the OTA update.
    description :: Core.Maybe Types.OTAUpdateDescription,
    -- | Error information associated with the OTA update.
    errorInfo :: Core.Maybe Types.ErrorInfo,
    -- | The date when the OTA update was last updated.
    lastModifiedDate :: Core.Maybe Core.NominalDiffTime,
    -- | The OTA update ARN.
    otaUpdateArn :: Core.Maybe Types.OtaUpdateArn,
    -- | A list of files associated with the OTA update.
    otaUpdateFiles :: Core.Maybe (Core.NonEmpty Types.OTAUpdateFile),
    -- | The OTA update ID.
    otaUpdateId :: Core.Maybe Types.OtaUpdateId,
    -- | The status of the OTA update.
    otaUpdateStatus :: Core.Maybe Types.OTAUpdateStatus,
    -- | The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both HTTP and MQTT are specified, the target device can choose the protocol.
    protocols :: Core.Maybe (Core.NonEmpty Types.Protocol),
    -- | Specifies whether the OTA update will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the OTA update (SNAPSHOT). If continuous, the OTA update may also be run on a thing when a change is detected in a target. For example, an OTA update will run on a thing when the thing is added to a target group, even after the OTA update was completed by all things originally in the group.
    targetSelection :: Core.Maybe Types.TargetSelection,
    -- | The targets of the OTA update.
    targets :: Core.Maybe (Core.NonEmpty Types.Target)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'OTAUpdateInfo' value with any optional fields omitted.
mkOTAUpdateInfo ::
  OTAUpdateInfo
mkOTAUpdateInfo =
  OTAUpdateInfo'
    { additionalParameters = Core.Nothing,
      awsIotJobArn = Core.Nothing,
      awsIotJobId = Core.Nothing,
      awsJobExecutionsRolloutConfig = Core.Nothing,
      awsJobPresignedUrlConfig = Core.Nothing,
      creationDate = Core.Nothing,
      description = Core.Nothing,
      errorInfo = Core.Nothing,
      lastModifiedDate = Core.Nothing,
      otaUpdateArn = Core.Nothing,
      otaUpdateFiles = Core.Nothing,
      otaUpdateId = Core.Nothing,
      otaUpdateStatus = Core.Nothing,
      protocols = Core.Nothing,
      targetSelection = Core.Nothing,
      targets = Core.Nothing
    }

-- | A collection of name/value pairs
--
-- /Note:/ Consider using 'additionalParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiAdditionalParameters :: Lens.Lens' OTAUpdateInfo (Core.Maybe (Core.HashMap Types.AttributeKey Types.Value))
otauiAdditionalParameters = Lens.field @"additionalParameters"
{-# DEPRECATED otauiAdditionalParameters "Use generic-lens or generic-optics with 'additionalParameters' instead." #-}

-- | The AWS IoT job ARN associated with the OTA update.
--
-- /Note:/ Consider using 'awsIotJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiAwsIotJobArn :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.AwsIotJobArn)
otauiAwsIotJobArn = Lens.field @"awsIotJobArn"
{-# DEPRECATED otauiAwsIotJobArn "Use generic-lens or generic-optics with 'awsIotJobArn' instead." #-}

-- | The AWS IoT job ID associated with the OTA update.
--
-- /Note:/ Consider using 'awsIotJobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiAwsIotJobId :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.AwsIotJobId)
otauiAwsIotJobId = Lens.field @"awsIotJobId"
{-# DEPRECATED otauiAwsIotJobId "Use generic-lens or generic-optics with 'awsIotJobId' instead." #-}

-- | Configuration for the rollout of OTA updates.
--
-- /Note:/ Consider using 'awsJobExecutionsRolloutConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiAwsJobExecutionsRolloutConfig :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.AwsJobExecutionsRolloutConfig)
otauiAwsJobExecutionsRolloutConfig = Lens.field @"awsJobExecutionsRolloutConfig"
{-# DEPRECATED otauiAwsJobExecutionsRolloutConfig "Use generic-lens or generic-optics with 'awsJobExecutionsRolloutConfig' instead." #-}

-- | Configuration information for pre-signed URLs. Valid when @protocols@ contains HTTP.
--
-- /Note:/ Consider using 'awsJobPresignedUrlConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiAwsJobPresignedUrlConfig :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.AwsJobPresignedUrlConfig)
otauiAwsJobPresignedUrlConfig = Lens.field @"awsJobPresignedUrlConfig"
{-# DEPRECATED otauiAwsJobPresignedUrlConfig "Use generic-lens or generic-optics with 'awsJobPresignedUrlConfig' instead." #-}

-- | The date when the OTA update was created.
--
-- /Note:/ Consider using 'creationDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiCreationDate :: Lens.Lens' OTAUpdateInfo (Core.Maybe Core.NominalDiffTime)
otauiCreationDate = Lens.field @"creationDate"
{-# DEPRECATED otauiCreationDate "Use generic-lens or generic-optics with 'creationDate' instead." #-}

-- | A description of the OTA update.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiDescription :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.OTAUpdateDescription)
otauiDescription = Lens.field @"description"
{-# DEPRECATED otauiDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Error information associated with the OTA update.
--
-- /Note:/ Consider using 'errorInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiErrorInfo :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.ErrorInfo)
otauiErrorInfo = Lens.field @"errorInfo"
{-# DEPRECATED otauiErrorInfo "Use generic-lens or generic-optics with 'errorInfo' instead." #-}

-- | The date when the OTA update was last updated.
--
-- /Note:/ Consider using 'lastModifiedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiLastModifiedDate :: Lens.Lens' OTAUpdateInfo (Core.Maybe Core.NominalDiffTime)
otauiLastModifiedDate = Lens.field @"lastModifiedDate"
{-# DEPRECATED otauiLastModifiedDate "Use generic-lens or generic-optics with 'lastModifiedDate' instead." #-}

-- | The OTA update ARN.
--
-- /Note:/ Consider using 'otaUpdateArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiOtaUpdateArn :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.OtaUpdateArn)
otauiOtaUpdateArn = Lens.field @"otaUpdateArn"
{-# DEPRECATED otauiOtaUpdateArn "Use generic-lens or generic-optics with 'otaUpdateArn' instead." #-}

-- | A list of files associated with the OTA update.
--
-- /Note:/ Consider using 'otaUpdateFiles' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiOtaUpdateFiles :: Lens.Lens' OTAUpdateInfo (Core.Maybe (Core.NonEmpty Types.OTAUpdateFile))
otauiOtaUpdateFiles = Lens.field @"otaUpdateFiles"
{-# DEPRECATED otauiOtaUpdateFiles "Use generic-lens or generic-optics with 'otaUpdateFiles' instead." #-}

-- | The OTA update ID.
--
-- /Note:/ Consider using 'otaUpdateId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiOtaUpdateId :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.OtaUpdateId)
otauiOtaUpdateId = Lens.field @"otaUpdateId"
{-# DEPRECATED otauiOtaUpdateId "Use generic-lens or generic-optics with 'otaUpdateId' instead." #-}

-- | The status of the OTA update.
--
-- /Note:/ Consider using 'otaUpdateStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiOtaUpdateStatus :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.OTAUpdateStatus)
otauiOtaUpdateStatus = Lens.field @"otaUpdateStatus"
{-# DEPRECATED otauiOtaUpdateStatus "Use generic-lens or generic-optics with 'otaUpdateStatus' instead." #-}

-- | The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both HTTP and MQTT are specified, the target device can choose the protocol.
--
-- /Note:/ Consider using 'protocols' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiProtocols :: Lens.Lens' OTAUpdateInfo (Core.Maybe (Core.NonEmpty Types.Protocol))
otauiProtocols = Lens.field @"protocols"
{-# DEPRECATED otauiProtocols "Use generic-lens or generic-optics with 'protocols' instead." #-}

-- | Specifies whether the OTA update will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the OTA update (SNAPSHOT). If continuous, the OTA update may also be run on a thing when a change is detected in a target. For example, an OTA update will run on a thing when the thing is added to a target group, even after the OTA update was completed by all things originally in the group.
--
-- /Note:/ Consider using 'targetSelection' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiTargetSelection :: Lens.Lens' OTAUpdateInfo (Core.Maybe Types.TargetSelection)
otauiTargetSelection = Lens.field @"targetSelection"
{-# DEPRECATED otauiTargetSelection "Use generic-lens or generic-optics with 'targetSelection' instead." #-}

-- | The targets of the OTA update.
--
-- /Note:/ Consider using 'targets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otauiTargets :: Lens.Lens' OTAUpdateInfo (Core.Maybe (Core.NonEmpty Types.Target))
otauiTargets = Lens.field @"targets"
{-# DEPRECATED otauiTargets "Use generic-lens or generic-optics with 'targets' instead." #-}

instance Core.FromJSON OTAUpdateInfo where
  parseJSON =
    Core.withObject "OTAUpdateInfo" Core.$
      \x ->
        OTAUpdateInfo'
          Core.<$> (x Core..:? "additionalParameters")
          Core.<*> (x Core..:? "awsIotJobArn")
          Core.<*> (x Core..:? "awsIotJobId")
          Core.<*> (x Core..:? "awsJobExecutionsRolloutConfig")
          Core.<*> (x Core..:? "awsJobPresignedUrlConfig")
          Core.<*> (x Core..:? "creationDate")
          Core.<*> (x Core..:? "description")
          Core.<*> (x Core..:? "errorInfo")
          Core.<*> (x Core..:? "lastModifiedDate")
          Core.<*> (x Core..:? "otaUpdateArn")
          Core.<*> (x Core..:? "otaUpdateFiles")
          Core.<*> (x Core..:? "otaUpdateId")
          Core.<*> (x Core..:? "otaUpdateStatus")
          Core.<*> (x Core..:? "protocols")
          Core.<*> (x Core..:? "targetSelection")
          Core.<*> (x Core..:? "targets")