{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.UnsuccessfulItemError
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.UnsuccessfulItemError
  ( UnsuccessfulItemError (..),

    -- * Smart constructor
    mkUnsuccessfulItemError,

    -- * Lenses
    uieCode,
    uieMessage,
  )
where

import qualified Network.AWS.EC2.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Information about the error that occurred. For more information about errors, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html Error Codes> .
--
-- /See:/ 'mkUnsuccessfulItemError' smart constructor.
data UnsuccessfulItemError = UnsuccessfulItemError'
  { -- | The error code.
    code :: Core.Maybe Types.String,
    -- | The error message accompanying the error code.
    message :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UnsuccessfulItemError' value with any optional fields omitted.
mkUnsuccessfulItemError ::
  UnsuccessfulItemError
mkUnsuccessfulItemError =
  UnsuccessfulItemError'
    { code = Core.Nothing,
      message = Core.Nothing
    }

-- | The error code.
--
-- /Note:/ Consider using 'code' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uieCode :: Lens.Lens' UnsuccessfulItemError (Core.Maybe Types.String)
uieCode = Lens.field @"code"
{-# DEPRECATED uieCode "Use generic-lens or generic-optics with 'code' instead." #-}

-- | The error message accompanying the error code.
--
-- /Note:/ Consider using 'message' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uieMessage :: Lens.Lens' UnsuccessfulItemError (Core.Maybe Types.String)
uieMessage = Lens.field @"message"
{-# DEPRECATED uieMessage "Use generic-lens or generic-optics with 'message' instead." #-}

instance Core.FromXML UnsuccessfulItemError where
  parseXML x =
    UnsuccessfulItemError'
      Core.<$> (x Core..@? "code") Core.<*> (x Core..@? "message")