{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.VaultLockPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.VaultLockPolicy
  ( VaultLockPolicy (..),

    -- * Smart constructor
    mkVaultLockPolicy,

    -- * Lenses
    vlpPolicy,
  )
where

import qualified Network.AWS.Glacier.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains the vault lock policy.
--
-- /See:/ 'mkVaultLockPolicy' smart constructor.
newtype VaultLockPolicy = VaultLockPolicy'
  { -- | The vault lock policy.
    policy :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'VaultLockPolicy' value with any optional fields omitted.
mkVaultLockPolicy ::
  VaultLockPolicy
mkVaultLockPolicy = VaultLockPolicy' {policy = Core.Nothing}

-- | The vault lock policy.
--
-- /Note:/ Consider using 'policy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vlpPolicy :: Lens.Lens' VaultLockPolicy (Core.Maybe Types.String)
vlpPolicy = Lens.field @"policy"
{-# DEPRECATED vlpPolicy "Use generic-lens or generic-optics with 'policy' instead." #-}

instance Core.FromJSON VaultLockPolicy where
  toJSON VaultLockPolicy {..} =
    Core.object (Core.catMaybes [("Policy" Core..=) Core.<$> policy])