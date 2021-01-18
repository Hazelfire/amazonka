{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.TerminologyProperties
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.TerminologyProperties
  ( TerminologyProperties (..),

    -- * Smart constructor
    mkTerminologyProperties,

    -- * Lenses
    tpArn,
    tpCreatedAt,
    tpDescription,
    tpEncryptionKey,
    tpLastUpdatedAt,
    tpName,
    tpSizeBytes,
    tpSourceLanguageCode,
    tpTargetLanguageCodes,
    tpTermCount,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Translate.Types.Arn as Types
import qualified Network.AWS.Translate.Types.Description as Types
import qualified Network.AWS.Translate.Types.EncryptionKey as Types
import qualified Network.AWS.Translate.Types.LanguageCodeString as Types
import qualified Network.AWS.Translate.Types.Name as Types
import qualified Network.AWS.Translate.Types.SourceLanguageCode as Types

-- | The properties of the custom terminology.
--
-- /See:/ 'mkTerminologyProperties' smart constructor.
data TerminologyProperties = TerminologyProperties'
  { -- | The Amazon Resource Name (ARN) of the custom terminology.
    arn :: Core.Maybe Types.Arn,
    -- | The time at which the custom terminology was created, based on the timestamp.
    createdAt :: Core.Maybe Core.NominalDiffTime,
    -- | The description of the custom terminology properties.
    description :: Core.Maybe Types.Description,
    -- | The encryption key for the custom terminology.
    encryptionKey :: Core.Maybe Types.EncryptionKey,
    -- | The time at which the custom terminology was last update, based on the timestamp.
    lastUpdatedAt :: Core.Maybe Core.NominalDiffTime,
    -- | The name of the custom terminology.
    name :: Core.Maybe Types.Name,
    -- | The size of the file used when importing a custom terminology.
    sizeBytes :: Core.Maybe Core.Int,
    -- | The language code for the source text of the translation request for which the custom terminology is being used.
    sourceLanguageCode :: Core.Maybe Types.SourceLanguageCode,
    -- | The language codes for the target languages available with the custom terminology file. All possible target languages are returned in array.
    targetLanguageCodes :: Core.Maybe [Types.LanguageCodeString],
    -- | The number of terms included in the custom terminology.
    termCount :: Core.Maybe Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'TerminologyProperties' value with any optional fields omitted.
mkTerminologyProperties ::
  TerminologyProperties
mkTerminologyProperties =
  TerminologyProperties'
    { arn = Core.Nothing,
      createdAt = Core.Nothing,
      description = Core.Nothing,
      encryptionKey = Core.Nothing,
      lastUpdatedAt = Core.Nothing,
      name = Core.Nothing,
      sizeBytes = Core.Nothing,
      sourceLanguageCode = Core.Nothing,
      targetLanguageCodes = Core.Nothing,
      termCount = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) of the custom terminology.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpArn :: Lens.Lens' TerminologyProperties (Core.Maybe Types.Arn)
tpArn = Lens.field @"arn"
{-# DEPRECATED tpArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The time at which the custom terminology was created, based on the timestamp.
--
-- /Note:/ Consider using 'createdAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpCreatedAt :: Lens.Lens' TerminologyProperties (Core.Maybe Core.NominalDiffTime)
tpCreatedAt = Lens.field @"createdAt"
{-# DEPRECATED tpCreatedAt "Use generic-lens or generic-optics with 'createdAt' instead." #-}

-- | The description of the custom terminology properties.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpDescription :: Lens.Lens' TerminologyProperties (Core.Maybe Types.Description)
tpDescription = Lens.field @"description"
{-# DEPRECATED tpDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The encryption key for the custom terminology.
--
-- /Note:/ Consider using 'encryptionKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpEncryptionKey :: Lens.Lens' TerminologyProperties (Core.Maybe Types.EncryptionKey)
tpEncryptionKey = Lens.field @"encryptionKey"
{-# DEPRECATED tpEncryptionKey "Use generic-lens or generic-optics with 'encryptionKey' instead." #-}

-- | The time at which the custom terminology was last update, based on the timestamp.
--
-- /Note:/ Consider using 'lastUpdatedAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpLastUpdatedAt :: Lens.Lens' TerminologyProperties (Core.Maybe Core.NominalDiffTime)
tpLastUpdatedAt = Lens.field @"lastUpdatedAt"
{-# DEPRECATED tpLastUpdatedAt "Use generic-lens or generic-optics with 'lastUpdatedAt' instead." #-}

-- | The name of the custom terminology.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpName :: Lens.Lens' TerminologyProperties (Core.Maybe Types.Name)
tpName = Lens.field @"name"
{-# DEPRECATED tpName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The size of the file used when importing a custom terminology.
--
-- /Note:/ Consider using 'sizeBytes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpSizeBytes :: Lens.Lens' TerminologyProperties (Core.Maybe Core.Int)
tpSizeBytes = Lens.field @"sizeBytes"
{-# DEPRECATED tpSizeBytes "Use generic-lens or generic-optics with 'sizeBytes' instead." #-}

-- | The language code for the source text of the translation request for which the custom terminology is being used.
--
-- /Note:/ Consider using 'sourceLanguageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpSourceLanguageCode :: Lens.Lens' TerminologyProperties (Core.Maybe Types.SourceLanguageCode)
tpSourceLanguageCode = Lens.field @"sourceLanguageCode"
{-# DEPRECATED tpSourceLanguageCode "Use generic-lens or generic-optics with 'sourceLanguageCode' instead." #-}

-- | The language codes for the target languages available with the custom terminology file. All possible target languages are returned in array.
--
-- /Note:/ Consider using 'targetLanguageCodes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpTargetLanguageCodes :: Lens.Lens' TerminologyProperties (Core.Maybe [Types.LanguageCodeString])
tpTargetLanguageCodes = Lens.field @"targetLanguageCodes"
{-# DEPRECATED tpTargetLanguageCodes "Use generic-lens or generic-optics with 'targetLanguageCodes' instead." #-}

-- | The number of terms included in the custom terminology.
--
-- /Note:/ Consider using 'termCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpTermCount :: Lens.Lens' TerminologyProperties (Core.Maybe Core.Int)
tpTermCount = Lens.field @"termCount"
{-# DEPRECATED tpTermCount "Use generic-lens or generic-optics with 'termCount' instead." #-}

instance Core.FromJSON TerminologyProperties where
  parseJSON =
    Core.withObject "TerminologyProperties" Core.$
      \x ->
        TerminologyProperties'
          Core.<$> (x Core..:? "Arn")
          Core.<*> (x Core..:? "CreatedAt")
          Core.<*> (x Core..:? "Description")
          Core.<*> (x Core..:? "EncryptionKey")
          Core.<*> (x Core..:? "LastUpdatedAt")
          Core.<*> (x Core..:? "Name")
          Core.<*> (x Core..:? "SizeBytes")
          Core.<*> (x Core..:? "SourceLanguageCode")
          Core.<*> (x Core..:? "TargetLanguageCodes")
          Core.<*> (x Core..:? "TermCount")