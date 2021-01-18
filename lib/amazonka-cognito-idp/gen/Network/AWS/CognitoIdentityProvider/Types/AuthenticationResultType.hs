{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AuthenticationResultType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AuthenticationResultType
  ( AuthenticationResultType (..),

    -- * Smart constructor
    mkAuthenticationResultType,

    -- * Lenses
    artAccessToken,
    artExpiresIn,
    artIdToken,
    artNewDeviceMetadata,
    artRefreshToken,
    artTokenType,
  )
where

import qualified Network.AWS.CognitoIdentityProvider.Types.NewDeviceMetadataType as Types
import qualified Network.AWS.CognitoIdentityProvider.Types.StringType as Types
import qualified Network.AWS.CognitoIdentityProvider.Types.TokenModelType as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The authentication result.
--
-- /See:/ 'mkAuthenticationResultType' smart constructor.
data AuthenticationResultType = AuthenticationResultType'
  { -- | The access token.
    accessToken :: Core.Maybe Types.TokenModelType,
    -- | The expiration period of the authentication result in seconds.
    expiresIn :: Core.Maybe Core.Int,
    -- | The ID token.
    idToken :: Core.Maybe Types.TokenModelType,
    -- | The new device metadata from an authentication result.
    newDeviceMetadata :: Core.Maybe Types.NewDeviceMetadataType,
    -- | The refresh token.
    refreshToken :: Core.Maybe Types.TokenModelType,
    -- | The token type.
    tokenType :: Core.Maybe Types.StringType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AuthenticationResultType' value with any optional fields omitted.
mkAuthenticationResultType ::
  AuthenticationResultType
mkAuthenticationResultType =
  AuthenticationResultType'
    { accessToken = Core.Nothing,
      expiresIn = Core.Nothing,
      idToken = Core.Nothing,
      newDeviceMetadata = Core.Nothing,
      refreshToken = Core.Nothing,
      tokenType = Core.Nothing
    }

-- | The access token.
--
-- /Note:/ Consider using 'accessToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
artAccessToken :: Lens.Lens' AuthenticationResultType (Core.Maybe Types.TokenModelType)
artAccessToken = Lens.field @"accessToken"
{-# DEPRECATED artAccessToken "Use generic-lens or generic-optics with 'accessToken' instead." #-}

-- | The expiration period of the authentication result in seconds.
--
-- /Note:/ Consider using 'expiresIn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
artExpiresIn :: Lens.Lens' AuthenticationResultType (Core.Maybe Core.Int)
artExpiresIn = Lens.field @"expiresIn"
{-# DEPRECATED artExpiresIn "Use generic-lens or generic-optics with 'expiresIn' instead." #-}

-- | The ID token.
--
-- /Note:/ Consider using 'idToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
artIdToken :: Lens.Lens' AuthenticationResultType (Core.Maybe Types.TokenModelType)
artIdToken = Lens.field @"idToken"
{-# DEPRECATED artIdToken "Use generic-lens or generic-optics with 'idToken' instead." #-}

-- | The new device metadata from an authentication result.
--
-- /Note:/ Consider using 'newDeviceMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
artNewDeviceMetadata :: Lens.Lens' AuthenticationResultType (Core.Maybe Types.NewDeviceMetadataType)
artNewDeviceMetadata = Lens.field @"newDeviceMetadata"
{-# DEPRECATED artNewDeviceMetadata "Use generic-lens or generic-optics with 'newDeviceMetadata' instead." #-}

-- | The refresh token.
--
-- /Note:/ Consider using 'refreshToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
artRefreshToken :: Lens.Lens' AuthenticationResultType (Core.Maybe Types.TokenModelType)
artRefreshToken = Lens.field @"refreshToken"
{-# DEPRECATED artRefreshToken "Use generic-lens or generic-optics with 'refreshToken' instead." #-}

-- | The token type.
--
-- /Note:/ Consider using 'tokenType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
artTokenType :: Lens.Lens' AuthenticationResultType (Core.Maybe Types.StringType)
artTokenType = Lens.field @"tokenType"
{-# DEPRECATED artTokenType "Use generic-lens or generic-optics with 'tokenType' instead." #-}

instance Core.FromJSON AuthenticationResultType where
  parseJSON =
    Core.withObject "AuthenticationResultType" Core.$
      \x ->
        AuthenticationResultType'
          Core.<$> (x Core..:? "AccessToken")
          Core.<*> (x Core..:? "ExpiresIn")
          Core.<*> (x Core..:? "IdToken")
          Core.<*> (x Core..:? "NewDeviceMetadata")
          Core.<*> (x Core..:? "RefreshToken")
          Core.<*> (x Core..:? "TokenType")