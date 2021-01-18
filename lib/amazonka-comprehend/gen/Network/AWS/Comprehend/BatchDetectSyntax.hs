{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.BatchDetectSyntax
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them. For more information, see 'how-syntax' .
module Network.AWS.Comprehend.BatchDetectSyntax
  ( -- * Creating a request
    BatchDetectSyntax (..),
    mkBatchDetectSyntax,

    -- ** Request lenses
    bTextList,
    bLanguageCode,

    -- * Destructuring the response
    BatchDetectSyntaxResponse (..),
    mkBatchDetectSyntaxResponse,

    -- ** Response lenses
    brsResultList,
    brsErrorList,
    brsResponseStatus,
  )
where

import qualified Network.AWS.Comprehend.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkBatchDetectSyntax' smart constructor.
data BatchDetectSyntax = BatchDetectSyntax'
  { -- | A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.
    textList :: [Types.CustomerInputString],
    -- | The language of the input documents. You can specify any of the following languages supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"), Italian ("it"), or Portuguese ("pt"). All documents must be in the same language.
    languageCode :: Types.SyntaxLanguageCode
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchDetectSyntax' value with any optional fields omitted.
mkBatchDetectSyntax ::
  -- | 'languageCode'
  Types.SyntaxLanguageCode ->
  BatchDetectSyntax
mkBatchDetectSyntax languageCode =
  BatchDetectSyntax' {textList = Core.mempty, languageCode}

-- | A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.
--
-- /Note:/ Consider using 'textList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bTextList :: Lens.Lens' BatchDetectSyntax [Types.CustomerInputString]
bTextList = Lens.field @"textList"
{-# DEPRECATED bTextList "Use generic-lens or generic-optics with 'textList' instead." #-}

-- | The language of the input documents. You can specify any of the following languages supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"), Italian ("it"), or Portuguese ("pt"). All documents must be in the same language.
--
-- /Note:/ Consider using 'languageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bLanguageCode :: Lens.Lens' BatchDetectSyntax Types.SyntaxLanguageCode
bLanguageCode = Lens.field @"languageCode"
{-# DEPRECATED bLanguageCode "Use generic-lens or generic-optics with 'languageCode' instead." #-}

instance Core.FromJSON BatchDetectSyntax where
  toJSON BatchDetectSyntax {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("TextList" Core..= textList),
            Core.Just ("LanguageCode" Core..= languageCode)
          ]
      )

instance Core.AWSRequest BatchDetectSyntax where
  type Rs BatchDetectSyntax = BatchDetectSyntaxResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "Comprehend_20171127.BatchDetectSyntax")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDetectSyntaxResponse'
            Core.<$> (x Core..:? "ResultList" Core..!= Core.mempty)
            Core.<*> (x Core..:? "ErrorList" Core..!= Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkBatchDetectSyntaxResponse' smart constructor.
data BatchDetectSyntaxResponse = BatchDetectSyntaxResponse'
  { -- | A list of objects containing the results of the operation. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If all of the documents contain an error, the @ResultList@ is empty.
    resultList :: [Types.BatchDetectSyntaxItemResult],
    -- | A list containing one object for each document that contained an error. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If there are no errors in the batch, the @ErrorList@ is empty.
    errorList :: [Types.BatchItemError],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchDetectSyntaxResponse' value with any optional fields omitted.
mkBatchDetectSyntaxResponse ::
  -- | 'responseStatus'
  Core.Int ->
  BatchDetectSyntaxResponse
mkBatchDetectSyntaxResponse responseStatus =
  BatchDetectSyntaxResponse'
    { resultList = Core.mempty,
      errorList = Core.mempty,
      responseStatus
    }

-- | A list of objects containing the results of the operation. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If all of the documents contain an error, the @ResultList@ is empty.
--
-- /Note:/ Consider using 'resultList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
brsResultList :: Lens.Lens' BatchDetectSyntaxResponse [Types.BatchDetectSyntaxItemResult]
brsResultList = Lens.field @"resultList"
{-# DEPRECATED brsResultList "Use generic-lens or generic-optics with 'resultList' instead." #-}

-- | A list containing one object for each document that contained an error. The results are sorted in ascending order by the @Index@ field and match the order of the documents in the input list. If there are no errors in the batch, the @ErrorList@ is empty.
--
-- /Note:/ Consider using 'errorList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
brsErrorList :: Lens.Lens' BatchDetectSyntaxResponse [Types.BatchItemError]
brsErrorList = Lens.field @"errorList"
{-# DEPRECATED brsErrorList "Use generic-lens or generic-optics with 'errorList' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
brsResponseStatus :: Lens.Lens' BatchDetectSyntaxResponse Core.Int
brsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED brsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}