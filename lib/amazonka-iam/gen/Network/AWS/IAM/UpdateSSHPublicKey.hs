{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.UpdateSSHPublicKey
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the status of an IAM user's SSH public key to active or inactive. SSH public keys that are inactive cannot be used for authentication. This operation can be used to disable a user's SSH public key as part of a key rotation work flow.
--
-- The SSH public key affected by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html Set up AWS CodeCommit for SSH Connections> in the /AWS CodeCommit User Guide/ .
module Network.AWS.IAM.UpdateSSHPublicKey
  ( -- * Creating a request
    UpdateSSHPublicKey (..),
    mkUpdateSSHPublicKey,

    -- ** Request lenses
    usshpkUserName,
    usshpkSSHPublicKeyId,
    usshpkStatus,

    -- * Destructuring the response
    UpdateSSHPublicKeyResponse (..),
    mkUpdateSSHPublicKeyResponse,
  )
where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateSSHPublicKey' smart constructor.
data UpdateSSHPublicKey = UpdateSSHPublicKey'
  { -- | The name of the IAM user associated with the SSH public key.
    --
    -- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
    userName :: Types.UserName,
    -- | The unique identifier for the SSH public key.
    --
    -- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that can consist of any upper or lowercased letter or digit.
    sSHPublicKeyId :: Types.PublicKeyIdType,
    -- | The status to assign to the SSH public key. @Active@ means that the key can be used for authentication with an AWS CodeCommit repository. @Inactive@ means that the key cannot be used.
    status :: Types.StatusType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateSSHPublicKey' value with any optional fields omitted.
mkUpdateSSHPublicKey ::
  -- | 'userName'
  Types.UserName ->
  -- | 'sSHPublicKeyId'
  Types.PublicKeyIdType ->
  -- | 'status'
  Types.StatusType ->
  UpdateSSHPublicKey
mkUpdateSSHPublicKey userName sSHPublicKeyId status =
  UpdateSSHPublicKey' {userName, sSHPublicKeyId, status}

-- | The name of the IAM user associated with the SSH public key.
--
-- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- /Note:/ Consider using 'userName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usshpkUserName :: Lens.Lens' UpdateSSHPublicKey Types.UserName
usshpkUserName = Lens.field @"userName"
{-# DEPRECATED usshpkUserName "Use generic-lens or generic-optics with 'userName' instead." #-}

-- | The unique identifier for the SSH public key.
--
-- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that can consist of any upper or lowercased letter or digit.
--
-- /Note:/ Consider using 'sSHPublicKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usshpkSSHPublicKeyId :: Lens.Lens' UpdateSSHPublicKey Types.PublicKeyIdType
usshpkSSHPublicKeyId = Lens.field @"sSHPublicKeyId"
{-# DEPRECATED usshpkSSHPublicKeyId "Use generic-lens or generic-optics with 'sSHPublicKeyId' instead." #-}

-- | The status to assign to the SSH public key. @Active@ means that the key can be used for authentication with an AWS CodeCommit repository. @Inactive@ means that the key cannot be used.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usshpkStatus :: Lens.Lens' UpdateSSHPublicKey Types.StatusType
usshpkStatus = Lens.field @"status"
{-# DEPRECATED usshpkStatus "Use generic-lens or generic-optics with 'status' instead." #-}

instance Core.AWSRequest UpdateSSHPublicKey where
  type Rs UpdateSSHPublicKey = UpdateSSHPublicKeyResponse
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
            ( Core.pure ("Action", "UpdateSSHPublicKey")
                Core.<> (Core.pure ("Version", "2010-05-08"))
                Core.<> (Core.toQueryValue "UserName" userName)
                Core.<> (Core.toQueryValue "SSHPublicKeyId" sSHPublicKeyId)
                Core.<> (Core.toQueryValue "Status" status)
            )
      }
  response = Response.receiveNull UpdateSSHPublicKeyResponse'

-- | /See:/ 'mkUpdateSSHPublicKeyResponse' smart constructor.
data UpdateSSHPublicKeyResponse = UpdateSSHPublicKeyResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateSSHPublicKeyResponse' value with any optional fields omitted.
mkUpdateSSHPublicKeyResponse ::
  UpdateSSHPublicKeyResponse
mkUpdateSSHPublicKeyResponse = UpdateSSHPublicKeyResponse'