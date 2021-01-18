{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.GetServiceSetting
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- @ServiceSetting@ is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature.
--
-- Services map a @SettingId@ object to a setting value. AWS services teams define the default value for a @SettingId@ . You can't create a new @SettingId@ , but you can overwrite the default value if you have the @ssm:UpdateServiceSetting@ permission for the setting. Use the 'UpdateServiceSetting' API action to change the default setting. Or use the 'ResetServiceSetting' to change the value back to the original value defined by the AWS service team.
-- Query the current service setting for the account.
module Network.AWS.SSM.GetServiceSetting
  ( -- * Creating a request
    GetServiceSetting (..),
    mkGetServiceSetting,

    -- ** Request lenses
    gssSettingId,

    -- * Destructuring the response
    GetServiceSettingResponse (..),
    mkGetServiceSettingResponse,

    -- ** Response lenses
    gssrrsServiceSetting,
    gssrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | The request body of the GetServiceSetting API action.
--
-- /See:/ 'mkGetServiceSetting' smart constructor.
newtype GetServiceSetting = GetServiceSetting'
  { -- | The ID of the service setting to get. The setting ID can be @/ssm/parameter-store/default-parameter-tier@ , @/ssm/parameter-store/high-throughput-enabled@ , or @/ssm/managed-instance/activation-tier@ .
    settingId :: Types.ServiceSettingId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetServiceSetting' value with any optional fields omitted.
mkGetServiceSetting ::
  -- | 'settingId'
  Types.ServiceSettingId ->
  GetServiceSetting
mkGetServiceSetting settingId = GetServiceSetting' {settingId}

-- | The ID of the service setting to get. The setting ID can be @/ssm/parameter-store/default-parameter-tier@ , @/ssm/parameter-store/high-throughput-enabled@ , or @/ssm/managed-instance/activation-tier@ .
--
-- /Note:/ Consider using 'settingId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gssSettingId :: Lens.Lens' GetServiceSetting Types.ServiceSettingId
gssSettingId = Lens.field @"settingId"
{-# DEPRECATED gssSettingId "Use generic-lens or generic-optics with 'settingId' instead." #-}

instance Core.FromJSON GetServiceSetting where
  toJSON GetServiceSetting {..} =
    Core.object
      (Core.catMaybes [Core.Just ("SettingId" Core..= settingId)])

instance Core.AWSRequest GetServiceSetting where
  type Rs GetServiceSetting = GetServiceSettingResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AmazonSSM.GetServiceSetting")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetServiceSettingResponse'
            Core.<$> (x Core..:? "ServiceSetting")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | The query result body of the GetServiceSetting API action.
--
-- /See:/ 'mkGetServiceSettingResponse' smart constructor.
data GetServiceSettingResponse = GetServiceSettingResponse'
  { -- | The query result of the current service setting.
    serviceSetting :: Core.Maybe Types.ServiceSetting,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetServiceSettingResponse' value with any optional fields omitted.
mkGetServiceSettingResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetServiceSettingResponse
mkGetServiceSettingResponse responseStatus =
  GetServiceSettingResponse'
    { serviceSetting = Core.Nothing,
      responseStatus
    }

-- | The query result of the current service setting.
--
-- /Note:/ Consider using 'serviceSetting' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gssrrsServiceSetting :: Lens.Lens' GetServiceSettingResponse (Core.Maybe Types.ServiceSetting)
gssrrsServiceSetting = Lens.field @"serviceSetting"
{-# DEPRECATED gssrrsServiceSetting "Use generic-lens or generic-optics with 'serviceSetting' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gssrrsResponseStatus :: Lens.Lens' GetServiceSettingResponse Core.Int
gssrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gssrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}