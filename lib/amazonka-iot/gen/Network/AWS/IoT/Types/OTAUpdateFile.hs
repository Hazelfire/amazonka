{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.OTAUpdateFile
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.OTAUpdateFile
  ( OTAUpdateFile (..),

    -- * Smart constructor
    mkOTAUpdateFile,

    -- * Lenses
    otaufAttributes,
    otaufCodeSigning,
    otaufFileLocation,
    otaufFileName,
    otaufFileType,
    otaufFileVersion,
  )
where

import qualified Network.AWS.IoT.Types.AttributeKey as Types
import qualified Network.AWS.IoT.Types.CodeSigning as Types
import qualified Network.AWS.IoT.Types.FileLocation as Types
import qualified Network.AWS.IoT.Types.FileName as Types
import qualified Network.AWS.IoT.Types.OTAUpdateFileVersion as Types
import qualified Network.AWS.IoT.Types.Value as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a file to be associated with an OTA update.
--
-- /See:/ 'mkOTAUpdateFile' smart constructor.
data OTAUpdateFile = OTAUpdateFile'
  { -- | A list of name/attribute pairs.
    attributes :: Core.Maybe (Core.HashMap Types.AttributeKey Types.Value),
    -- | The code signing method of the file.
    codeSigning :: Core.Maybe Types.CodeSigning,
    -- | The location of the updated firmware.
    fileLocation :: Core.Maybe Types.FileLocation,
    -- | The name of the file.
    fileName :: Core.Maybe Types.FileName,
    -- | An integer value you can include in the job document to allow your devices to identify the type of file received from the cloud.
    fileType :: Core.Maybe Core.Natural,
    -- | The file version.
    fileVersion :: Core.Maybe Types.OTAUpdateFileVersion
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'OTAUpdateFile' value with any optional fields omitted.
mkOTAUpdateFile ::
  OTAUpdateFile
mkOTAUpdateFile =
  OTAUpdateFile'
    { attributes = Core.Nothing,
      codeSigning = Core.Nothing,
      fileLocation = Core.Nothing,
      fileName = Core.Nothing,
      fileType = Core.Nothing,
      fileVersion = Core.Nothing
    }

-- | A list of name/attribute pairs.
--
-- /Note:/ Consider using 'attributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otaufAttributes :: Lens.Lens' OTAUpdateFile (Core.Maybe (Core.HashMap Types.AttributeKey Types.Value))
otaufAttributes = Lens.field @"attributes"
{-# DEPRECATED otaufAttributes "Use generic-lens or generic-optics with 'attributes' instead." #-}

-- | The code signing method of the file.
--
-- /Note:/ Consider using 'codeSigning' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otaufCodeSigning :: Lens.Lens' OTAUpdateFile (Core.Maybe Types.CodeSigning)
otaufCodeSigning = Lens.field @"codeSigning"
{-# DEPRECATED otaufCodeSigning "Use generic-lens or generic-optics with 'codeSigning' instead." #-}

-- | The location of the updated firmware.
--
-- /Note:/ Consider using 'fileLocation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otaufFileLocation :: Lens.Lens' OTAUpdateFile (Core.Maybe Types.FileLocation)
otaufFileLocation = Lens.field @"fileLocation"
{-# DEPRECATED otaufFileLocation "Use generic-lens or generic-optics with 'fileLocation' instead." #-}

-- | The name of the file.
--
-- /Note:/ Consider using 'fileName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otaufFileName :: Lens.Lens' OTAUpdateFile (Core.Maybe Types.FileName)
otaufFileName = Lens.field @"fileName"
{-# DEPRECATED otaufFileName "Use generic-lens or generic-optics with 'fileName' instead." #-}

-- | An integer value you can include in the job document to allow your devices to identify the type of file received from the cloud.
--
-- /Note:/ Consider using 'fileType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otaufFileType :: Lens.Lens' OTAUpdateFile (Core.Maybe Core.Natural)
otaufFileType = Lens.field @"fileType"
{-# DEPRECATED otaufFileType "Use generic-lens or generic-optics with 'fileType' instead." #-}

-- | The file version.
--
-- /Note:/ Consider using 'fileVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
otaufFileVersion :: Lens.Lens' OTAUpdateFile (Core.Maybe Types.OTAUpdateFileVersion)
otaufFileVersion = Lens.field @"fileVersion"
{-# DEPRECATED otaufFileVersion "Use generic-lens or generic-optics with 'fileVersion' instead." #-}

instance Core.FromJSON OTAUpdateFile where
  toJSON OTAUpdateFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("codeSigning" Core..=) Core.<$> codeSigning,
            ("fileLocation" Core..=) Core.<$> fileLocation,
            ("fileName" Core..=) Core.<$> fileName,
            ("fileType" Core..=) Core.<$> fileType,
            ("fileVersion" Core..=) Core.<$> fileVersion
          ]
      )

instance Core.FromJSON OTAUpdateFile where
  parseJSON =
    Core.withObject "OTAUpdateFile" Core.$
      \x ->
        OTAUpdateFile'
          Core.<$> (x Core..:? "attributes")
          Core.<*> (x Core..:? "codeSigning")
          Core.<*> (x Core..:? "fileLocation")
          Core.<*> (x Core..:? "fileName")
          Core.<*> (x Core..:? "fileType")
          Core.<*> (x Core..:? "fileVersion")