{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.CreateSoftwareUpdateJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.
module Network.AWS.Greengrass.CreateSoftwareUpdateJob
  ( -- * Creating a request
    CreateSoftwareUpdateJob (..),
    mkCreateSoftwareUpdateJob,

    -- ** Request lenses
    csujS3UrlSignerRole,
    csujUpdateTargetsArchitecture,
    csujSoftwareToUpdate,
    csujUpdateTargets,
    csujUpdateTargetsOperatingSystem,
    csujAmznClientToken,
    csujUpdateAgentLogLevel,

    -- * Destructuring the response
    CreateSoftwareUpdateJobResponse (..),
    mkCreateSoftwareUpdateJobResponse,

    -- ** Response lenses
    csujrrsIotJobArn,
    csujrrsIotJobId,
    csujrrsPlatformSoftwareVersion,
    csujrrsResponseStatus,
  )
where

import qualified Network.AWS.Greengrass.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateSoftwareUpdateJob' smart constructor.
data CreateSoftwareUpdateJob = CreateSoftwareUpdateJob'
  { s3UrlSignerRole :: Types.S3UrlSignerRole,
    updateTargetsArchitecture :: Types.UpdateTargetsArchitecture,
    softwareToUpdate :: Types.SoftwareToUpdate,
    updateTargets :: [Core.Text],
    updateTargetsOperatingSystem :: Types.UpdateTargetsOperatingSystem,
    -- | A client token used to correlate requests and responses.
    amznClientToken :: Core.Maybe Core.Text,
    updateAgentLogLevel :: Core.Maybe Types.UpdateAgentLogLevel
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateSoftwareUpdateJob' value with any optional fields omitted.
mkCreateSoftwareUpdateJob ::
  -- | 's3UrlSignerRole'
  Types.S3UrlSignerRole ->
  -- | 'updateTargetsArchitecture'
  Types.UpdateTargetsArchitecture ->
  -- | 'softwareToUpdate'
  Types.SoftwareToUpdate ->
  -- | 'updateTargetsOperatingSystem'
  Types.UpdateTargetsOperatingSystem ->
  CreateSoftwareUpdateJob
mkCreateSoftwareUpdateJob
  s3UrlSignerRole
  updateTargetsArchitecture
  softwareToUpdate
  updateTargetsOperatingSystem =
    CreateSoftwareUpdateJob'
      { s3UrlSignerRole,
        updateTargetsArchitecture,
        softwareToUpdate,
        updateTargets = Core.mempty,
        updateTargetsOperatingSystem,
        amznClientToken = Core.Nothing,
        updateAgentLogLevel = Core.Nothing
      }

-- | Undocumented field.
--
-- /Note:/ Consider using 's3UrlSignerRole' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujS3UrlSignerRole :: Lens.Lens' CreateSoftwareUpdateJob Types.S3UrlSignerRole
csujS3UrlSignerRole = Lens.field @"s3UrlSignerRole"
{-# DEPRECATED csujS3UrlSignerRole "Use generic-lens or generic-optics with 's3UrlSignerRole' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'updateTargetsArchitecture' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujUpdateTargetsArchitecture :: Lens.Lens' CreateSoftwareUpdateJob Types.UpdateTargetsArchitecture
csujUpdateTargetsArchitecture = Lens.field @"updateTargetsArchitecture"
{-# DEPRECATED csujUpdateTargetsArchitecture "Use generic-lens or generic-optics with 'updateTargetsArchitecture' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'softwareToUpdate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujSoftwareToUpdate :: Lens.Lens' CreateSoftwareUpdateJob Types.SoftwareToUpdate
csujSoftwareToUpdate = Lens.field @"softwareToUpdate"
{-# DEPRECATED csujSoftwareToUpdate "Use generic-lens or generic-optics with 'softwareToUpdate' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'updateTargets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujUpdateTargets :: Lens.Lens' CreateSoftwareUpdateJob [Core.Text]
csujUpdateTargets = Lens.field @"updateTargets"
{-# DEPRECATED csujUpdateTargets "Use generic-lens or generic-optics with 'updateTargets' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'updateTargetsOperatingSystem' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujUpdateTargetsOperatingSystem :: Lens.Lens' CreateSoftwareUpdateJob Types.UpdateTargetsOperatingSystem
csujUpdateTargetsOperatingSystem = Lens.field @"updateTargetsOperatingSystem"
{-# DEPRECATED csujUpdateTargetsOperatingSystem "Use generic-lens or generic-optics with 'updateTargetsOperatingSystem' instead." #-}

-- | A client token used to correlate requests and responses.
--
-- /Note:/ Consider using 'amznClientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujAmznClientToken :: Lens.Lens' CreateSoftwareUpdateJob (Core.Maybe Core.Text)
csujAmznClientToken = Lens.field @"amznClientToken"
{-# DEPRECATED csujAmznClientToken "Use generic-lens or generic-optics with 'amznClientToken' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'updateAgentLogLevel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujUpdateAgentLogLevel :: Lens.Lens' CreateSoftwareUpdateJob (Core.Maybe Types.UpdateAgentLogLevel)
csujUpdateAgentLogLevel = Lens.field @"updateAgentLogLevel"
{-# DEPRECATED csujUpdateAgentLogLevel "Use generic-lens or generic-optics with 'updateAgentLogLevel' instead." #-}

instance Core.FromJSON CreateSoftwareUpdateJob where
  toJSON CreateSoftwareUpdateJob {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("S3UrlSignerRole" Core..= s3UrlSignerRole),
            Core.Just
              ("UpdateTargetsArchitecture" Core..= updateTargetsArchitecture),
            Core.Just ("SoftwareToUpdate" Core..= softwareToUpdate),
            Core.Just ("UpdateTargets" Core..= updateTargets),
            Core.Just
              ( "UpdateTargetsOperatingSystem"
                  Core..= updateTargetsOperatingSystem
              ),
            ("UpdateAgentLogLevel" Core..=) Core.<$> updateAgentLogLevel
          ]
      )

instance Core.AWSRequest CreateSoftwareUpdateJob where
  type Rs CreateSoftwareUpdateJob = CreateSoftwareUpdateJobResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/greengrass/updates",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.toHeaders "X-Amzn-Client-Token" amznClientToken
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSoftwareUpdateJobResponse'
            Core.<$> (x Core..:? "IotJobArn")
            Core.<*> (x Core..:? "IotJobId")
            Core.<*> (x Core..:? "PlatformSoftwareVersion")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateSoftwareUpdateJobResponse' smart constructor.
data CreateSoftwareUpdateJobResponse = CreateSoftwareUpdateJobResponse'
  { -- | The IoT Job ARN corresponding to this update.
    iotJobArn :: Core.Maybe Core.Text,
    -- | The IoT Job Id corresponding to this update.
    iotJobId :: Core.Maybe Core.Text,
    -- | The software version installed on the device or devices after the update.
    platformSoftwareVersion :: Core.Maybe Core.Text,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateSoftwareUpdateJobResponse' value with any optional fields omitted.
mkCreateSoftwareUpdateJobResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateSoftwareUpdateJobResponse
mkCreateSoftwareUpdateJobResponse responseStatus =
  CreateSoftwareUpdateJobResponse'
    { iotJobArn = Core.Nothing,
      iotJobId = Core.Nothing,
      platformSoftwareVersion = Core.Nothing,
      responseStatus
    }

-- | The IoT Job ARN corresponding to this update.
--
-- /Note:/ Consider using 'iotJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujrrsIotJobArn :: Lens.Lens' CreateSoftwareUpdateJobResponse (Core.Maybe Core.Text)
csujrrsIotJobArn = Lens.field @"iotJobArn"
{-# DEPRECATED csujrrsIotJobArn "Use generic-lens or generic-optics with 'iotJobArn' instead." #-}

-- | The IoT Job Id corresponding to this update.
--
-- /Note:/ Consider using 'iotJobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujrrsIotJobId :: Lens.Lens' CreateSoftwareUpdateJobResponse (Core.Maybe Core.Text)
csujrrsIotJobId = Lens.field @"iotJobId"
{-# DEPRECATED csujrrsIotJobId "Use generic-lens or generic-optics with 'iotJobId' instead." #-}

-- | The software version installed on the device or devices after the update.
--
-- /Note:/ Consider using 'platformSoftwareVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujrrsPlatformSoftwareVersion :: Lens.Lens' CreateSoftwareUpdateJobResponse (Core.Maybe Core.Text)
csujrrsPlatformSoftwareVersion = Lens.field @"platformSoftwareVersion"
{-# DEPRECATED csujrrsPlatformSoftwareVersion "Use generic-lens or generic-optics with 'platformSoftwareVersion' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csujrrsResponseStatus :: Lens.Lens' CreateSoftwareUpdateJobResponse Core.Int
csujrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED csujrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}