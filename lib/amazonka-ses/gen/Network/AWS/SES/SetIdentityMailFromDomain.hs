{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.SetIdentityMailFromDomain
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables the custom MAIL FROM domain setup for a verified identity (an email address or a domain).
--
-- /Important:/ To send emails using the specified MAIL FROM domain, you must add an MX record to your MAIL FROM domain's DNS settings. If you want your emails to pass Sender Policy Framework (SPF) checks, you must also add or update an SPF record. For more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html Amazon SES Developer Guide> .
-- You can execute this operation no more than once per second.
module Network.AWS.SES.SetIdentityMailFromDomain
  ( -- * Creating a request
    SetIdentityMailFromDomain (..),
    mkSetIdentityMailFromDomain,

    -- ** Request lenses
    simfdIdentity,
    simfdBehaviorOnMXFailure,
    simfdMailFromDomain,

    -- * Destructuring the response
    SetIdentityMailFromDomainResponse (..),
    mkSetIdentityMailFromDomainResponse,

    -- ** Response lenses
    simfdrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to enable or disable the Amazon SES custom MAIL FROM domain setup for a verified identity. For information about using a custom MAIL FROM domain, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkSetIdentityMailFromDomain' smart constructor.
data SetIdentityMailFromDomain = SetIdentityMailFromDomain'
  { -- | The verified identity for which you want to enable or disable the specified custom MAIL FROM domain.
    identity :: Types.Identity,
    -- | The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. If you choose @UseDefaultValue@ , Amazon SES will use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose @RejectMessage@ , Amazon SES will return a @MailFromDomainNotVerified@ error and not send the email.
    --
    -- The action specified in @BehaviorOnMXFailure@ is taken when the custom MAIL FROM domain setup is in the @Pending@ , @Failed@ , and @TemporaryFailure@ states.
    behaviorOnMXFailure :: Core.Maybe Types.BehaviorOnMXFailure,
    -- | The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must 1) be a subdomain of the verified identity, 2) not be used in a "From" address if the MAIL FROM domain is the destination of email feedback forwarding (for more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html Amazon SES Developer Guide> ), and 3) not be used to receive emails. A value of @null@ disables the custom MAIL FROM setting for the identity.
    mailFromDomain :: Core.Maybe Types.MailFromDomain
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SetIdentityMailFromDomain' value with any optional fields omitted.
mkSetIdentityMailFromDomain ::
  -- | 'identity'
  Types.Identity ->
  SetIdentityMailFromDomain
mkSetIdentityMailFromDomain identity =
  SetIdentityMailFromDomain'
    { identity,
      behaviorOnMXFailure = Core.Nothing,
      mailFromDomain = Core.Nothing
    }

-- | The verified identity for which you want to enable or disable the specified custom MAIL FROM domain.
--
-- /Note:/ Consider using 'identity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
simfdIdentity :: Lens.Lens' SetIdentityMailFromDomain Types.Identity
simfdIdentity = Lens.field @"identity"
{-# DEPRECATED simfdIdentity "Use generic-lens or generic-optics with 'identity' instead." #-}

-- | The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. If you choose @UseDefaultValue@ , Amazon SES will use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose @RejectMessage@ , Amazon SES will return a @MailFromDomainNotVerified@ error and not send the email.
--
-- The action specified in @BehaviorOnMXFailure@ is taken when the custom MAIL FROM domain setup is in the @Pending@ , @Failed@ , and @TemporaryFailure@ states.
--
-- /Note:/ Consider using 'behaviorOnMXFailure' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
simfdBehaviorOnMXFailure :: Lens.Lens' SetIdentityMailFromDomain (Core.Maybe Types.BehaviorOnMXFailure)
simfdBehaviorOnMXFailure = Lens.field @"behaviorOnMXFailure"
{-# DEPRECATED simfdBehaviorOnMXFailure "Use generic-lens or generic-optics with 'behaviorOnMXFailure' instead." #-}

-- | The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must 1) be a subdomain of the verified identity, 2) not be used in a "From" address if the MAIL FROM domain is the destination of email feedback forwarding (for more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html Amazon SES Developer Guide> ), and 3) not be used to receive emails. A value of @null@ disables the custom MAIL FROM setting for the identity.
--
-- /Note:/ Consider using 'mailFromDomain' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
simfdMailFromDomain :: Lens.Lens' SetIdentityMailFromDomain (Core.Maybe Types.MailFromDomain)
simfdMailFromDomain = Lens.field @"mailFromDomain"
{-# DEPRECATED simfdMailFromDomain "Use generic-lens or generic-optics with 'mailFromDomain' instead." #-}

instance Core.AWSRequest SetIdentityMailFromDomain where
  type
    Rs SetIdentityMailFromDomain =
      SetIdentityMailFromDomainResponse
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
            ( Core.pure ("Action", "SetIdentityMailFromDomain")
                Core.<> (Core.pure ("Version", "2010-12-01"))
                Core.<> (Core.toQueryValue "Identity" identity)
                Core.<> ( Core.toQueryValue "BehaviorOnMXFailure"
                            Core.<$> behaviorOnMXFailure
                        )
                Core.<> (Core.toQueryValue "MailFromDomain" Core.<$> mailFromDomain)
            )
      }
  response =
    Response.receiveXMLWrapper
      "SetIdentityMailFromDomainResult"
      ( \s h x ->
          SetIdentityMailFromDomainResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | An empty element returned on a successful request.
--
-- /See:/ 'mkSetIdentityMailFromDomainResponse' smart constructor.
newtype SetIdentityMailFromDomainResponse = SetIdentityMailFromDomainResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'SetIdentityMailFromDomainResponse' value with any optional fields omitted.
mkSetIdentityMailFromDomainResponse ::
  -- | 'responseStatus'
  Core.Int ->
  SetIdentityMailFromDomainResponse
mkSetIdentityMailFromDomainResponse responseStatus =
  SetIdentityMailFromDomainResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
simfdrrsResponseStatus :: Lens.Lens' SetIdentityMailFromDomainResponse Core.Int
simfdrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED simfdrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}