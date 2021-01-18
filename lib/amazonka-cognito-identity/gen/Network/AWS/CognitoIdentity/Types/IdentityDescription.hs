{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.Types.IdentityDescription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.IdentityDescription
  ( IdentityDescription (..),

    -- * Smart constructor
    mkIdentityDescription,

    -- * Lenses
    idCreationDate,
    idIdentityId,
    idLastModifiedDate,
    idLogins,
  )
where

import qualified Network.AWS.CognitoIdentity.Types.IdentityId as Types
import qualified Network.AWS.CognitoIdentity.Types.IdentityProviderName as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A description of the identity.
--
-- /See:/ 'mkIdentityDescription' smart constructor.
data IdentityDescription = IdentityDescription'
  { -- | Date on which the identity was created.
    creationDate :: Core.Maybe Core.NominalDiffTime,
    -- | A unique identifier in the format REGION:GUID.
    identityId :: Core.Maybe Types.IdentityId,
    -- | Date on which the identity was last modified.
    lastModifiedDate :: Core.Maybe Core.NominalDiffTime,
    -- | The provider names.
    logins :: Core.Maybe [Types.IdentityProviderName]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'IdentityDescription' value with any optional fields omitted.
mkIdentityDescription ::
  IdentityDescription
mkIdentityDescription =
  IdentityDescription'
    { creationDate = Core.Nothing,
      identityId = Core.Nothing,
      lastModifiedDate = Core.Nothing,
      logins = Core.Nothing
    }

-- | Date on which the identity was created.
--
-- /Note:/ Consider using 'creationDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idCreationDate :: Lens.Lens' IdentityDescription (Core.Maybe Core.NominalDiffTime)
idCreationDate = Lens.field @"creationDate"
{-# DEPRECATED idCreationDate "Use generic-lens or generic-optics with 'creationDate' instead." #-}

-- | A unique identifier in the format REGION:GUID.
--
-- /Note:/ Consider using 'identityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idIdentityId :: Lens.Lens' IdentityDescription (Core.Maybe Types.IdentityId)
idIdentityId = Lens.field @"identityId"
{-# DEPRECATED idIdentityId "Use generic-lens or generic-optics with 'identityId' instead." #-}

-- | Date on which the identity was last modified.
--
-- /Note:/ Consider using 'lastModifiedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idLastModifiedDate :: Lens.Lens' IdentityDescription (Core.Maybe Core.NominalDiffTime)
idLastModifiedDate = Lens.field @"lastModifiedDate"
{-# DEPRECATED idLastModifiedDate "Use generic-lens or generic-optics with 'lastModifiedDate' instead." #-}

-- | The provider names.
--
-- /Note:/ Consider using 'logins' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idLogins :: Lens.Lens' IdentityDescription (Core.Maybe [Types.IdentityProviderName])
idLogins = Lens.field @"logins"
{-# DEPRECATED idLogins "Use generic-lens or generic-optics with 'logins' instead." #-}

instance Core.FromJSON IdentityDescription where
  parseJSON =
    Core.withObject "IdentityDescription" Core.$
      \x ->
        IdentityDescription'
          Core.<$> (x Core..:? "CreationDate")
          Core.<*> (x Core..:? "IdentityId")
          Core.<*> (x Core..:? "LastModifiedDate")
          Core.<*> (x Core..:? "Logins")