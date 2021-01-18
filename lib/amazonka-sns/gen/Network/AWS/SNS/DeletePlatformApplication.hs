{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SNS.DeletePlatformApplication
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a platform application object for one of the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging). For more information, see <https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html Using Amazon SNS Mobile Push Notifications> .
module Network.AWS.SNS.DeletePlatformApplication
  ( -- * Creating a request
    DeletePlatformApplication (..),
    mkDeletePlatformApplication,

    -- ** Request lenses
    dpaPlatformApplicationArn,

    -- * Destructuring the response
    DeletePlatformApplicationResponse (..),
    mkDeletePlatformApplicationResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SNS.Types as Types

-- | Input for DeletePlatformApplication action.
--
-- /See:/ 'mkDeletePlatformApplication' smart constructor.
newtype DeletePlatformApplication = DeletePlatformApplication'
  { -- | PlatformApplicationArn of platform application object to delete.
    platformApplicationArn :: Types.PlatformApplicationArn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeletePlatformApplication' value with any optional fields omitted.
mkDeletePlatformApplication ::
  -- | 'platformApplicationArn'
  Types.PlatformApplicationArn ->
  DeletePlatformApplication
mkDeletePlatformApplication platformApplicationArn =
  DeletePlatformApplication' {platformApplicationArn}

-- | PlatformApplicationArn of platform application object to delete.
--
-- /Note:/ Consider using 'platformApplicationArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpaPlatformApplicationArn :: Lens.Lens' DeletePlatformApplication Types.PlatformApplicationArn
dpaPlatformApplicationArn = Lens.field @"platformApplicationArn"
{-# DEPRECATED dpaPlatformApplicationArn "Use generic-lens or generic-optics with 'platformApplicationArn' instead." #-}

instance Core.AWSRequest DeletePlatformApplication where
  type
    Rs DeletePlatformApplication =
      DeletePlatformApplicationResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "DeletePlatformApplication")
                Core.<> (Core.pure ("Version", "2010-03-31"))
                Core.<> ( Core.toQueryValue
                            "PlatformApplicationArn"
                            platformApplicationArn
                        )
            )
      }
  response = Response.receiveNull DeletePlatformApplicationResponse'

-- | /See:/ 'mkDeletePlatformApplicationResponse' smart constructor.
data DeletePlatformApplicationResponse = DeletePlatformApplicationResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeletePlatformApplicationResponse' value with any optional fields omitted.
mkDeletePlatformApplicationResponse ::
  DeletePlatformApplicationResponse
mkDeletePlatformApplicationResponse =
  DeletePlatformApplicationResponse'