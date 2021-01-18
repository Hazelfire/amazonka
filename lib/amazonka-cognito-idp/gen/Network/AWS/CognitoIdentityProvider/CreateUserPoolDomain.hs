{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.CreateUserPoolDomain
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new domain for a user pool.
module Network.AWS.CognitoIdentityProvider.CreateUserPoolDomain
  ( -- * Creating a request
    CreateUserPoolDomain (..),
    mkCreateUserPoolDomain,

    -- ** Request lenses
    cupdDomain,
    cupdUserPoolId,
    cupdCustomDomainConfig,

    -- * Destructuring the response
    CreateUserPoolDomainResponse (..),
    mkCreateUserPoolDomainResponse,

    -- ** Response lenses
    cupdrrsCloudFrontDomain,
    cupdrrsResponseStatus,
  )
where

import qualified Network.AWS.CognitoIdentityProvider.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateUserPoolDomain' smart constructor.
data CreateUserPoolDomain = CreateUserPoolDomain'
  { -- | The domain string.
    domain :: Types.Domain,
    -- | The user pool ID.
    userPoolId :: Types.UserPoolId,
    -- | The configuration for a custom domain that hosts the sign-up and sign-in webpages for your application.
    --
    -- Provide this parameter only if you want to use a custom domain for your user pool. Otherwise, you can exclude this parameter and use the Amazon Cognito hosted domain instead.
    -- For more information about the hosted domain and custom domains, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html Configuring a User Pool Domain> .
    customDomainConfig :: Core.Maybe Types.CustomDomainConfigType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateUserPoolDomain' value with any optional fields omitted.
mkCreateUserPoolDomain ::
  -- | 'domain'
  Types.Domain ->
  -- | 'userPoolId'
  Types.UserPoolId ->
  CreateUserPoolDomain
mkCreateUserPoolDomain domain userPoolId =
  CreateUserPoolDomain'
    { domain,
      userPoolId,
      customDomainConfig = Core.Nothing
    }

-- | The domain string.
--
-- /Note:/ Consider using 'domain' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cupdDomain :: Lens.Lens' CreateUserPoolDomain Types.Domain
cupdDomain = Lens.field @"domain"
{-# DEPRECATED cupdDomain "Use generic-lens or generic-optics with 'domain' instead." #-}

-- | The user pool ID.
--
-- /Note:/ Consider using 'userPoolId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cupdUserPoolId :: Lens.Lens' CreateUserPoolDomain Types.UserPoolId
cupdUserPoolId = Lens.field @"userPoolId"
{-# DEPRECATED cupdUserPoolId "Use generic-lens or generic-optics with 'userPoolId' instead." #-}

-- | The configuration for a custom domain that hosts the sign-up and sign-in webpages for your application.
--
-- Provide this parameter only if you want to use a custom domain for your user pool. Otherwise, you can exclude this parameter and use the Amazon Cognito hosted domain instead.
-- For more information about the hosted domain and custom domains, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html Configuring a User Pool Domain> .
--
-- /Note:/ Consider using 'customDomainConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cupdCustomDomainConfig :: Lens.Lens' CreateUserPoolDomain (Core.Maybe Types.CustomDomainConfigType)
cupdCustomDomainConfig = Lens.field @"customDomainConfig"
{-# DEPRECATED cupdCustomDomainConfig "Use generic-lens or generic-optics with 'customDomainConfig' instead." #-}

instance Core.FromJSON CreateUserPoolDomain where
  toJSON CreateUserPoolDomain {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Domain" Core..= domain),
            Core.Just ("UserPoolId" Core..= userPoolId),
            ("CustomDomainConfig" Core..=) Core.<$> customDomainConfig
          ]
      )

instance Core.AWSRequest CreateUserPoolDomain where
  type Rs CreateUserPoolDomain = CreateUserPoolDomainResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSCognitoIdentityProviderService.CreateUserPoolDomain"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateUserPoolDomainResponse'
            Core.<$> (x Core..:? "CloudFrontDomain")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateUserPoolDomainResponse' smart constructor.
data CreateUserPoolDomainResponse = CreateUserPoolDomainResponse'
  { -- | The Amazon CloudFront endpoint that you use as the target of the alias that you set up with your Domain Name Service (DNS) provider.
    cloudFrontDomain :: Core.Maybe Types.CloudFrontDomain,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateUserPoolDomainResponse' value with any optional fields omitted.
mkCreateUserPoolDomainResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateUserPoolDomainResponse
mkCreateUserPoolDomainResponse responseStatus =
  CreateUserPoolDomainResponse'
    { cloudFrontDomain = Core.Nothing,
      responseStatus
    }

-- | The Amazon CloudFront endpoint that you use as the target of the alias that you set up with your Domain Name Service (DNS) provider.
--
-- /Note:/ Consider using 'cloudFrontDomain' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cupdrrsCloudFrontDomain :: Lens.Lens' CreateUserPoolDomainResponse (Core.Maybe Types.CloudFrontDomain)
cupdrrsCloudFrontDomain = Lens.field @"cloudFrontDomain"
{-# DEPRECATED cupdrrsCloudFrontDomain "Use generic-lens or generic-optics with 'cloudFrontDomain' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cupdrrsResponseStatus :: Lens.Lens' CreateUserPoolDomainResponse Core.Int
cupdrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cupdrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}