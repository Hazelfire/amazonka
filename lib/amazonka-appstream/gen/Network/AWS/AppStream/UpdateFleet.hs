{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.UpdateFleet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified fleet.
--
-- If the fleet is in the @STOPPED@ state, you can update any attribute except the fleet name. If the fleet is in the @RUNNING@ state, you can update the @DisplayName@ , @ComputeCapacity@ , @ImageARN@ , @ImageName@ , @IdleDisconnectTimeoutInSeconds@ , and @DisconnectTimeoutInSeconds@ attributes. If the fleet is in the @STARTING@ or @STOPPING@ state, you can't update it.
module Network.AWS.AppStream.UpdateFleet
  ( -- * Creating a request
    UpdateFleet (..),
    mkUpdateFleet,

    -- ** Request lenses
    ufAttributesToDelete,
    ufComputeCapacity,
    ufDeleteVpcConfig,
    ufDescription,
    ufDisconnectTimeoutInSeconds,
    ufDisplayName,
    ufDomainJoinInfo,
    ufEnableDefaultInternetAccess,
    ufIamRoleArn,
    ufIdleDisconnectTimeoutInSeconds,
    ufImageArn,
    ufImageName,
    ufInstanceType,
    ufMaxUserDurationInSeconds,
    ufName,
    ufStreamView,
    ufVpcConfig,

    -- * Destructuring the response
    UpdateFleetResponse (..),
    mkUpdateFleetResponse,

    -- ** Response lenses
    ufrrsFleet,
    ufrrsResponseStatus,
  )
where

import qualified Network.AWS.AppStream.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateFleet' smart constructor.
data UpdateFleet = UpdateFleet'
  { -- | The fleet attributes to delete.
    attributesToDelete :: Core.Maybe [Types.FleetAttribute],
    -- | The desired capacity for the fleet.
    computeCapacity :: Core.Maybe Types.ComputeCapacity,
    -- | Deletes the VPC association for the specified fleet.
    deleteVpcConfig :: Core.Maybe Core.Bool,
    -- | The description to display.
    description :: Core.Maybe Types.Description,
    -- | The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.
    --
    -- Specify a value between 60 and 360000.
    disconnectTimeoutInSeconds :: Core.Maybe Core.Int,
    -- | The fleet name to display.
    displayName :: Core.Maybe Types.DisplayName,
    -- | The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain.
    domainJoinInfo :: Core.Maybe Types.DomainJoinInfo,
    -- | Enables or disables default internet access for the fleet.
    enableDefaultInternetAccess :: Core.Maybe Core.Bool,
    -- | The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) @AssumeRole@ API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the __appstream_machine_role__ credential profile on the instance.
    --
    -- For more information, see <https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances> in the /Amazon AppStream 2.0 Administration Guide/ .
    iamRoleArn :: Core.Maybe Types.Arn,
    -- | The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the @DisconnectTimeoutInSeconds@ time interval begins. Users are notified before they are disconnected due to inactivity. If users try to reconnect to the streaming session before the time interval specified in @DisconnectTimeoutInSeconds@ elapses, they are connected to their previous session. Users are considered idle when they stop providing keyboard or mouse input during their streaming session. File uploads and downloads, audio in, audio out, and pixels changing do not qualify as user activity. If users continue to be idle after the time interval in @IdleDisconnectTimeoutInSeconds@ elapses, they are disconnected.
    --
    -- To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.
    idleDisconnectTimeoutInSeconds :: Core.Maybe Core.Int,
    -- | The ARN of the public, private, or shared image to use.
    imageArn :: Core.Maybe Types.Arn,
    -- | The name of the image used to create the fleet.
    imageName :: Core.Maybe Types.String,
    -- | The instance type to use when launching fleet instances. The following instance types are available:
    --
    --
    --     * stream.standard.medium
    --
    --
    --     * stream.standard.large
    --
    --
    --     * stream.compute.large
    --
    --
    --     * stream.compute.xlarge
    --
    --
    --     * stream.compute.2xlarge
    --
    --
    --     * stream.compute.4xlarge
    --
    --
    --     * stream.compute.8xlarge
    --
    --
    --     * stream.memory.large
    --
    --
    --     * stream.memory.xlarge
    --
    --
    --     * stream.memory.2xlarge
    --
    --
    --     * stream.memory.4xlarge
    --
    --
    --     * stream.memory.8xlarge
    --
    --
    --     * stream.memory.z1d.large
    --
    --
    --     * stream.memory.z1d.xlarge
    --
    --
    --     * stream.memory.z1d.2xlarge
    --
    --
    --     * stream.memory.z1d.3xlarge
    --
    --
    --     * stream.memory.z1d.6xlarge
    --
    --
    --     * stream.memory.z1d.12xlarge
    --
    --
    --     * stream.graphics-design.large
    --
    --
    --     * stream.graphics-design.xlarge
    --
    --
    --     * stream.graphics-design.2xlarge
    --
    --
    --     * stream.graphics-design.4xlarge
    --
    --
    --     * stream.graphics-desktop.2xlarge
    --
    --
    --     * stream.graphics.g4dn.xlarge
    --
    --
    --     * stream.graphics.g4dn.2xlarge
    --
    --
    --     * stream.graphics.g4dn.4xlarge
    --
    --
    --     * stream.graphics.g4dn.8xlarge
    --
    --
    --     * stream.graphics.g4dn.12xlarge
    --
    --
    --     * stream.graphics.g4dn.16xlarge
    --
    --
    --     * stream.graphics-pro.4xlarge
    --
    --
    --     * stream.graphics-pro.8xlarge
    --
    --
    --     * stream.graphics-pro.16xlarge
    instanceType :: Core.Maybe Types.String,
    -- | The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.
    --
    -- Specify a value between 600 and 360000.
    maxUserDurationInSeconds :: Core.Maybe Core.Int,
    -- | A unique name for the fleet.
    name :: Core.Maybe Types.String,
    -- | The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When @APP@ is specified, only the windows of applications opened by users display. When @DESKTOP@ is specified, the standard desktop that is provided by the operating system displays.
    --
    -- The default value is @APP@ .
    streamView :: Core.Maybe Types.StreamView,
    -- | The VPC configuration for the fleet.
    vpcConfig :: Core.Maybe Types.VpcConfig
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateFleet' value with any optional fields omitted.
mkUpdateFleet ::
  UpdateFleet
mkUpdateFleet =
  UpdateFleet'
    { attributesToDelete = Core.Nothing,
      computeCapacity = Core.Nothing,
      deleteVpcConfig = Core.Nothing,
      description = Core.Nothing,
      disconnectTimeoutInSeconds = Core.Nothing,
      displayName = Core.Nothing,
      domainJoinInfo = Core.Nothing,
      enableDefaultInternetAccess = Core.Nothing,
      iamRoleArn = Core.Nothing,
      idleDisconnectTimeoutInSeconds = Core.Nothing,
      imageArn = Core.Nothing,
      imageName = Core.Nothing,
      instanceType = Core.Nothing,
      maxUserDurationInSeconds = Core.Nothing,
      name = Core.Nothing,
      streamView = Core.Nothing,
      vpcConfig = Core.Nothing
    }

-- | The fleet attributes to delete.
--
-- /Note:/ Consider using 'attributesToDelete' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufAttributesToDelete :: Lens.Lens' UpdateFleet (Core.Maybe [Types.FleetAttribute])
ufAttributesToDelete = Lens.field @"attributesToDelete"
{-# DEPRECATED ufAttributesToDelete "Use generic-lens or generic-optics with 'attributesToDelete' instead." #-}

-- | The desired capacity for the fleet.
--
-- /Note:/ Consider using 'computeCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufComputeCapacity :: Lens.Lens' UpdateFleet (Core.Maybe Types.ComputeCapacity)
ufComputeCapacity = Lens.field @"computeCapacity"
{-# DEPRECATED ufComputeCapacity "Use generic-lens or generic-optics with 'computeCapacity' instead." #-}

-- | Deletes the VPC association for the specified fleet.
--
-- /Note:/ Consider using 'deleteVpcConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufDeleteVpcConfig :: Lens.Lens' UpdateFleet (Core.Maybe Core.Bool)
ufDeleteVpcConfig = Lens.field @"deleteVpcConfig"
{-# DEPRECATED ufDeleteVpcConfig "Use generic-lens or generic-optics with 'deleteVpcConfig' instead." #-}

-- | The description to display.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufDescription :: Lens.Lens' UpdateFleet (Core.Maybe Types.Description)
ufDescription = Lens.field @"description"
{-# DEPRECATED ufDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.
--
-- Specify a value between 60 and 360000.
--
-- /Note:/ Consider using 'disconnectTimeoutInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufDisconnectTimeoutInSeconds :: Lens.Lens' UpdateFleet (Core.Maybe Core.Int)
ufDisconnectTimeoutInSeconds = Lens.field @"disconnectTimeoutInSeconds"
{-# DEPRECATED ufDisconnectTimeoutInSeconds "Use generic-lens or generic-optics with 'disconnectTimeoutInSeconds' instead." #-}

-- | The fleet name to display.
--
-- /Note:/ Consider using 'displayName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufDisplayName :: Lens.Lens' UpdateFleet (Core.Maybe Types.DisplayName)
ufDisplayName = Lens.field @"displayName"
{-# DEPRECATED ufDisplayName "Use generic-lens or generic-optics with 'displayName' instead." #-}

-- | The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain.
--
-- /Note:/ Consider using 'domainJoinInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufDomainJoinInfo :: Lens.Lens' UpdateFleet (Core.Maybe Types.DomainJoinInfo)
ufDomainJoinInfo = Lens.field @"domainJoinInfo"
{-# DEPRECATED ufDomainJoinInfo "Use generic-lens or generic-optics with 'domainJoinInfo' instead." #-}

-- | Enables or disables default internet access for the fleet.
--
-- /Note:/ Consider using 'enableDefaultInternetAccess' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufEnableDefaultInternetAccess :: Lens.Lens' UpdateFleet (Core.Maybe Core.Bool)
ufEnableDefaultInternetAccess = Lens.field @"enableDefaultInternetAccess"
{-# DEPRECATED ufEnableDefaultInternetAccess "Use generic-lens or generic-optics with 'enableDefaultInternetAccess' instead." #-}

-- | The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) @AssumeRole@ API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the __appstream_machine_role__ credential profile on the instance.
--
-- For more information, see <https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances> in the /Amazon AppStream 2.0 Administration Guide/ .
--
-- /Note:/ Consider using 'iamRoleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufIamRoleArn :: Lens.Lens' UpdateFleet (Core.Maybe Types.Arn)
ufIamRoleArn = Lens.field @"iamRoleArn"
{-# DEPRECATED ufIamRoleArn "Use generic-lens or generic-optics with 'iamRoleArn' instead." #-}

-- | The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the @DisconnectTimeoutInSeconds@ time interval begins. Users are notified before they are disconnected due to inactivity. If users try to reconnect to the streaming session before the time interval specified in @DisconnectTimeoutInSeconds@ elapses, they are connected to their previous session. Users are considered idle when they stop providing keyboard or mouse input during their streaming session. File uploads and downloads, audio in, audio out, and pixels changing do not qualify as user activity. If users continue to be idle after the time interval in @IdleDisconnectTimeoutInSeconds@ elapses, they are disconnected.
--
-- To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.
--
-- /Note:/ Consider using 'idleDisconnectTimeoutInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufIdleDisconnectTimeoutInSeconds :: Lens.Lens' UpdateFleet (Core.Maybe Core.Int)
ufIdleDisconnectTimeoutInSeconds = Lens.field @"idleDisconnectTimeoutInSeconds"
{-# DEPRECATED ufIdleDisconnectTimeoutInSeconds "Use generic-lens or generic-optics with 'idleDisconnectTimeoutInSeconds' instead." #-}

-- | The ARN of the public, private, or shared image to use.
--
-- /Note:/ Consider using 'imageArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufImageArn :: Lens.Lens' UpdateFleet (Core.Maybe Types.Arn)
ufImageArn = Lens.field @"imageArn"
{-# DEPRECATED ufImageArn "Use generic-lens or generic-optics with 'imageArn' instead." #-}

-- | The name of the image used to create the fleet.
--
-- /Note:/ Consider using 'imageName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufImageName :: Lens.Lens' UpdateFleet (Core.Maybe Types.String)
ufImageName = Lens.field @"imageName"
{-# DEPRECATED ufImageName "Use generic-lens or generic-optics with 'imageName' instead." #-}

-- | The instance type to use when launching fleet instances. The following instance types are available:
--
--
--     * stream.standard.medium
--
--
--     * stream.standard.large
--
--
--     * stream.compute.large
--
--
--     * stream.compute.xlarge
--
--
--     * stream.compute.2xlarge
--
--
--     * stream.compute.4xlarge
--
--
--     * stream.compute.8xlarge
--
--
--     * stream.memory.large
--
--
--     * stream.memory.xlarge
--
--
--     * stream.memory.2xlarge
--
--
--     * stream.memory.4xlarge
--
--
--     * stream.memory.8xlarge
--
--
--     * stream.memory.z1d.large
--
--
--     * stream.memory.z1d.xlarge
--
--
--     * stream.memory.z1d.2xlarge
--
--
--     * stream.memory.z1d.3xlarge
--
--
--     * stream.memory.z1d.6xlarge
--
--
--     * stream.memory.z1d.12xlarge
--
--
--     * stream.graphics-design.large
--
--
--     * stream.graphics-design.xlarge
--
--
--     * stream.graphics-design.2xlarge
--
--
--     * stream.graphics-design.4xlarge
--
--
--     * stream.graphics-desktop.2xlarge
--
--
--     * stream.graphics.g4dn.xlarge
--
--
--     * stream.graphics.g4dn.2xlarge
--
--
--     * stream.graphics.g4dn.4xlarge
--
--
--     * stream.graphics.g4dn.8xlarge
--
--
--     * stream.graphics.g4dn.12xlarge
--
--
--     * stream.graphics.g4dn.16xlarge
--
--
--     * stream.graphics-pro.4xlarge
--
--
--     * stream.graphics-pro.8xlarge
--
--
--     * stream.graphics-pro.16xlarge
--
--
--
-- /Note:/ Consider using 'instanceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufInstanceType :: Lens.Lens' UpdateFleet (Core.Maybe Types.String)
ufInstanceType = Lens.field @"instanceType"
{-# DEPRECATED ufInstanceType "Use generic-lens or generic-optics with 'instanceType' instead." #-}

-- | The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.
--
-- Specify a value between 600 and 360000.
--
-- /Note:/ Consider using 'maxUserDurationInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufMaxUserDurationInSeconds :: Lens.Lens' UpdateFleet (Core.Maybe Core.Int)
ufMaxUserDurationInSeconds = Lens.field @"maxUserDurationInSeconds"
{-# DEPRECATED ufMaxUserDurationInSeconds "Use generic-lens or generic-optics with 'maxUserDurationInSeconds' instead." #-}

-- | A unique name for the fleet.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufName :: Lens.Lens' UpdateFleet (Core.Maybe Types.String)
ufName = Lens.field @"name"
{-# DEPRECATED ufName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When @APP@ is specified, only the windows of applications opened by users display. When @DESKTOP@ is specified, the standard desktop that is provided by the operating system displays.
--
-- The default value is @APP@ .
--
-- /Note:/ Consider using 'streamView' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufStreamView :: Lens.Lens' UpdateFleet (Core.Maybe Types.StreamView)
ufStreamView = Lens.field @"streamView"
{-# DEPRECATED ufStreamView "Use generic-lens or generic-optics with 'streamView' instead." #-}

-- | The VPC configuration for the fleet.
--
-- /Note:/ Consider using 'vpcConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufVpcConfig :: Lens.Lens' UpdateFleet (Core.Maybe Types.VpcConfig)
ufVpcConfig = Lens.field @"vpcConfig"
{-# DEPRECATED ufVpcConfig "Use generic-lens or generic-optics with 'vpcConfig' instead." #-}

instance Core.FromJSON UpdateFleet where
  toJSON UpdateFleet {..} =
    Core.object
      ( Core.catMaybes
          [ ("AttributesToDelete" Core..=) Core.<$> attributesToDelete,
            ("ComputeCapacity" Core..=) Core.<$> computeCapacity,
            ("DeleteVpcConfig" Core..=) Core.<$> deleteVpcConfig,
            ("Description" Core..=) Core.<$> description,
            ("DisconnectTimeoutInSeconds" Core..=)
              Core.<$> disconnectTimeoutInSeconds,
            ("DisplayName" Core..=) Core.<$> displayName,
            ("DomainJoinInfo" Core..=) Core.<$> domainJoinInfo,
            ("EnableDefaultInternetAccess" Core..=)
              Core.<$> enableDefaultInternetAccess,
            ("IamRoleArn" Core..=) Core.<$> iamRoleArn,
            ("IdleDisconnectTimeoutInSeconds" Core..=)
              Core.<$> idleDisconnectTimeoutInSeconds,
            ("ImageArn" Core..=) Core.<$> imageArn,
            ("ImageName" Core..=) Core.<$> imageName,
            ("InstanceType" Core..=) Core.<$> instanceType,
            ("MaxUserDurationInSeconds" Core..=)
              Core.<$> maxUserDurationInSeconds,
            ("Name" Core..=) Core.<$> name,
            ("StreamView" Core..=) Core.<$> streamView,
            ("VpcConfig" Core..=) Core.<$> vpcConfig
          ]
      )

instance Core.AWSRequest UpdateFleet where
  type Rs UpdateFleet = UpdateFleetResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "PhotonAdminProxyService.UpdateFleet")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFleetResponse'
            Core.<$> (x Core..:? "Fleet") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateFleetResponse' smart constructor.
data UpdateFleetResponse = UpdateFleetResponse'
  { -- | Information about the fleet.
    fleet :: Core.Maybe Types.Fleet,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'UpdateFleetResponse' value with any optional fields omitted.
mkUpdateFleetResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateFleetResponse
mkUpdateFleetResponse responseStatus =
  UpdateFleetResponse' {fleet = Core.Nothing, responseStatus}

-- | Information about the fleet.
--
-- /Note:/ Consider using 'fleet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufrrsFleet :: Lens.Lens' UpdateFleetResponse (Core.Maybe Types.Fleet)
ufrrsFleet = Lens.field @"fleet"
{-# DEPRECATED ufrrsFleet "Use generic-lens or generic-optics with 'fleet' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufrrsResponseStatus :: Lens.Lens' UpdateFleetResponse Core.Int
ufrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ufrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}