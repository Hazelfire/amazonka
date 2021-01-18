{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.GetVaultNotifications
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation retrieves the @notification-configuration@ subresource of the specified vault.
--
-- For information about setting a notification configuration on a vault, see 'SetVaultNotifications' . If a notification configuration for a vault is not set, the operation returns a @404 Not Found@ error. For more information about vault notifications, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html Configuring Vault Notifications in Amazon S3 Glacier> .
-- An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)> .
-- For conceptual information and underlying REST API, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html Configuring Vault Notifications in Amazon S3 Glacier> and <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html Get Vault Notification Configuration > in the /Amazon Glacier Developer Guide/ .
module Network.AWS.Glacier.GetVaultNotifications
  ( -- * Creating a request
    GetVaultNotifications (..),
    mkGetVaultNotifications,

    -- ** Request lenses
    gvnAccountId,
    gvnVaultName,

    -- * Destructuring the response
    GetVaultNotificationsResponse (..),
    mkGetVaultNotificationsResponse,

    -- ** Response lenses
    gvnrrsVaultNotificationConfig,
    gvnrrsResponseStatus,
  )
where

import qualified Network.AWS.Glacier.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Provides options for retrieving the notification configuration set on an Amazon Glacier vault.
--
-- /See:/ 'mkGetVaultNotifications' smart constructor.
data GetVaultNotifications = GetVaultNotifications'
  { -- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
    accountId :: Types.String,
    -- | The name of the vault.
    vaultName :: Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetVaultNotifications' value with any optional fields omitted.
mkGetVaultNotifications ::
  -- | 'accountId'
  Types.String ->
  -- | 'vaultName'
  Types.String ->
  GetVaultNotifications
mkGetVaultNotifications accountId vaultName =
  GetVaultNotifications' {accountId, vaultName}

-- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
--
-- /Note:/ Consider using 'accountId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvnAccountId :: Lens.Lens' GetVaultNotifications Types.String
gvnAccountId = Lens.field @"accountId"
{-# DEPRECATED gvnAccountId "Use generic-lens or generic-optics with 'accountId' instead." #-}

-- | The name of the vault.
--
-- /Note:/ Consider using 'vaultName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvnVaultName :: Lens.Lens' GetVaultNotifications Types.String
gvnVaultName = Lens.field @"vaultName"
{-# DEPRECATED gvnVaultName "Use generic-lens or generic-optics with 'vaultName' instead." #-}

instance Core.AWSRequest GetVaultNotifications where
  type Rs GetVaultNotifications = GetVaultNotificationsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/" Core.<> (Core.toText accountId) Core.<> ("/vaults/")
                Core.<> (Core.toText vaultName)
                Core.<> ("/notification-configuration")
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVaultNotificationsResponse'
            Core.<$> (Core.eitherParseJSON x) Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Contains the Amazon S3 Glacier response to your request.
--
-- /See:/ 'mkGetVaultNotificationsResponse' smart constructor.
data GetVaultNotificationsResponse = GetVaultNotificationsResponse'
  { -- | Returns the notification configuration set on the vault.
    vaultNotificationConfig :: Core.Maybe Types.VaultNotificationConfig,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetVaultNotificationsResponse' value with any optional fields omitted.
mkGetVaultNotificationsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetVaultNotificationsResponse
mkGetVaultNotificationsResponse responseStatus =
  GetVaultNotificationsResponse'
    { vaultNotificationConfig =
        Core.Nothing,
      responseStatus
    }

-- | Returns the notification configuration set on the vault.
--
-- /Note:/ Consider using 'vaultNotificationConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvnrrsVaultNotificationConfig :: Lens.Lens' GetVaultNotificationsResponse (Core.Maybe Types.VaultNotificationConfig)
gvnrrsVaultNotificationConfig = Lens.field @"vaultNotificationConfig"
{-# DEPRECATED gvnrrsVaultNotificationConfig "Use generic-lens or generic-optics with 'vaultNotificationConfig' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvnrrsResponseStatus :: Lens.Lens' GetVaultNotificationsResponse Core.Int
gvnrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gvnrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}