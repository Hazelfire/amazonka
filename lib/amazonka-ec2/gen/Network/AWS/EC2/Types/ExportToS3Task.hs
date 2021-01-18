{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ExportToS3Task
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ExportToS3Task
  ( ExportToS3Task (..),

    -- * Smart constructor
    mkExportToS3Task,

    -- * Lenses
    etstContainerFormat,
    etstDiskImageFormat,
    etstS3Bucket,
    etstS3Key,
  )
where

import qualified Network.AWS.EC2.Types.ContainerFormat as Types
import qualified Network.AWS.EC2.Types.DiskImageFormat as Types
import qualified Network.AWS.EC2.Types.S3Bucket as Types
import qualified Network.AWS.EC2.Types.S3Key as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes the format and location for an instance export task.
--
-- /See:/ 'mkExportToS3Task' smart constructor.
data ExportToS3Task = ExportToS3Task'
  { -- | The container format used to combine disk images with metadata (such as OVF). If absent, only the disk image is exported.
    containerFormat :: Core.Maybe Types.ContainerFormat,
    -- | The format for the exported image.
    diskImageFormat :: Core.Maybe Types.DiskImageFormat,
    -- | The Amazon S3 bucket for the destination image. The destination bucket must exist and grant WRITE and READ_ACP permissions to the AWS account @vm-import-export@amazon.com@ .
    s3Bucket :: Core.Maybe Types.S3Bucket,
    -- | The encryption key for your S3 bucket.
    s3Key :: Core.Maybe Types.S3Key
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ExportToS3Task' value with any optional fields omitted.
mkExportToS3Task ::
  ExportToS3Task
mkExportToS3Task =
  ExportToS3Task'
    { containerFormat = Core.Nothing,
      diskImageFormat = Core.Nothing,
      s3Bucket = Core.Nothing,
      s3Key = Core.Nothing
    }

-- | The container format used to combine disk images with metadata (such as OVF). If absent, only the disk image is exported.
--
-- /Note:/ Consider using 'containerFormat' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
etstContainerFormat :: Lens.Lens' ExportToS3Task (Core.Maybe Types.ContainerFormat)
etstContainerFormat = Lens.field @"containerFormat"
{-# DEPRECATED etstContainerFormat "Use generic-lens or generic-optics with 'containerFormat' instead." #-}

-- | The format for the exported image.
--
-- /Note:/ Consider using 'diskImageFormat' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
etstDiskImageFormat :: Lens.Lens' ExportToS3Task (Core.Maybe Types.DiskImageFormat)
etstDiskImageFormat = Lens.field @"diskImageFormat"
{-# DEPRECATED etstDiskImageFormat "Use generic-lens or generic-optics with 'diskImageFormat' instead." #-}

-- | The Amazon S3 bucket for the destination image. The destination bucket must exist and grant WRITE and READ_ACP permissions to the AWS account @vm-import-export@amazon.com@ .
--
-- /Note:/ Consider using 's3Bucket' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
etstS3Bucket :: Lens.Lens' ExportToS3Task (Core.Maybe Types.S3Bucket)
etstS3Bucket = Lens.field @"s3Bucket"
{-# DEPRECATED etstS3Bucket "Use generic-lens or generic-optics with 's3Bucket' instead." #-}

-- | The encryption key for your S3 bucket.
--
-- /Note:/ Consider using 's3Key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
etstS3Key :: Lens.Lens' ExportToS3Task (Core.Maybe Types.S3Key)
etstS3Key = Lens.field @"s3Key"
{-# DEPRECATED etstS3Key "Use generic-lens or generic-optics with 's3Key' instead." #-}

instance Core.FromXML ExportToS3Task where
  parseXML x =
    ExportToS3Task'
      Core.<$> (x Core..@? "containerFormat")
      Core.<*> (x Core..@? "diskImageFormat")
      Core.<*> (x Core..@? "s3Bucket")
      Core.<*> (x Core..@? "s3Key")