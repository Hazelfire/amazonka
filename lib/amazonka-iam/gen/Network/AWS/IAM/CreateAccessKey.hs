{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.CreateAccessKey
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new AWS secret access key and corresponding AWS access key ID for the specified user. The default status for new keys is @Active@ .
--
-- If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials. This is true even if the AWS account has no associated users.
-- The number and size of IAM resources in an AWS account are limited. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html IAM and STS Quotas> in the /IAM User Guide/ .
-- /Important:/ To ensure the security of your AWS account, the secret access key is accessible only during key and user creation. You must save the key (for example, in a text file) if you want to be able to access it again. If a secret key is lost, you can delete the access keys for the associated user and then create new keys.
module Network.AWS.IAM.CreateAccessKey
  ( -- * Creating a request
    CreateAccessKey (..),
    mkCreateAccessKey,

    -- ** Request lenses
    cakUserName,

    -- * Destructuring the response
    CreateAccessKeyResponse (..),
    mkCreateAccessKeyResponse,

    -- ** Response lenses
    cakrrsAccessKey,
    cakrrsResponseStatus,
  )
where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateAccessKey' smart constructor.
newtype CreateAccessKey = CreateAccessKey'
  { -- | The name of the IAM user that the new key will belong to.
    --
    -- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
    userName :: Core.Maybe Types.ExistingUserNameType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'CreateAccessKey' value with any optional fields omitted.
mkCreateAccessKey ::
  CreateAccessKey
mkCreateAccessKey = CreateAccessKey' {userName = Core.Nothing}

-- | The name of the IAM user that the new key will belong to.
--
-- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- /Note:/ Consider using 'userName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cakUserName :: Lens.Lens' CreateAccessKey (Core.Maybe Types.ExistingUserNameType)
cakUserName = Lens.field @"userName"
{-# DEPRECATED cakUserName "Use generic-lens or generic-optics with 'userName' instead." #-}

instance Core.AWSRequest CreateAccessKey where
  type Rs CreateAccessKey = CreateAccessKeyResponse
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
            ( Core.pure ("Action", "CreateAccessKey")
                Core.<> (Core.pure ("Version", "2010-05-08"))
                Core.<> (Core.toQueryValue "UserName" Core.<$> userName)
            )
      }
  response =
    Response.receiveXMLWrapper
      "CreateAccessKeyResult"
      ( \s h x ->
          CreateAccessKeyResponse'
            Core.<$> (x Core..@ "AccessKey") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Contains the response to a successful 'CreateAccessKey' request.
--
-- /See:/ 'mkCreateAccessKeyResponse' smart constructor.
data CreateAccessKeyResponse = CreateAccessKeyResponse'
  { -- | A structure with details about the access key.
    accessKey :: Types.AccessKeyInfo,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateAccessKeyResponse' value with any optional fields omitted.
mkCreateAccessKeyResponse ::
  -- | 'accessKey'
  Types.AccessKeyInfo ->
  -- | 'responseStatus'
  Core.Int ->
  CreateAccessKeyResponse
mkCreateAccessKeyResponse accessKey responseStatus =
  CreateAccessKeyResponse' {accessKey, responseStatus}

-- | A structure with details about the access key.
--
-- /Note:/ Consider using 'accessKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cakrrsAccessKey :: Lens.Lens' CreateAccessKeyResponse Types.AccessKeyInfo
cakrrsAccessKey = Lens.field @"accessKey"
{-# DEPRECATED cakrrsAccessKey "Use generic-lens or generic-optics with 'accessKey' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cakrrsResponseStatus :: Lens.Lens' CreateAccessKeyResponse Core.Int
cakrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cakrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}