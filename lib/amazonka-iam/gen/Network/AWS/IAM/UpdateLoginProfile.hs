{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.UpdateLoginProfile
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the password for the specified IAM user.
--
-- IAM users can change their own passwords by calling 'ChangePassword' . For more information about modifying passwords, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html Managing Passwords> in the /IAM User Guide/ .
module Network.AWS.IAM.UpdateLoginProfile
  ( -- * Creating a request
    UpdateLoginProfile (..),
    mkUpdateLoginProfile,

    -- ** Request lenses
    ulpUserName,
    ulpPassword,
    ulpPasswordResetRequired,

    -- * Destructuring the response
    UpdateLoginProfileResponse (..),
    mkUpdateLoginProfileResponse,
  )
where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateLoginProfile' smart constructor.
data UpdateLoginProfile = UpdateLoginProfile'
  { -- | The name of the user whose password you want to update.
    --
    -- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
    userName :: Types.UserName,
    -- | The new password for the specified IAM user.
    --
    -- The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:
    --
    --     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range
    --
    --
    --     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )
    --
    --
    --     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
    --
    --
    -- However, the format can be further restricted by the account administrator by setting a password policy on the AWS account. For more information, see 'UpdateAccountPasswordPolicy' .
    password :: Core.Maybe Types.PasswordType,
    -- | Allows this new password to be used only once by requiring the specified IAM user to set a new password on next sign-in.
    passwordResetRequired :: Core.Maybe Core.Bool
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateLoginProfile' value with any optional fields omitted.
mkUpdateLoginProfile ::
  -- | 'userName'
  Types.UserName ->
  UpdateLoginProfile
mkUpdateLoginProfile userName =
  UpdateLoginProfile'
    { userName,
      password = Core.Nothing,
      passwordResetRequired = Core.Nothing
    }

-- | The name of the user whose password you want to update.
--
-- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- /Note:/ Consider using 'userName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulpUserName :: Lens.Lens' UpdateLoginProfile Types.UserName
ulpUserName = Lens.field @"userName"
{-# DEPRECATED ulpUserName "Use generic-lens or generic-optics with 'userName' instead." #-}

-- | The new password for the specified IAM user.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:
--
--     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range
--
--
--     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )
--
--
--     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
--
--
-- However, the format can be further restricted by the account administrator by setting a password policy on the AWS account. For more information, see 'UpdateAccountPasswordPolicy' .
--
-- /Note:/ Consider using 'password' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulpPassword :: Lens.Lens' UpdateLoginProfile (Core.Maybe Types.PasswordType)
ulpPassword = Lens.field @"password"
{-# DEPRECATED ulpPassword "Use generic-lens or generic-optics with 'password' instead." #-}

-- | Allows this new password to be used only once by requiring the specified IAM user to set a new password on next sign-in.
--
-- /Note:/ Consider using 'passwordResetRequired' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ulpPasswordResetRequired :: Lens.Lens' UpdateLoginProfile (Core.Maybe Core.Bool)
ulpPasswordResetRequired = Lens.field @"passwordResetRequired"
{-# DEPRECATED ulpPasswordResetRequired "Use generic-lens or generic-optics with 'passwordResetRequired' instead." #-}

instance Core.AWSRequest UpdateLoginProfile where
  type Rs UpdateLoginProfile = UpdateLoginProfileResponse
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
            ( Core.pure ("Action", "UpdateLoginProfile")
                Core.<> (Core.pure ("Version", "2010-05-08"))
                Core.<> (Core.toQueryValue "UserName" userName)
                Core.<> (Core.toQueryValue "Password" Core.<$> password)
                Core.<> ( Core.toQueryValue "PasswordResetRequired"
                            Core.<$> passwordResetRequired
                        )
            )
      }
  response = Response.receiveNull UpdateLoginProfileResponse'

-- | /See:/ 'mkUpdateLoginProfileResponse' smart constructor.
data UpdateLoginProfileResponse = UpdateLoginProfileResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateLoginProfileResponse' value with any optional fields omitted.
mkUpdateLoginProfileResponse ::
  UpdateLoginProfileResponse
mkUpdateLoginProfileResponse = UpdateLoginProfileResponse'