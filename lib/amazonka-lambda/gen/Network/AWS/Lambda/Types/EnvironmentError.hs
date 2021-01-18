{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.EnvironmentError
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.EnvironmentError
  ( EnvironmentError (..),

    -- * Smart constructor
    mkEnvironmentError,

    -- * Lenses
    eeErrorCode,
    eeMessage,
  )
where

import qualified Network.AWS.Lambda.Types.SensitiveString as Types
import qualified Network.AWS.Lambda.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Error messages for environment variables that couldn't be applied.
--
-- /See:/ 'mkEnvironmentError' smart constructor.
data EnvironmentError = EnvironmentError'
  { -- | The error code.
    errorCode :: Core.Maybe Types.String,
    -- | The error message.
    message :: Core.Maybe Types.SensitiveString
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'EnvironmentError' value with any optional fields omitted.
mkEnvironmentError ::
  EnvironmentError
mkEnvironmentError =
  EnvironmentError'
    { errorCode = Core.Nothing,
      message = Core.Nothing
    }

-- | The error code.
--
-- /Note:/ Consider using 'errorCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eeErrorCode :: Lens.Lens' EnvironmentError (Core.Maybe Types.String)
eeErrorCode = Lens.field @"errorCode"
{-# DEPRECATED eeErrorCode "Use generic-lens or generic-optics with 'errorCode' instead." #-}

-- | The error message.
--
-- /Note:/ Consider using 'message' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eeMessage :: Lens.Lens' EnvironmentError (Core.Maybe Types.SensitiveString)
eeMessage = Lens.field @"message"
{-# DEPRECATED eeMessage "Use generic-lens or generic-optics with 'message' instead." #-}

instance Core.FromJSON EnvironmentError where
  parseJSON =
    Core.withObject "EnvironmentError" Core.$
      \x ->
        EnvironmentError'
          Core.<$> (x Core..:? "ErrorCode") Core.<*> (x Core..:? "Message")