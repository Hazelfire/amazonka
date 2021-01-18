{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.Fleet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.Fleet
  ( Fleet (..),

    -- * Smart constructor
    mkFleet,

    -- * Lenses
    fArn,
    fName,
    fInstanceType,
    fComputeCapacityStatus,
    fState,
    fCreatedTime,
    fDescription,
    fDisconnectTimeoutInSeconds,
    fDisplayName,
    fDomainJoinInfo,
    fEnableDefaultInternetAccess,
    fFleetErrors,
    fFleetType,
    fIamRoleArn,
    fIdleDisconnectTimeoutInSeconds,
    fImageArn,
    fImageName,
    fMaxUserDurationInSeconds,
    fStreamView,
    fVpcConfig,
  )
where

import qualified Network.AWS.AppStream.Types.Arn as Types
import qualified Network.AWS.AppStream.Types.ComputeCapacityStatus as Types
import qualified Network.AWS.AppStream.Types.DomainJoinInfo as Types
import qualified Network.AWS.AppStream.Types.FleetError as Types
import qualified Network.AWS.AppStream.Types.FleetState as Types
import qualified Network.AWS.AppStream.Types.FleetType as Types
import qualified Network.AWS.AppStream.Types.StreamView as Types
import qualified Network.AWS.AppStream.Types.String as Types
import qualified Network.AWS.AppStream.Types.VpcConfig as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a fleet.
--
-- /See:/ 'mkFleet' smart constructor.
data Fleet = Fleet'
  { -- | The Amazon Resource Name (ARN) for the fleet.
    arn :: Types.Arn,
    -- | The name of the fleet.
    name :: Types.String,
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
    instanceType :: Types.String,
    -- | The capacity status for the fleet.
    computeCapacityStatus :: Types.ComputeCapacityStatus,
    -- | The current state for the fleet.
    state :: Types.FleetState,
    -- | The time the fleet was created.
    createdTime :: Core.Maybe Core.NominalDiffTime,
    -- | The description to display.
    description :: Core.Maybe Types.String,
    -- | The amount of time that a streaming session remains active after users disconnect. If they try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.
    --
    -- Specify a value between 60 and 360000.
    disconnectTimeoutInSeconds :: Core.Maybe Core.Int,
    -- | The fleet name to display.
    displayName :: Core.Maybe Types.String,
    -- | The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain.
    domainJoinInfo :: Core.Maybe Types.DomainJoinInfo,
    -- | Indicates whether default internet access is enabled for the fleet.
    enableDefaultInternetAccess :: Core.Maybe Core.Bool,
    -- | The fleet errors.
    fleetErrors :: Core.Maybe [Types.FleetError],
    -- | The fleet type.
    --
    --
    --     * ALWAYS_ON
    --
    --     * Provides users with instant-on access to their apps. You are charged for all running instances in your fleet, even if no users are streaming apps.
    --
    --
    --     * ON_DEMAND
    --
    --     * Provide users with access to applications after they connect, which takes one to two minutes. You are charged for instance streaming when users are connected and a small hourly fee for instances that are not streaming apps.
    fleetType :: Core.Maybe Types.FleetType,
    -- | The ARN of the IAM role that is applied to the fleet. To assume a role, the fleet instance calls the AWS Security Token Service (STS) @AssumeRole@ API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the __appstream_machine_role__ credential profile on the instance.
    --
    -- For more information, see <https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances> in the /Amazon AppStream 2.0 Administration Guide/ .
    iamRoleArn :: Core.Maybe Types.Arn,
    -- | The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the @DisconnectTimeoutInSeconds@ time interval begins. Users are notified before they are disconnected due to inactivity. If users try to reconnect to the streaming session before the time interval specified in @DisconnectTimeoutInSeconds@ elapses, they are connected to their previous session. Users are considered idle when they stop providing keyboard or mouse input during their streaming session. File uploads and downloads, audio in, audio out, and pixels changing do not qualify as user activity. If users continue to be idle after the time interval in @IdleDisconnectTimeoutInSeconds@ elapses, they are disconnected.
    --
    -- To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.
    idleDisconnectTimeoutInSeconds :: Core.Maybe Core.Int,
    -- | The ARN for the public, private, or shared image.
    imageArn :: Core.Maybe Types.Arn,
    -- | The name of the image used to create the fleet.
    imageName :: Core.Maybe Types.String,
    -- | The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.
    --
    -- Specify a value between 600 and 360000.
    maxUserDurationInSeconds :: Core.Maybe Core.Int,
    -- | The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When @APP@ is specified, only the windows of applications opened by users display. When @DESKTOP@ is specified, the standard desktop that is provided by the operating system displays.
    --
    -- The default value is @APP@ .
    streamView :: Core.Maybe Types.StreamView,
    -- | The VPC configuration for the fleet.
    vpcConfig :: Core.Maybe Types.VpcConfig
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'Fleet' value with any optional fields omitted.
mkFleet ::
  -- | 'arn'
  Types.Arn ->
  -- | 'name'
  Types.String ->
  -- | 'instanceType'
  Types.String ->
  -- | 'computeCapacityStatus'
  Types.ComputeCapacityStatus ->
  -- | 'state'
  Types.FleetState ->
  Fleet
mkFleet arn name instanceType computeCapacityStatus state =
  Fleet'
    { arn,
      name,
      instanceType,
      computeCapacityStatus,
      state,
      createdTime = Core.Nothing,
      description = Core.Nothing,
      disconnectTimeoutInSeconds = Core.Nothing,
      displayName = Core.Nothing,
      domainJoinInfo = Core.Nothing,
      enableDefaultInternetAccess = Core.Nothing,
      fleetErrors = Core.Nothing,
      fleetType = Core.Nothing,
      iamRoleArn = Core.Nothing,
      idleDisconnectTimeoutInSeconds = Core.Nothing,
      imageArn = Core.Nothing,
      imageName = Core.Nothing,
      maxUserDurationInSeconds = Core.Nothing,
      streamView = Core.Nothing,
      vpcConfig = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) for the fleet.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fArn :: Lens.Lens' Fleet Types.Arn
fArn = Lens.field @"arn"
{-# DEPRECATED fArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The name of the fleet.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fName :: Lens.Lens' Fleet Types.String
fName = Lens.field @"name"
{-# DEPRECATED fName "Use generic-lens or generic-optics with 'name' instead." #-}

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
fInstanceType :: Lens.Lens' Fleet Types.String
fInstanceType = Lens.field @"instanceType"
{-# DEPRECATED fInstanceType "Use generic-lens or generic-optics with 'instanceType' instead." #-}

-- | The capacity status for the fleet.
--
-- /Note:/ Consider using 'computeCapacityStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fComputeCapacityStatus :: Lens.Lens' Fleet Types.ComputeCapacityStatus
fComputeCapacityStatus = Lens.field @"computeCapacityStatus"
{-# DEPRECATED fComputeCapacityStatus "Use generic-lens or generic-optics with 'computeCapacityStatus' instead." #-}

-- | The current state for the fleet.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fState :: Lens.Lens' Fleet Types.FleetState
fState = Lens.field @"state"
{-# DEPRECATED fState "Use generic-lens or generic-optics with 'state' instead." #-}

-- | The time the fleet was created.
--
-- /Note:/ Consider using 'createdTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fCreatedTime :: Lens.Lens' Fleet (Core.Maybe Core.NominalDiffTime)
fCreatedTime = Lens.field @"createdTime"
{-# DEPRECATED fCreatedTime "Use generic-lens or generic-optics with 'createdTime' instead." #-}

-- | The description to display.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fDescription :: Lens.Lens' Fleet (Core.Maybe Types.String)
fDescription = Lens.field @"description"
{-# DEPRECATED fDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The amount of time that a streaming session remains active after users disconnect. If they try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.
--
-- Specify a value between 60 and 360000.
--
-- /Note:/ Consider using 'disconnectTimeoutInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fDisconnectTimeoutInSeconds :: Lens.Lens' Fleet (Core.Maybe Core.Int)
fDisconnectTimeoutInSeconds = Lens.field @"disconnectTimeoutInSeconds"
{-# DEPRECATED fDisconnectTimeoutInSeconds "Use generic-lens or generic-optics with 'disconnectTimeoutInSeconds' instead." #-}

-- | The fleet name to display.
--
-- /Note:/ Consider using 'displayName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fDisplayName :: Lens.Lens' Fleet (Core.Maybe Types.String)
fDisplayName = Lens.field @"displayName"
{-# DEPRECATED fDisplayName "Use generic-lens or generic-optics with 'displayName' instead." #-}

-- | The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain.
--
-- /Note:/ Consider using 'domainJoinInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fDomainJoinInfo :: Lens.Lens' Fleet (Core.Maybe Types.DomainJoinInfo)
fDomainJoinInfo = Lens.field @"domainJoinInfo"
{-# DEPRECATED fDomainJoinInfo "Use generic-lens or generic-optics with 'domainJoinInfo' instead." #-}

-- | Indicates whether default internet access is enabled for the fleet.
--
-- /Note:/ Consider using 'enableDefaultInternetAccess' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fEnableDefaultInternetAccess :: Lens.Lens' Fleet (Core.Maybe Core.Bool)
fEnableDefaultInternetAccess = Lens.field @"enableDefaultInternetAccess"
{-# DEPRECATED fEnableDefaultInternetAccess "Use generic-lens or generic-optics with 'enableDefaultInternetAccess' instead." #-}

-- | The fleet errors.
--
-- /Note:/ Consider using 'fleetErrors' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fFleetErrors :: Lens.Lens' Fleet (Core.Maybe [Types.FleetError])
fFleetErrors = Lens.field @"fleetErrors"
{-# DEPRECATED fFleetErrors "Use generic-lens or generic-optics with 'fleetErrors' instead." #-}

-- | The fleet type.
--
--
--     * ALWAYS_ON
--
--     * Provides users with instant-on access to their apps. You are charged for all running instances in your fleet, even if no users are streaming apps.
--
--
--     * ON_DEMAND
--
--     * Provide users with access to applications after they connect, which takes one to two minutes. You are charged for instance streaming when users are connected and a small hourly fee for instances that are not streaming apps.
--
--
--
-- /Note:/ Consider using 'fleetType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fFleetType :: Lens.Lens' Fleet (Core.Maybe Types.FleetType)
fFleetType = Lens.field @"fleetType"
{-# DEPRECATED fFleetType "Use generic-lens or generic-optics with 'fleetType' instead." #-}

-- | The ARN of the IAM role that is applied to the fleet. To assume a role, the fleet instance calls the AWS Security Token Service (STS) @AssumeRole@ API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the __appstream_machine_role__ credential profile on the instance.
--
-- For more information, see <https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances> in the /Amazon AppStream 2.0 Administration Guide/ .
--
-- /Note:/ Consider using 'iamRoleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fIamRoleArn :: Lens.Lens' Fleet (Core.Maybe Types.Arn)
fIamRoleArn = Lens.field @"iamRoleArn"
{-# DEPRECATED fIamRoleArn "Use generic-lens or generic-optics with 'iamRoleArn' instead." #-}

-- | The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the @DisconnectTimeoutInSeconds@ time interval begins. Users are notified before they are disconnected due to inactivity. If users try to reconnect to the streaming session before the time interval specified in @DisconnectTimeoutInSeconds@ elapses, they are connected to their previous session. Users are considered idle when they stop providing keyboard or mouse input during their streaming session. File uploads and downloads, audio in, audio out, and pixels changing do not qualify as user activity. If users continue to be idle after the time interval in @IdleDisconnectTimeoutInSeconds@ elapses, they are disconnected.
--
-- To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.
--
-- /Note:/ Consider using 'idleDisconnectTimeoutInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fIdleDisconnectTimeoutInSeconds :: Lens.Lens' Fleet (Core.Maybe Core.Int)
fIdleDisconnectTimeoutInSeconds = Lens.field @"idleDisconnectTimeoutInSeconds"
{-# DEPRECATED fIdleDisconnectTimeoutInSeconds "Use generic-lens or generic-optics with 'idleDisconnectTimeoutInSeconds' instead." #-}

-- | The ARN for the public, private, or shared image.
--
-- /Note:/ Consider using 'imageArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fImageArn :: Lens.Lens' Fleet (Core.Maybe Types.Arn)
fImageArn = Lens.field @"imageArn"
{-# DEPRECATED fImageArn "Use generic-lens or generic-optics with 'imageArn' instead." #-}

-- | The name of the image used to create the fleet.
--
-- /Note:/ Consider using 'imageName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fImageName :: Lens.Lens' Fleet (Core.Maybe Types.String)
fImageName = Lens.field @"imageName"
{-# DEPRECATED fImageName "Use generic-lens or generic-optics with 'imageName' instead." #-}

-- | The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.
--
-- Specify a value between 600 and 360000.
--
-- /Note:/ Consider using 'maxUserDurationInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fMaxUserDurationInSeconds :: Lens.Lens' Fleet (Core.Maybe Core.Int)
fMaxUserDurationInSeconds = Lens.field @"maxUserDurationInSeconds"
{-# DEPRECATED fMaxUserDurationInSeconds "Use generic-lens or generic-optics with 'maxUserDurationInSeconds' instead." #-}

-- | The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When @APP@ is specified, only the windows of applications opened by users display. When @DESKTOP@ is specified, the standard desktop that is provided by the operating system displays.
--
-- The default value is @APP@ .
--
-- /Note:/ Consider using 'streamView' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fStreamView :: Lens.Lens' Fleet (Core.Maybe Types.StreamView)
fStreamView = Lens.field @"streamView"
{-# DEPRECATED fStreamView "Use generic-lens or generic-optics with 'streamView' instead." #-}

-- | The VPC configuration for the fleet.
--
-- /Note:/ Consider using 'vpcConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fVpcConfig :: Lens.Lens' Fleet (Core.Maybe Types.VpcConfig)
fVpcConfig = Lens.field @"vpcConfig"
{-# DEPRECATED fVpcConfig "Use generic-lens or generic-optics with 'vpcConfig' instead." #-}

instance Core.FromJSON Fleet where
  parseJSON =
    Core.withObject "Fleet" Core.$
      \x ->
        Fleet'
          Core.<$> (x Core..: "Arn")
          Core.<*> (x Core..: "Name")
          Core.<*> (x Core..: "InstanceType")
          Core.<*> (x Core..: "ComputeCapacityStatus")
          Core.<*> (x Core..: "State")
          Core.<*> (x Core..:? "CreatedTime")
          Core.<*> (x Core..:? "Description")
          Core.<*> (x Core..:? "DisconnectTimeoutInSeconds")
          Core.<*> (x Core..:? "DisplayName")
          Core.<*> (x Core..:? "DomainJoinInfo")
          Core.<*> (x Core..:? "EnableDefaultInternetAccess")
          Core.<*> (x Core..:? "FleetErrors")
          Core.<*> (x Core..:? "FleetType")
          Core.<*> (x Core..:? "IamRoleArn")
          Core.<*> (x Core..:? "IdleDisconnectTimeoutInSeconds")
          Core.<*> (x Core..:? "ImageArn")
          Core.<*> (x Core..:? "ImageName")
          Core.<*> (x Core..:? "MaxUserDurationInSeconds")
          Core.<*> (x Core..:? "StreamView")
          Core.<*> (x Core..:? "VpcConfig")