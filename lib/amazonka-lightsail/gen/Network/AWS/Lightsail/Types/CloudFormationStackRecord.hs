{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.CloudFormationStackRecord
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.CloudFormationStackRecord
  ( CloudFormationStackRecord (..),

    -- * Smart constructor
    mkCloudFormationStackRecord,

    -- * Lenses
    cfsrArn,
    cfsrCreatedAt,
    cfsrDestinationInfo,
    cfsrLocation,
    cfsrName,
    cfsrResourceType,
    cfsrSourceInfo,
    cfsrState,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types.Arn as Types
import qualified Network.AWS.Lightsail.Types.CloudFormationStackRecordSourceInfo as Types
import qualified Network.AWS.Lightsail.Types.DestinationInfo as Types
import qualified Network.AWS.Lightsail.Types.RecordState as Types
import qualified Network.AWS.Lightsail.Types.ResourceLocation as Types
import qualified Network.AWS.Lightsail.Types.ResourceName as Types
import qualified Network.AWS.Lightsail.Types.ResourceType as Types
import qualified Network.AWS.Prelude as Core

-- | Describes a CloudFormation stack record created as a result of the @create cloud formation stack@ operation.
--
-- A CloudFormation stack record provides information about the AWS CloudFormation stack used to create a new Amazon Elastic Compute Cloud instance from an exported Lightsail instance snapshot.
--
-- /See:/ 'mkCloudFormationStackRecord' smart constructor.
data CloudFormationStackRecord = CloudFormationStackRecord'
  { -- | The Amazon Resource Name (ARN) of the CloudFormation stack record.
    arn :: Core.Maybe Types.Arn,
    -- | The date when the CloudFormation stack record was created.
    createdAt :: Core.Maybe Core.NominalDiffTime,
    -- | A list of objects describing the destination service, which is AWS CloudFormation, and the Amazon Resource Name (ARN) of the AWS CloudFormation stack.
    destinationInfo :: Core.Maybe Types.DestinationInfo,
    -- | A list of objects describing the Availability Zone and AWS Region of the CloudFormation stack record.
    location :: Core.Maybe Types.ResourceLocation,
    -- | The name of the CloudFormation stack record. It starts with @CloudFormationStackRecord@ followed by a GUID.
    name :: Core.Maybe Types.ResourceName,
    -- | The Lightsail resource type (e.g., @CloudFormationStackRecord@ ).
    resourceType :: Core.Maybe Types.ResourceType,
    -- | A list of objects describing the source of the CloudFormation stack record.
    sourceInfo :: Core.Maybe [Types.CloudFormationStackRecordSourceInfo],
    -- | The current state of the CloudFormation stack record.
    state :: Core.Maybe Types.RecordState
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CloudFormationStackRecord' value with any optional fields omitted.
mkCloudFormationStackRecord ::
  CloudFormationStackRecord
mkCloudFormationStackRecord =
  CloudFormationStackRecord'
    { arn = Core.Nothing,
      createdAt = Core.Nothing,
      destinationInfo = Core.Nothing,
      location = Core.Nothing,
      name = Core.Nothing,
      resourceType = Core.Nothing,
      sourceInfo = Core.Nothing,
      state = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) of the CloudFormation stack record.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfsrArn :: Lens.Lens' CloudFormationStackRecord (Core.Maybe Types.Arn)
cfsrArn = Lens.field @"arn"
{-# DEPRECATED cfsrArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The date when the CloudFormation stack record was created.
--
-- /Note:/ Consider using 'createdAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfsrCreatedAt :: Lens.Lens' CloudFormationStackRecord (Core.Maybe Core.NominalDiffTime)
cfsrCreatedAt = Lens.field @"createdAt"
{-# DEPRECATED cfsrCreatedAt "Use generic-lens or generic-optics with 'createdAt' instead." #-}

-- | A list of objects describing the destination service, which is AWS CloudFormation, and the Amazon Resource Name (ARN) of the AWS CloudFormation stack.
--
-- /Note:/ Consider using 'destinationInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfsrDestinationInfo :: Lens.Lens' CloudFormationStackRecord (Core.Maybe Types.DestinationInfo)
cfsrDestinationInfo = Lens.field @"destinationInfo"
{-# DEPRECATED cfsrDestinationInfo "Use generic-lens or generic-optics with 'destinationInfo' instead." #-}

-- | A list of objects describing the Availability Zone and AWS Region of the CloudFormation stack record.
--
-- /Note:/ Consider using 'location' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfsrLocation :: Lens.Lens' CloudFormationStackRecord (Core.Maybe Types.ResourceLocation)
cfsrLocation = Lens.field @"location"
{-# DEPRECATED cfsrLocation "Use generic-lens or generic-optics with 'location' instead." #-}

-- | The name of the CloudFormation stack record. It starts with @CloudFormationStackRecord@ followed by a GUID.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfsrName :: Lens.Lens' CloudFormationStackRecord (Core.Maybe Types.ResourceName)
cfsrName = Lens.field @"name"
{-# DEPRECATED cfsrName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The Lightsail resource type (e.g., @CloudFormationStackRecord@ ).
--
-- /Note:/ Consider using 'resourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfsrResourceType :: Lens.Lens' CloudFormationStackRecord (Core.Maybe Types.ResourceType)
cfsrResourceType = Lens.field @"resourceType"
{-# DEPRECATED cfsrResourceType "Use generic-lens or generic-optics with 'resourceType' instead." #-}

-- | A list of objects describing the source of the CloudFormation stack record.
--
-- /Note:/ Consider using 'sourceInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfsrSourceInfo :: Lens.Lens' CloudFormationStackRecord (Core.Maybe [Types.CloudFormationStackRecordSourceInfo])
cfsrSourceInfo = Lens.field @"sourceInfo"
{-# DEPRECATED cfsrSourceInfo "Use generic-lens or generic-optics with 'sourceInfo' instead." #-}

-- | The current state of the CloudFormation stack record.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfsrState :: Lens.Lens' CloudFormationStackRecord (Core.Maybe Types.RecordState)
cfsrState = Lens.field @"state"
{-# DEPRECATED cfsrState "Use generic-lens or generic-optics with 'state' instead." #-}

instance Core.FromJSON CloudFormationStackRecord where
  parseJSON =
    Core.withObject "CloudFormationStackRecord" Core.$
      \x ->
        CloudFormationStackRecord'
          Core.<$> (x Core..:? "arn")
          Core.<*> (x Core..:? "createdAt")
          Core.<*> (x Core..:? "destinationInfo")
          Core.<*> (x Core..:? "location")
          Core.<*> (x Core..:? "name")
          Core.<*> (x Core..:? "resourceType")
          Core.<*> (x Core..:? "sourceInfo")
          Core.<*> (x Core..:? "state")