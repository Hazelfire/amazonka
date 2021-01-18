{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.GetIdentityMailFromDomainAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the custom MAIL FROM attributes for a list of identities (email addresses : domains).
--
-- This operation is throttled at one request per second and can only get custom MAIL FROM attributes for up to 100 identities at a time.
module Network.AWS.SES.GetIdentityMailFromDomainAttributes
  ( -- * Creating a request
    GetIdentityMailFromDomainAttributes (..),
    mkGetIdentityMailFromDomainAttributes,

    -- ** Request lenses
    gimfdaIdentities,

    -- * Destructuring the response
    GetIdentityMailFromDomainAttributesResponse (..),
    mkGetIdentityMailFromDomainAttributesResponse,

    -- ** Response lenses
    gimfdarrsMailFromDomainAttributes,
    gimfdarrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to return the Amazon SES custom MAIL FROM attributes for a list of identities. For information about using a custom MAIL FROM domain, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkGetIdentityMailFromDomainAttributes' smart constructor.
newtype GetIdentityMailFromDomainAttributes = GetIdentityMailFromDomainAttributes'
  { -- | A list of one or more identities.
    identities :: [Types.Identity]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetIdentityMailFromDomainAttributes' value with any optional fields omitted.
mkGetIdentityMailFromDomainAttributes ::
  GetIdentityMailFromDomainAttributes
mkGetIdentityMailFromDomainAttributes =
  GetIdentityMailFromDomainAttributes' {identities = Core.mempty}

-- | A list of one or more identities.
--
-- /Note:/ Consider using 'identities' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimfdaIdentities :: Lens.Lens' GetIdentityMailFromDomainAttributes [Types.Identity]
gimfdaIdentities = Lens.field @"identities"
{-# DEPRECATED gimfdaIdentities "Use generic-lens or generic-optics with 'identities' instead." #-}

instance Core.AWSRequest GetIdentityMailFromDomainAttributes where
  type
    Rs GetIdentityMailFromDomainAttributes =
      GetIdentityMailFromDomainAttributesResponse
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
            ( Core.pure ("Action", "GetIdentityMailFromDomainAttributes")
                Core.<> (Core.pure ("Version", "2010-12-01"))
                Core.<> ( Core.toQueryValue
                            "Identities"
                            (Core.toQueryList "member" identities)
                        )
            )
      }
  response =
    Response.receiveXMLWrapper
      "GetIdentityMailFromDomainAttributesResult"
      ( \s h x ->
          GetIdentityMailFromDomainAttributesResponse'
            Core.<$> ( x Core..@? "MailFromDomainAttributes" Core..@! Core.mempty
                         Core..<@> Core.parseXMLMap "entry" "key" "value"
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the custom MAIL FROM attributes for a list of identities.
--
-- /See:/ 'mkGetIdentityMailFromDomainAttributesResponse' smart constructor.
data GetIdentityMailFromDomainAttributesResponse = GetIdentityMailFromDomainAttributesResponse'
  { -- | A map of identities to custom MAIL FROM attributes.
    mailFromDomainAttributes :: Core.HashMap Types.Identity Types.IdentityMailFromDomainAttributes,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetIdentityMailFromDomainAttributesResponse' value with any optional fields omitted.
mkGetIdentityMailFromDomainAttributesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetIdentityMailFromDomainAttributesResponse
mkGetIdentityMailFromDomainAttributesResponse responseStatus =
  GetIdentityMailFromDomainAttributesResponse'
    { mailFromDomainAttributes =
        Core.mempty,
      responseStatus
    }

-- | A map of identities to custom MAIL FROM attributes.
--
-- /Note:/ Consider using 'mailFromDomainAttributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimfdarrsMailFromDomainAttributes :: Lens.Lens' GetIdentityMailFromDomainAttributesResponse (Core.HashMap Types.Identity Types.IdentityMailFromDomainAttributes)
gimfdarrsMailFromDomainAttributes = Lens.field @"mailFromDomainAttributes"
{-# DEPRECATED gimfdarrsMailFromDomainAttributes "Use generic-lens or generic-optics with 'mailFromDomainAttributes' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimfdarrsResponseStatus :: Lens.Lens' GetIdentityMailFromDomainAttributesResponse Core.Int
gimfdarrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gimfdarrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}