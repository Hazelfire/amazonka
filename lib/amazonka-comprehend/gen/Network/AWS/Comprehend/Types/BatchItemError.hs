{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.BatchItemError
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.BatchItemError
  ( BatchItemError (..),

    -- * Smart constructor
    mkBatchItemError,

    -- * Lenses
    bieErrorCode,
    bieErrorMessage,
    bieIndex,
  )
where

import qualified Network.AWS.Comprehend.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes an error that occurred while processing a document in a batch. The operation returns on @BatchItemError@ object for each document that contained an error.
--
-- /See:/ 'mkBatchItemError' smart constructor.
data BatchItemError = BatchItemError'
  { -- | The numeric error code of the error.
    errorCode :: Core.Maybe Types.String,
    -- | A text description of the error.
    errorMessage :: Core.Maybe Types.String,
    -- | The zero-based index of the document in the input list.
    index :: Core.Maybe Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchItemError' value with any optional fields omitted.
mkBatchItemError ::
  BatchItemError
mkBatchItemError =
  BatchItemError'
    { errorCode = Core.Nothing,
      errorMessage = Core.Nothing,
      index = Core.Nothing
    }

-- | The numeric error code of the error.
--
-- /Note:/ Consider using 'errorCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bieErrorCode :: Lens.Lens' BatchItemError (Core.Maybe Types.String)
bieErrorCode = Lens.field @"errorCode"
{-# DEPRECATED bieErrorCode "Use generic-lens or generic-optics with 'errorCode' instead." #-}

-- | A text description of the error.
--
-- /Note:/ Consider using 'errorMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bieErrorMessage :: Lens.Lens' BatchItemError (Core.Maybe Types.String)
bieErrorMessage = Lens.field @"errorMessage"
{-# DEPRECATED bieErrorMessage "Use generic-lens or generic-optics with 'errorMessage' instead." #-}

-- | The zero-based index of the document in the input list.
--
-- /Note:/ Consider using 'index' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bieIndex :: Lens.Lens' BatchItemError (Core.Maybe Core.Int)
bieIndex = Lens.field @"index"
{-# DEPRECATED bieIndex "Use generic-lens or generic-optics with 'index' instead." #-}

instance Core.FromJSON BatchItemError where
  parseJSON =
    Core.withObject "BatchItemError" Core.$
      \x ->
        BatchItemError'
          Core.<$> (x Core..:? "ErrorCode")
          Core.<*> (x Core..:? "ErrorMessage")
          Core.<*> (x Core..:? "Index")