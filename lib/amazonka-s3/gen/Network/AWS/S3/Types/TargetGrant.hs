{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.TargetGrant
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.TargetGrant
  ( TargetGrant (..),

    -- * Smart constructor
    mkTargetGrant,

    -- * Lenses
    tgGrantee,
    tgPermission,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.S3.Internal as Types
import qualified Network.AWS.S3.Types.BucketLogsPermission as Types
import qualified Network.AWS.S3.Types.Grantee as Types

-- | Container for granting information.
--
-- /See:/ 'mkTargetGrant' smart constructor.
data TargetGrant = TargetGrant'
  { -- | Container for the person being granted permissions.
    grantee :: Core.Maybe Types.Grantee,
    -- | Logging permissions assigned to the grantee for the bucket.
    permission :: Core.Maybe Types.BucketLogsPermission
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'TargetGrant' value with any optional fields omitted.
mkTargetGrant ::
  TargetGrant
mkTargetGrant =
  TargetGrant' {grantee = Core.Nothing, permission = Core.Nothing}

-- | Container for the person being granted permissions.
--
-- /Note:/ Consider using 'grantee' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tgGrantee :: Lens.Lens' TargetGrant (Core.Maybe Types.Grantee)
tgGrantee = Lens.field @"grantee"
{-# DEPRECATED tgGrantee "Use generic-lens or generic-optics with 'grantee' instead." #-}

-- | Logging permissions assigned to the grantee for the bucket.
--
-- /Note:/ Consider using 'permission' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tgPermission :: Lens.Lens' TargetGrant (Core.Maybe Types.BucketLogsPermission)
tgPermission = Lens.field @"permission"
{-# DEPRECATED tgPermission "Use generic-lens or generic-optics with 'permission' instead." #-}

instance Core.ToXML TargetGrant where
  toXML TargetGrant {..} =
    Core.toXMLNode "Grantee" Core.<$> grantee
      Core.<> Core.toXMLNode "Permission" Core.<$> permission

instance Core.FromXML TargetGrant where
  parseXML x =
    TargetGrant'
      Core.<$> (x Core..@? "Grantee") Core.<*> (x Core..@? "Permission")