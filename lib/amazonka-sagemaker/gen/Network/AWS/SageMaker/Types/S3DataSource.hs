{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.S3DataSource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.S3DataSource
  ( S3DataSource (..),

    -- * Smart constructor
    mkS3DataSource,

    -- * Lenses
    sdsS3DataType,
    sdsS3Uri,
    sdsAttributeNames,
    sdsS3DataDistributionType,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SageMaker.Types.AttributeName as Types
import qualified Network.AWS.SageMaker.Types.S3DataDistribution as Types
import qualified Network.AWS.SageMaker.Types.S3DataType as Types
import qualified Network.AWS.SageMaker.Types.S3Uri as Types

-- | Describes the S3 data source.
--
-- /See:/ 'mkS3DataSource' smart constructor.
data S3DataSource = S3DataSource'
  { -- | If you choose @S3Prefix@ , @S3Uri@ identifies a key name prefix. Amazon SageMaker uses all objects that match the specified key name prefix for model training.
    --
    -- If you choose @ManifestFile@ , @S3Uri@ identifies an object that is a manifest file containing a list of object keys that you want Amazon SageMaker to use for model training.
    -- If you choose @AugmentedManifestFile@ , S3Uri identifies an object that is an augmented manifest file in JSON lines format. This file contains the data you want to use for model training. @AugmentedManifestFile@ can only be used if the Channel's input mode is @Pipe@ .
    s3DataType :: Types.S3DataType,
    -- | Depending on the value specified for the @S3DataType@ , identifies either a key name prefix or a manifest. For example:
    --
    --
    --     * A key name prefix might look like this: @s3://bucketname/exampleprefix@
    --
    --
    --     * A manifest might look like this: @s3://bucketname/example.manifest@
    -- A manifest is an S3 object which is a JSON file consisting of an array of elements. The first element is a prefix which is followed by one or more suffixes. SageMaker appends the suffix elements to the prefix to get a full set of @S3Uri@ . Note that the prefix must be a valid non-empty @S3Uri@ that precludes users from specifying a manifest whose individual @S3Uri@ is sourced from different S3 buckets.
    -- The following code example shows a valid manifest format:
    -- @[ {"prefix": "s3://customer_bucket/some/prefix/"},@
    -- @"relative/path/to/custdata-1",@
    -- @"relative/path/custdata-2",@
    -- @...@
    -- @"relative/path/custdata-N"@
    -- @]@
    -- This JSON is equivalent to the following @S3Uri@ list:
    -- @s3://customer_bucket/some/prefix/relative/path/to/custdata-1@
    -- @s3://customer_bucket/some/prefix/relative/path/custdata-2@
    -- @...@
    -- @s3://customer_bucket/some/prefix/relative/path/custdata-N@
    -- The complete set of @S3Uri@ in this manifest is the input data for the channel for this data source. The object that each @S3Uri@ points to must be readable by the IAM role that Amazon SageMaker uses to perform tasks on your behalf.
    s3Uri :: Types.S3Uri,
    -- | A list of one or more attribute names to use that are found in a specified augmented manifest file.
    attributeNames :: Core.Maybe [Types.AttributeName],
    -- | If you want Amazon SageMaker to replicate the entire dataset on each ML compute instance that is launched for model training, specify @FullyReplicated@ .
    --
    -- If you want Amazon SageMaker to replicate a subset of data on each ML compute instance that is launched for model training, specify @ShardedByS3Key@ . If there are /n/ ML compute instances launched for a training job, each instance gets approximately 1//n/ of the number of S3 objects. In this case, model training on each machine uses only the subset of training data.
    -- Don't choose more ML compute instances for training than available S3 objects. If you do, some nodes won't get any data and you will pay for nodes that aren't getting any training data. This applies in both File and Pipe modes. Keep this in mind when developing algorithms.
    -- In distributed training, where you use multiple ML compute EC2 instances, you might choose @ShardedByS3Key@ . If the algorithm requires copying training data to the ML storage volume (when @TrainingInputMode@ is set to @File@ ), this copies 1//n/ of the number of objects.
    s3DataDistributionType :: Core.Maybe Types.S3DataDistribution
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'S3DataSource' value with any optional fields omitted.
mkS3DataSource ::
  -- | 's3DataType'
  Types.S3DataType ->
  -- | 's3Uri'
  Types.S3Uri ->
  S3DataSource
mkS3DataSource s3DataType s3Uri =
  S3DataSource'
    { s3DataType,
      s3Uri,
      attributeNames = Core.Nothing,
      s3DataDistributionType = Core.Nothing
    }

-- | If you choose @S3Prefix@ , @S3Uri@ identifies a key name prefix. Amazon SageMaker uses all objects that match the specified key name prefix for model training.
--
-- If you choose @ManifestFile@ , @S3Uri@ identifies an object that is a manifest file containing a list of object keys that you want Amazon SageMaker to use for model training.
-- If you choose @AugmentedManifestFile@ , S3Uri identifies an object that is an augmented manifest file in JSON lines format. This file contains the data you want to use for model training. @AugmentedManifestFile@ can only be used if the Channel's input mode is @Pipe@ .
--
-- /Note:/ Consider using 's3DataType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsS3DataType :: Lens.Lens' S3DataSource Types.S3DataType
sdsS3DataType = Lens.field @"s3DataType"
{-# DEPRECATED sdsS3DataType "Use generic-lens or generic-optics with 's3DataType' instead." #-}

-- | Depending on the value specified for the @S3DataType@ , identifies either a key name prefix or a manifest. For example:
--
--
--     * A key name prefix might look like this: @s3://bucketname/exampleprefix@
--
--
--     * A manifest might look like this: @s3://bucketname/example.manifest@
-- A manifest is an S3 object which is a JSON file consisting of an array of elements. The first element is a prefix which is followed by one or more suffixes. SageMaker appends the suffix elements to the prefix to get a full set of @S3Uri@ . Note that the prefix must be a valid non-empty @S3Uri@ that precludes users from specifying a manifest whose individual @S3Uri@ is sourced from different S3 buckets.
-- The following code example shows a valid manifest format:
-- @[ {"prefix": "s3://customer_bucket/some/prefix/"},@
-- @"relative/path/to/custdata-1",@
-- @"relative/path/custdata-2",@
-- @...@
-- @"relative/path/custdata-N"@
-- @]@
-- This JSON is equivalent to the following @S3Uri@ list:
-- @s3://customer_bucket/some/prefix/relative/path/to/custdata-1@
-- @s3://customer_bucket/some/prefix/relative/path/custdata-2@
-- @...@
-- @s3://customer_bucket/some/prefix/relative/path/custdata-N@
-- The complete set of @S3Uri@ in this manifest is the input data for the channel for this data source. The object that each @S3Uri@ points to must be readable by the IAM role that Amazon SageMaker uses to perform tasks on your behalf.
--
--
--
-- /Note:/ Consider using 's3Uri' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsS3Uri :: Lens.Lens' S3DataSource Types.S3Uri
sdsS3Uri = Lens.field @"s3Uri"
{-# DEPRECATED sdsS3Uri "Use generic-lens or generic-optics with 's3Uri' instead." #-}

-- | A list of one or more attribute names to use that are found in a specified augmented manifest file.
--
-- /Note:/ Consider using 'attributeNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsAttributeNames :: Lens.Lens' S3DataSource (Core.Maybe [Types.AttributeName])
sdsAttributeNames = Lens.field @"attributeNames"
{-# DEPRECATED sdsAttributeNames "Use generic-lens or generic-optics with 'attributeNames' instead." #-}

-- | If you want Amazon SageMaker to replicate the entire dataset on each ML compute instance that is launched for model training, specify @FullyReplicated@ .
--
-- If you want Amazon SageMaker to replicate a subset of data on each ML compute instance that is launched for model training, specify @ShardedByS3Key@ . If there are /n/ ML compute instances launched for a training job, each instance gets approximately 1//n/ of the number of S3 objects. In this case, model training on each machine uses only the subset of training data.
-- Don't choose more ML compute instances for training than available S3 objects. If you do, some nodes won't get any data and you will pay for nodes that aren't getting any training data. This applies in both File and Pipe modes. Keep this in mind when developing algorithms.
-- In distributed training, where you use multiple ML compute EC2 instances, you might choose @ShardedByS3Key@ . If the algorithm requires copying training data to the ML storage volume (when @TrainingInputMode@ is set to @File@ ), this copies 1//n/ of the number of objects.
--
-- /Note:/ Consider using 's3DataDistributionType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsS3DataDistributionType :: Lens.Lens' S3DataSource (Core.Maybe Types.S3DataDistribution)
sdsS3DataDistributionType = Lens.field @"s3DataDistributionType"
{-# DEPRECATED sdsS3DataDistributionType "Use generic-lens or generic-optics with 's3DataDistributionType' instead." #-}

instance Core.FromJSON S3DataSource where
  toJSON S3DataSource {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("S3DataType" Core..= s3DataType),
            Core.Just ("S3Uri" Core..= s3Uri),
            ("AttributeNames" Core..=) Core.<$> attributeNames,
            ("S3DataDistributionType" Core..=)
              Core.<$> s3DataDistributionType
          ]
      )

instance Core.FromJSON S3DataSource where
  parseJSON =
    Core.withObject "S3DataSource" Core.$
      \x ->
        S3DataSource'
          Core.<$> (x Core..: "S3DataType")
          Core.<*> (x Core..: "S3Uri")
          Core.<*> (x Core..:? "AttributeNames")
          Core.<*> (x Core..:? "S3DataDistributionType")