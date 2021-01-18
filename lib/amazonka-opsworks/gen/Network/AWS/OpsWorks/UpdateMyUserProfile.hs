{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.UpdateMyUserProfile
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user's SSH public key.
--
-- __Required Permissions__ : To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.UpdateMyUserProfile
  ( -- * Creating a request
    UpdateMyUserProfile (..),
    mkUpdateMyUserProfile,

    -- ** Request lenses
    umupSshPublicKey,

    -- * Destructuring the response
    UpdateMyUserProfileResponse (..),
    mkUpdateMyUserProfileResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.OpsWorks.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateMyUserProfile' smart constructor.
newtype UpdateMyUserProfile = UpdateMyUserProfile'
  { -- | The user's SSH public key.
    sshPublicKey :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateMyUserProfile' value with any optional fields omitted.
mkUpdateMyUserProfile ::
  UpdateMyUserProfile
mkUpdateMyUserProfile =
  UpdateMyUserProfile' {sshPublicKey = Core.Nothing}

-- | The user's SSH public key.
--
-- /Note:/ Consider using 'sshPublicKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
umupSshPublicKey :: Lens.Lens' UpdateMyUserProfile (Core.Maybe Types.String)
umupSshPublicKey = Lens.field @"sshPublicKey"
{-# DEPRECATED umupSshPublicKey "Use generic-lens or generic-optics with 'sshPublicKey' instead." #-}

instance Core.FromJSON UpdateMyUserProfile where
  toJSON UpdateMyUserProfile {..} =
    Core.object
      (Core.catMaybes [("SshPublicKey" Core..=) Core.<$> sshPublicKey])

instance Core.AWSRequest UpdateMyUserProfile where
  type Rs UpdateMyUserProfile = UpdateMyUserProfileResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "OpsWorks_20130218.UpdateMyUserProfile")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull UpdateMyUserProfileResponse'

-- | /See:/ 'mkUpdateMyUserProfileResponse' smart constructor.
data UpdateMyUserProfileResponse = UpdateMyUserProfileResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateMyUserProfileResponse' value with any optional fields omitted.
mkUpdateMyUserProfileResponse ::
  UpdateMyUserProfileResponse
mkUpdateMyUserProfileResponse = UpdateMyUserProfileResponse'