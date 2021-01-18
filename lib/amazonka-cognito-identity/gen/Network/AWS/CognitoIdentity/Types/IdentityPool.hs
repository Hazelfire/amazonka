{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.Types.IdentityPool
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.IdentityPool
  ( IdentityPool (..),

    -- * Smart constructor
    mkIdentityPool,

    -- * Lenses
    ipIdentityPoolId,
    ipIdentityPoolName,
    ipAllowUnauthenticatedIdentities,
    ipAllowClassicFlow,
    ipCognitoIdentityProviders,
    ipDeveloperProviderName,
    ipIdentityPoolTags,
    ipOpenIdConnectProviderARNs,
    ipSamlProviderARNs,
    ipSupportedLoginProviders,
  )
where

import qualified Network.AWS.CognitoIdentity.Types.ARNString as Types
import qualified Network.AWS.CognitoIdentity.Types.CognitoIdentityProvider as Types
import qualified Network.AWS.CognitoIdentity.Types.DeveloperProviderName as Types
import qualified Network.AWS.CognitoIdentity.Types.IdentityPoolId as Types
import qualified Network.AWS.CognitoIdentity.Types.IdentityPoolName as Types
import qualified Network.AWS.CognitoIdentity.Types.IdentityProviderId as Types
import qualified Network.AWS.CognitoIdentity.Types.IdentityProviderName as Types
import qualified Network.AWS.CognitoIdentity.Types.TagKeysType as Types
import qualified Network.AWS.CognitoIdentity.Types.TagValueType as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | An object representing an Amazon Cognito identity pool.
--
-- /See:/ 'mkIdentityPool' smart constructor.
data IdentityPool = IdentityPool'
  { -- | An identity pool ID in the format REGION:GUID.
    identityPoolId :: Types.IdentityPoolId,
    -- | A string that you provide.
    identityPoolName :: Types.IdentityPoolName,
    -- | TRUE if the identity pool supports unauthenticated logins.
    allowUnauthenticatedIdentities :: Core.Bool,
    -- | Enables or disables the Basic (Classic) authentication flow. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html Identity Pools (Federated Identities) Authentication Flow> in the /Amazon Cognito Developer Guide/ .
    allowClassicFlow :: Core.Maybe Core.Bool,
    -- | A list representing an Amazon Cognito user pool and its client ID.
    cognitoIdentityProviders :: Core.Maybe [Types.CognitoIdentityProvider],
    -- | The "domain" by which Cognito will refer to your users.
    developerProviderName :: Core.Maybe Types.DeveloperProviderName,
    -- | The tags that are assigned to the identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria.
    identityPoolTags :: Core.Maybe (Core.HashMap Types.TagKeysType Types.TagValueType),
    -- | A list of OpendID Connect provider ARNs.
    openIdConnectProviderARNs :: Core.Maybe [Types.ARNString],
    -- | An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
    samlProviderARNs :: Core.Maybe [Types.ARNString],
    -- | Optional key:value pairs mapping provider names to provider app IDs.
    supportedLoginProviders :: Core.Maybe (Core.HashMap Types.IdentityProviderName Types.IdentityProviderId)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'IdentityPool' value with any optional fields omitted.
mkIdentityPool ::
  -- | 'identityPoolId'
  Types.IdentityPoolId ->
  -- | 'identityPoolName'
  Types.IdentityPoolName ->
  -- | 'allowUnauthenticatedIdentities'
  Core.Bool ->
  IdentityPool
mkIdentityPool
  identityPoolId
  identityPoolName
  allowUnauthenticatedIdentities =
    IdentityPool'
      { identityPoolId,
        identityPoolName,
        allowUnauthenticatedIdentities,
        allowClassicFlow = Core.Nothing,
        cognitoIdentityProviders = Core.Nothing,
        developerProviderName = Core.Nothing,
        identityPoolTags = Core.Nothing,
        openIdConnectProviderARNs = Core.Nothing,
        samlProviderARNs = Core.Nothing,
        supportedLoginProviders = Core.Nothing
      }

-- | An identity pool ID in the format REGION:GUID.
--
-- /Note:/ Consider using 'identityPoolId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipIdentityPoolId :: Lens.Lens' IdentityPool Types.IdentityPoolId
ipIdentityPoolId = Lens.field @"identityPoolId"
{-# DEPRECATED ipIdentityPoolId "Use generic-lens or generic-optics with 'identityPoolId' instead." #-}

-- | A string that you provide.
--
-- /Note:/ Consider using 'identityPoolName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipIdentityPoolName :: Lens.Lens' IdentityPool Types.IdentityPoolName
ipIdentityPoolName = Lens.field @"identityPoolName"
{-# DEPRECATED ipIdentityPoolName "Use generic-lens or generic-optics with 'identityPoolName' instead." #-}

-- | TRUE if the identity pool supports unauthenticated logins.
--
-- /Note:/ Consider using 'allowUnauthenticatedIdentities' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipAllowUnauthenticatedIdentities :: Lens.Lens' IdentityPool Core.Bool
ipAllowUnauthenticatedIdentities = Lens.field @"allowUnauthenticatedIdentities"
{-# DEPRECATED ipAllowUnauthenticatedIdentities "Use generic-lens or generic-optics with 'allowUnauthenticatedIdentities' instead." #-}

-- | Enables or disables the Basic (Classic) authentication flow. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html Identity Pools (Federated Identities) Authentication Flow> in the /Amazon Cognito Developer Guide/ .
--
-- /Note:/ Consider using 'allowClassicFlow' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipAllowClassicFlow :: Lens.Lens' IdentityPool (Core.Maybe Core.Bool)
ipAllowClassicFlow = Lens.field @"allowClassicFlow"
{-# DEPRECATED ipAllowClassicFlow "Use generic-lens or generic-optics with 'allowClassicFlow' instead." #-}

-- | A list representing an Amazon Cognito user pool and its client ID.
--
-- /Note:/ Consider using 'cognitoIdentityProviders' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipCognitoIdentityProviders :: Lens.Lens' IdentityPool (Core.Maybe [Types.CognitoIdentityProvider])
ipCognitoIdentityProviders = Lens.field @"cognitoIdentityProviders"
{-# DEPRECATED ipCognitoIdentityProviders "Use generic-lens or generic-optics with 'cognitoIdentityProviders' instead." #-}

-- | The "domain" by which Cognito will refer to your users.
--
-- /Note:/ Consider using 'developerProviderName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipDeveloperProviderName :: Lens.Lens' IdentityPool (Core.Maybe Types.DeveloperProviderName)
ipDeveloperProviderName = Lens.field @"developerProviderName"
{-# DEPRECATED ipDeveloperProviderName "Use generic-lens or generic-optics with 'developerProviderName' instead." #-}

-- | The tags that are assigned to the identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria.
--
-- /Note:/ Consider using 'identityPoolTags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipIdentityPoolTags :: Lens.Lens' IdentityPool (Core.Maybe (Core.HashMap Types.TagKeysType Types.TagValueType))
ipIdentityPoolTags = Lens.field @"identityPoolTags"
{-# DEPRECATED ipIdentityPoolTags "Use generic-lens or generic-optics with 'identityPoolTags' instead." #-}

-- | A list of OpendID Connect provider ARNs.
--
-- /Note:/ Consider using 'openIdConnectProviderARNs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipOpenIdConnectProviderARNs :: Lens.Lens' IdentityPool (Core.Maybe [Types.ARNString])
ipOpenIdConnectProviderARNs = Lens.field @"openIdConnectProviderARNs"
{-# DEPRECATED ipOpenIdConnectProviderARNs "Use generic-lens or generic-optics with 'openIdConnectProviderARNs' instead." #-}

-- | An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
--
-- /Note:/ Consider using 'samlProviderARNs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipSamlProviderARNs :: Lens.Lens' IdentityPool (Core.Maybe [Types.ARNString])
ipSamlProviderARNs = Lens.field @"samlProviderARNs"
{-# DEPRECATED ipSamlProviderARNs "Use generic-lens or generic-optics with 'samlProviderARNs' instead." #-}

-- | Optional key:value pairs mapping provider names to provider app IDs.
--
-- /Note:/ Consider using 'supportedLoginProviders' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipSupportedLoginProviders :: Lens.Lens' IdentityPool (Core.Maybe (Core.HashMap Types.IdentityProviderName Types.IdentityProviderId))
ipSupportedLoginProviders = Lens.field @"supportedLoginProviders"
{-# DEPRECATED ipSupportedLoginProviders "Use generic-lens or generic-optics with 'supportedLoginProviders' instead." #-}

instance Core.FromJSON IdentityPool where
  toJSON IdentityPool {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("IdentityPoolId" Core..= identityPoolId),
            Core.Just ("IdentityPoolName" Core..= identityPoolName),
            Core.Just
              ( "AllowUnauthenticatedIdentities"
                  Core..= allowUnauthenticatedIdentities
              ),
            ("AllowClassicFlow" Core..=) Core.<$> allowClassicFlow,
            ("CognitoIdentityProviders" Core..=)
              Core.<$> cognitoIdentityProviders,
            ("DeveloperProviderName" Core..=) Core.<$> developerProviderName,
            ("IdentityPoolTags" Core..=) Core.<$> identityPoolTags,
            ("OpenIdConnectProviderARNs" Core..=)
              Core.<$> openIdConnectProviderARNs,
            ("SamlProviderARNs" Core..=) Core.<$> samlProviderARNs,
            ("SupportedLoginProviders" Core..=)
              Core.<$> supportedLoginProviders
          ]
      )

instance Core.FromJSON IdentityPool where
  parseJSON =
    Core.withObject "IdentityPool" Core.$
      \x ->
        IdentityPool'
          Core.<$> (x Core..: "IdentityPoolId")
          Core.<*> (x Core..: "IdentityPoolName")
          Core.<*> (x Core..: "AllowUnauthenticatedIdentities")
          Core.<*> (x Core..:? "AllowClassicFlow")
          Core.<*> (x Core..:? "CognitoIdentityProviders")
          Core.<*> (x Core..:? "DeveloperProviderName")
          Core.<*> (x Core..:? "IdentityPoolTags")
          Core.<*> (x Core..:? "OpenIdConnectProviderARNs")
          Core.<*> (x Core..:? "SamlProviderARNs")
          Core.<*> (x Core..:? "SupportedLoginProviders")