{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.PutLoggingOptions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets or updates the AWS IoT Analytics logging options.
--
-- If you update the value of any @loggingOptions@ field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the @roleArn@ field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.
module Network.AWS.IoTAnalytics.PutLoggingOptions
  ( -- * Creating a request
    PutLoggingOptions (..),
    mkPutLoggingOptions,

    -- ** Request lenses
    ploLoggingOptions,

    -- * Destructuring the response
    PutLoggingOptionsResponse (..),
    mkPutLoggingOptionsResponse,
  )
where

import qualified Network.AWS.IoTAnalytics.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutLoggingOptions' smart constructor.
newtype PutLoggingOptions = PutLoggingOptions'
  { -- | The new values of the AWS IoT Analytics logging options.
    loggingOptions :: Types.LoggingOptions
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'PutLoggingOptions' value with any optional fields omitted.
mkPutLoggingOptions ::
  -- | 'loggingOptions'
  Types.LoggingOptions ->
  PutLoggingOptions
mkPutLoggingOptions loggingOptions =
  PutLoggingOptions' {loggingOptions}

-- | The new values of the AWS IoT Analytics logging options.
--
-- /Note:/ Consider using 'loggingOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ploLoggingOptions :: Lens.Lens' PutLoggingOptions Types.LoggingOptions
ploLoggingOptions = Lens.field @"loggingOptions"
{-# DEPRECATED ploLoggingOptions "Use generic-lens or generic-optics with 'loggingOptions' instead." #-}

instance Core.FromJSON PutLoggingOptions where
  toJSON PutLoggingOptions {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("loggingOptions" Core..= loggingOptions)]
      )

instance Core.AWSRequest PutLoggingOptions where
  type Rs PutLoggingOptions = PutLoggingOptionsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.PUT,
        Core._rqPath = Core.rawPath "/logging",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull PutLoggingOptionsResponse'

-- | /See:/ 'mkPutLoggingOptionsResponse' smart constructor.
data PutLoggingOptionsResponse = PutLoggingOptionsResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutLoggingOptionsResponse' value with any optional fields omitted.
mkPutLoggingOptionsResponse ::
  PutLoggingOptionsResponse
mkPutLoggingOptionsResponse = PutLoggingOptionsResponse'