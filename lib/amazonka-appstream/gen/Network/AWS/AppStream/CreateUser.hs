{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.CreateUser
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new user in the user pool.
module Network.AWS.AppStream.CreateUser
  ( -- * Creating a request
    CreateUser (..),
    mkCreateUser,

    -- ** Request lenses
    cuUserName,
    cuAuthenticationType,
    cuFirstName,
    cuLastName,
    cuMessageAction,

    -- * Destructuring the response
    CreateUserResponse (..),
    mkCreateUserResponse,

    -- ** Response lenses
    currsResponseStatus,
  )
where

import qualified Network.AWS.AppStream.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateUser' smart constructor.
data CreateUser = CreateUser'
  { -- | The email address of the user.
    userName :: Types.Username,
    -- | The authentication type for the user. You must specify USERPOOL.
    authenticationType :: Types.AuthenticationType,
    -- | The first name, or given name, of the user.
    firstName :: Core.Maybe Types.FirstName,
    -- | The last name, or surname, of the user.
    lastName :: Core.Maybe Types.LastName,
    -- | The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent.
    messageAction :: Core.Maybe Types.MessageAction
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateUser' value with any optional fields omitted.
mkCreateUser ::
  -- | 'userName'
  Types.Username ->
  -- | 'authenticationType'
  Types.AuthenticationType ->
  CreateUser
mkCreateUser userName authenticationType =
  CreateUser'
    { userName,
      authenticationType,
      firstName = Core.Nothing,
      lastName = Core.Nothing,
      messageAction = Core.Nothing
    }

-- | The email address of the user.
--
-- /Note:/ Consider using 'userName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cuUserName :: Lens.Lens' CreateUser Types.Username
cuUserName = Lens.field @"userName"
{-# DEPRECATED cuUserName "Use generic-lens or generic-optics with 'userName' instead." #-}

-- | The authentication type for the user. You must specify USERPOOL.
--
-- /Note:/ Consider using 'authenticationType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cuAuthenticationType :: Lens.Lens' CreateUser Types.AuthenticationType
cuAuthenticationType = Lens.field @"authenticationType"
{-# DEPRECATED cuAuthenticationType "Use generic-lens or generic-optics with 'authenticationType' instead." #-}

-- | The first name, or given name, of the user.
--
-- /Note:/ Consider using 'firstName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cuFirstName :: Lens.Lens' CreateUser (Core.Maybe Types.FirstName)
cuFirstName = Lens.field @"firstName"
{-# DEPRECATED cuFirstName "Use generic-lens or generic-optics with 'firstName' instead." #-}

-- | The last name, or surname, of the user.
--
-- /Note:/ Consider using 'lastName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cuLastName :: Lens.Lens' CreateUser (Core.Maybe Types.LastName)
cuLastName = Lens.field @"lastName"
{-# DEPRECATED cuLastName "Use generic-lens or generic-optics with 'lastName' instead." #-}

-- | The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent.
--
-- /Note:/ Consider using 'messageAction' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cuMessageAction :: Lens.Lens' CreateUser (Core.Maybe Types.MessageAction)
cuMessageAction = Lens.field @"messageAction"
{-# DEPRECATED cuMessageAction "Use generic-lens or generic-optics with 'messageAction' instead." #-}

instance Core.FromJSON CreateUser where
  toJSON CreateUser {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("UserName" Core..= userName),
            Core.Just ("AuthenticationType" Core..= authenticationType),
            ("FirstName" Core..=) Core.<$> firstName,
            ("LastName" Core..=) Core.<$> lastName,
            ("MessageAction" Core..=) Core.<$> messageAction
          ]
      )

instance Core.AWSRequest CreateUser where
  type Rs CreateUser = CreateUserResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "PhotonAdminProxyService.CreateUser")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateUserResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateUserResponse' smart constructor.
newtype CreateUserResponse = CreateUserResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'CreateUserResponse' value with any optional fields omitted.
mkCreateUserResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateUserResponse
mkCreateUserResponse responseStatus =
  CreateUserResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
currsResponseStatus :: Lens.Lens' CreateUserResponse Core.Int
currsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED currsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}