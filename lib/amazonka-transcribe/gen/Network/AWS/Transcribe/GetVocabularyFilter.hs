{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.GetVocabularyFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a vocabulary filter.
module Network.AWS.Transcribe.GetVocabularyFilter
  ( -- * Creating a request
    GetVocabularyFilter (..),
    mkGetVocabularyFilter,

    -- ** Request lenses
    gvfVocabularyFilterName,

    -- * Destructuring the response
    GetVocabularyFilterResponse (..),
    mkGetVocabularyFilterResponse,

    -- ** Response lenses
    gvfrrsDownloadUri,
    gvfrrsLanguageCode,
    gvfrrsLastModifiedTime,
    gvfrrsVocabularyFilterName,
    gvfrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Transcribe.Types as Types

-- | /See:/ 'mkGetVocabularyFilter' smart constructor.
newtype GetVocabularyFilter = GetVocabularyFilter'
  { -- | The name of the vocabulary filter for which to return information.
    vocabularyFilterName :: Types.VocabularyFilterName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetVocabularyFilter' value with any optional fields omitted.
mkGetVocabularyFilter ::
  -- | 'vocabularyFilterName'
  Types.VocabularyFilterName ->
  GetVocabularyFilter
mkGetVocabularyFilter vocabularyFilterName =
  GetVocabularyFilter' {vocabularyFilterName}

-- | The name of the vocabulary filter for which to return information.
--
-- /Note:/ Consider using 'vocabularyFilterName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvfVocabularyFilterName :: Lens.Lens' GetVocabularyFilter Types.VocabularyFilterName
gvfVocabularyFilterName = Lens.field @"vocabularyFilterName"
{-# DEPRECATED gvfVocabularyFilterName "Use generic-lens or generic-optics with 'vocabularyFilterName' instead." #-}

instance Core.FromJSON GetVocabularyFilter where
  toJSON GetVocabularyFilter {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("VocabularyFilterName" Core..= vocabularyFilterName)]
      )

instance Core.AWSRequest GetVocabularyFilter where
  type Rs GetVocabularyFilter = GetVocabularyFilterResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "Transcribe.GetVocabularyFilter")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVocabularyFilterResponse'
            Core.<$> (x Core..:? "DownloadUri")
            Core.<*> (x Core..:? "LanguageCode")
            Core.<*> (x Core..:? "LastModifiedTime")
            Core.<*> (x Core..:? "VocabularyFilterName")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetVocabularyFilterResponse' smart constructor.
data GetVocabularyFilterResponse = GetVocabularyFilterResponse'
  { -- | The URI of the list of words in the vocabulary filter. You can use this URI to get the list of words.
    downloadUri :: Core.Maybe Types.Uri,
    -- | The language code of the words in the vocabulary filter.
    languageCode :: Core.Maybe Types.LanguageCode,
    -- | The date and time that the contents of the vocabulary filter were updated.
    lastModifiedTime :: Core.Maybe Core.NominalDiffTime,
    -- | The name of the vocabulary filter.
    vocabularyFilterName :: Core.Maybe Types.VocabularyFilterName,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetVocabularyFilterResponse' value with any optional fields omitted.
mkGetVocabularyFilterResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetVocabularyFilterResponse
mkGetVocabularyFilterResponse responseStatus =
  GetVocabularyFilterResponse'
    { downloadUri = Core.Nothing,
      languageCode = Core.Nothing,
      lastModifiedTime = Core.Nothing,
      vocabularyFilterName = Core.Nothing,
      responseStatus
    }

-- | The URI of the list of words in the vocabulary filter. You can use this URI to get the list of words.
--
-- /Note:/ Consider using 'downloadUri' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvfrrsDownloadUri :: Lens.Lens' GetVocabularyFilterResponse (Core.Maybe Types.Uri)
gvfrrsDownloadUri = Lens.field @"downloadUri"
{-# DEPRECATED gvfrrsDownloadUri "Use generic-lens or generic-optics with 'downloadUri' instead." #-}

-- | The language code of the words in the vocabulary filter.
--
-- /Note:/ Consider using 'languageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvfrrsLanguageCode :: Lens.Lens' GetVocabularyFilterResponse (Core.Maybe Types.LanguageCode)
gvfrrsLanguageCode = Lens.field @"languageCode"
{-# DEPRECATED gvfrrsLanguageCode "Use generic-lens or generic-optics with 'languageCode' instead." #-}

-- | The date and time that the contents of the vocabulary filter were updated.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvfrrsLastModifiedTime :: Lens.Lens' GetVocabularyFilterResponse (Core.Maybe Core.NominalDiffTime)
gvfrrsLastModifiedTime = Lens.field @"lastModifiedTime"
{-# DEPRECATED gvfrrsLastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead." #-}

-- | The name of the vocabulary filter.
--
-- /Note:/ Consider using 'vocabularyFilterName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvfrrsVocabularyFilterName :: Lens.Lens' GetVocabularyFilterResponse (Core.Maybe Types.VocabularyFilterName)
gvfrrsVocabularyFilterName = Lens.field @"vocabularyFilterName"
{-# DEPRECATED gvfrrsVocabularyFilterName "Use generic-lens or generic-optics with 'vocabularyFilterName' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvfrrsResponseStatus :: Lens.Lens' GetVocabularyFilterResponse Core.Int
gvfrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gvfrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}