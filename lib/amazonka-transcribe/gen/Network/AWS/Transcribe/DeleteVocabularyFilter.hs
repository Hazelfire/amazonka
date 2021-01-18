{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.DeleteVocabularyFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a vocabulary filter.
module Network.AWS.Transcribe.DeleteVocabularyFilter
  ( -- * Creating a request
    DeleteVocabularyFilter (..),
    mkDeleteVocabularyFilter,

    -- ** Request lenses
    dvfVocabularyFilterName,

    -- * Destructuring the response
    DeleteVocabularyFilterResponse (..),
    mkDeleteVocabularyFilterResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Transcribe.Types as Types

-- | /See:/ 'mkDeleteVocabularyFilter' smart constructor.
newtype DeleteVocabularyFilter = DeleteVocabularyFilter'
  { -- | The name of the vocabulary filter to remove.
    vocabularyFilterName :: Types.VocabularyFilterName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteVocabularyFilter' value with any optional fields omitted.
mkDeleteVocabularyFilter ::
  -- | 'vocabularyFilterName'
  Types.VocabularyFilterName ->
  DeleteVocabularyFilter
mkDeleteVocabularyFilter vocabularyFilterName =
  DeleteVocabularyFilter' {vocabularyFilterName}

-- | The name of the vocabulary filter to remove.
--
-- /Note:/ Consider using 'vocabularyFilterName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dvfVocabularyFilterName :: Lens.Lens' DeleteVocabularyFilter Types.VocabularyFilterName
dvfVocabularyFilterName = Lens.field @"vocabularyFilterName"
{-# DEPRECATED dvfVocabularyFilterName "Use generic-lens or generic-optics with 'vocabularyFilterName' instead." #-}

instance Core.FromJSON DeleteVocabularyFilter where
  toJSON DeleteVocabularyFilter {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("VocabularyFilterName" Core..= vocabularyFilterName)]
      )

instance Core.AWSRequest DeleteVocabularyFilter where
  type Rs DeleteVocabularyFilter = DeleteVocabularyFilterResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "Transcribe.DeleteVocabularyFilter")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull DeleteVocabularyFilterResponse'

-- | /See:/ 'mkDeleteVocabularyFilterResponse' smart constructor.
data DeleteVocabularyFilterResponse = DeleteVocabularyFilterResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteVocabularyFilterResponse' value with any optional fields omitted.
mkDeleteVocabularyFilterResponse ::
  DeleteVocabularyFilterResponse
mkDeleteVocabularyFilterResponse = DeleteVocabularyFilterResponse'