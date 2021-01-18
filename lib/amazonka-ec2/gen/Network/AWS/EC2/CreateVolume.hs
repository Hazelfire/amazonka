{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreateVolume
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an EBS volume that can be attached to an instance in the same Availability Zone. The volume is created in the regional endpoint that you send the HTTP request to. For more information see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
--
-- You can create a new empty volume or restore a volume from an EBS snapshot. Any AWS Marketplace product codes from the snapshot are propagated to the volume.
-- You can create encrypted volumes. Encrypted volumes must be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are also automatically encrypted. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html Amazon EBS Encryption> in the /Amazon Elastic Compute Cloud User Guide/ .
-- You can tag your volumes during creation. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html Tagging your Amazon EC2 resources> in the /Amazon Elastic Compute Cloud User Guide/ .
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html Creating an Amazon EBS volume> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.CreateVolume
  ( -- * Creating a request
    CreateVolume (..),
    mkCreateVolume,

    -- ** Request lenses
    cvfAvailabilityZone,
    cvfDryRun,
    cvfEncrypted,
    cvfIops,
    cvfKmsKeyId,
    cvfMultiAttachEnabled,
    cvfOutpostArn,
    cvfSize,
    cvfSnapshotId,
    cvfTagSpecifications,
    cvfVolumeType,

    -- * Destructuring the response
    Types.Volume (..),
    Types.mkVolume,

    -- ** Response lenses
    Types.vAttachments,
    Types.vAvailabilityZone,
    Types.vCreateTime,
    Types.vEncrypted,
    Types.vFastRestored,
    Types.vIops,
    Types.vKmsKeyId,
    Types.vMultiAttachEnabled,
    Types.vOutpostArn,
    Types.vSize,
    Types.vSnapshotId,
    Types.vState,
    Types.vTags,
    Types.vVolumeId,
    Types.vVolumeType,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateVolume' smart constructor.
data CreateVolume = CreateVolume'
  { -- | The Availability Zone in which to create the volume.
    availabilityZone :: Types.String,
    -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool,
    -- | Specifies whether the volume should be encrypted. The effect of setting the encryption state to @true@ depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default Encryption by default> in the /Amazon Elastic Compute Cloud User Guide/ .
    --
    -- Encrypted Amazon EBS volumes must be attached to instances that support Amazon EBS encryption. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances Supported instance types> .
    encrypted :: Core.Maybe Core.Bool,
    -- | The number of I/O operations per second (IOPS) to provision for an @io1@ or @io2@ volume, with a maximum ratio of 50 IOPS/GiB for @io1@ , and 500 IOPS/GiB for @io2@ . Range is 100 to 64,000 IOPS for volumes in most Regions. Maximum IOPS of 64,000 is guaranteed only on <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Nitro-based instances> . Other instance families guarantee performance up to 32,000 IOPS. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html Amazon EBS volume types> in the /Amazon Elastic Compute Cloud User Guide/ .
    --
    -- This parameter is valid only for Provisioned IOPS SSD (@io1@ and @io2@ ) volumes.
    iops :: Core.Maybe Core.Int,
    -- | The identifier of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for Amazon EBS encryption. If this parameter is not specified, your AWS managed CMK for EBS is used. If @KmsKeyId@ is specified, the encrypted state must be @true@ .
    --
    -- You can specify the CMK using any of the following:
    --
    --     * Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.
    --
    --
    --     * Key alias. For example, alias/ExampleAlias.
    --
    --
    --     * Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.
    --
    --
    --     * Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.
    --
    --
    -- AWS authenticates the CMK asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails.
    kmsKeyId :: Core.Maybe Types.KmsKeyId,
    -- | Specifies whether to enable Amazon EBS Multi-Attach. If you enable Multi-Attach, you can attach the volume to up to 16 <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Nitro-based instances> in the same Availability Zone. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes-multi.html Amazon EBS Multi-Attach> in the /Amazon Elastic Compute Cloud User Guide/ .
    multiAttachEnabled :: Core.Maybe Core.Bool,
    -- | The Amazon Resource Name (ARN) of the Outpost.
    outpostArn :: Core.Maybe Types.String,
    -- | The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size.
    --
    -- Constraints: 1-16,384 for @gp2@ , 4-16,384 for @io1@ and @io2@ , 500-16,384 for @st1@ , 500-16,384 for @sc1@ , and 1-1,024 for @standard@ . If you specify a snapshot, the volume size must be equal to or larger than the snapshot size.
    -- Default: If you're creating the volume from a snapshot and don't specify a volume size, the default is the snapshot size.
    size :: Core.Maybe Core.Int,
    -- | The snapshot from which to create the volume. You must specify either a snapshot ID or a volume size.
    snapshotId :: Core.Maybe Types.SnapshotId,
    -- | The tags to apply to the volume during creation.
    tagSpecifications :: Core.Maybe [Types.TagSpecification],
    -- | The volume type. This can be @gp2@ for General Purpose SSD, @io1@ or @io2@ for Provisioned IOPS SSD, @st1@ for Throughput Optimized HDD, @sc1@ for Cold HDD, or @standard@ for Magnetic volumes.
    --
    -- Default: @gp2@
    volumeType :: Core.Maybe Types.VolumeType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateVolume' value with any optional fields omitted.
mkCreateVolume ::
  -- | 'availabilityZone'
  Types.String ->
  CreateVolume
mkCreateVolume availabilityZone =
  CreateVolume'
    { availabilityZone,
      dryRun = Core.Nothing,
      encrypted = Core.Nothing,
      iops = Core.Nothing,
      kmsKeyId = Core.Nothing,
      multiAttachEnabled = Core.Nothing,
      outpostArn = Core.Nothing,
      size = Core.Nothing,
      snapshotId = Core.Nothing,
      tagSpecifications = Core.Nothing,
      volumeType = Core.Nothing
    }

-- | The Availability Zone in which to create the volume.
--
-- /Note:/ Consider using 'availabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfAvailabilityZone :: Lens.Lens' CreateVolume Types.String
cvfAvailabilityZone = Lens.field @"availabilityZone"
{-# DEPRECATED cvfAvailabilityZone "Use generic-lens or generic-optics with 'availabilityZone' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfDryRun :: Lens.Lens' CreateVolume (Core.Maybe Core.Bool)
cvfDryRun = Lens.field @"dryRun"
{-# DEPRECATED cvfDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | Specifies whether the volume should be encrypted. The effect of setting the encryption state to @true@ depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default Encryption by default> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- Encrypted Amazon EBS volumes must be attached to instances that support Amazon EBS encryption. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances Supported instance types> .
--
-- /Note:/ Consider using 'encrypted' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfEncrypted :: Lens.Lens' CreateVolume (Core.Maybe Core.Bool)
cvfEncrypted = Lens.field @"encrypted"
{-# DEPRECATED cvfEncrypted "Use generic-lens or generic-optics with 'encrypted' instead." #-}

-- | The number of I/O operations per second (IOPS) to provision for an @io1@ or @io2@ volume, with a maximum ratio of 50 IOPS/GiB for @io1@ , and 500 IOPS/GiB for @io2@ . Range is 100 to 64,000 IOPS for volumes in most Regions. Maximum IOPS of 64,000 is guaranteed only on <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Nitro-based instances> . Other instance families guarantee performance up to 32,000 IOPS. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html Amazon EBS volume types> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- This parameter is valid only for Provisioned IOPS SSD (@io1@ and @io2@ ) volumes.
--
-- /Note:/ Consider using 'iops' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfIops :: Lens.Lens' CreateVolume (Core.Maybe Core.Int)
cvfIops = Lens.field @"iops"
{-# DEPRECATED cvfIops "Use generic-lens or generic-optics with 'iops' instead." #-}

-- | The identifier of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for Amazon EBS encryption. If this parameter is not specified, your AWS managed CMK for EBS is used. If @KmsKeyId@ is specified, the encrypted state must be @true@ .
--
-- You can specify the CMK using any of the following:
--
--     * Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.
--
--
--     * Key alias. For example, alias/ExampleAlias.
--
--
--     * Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.
--
--
--     * Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.
--
--
-- AWS authenticates the CMK asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails.
--
-- /Note:/ Consider using 'kmsKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfKmsKeyId :: Lens.Lens' CreateVolume (Core.Maybe Types.KmsKeyId)
cvfKmsKeyId = Lens.field @"kmsKeyId"
{-# DEPRECATED cvfKmsKeyId "Use generic-lens or generic-optics with 'kmsKeyId' instead." #-}

-- | Specifies whether to enable Amazon EBS Multi-Attach. If you enable Multi-Attach, you can attach the volume to up to 16 <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Nitro-based instances> in the same Availability Zone. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes-multi.html Amazon EBS Multi-Attach> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- /Note:/ Consider using 'multiAttachEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfMultiAttachEnabled :: Lens.Lens' CreateVolume (Core.Maybe Core.Bool)
cvfMultiAttachEnabled = Lens.field @"multiAttachEnabled"
{-# DEPRECATED cvfMultiAttachEnabled "Use generic-lens or generic-optics with 'multiAttachEnabled' instead." #-}

-- | The Amazon Resource Name (ARN) of the Outpost.
--
-- /Note:/ Consider using 'outpostArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfOutpostArn :: Lens.Lens' CreateVolume (Core.Maybe Types.String)
cvfOutpostArn = Lens.field @"outpostArn"
{-# DEPRECATED cvfOutpostArn "Use generic-lens or generic-optics with 'outpostArn' instead." #-}

-- | The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size.
--
-- Constraints: 1-16,384 for @gp2@ , 4-16,384 for @io1@ and @io2@ , 500-16,384 for @st1@ , 500-16,384 for @sc1@ , and 1-1,024 for @standard@ . If you specify a snapshot, the volume size must be equal to or larger than the snapshot size.
-- Default: If you're creating the volume from a snapshot and don't specify a volume size, the default is the snapshot size.
--
-- /Note:/ Consider using 'size' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfSize :: Lens.Lens' CreateVolume (Core.Maybe Core.Int)
cvfSize = Lens.field @"size"
{-# DEPRECATED cvfSize "Use generic-lens or generic-optics with 'size' instead." #-}

-- | The snapshot from which to create the volume. You must specify either a snapshot ID or a volume size.
--
-- /Note:/ Consider using 'snapshotId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfSnapshotId :: Lens.Lens' CreateVolume (Core.Maybe Types.SnapshotId)
cvfSnapshotId = Lens.field @"snapshotId"
{-# DEPRECATED cvfSnapshotId "Use generic-lens or generic-optics with 'snapshotId' instead." #-}

-- | The tags to apply to the volume during creation.
--
-- /Note:/ Consider using 'tagSpecifications' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfTagSpecifications :: Lens.Lens' CreateVolume (Core.Maybe [Types.TagSpecification])
cvfTagSpecifications = Lens.field @"tagSpecifications"
{-# DEPRECATED cvfTagSpecifications "Use generic-lens or generic-optics with 'tagSpecifications' instead." #-}

-- | The volume type. This can be @gp2@ for General Purpose SSD, @io1@ or @io2@ for Provisioned IOPS SSD, @st1@ for Throughput Optimized HDD, @sc1@ for Cold HDD, or @standard@ for Magnetic volumes.
--
-- Default: @gp2@
--
-- /Note:/ Consider using 'volumeType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cvfVolumeType :: Lens.Lens' CreateVolume (Core.Maybe Types.VolumeType)
cvfVolumeType = Lens.field @"volumeType"
{-# DEPRECATED cvfVolumeType "Use generic-lens or generic-optics with 'volumeType' instead." #-}

instance Core.AWSRequest CreateVolume where
  type Rs CreateVolume = Types.Volume
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "CreateVolume")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "AvailabilityZone" availabilityZone)
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
                Core.<> (Core.toQueryValue "Encrypted" Core.<$> encrypted)
                Core.<> (Core.toQueryValue "Iops" Core.<$> iops)
                Core.<> (Core.toQueryValue "KmsKeyId" Core.<$> kmsKeyId)
                Core.<> ( Core.toQueryValue "MultiAttachEnabled"
                            Core.<$> multiAttachEnabled
                        )
                Core.<> (Core.toQueryValue "OutpostArn" Core.<$> outpostArn)
                Core.<> (Core.toQueryValue "Size" Core.<$> size)
                Core.<> (Core.toQueryValue "SnapshotId" Core.<$> snapshotId)
                Core.<> (Core.toQueryList "TagSpecification" Core.<$> tagSpecifications)
                Core.<> (Core.toQueryValue "VolumeType" Core.<$> volumeType)
            )
      }
  response = Response.receiveXML (\s h x -> Core.parseXML x)