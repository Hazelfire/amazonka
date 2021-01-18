{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.VerifyEmailIdentity
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an email address to the list of identities for your Amazon SES account in the current AWS region and attempts to verify it. As a result of executing this operation, a verification email is sent to the specified address.
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.VerifyEmailIdentity
  ( -- * Creating a request
    VerifyEmailIdentity (..),
    mkVerifyEmailIdentity,

    -- ** Request lenses
    veiEmailAddress,

    -- * Destructuring the response
    VerifyEmailIdentityResponse (..),
    mkVerifyEmailIdentityResponse,

    -- ** Response lenses
    veirrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkVerifyEmailIdentity' smart constructor.
newtype VerifyEmailIdentity = VerifyEmailIdentity'
  { -- | The email address to be verified.
    emailAddress :: Types.Address
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'VerifyEmailIdentity' value with any optional fields omitted.
mkVerifyEmailIdentity ::
  -- | 'emailAddress'
  Types.Address ->
  VerifyEmailIdentity
mkVerifyEmailIdentity emailAddress =
  VerifyEmailIdentity' {emailAddress}

-- | The email address to be verified.
--
-- /Note:/ Consider using 'emailAddress' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
veiEmailAddress :: Lens.Lens' VerifyEmailIdentity Types.Address
veiEmailAddress = Lens.field @"emailAddress"
{-# DEPRECATED veiEmailAddress "Use generic-lens or generic-optics with 'emailAddress' instead." #-}

instance Core.AWSRequest VerifyEmailIdentity where
  type Rs VerifyEmailIdentity = VerifyEmailIdentityResponse
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
            ( Core.pure ("Action", "VerifyEmailIdentity")
                Core.<> (Core.pure ("Version", "2010-12-01"))
                Core.<> (Core.toQueryValue "EmailAddress" emailAddress)
            )
      }
  response =
    Response.receiveXMLWrapper
      "VerifyEmailIdentityResult"
      ( \s h x ->
          VerifyEmailIdentityResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | An empty element returned on a successful request.
--
-- /See:/ 'mkVerifyEmailIdentityResponse' smart constructor.
newtype VerifyEmailIdentityResponse = VerifyEmailIdentityResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'VerifyEmailIdentityResponse' value with any optional fields omitted.
mkVerifyEmailIdentityResponse ::
  -- | 'responseStatus'
  Core.Int ->
  VerifyEmailIdentityResponse
mkVerifyEmailIdentityResponse responseStatus =
  VerifyEmailIdentityResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
veirrsResponseStatus :: Lens.Lens' VerifyEmailIdentityResponse Core.Int
veirrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED veirrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}