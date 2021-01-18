{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.GetGroupCertificateConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the current configuration for the CA used by the group.
module Network.AWS.Greengrass.GetGroupCertificateConfiguration
  ( -- * Creating a request
    GetGroupCertificateConfiguration (..),
    mkGetGroupCertificateConfiguration,

    -- ** Request lenses
    ggccGroupId,

    -- * Destructuring the response
    GetGroupCertificateConfigurationResponse (..),
    mkGetGroupCertificateConfigurationResponse,

    -- ** Response lenses
    ggccrrsCertificateAuthorityExpiryInMilliseconds,
    ggccrrsCertificateExpiryInMilliseconds,
    ggccrrsGroupId,
    ggccrrsResponseStatus,
  )
where

import qualified Network.AWS.Greengrass.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetGroupCertificateConfiguration' smart constructor.
newtype GetGroupCertificateConfiguration = GetGroupCertificateConfiguration'
  { -- | The ID of the Greengrass group.
    groupId :: Core.Text
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetGroupCertificateConfiguration' value with any optional fields omitted.
mkGetGroupCertificateConfiguration ::
  -- | 'groupId'
  Core.Text ->
  GetGroupCertificateConfiguration
mkGetGroupCertificateConfiguration groupId =
  GetGroupCertificateConfiguration' {groupId}

-- | The ID of the Greengrass group.
--
-- /Note:/ Consider using 'groupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ggccGroupId :: Lens.Lens' GetGroupCertificateConfiguration Core.Text
ggccGroupId = Lens.field @"groupId"
{-# DEPRECATED ggccGroupId "Use generic-lens or generic-optics with 'groupId' instead." #-}

instance Core.AWSRequest GetGroupCertificateConfiguration where
  type
    Rs GetGroupCertificateConfiguration =
      GetGroupCertificateConfigurationResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/greengrass/groups/" Core.<> (Core.toText groupId)
                Core.<> ("/certificateauthorities/configuration/expiry")
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetGroupCertificateConfigurationResponse'
            Core.<$> (x Core..:? "CertificateAuthorityExpiryInMilliseconds")
            Core.<*> (x Core..:? "CertificateExpiryInMilliseconds")
            Core.<*> (x Core..:? "GroupId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetGroupCertificateConfigurationResponse' smart constructor.
data GetGroupCertificateConfigurationResponse = GetGroupCertificateConfigurationResponse'
  { -- | The amount of time remaining before the certificate authority expires, in milliseconds.
    certificateAuthorityExpiryInMilliseconds :: Core.Maybe Core.Text,
    -- | The amount of time remaining before the certificate expires, in milliseconds.
    certificateExpiryInMilliseconds :: Core.Maybe Core.Text,
    -- | The ID of the group certificate configuration.
    groupId :: Core.Maybe Core.Text,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetGroupCertificateConfigurationResponse' value with any optional fields omitted.
mkGetGroupCertificateConfigurationResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetGroupCertificateConfigurationResponse
mkGetGroupCertificateConfigurationResponse responseStatus =
  GetGroupCertificateConfigurationResponse'
    { certificateAuthorityExpiryInMilliseconds =
        Core.Nothing,
      certificateExpiryInMilliseconds = Core.Nothing,
      groupId = Core.Nothing,
      responseStatus
    }

-- | The amount of time remaining before the certificate authority expires, in milliseconds.
--
-- /Note:/ Consider using 'certificateAuthorityExpiryInMilliseconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ggccrrsCertificateAuthorityExpiryInMilliseconds :: Lens.Lens' GetGroupCertificateConfigurationResponse (Core.Maybe Core.Text)
ggccrrsCertificateAuthorityExpiryInMilliseconds = Lens.field @"certificateAuthorityExpiryInMilliseconds"
{-# DEPRECATED ggccrrsCertificateAuthorityExpiryInMilliseconds "Use generic-lens or generic-optics with 'certificateAuthorityExpiryInMilliseconds' instead." #-}

-- | The amount of time remaining before the certificate expires, in milliseconds.
--
-- /Note:/ Consider using 'certificateExpiryInMilliseconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ggccrrsCertificateExpiryInMilliseconds :: Lens.Lens' GetGroupCertificateConfigurationResponse (Core.Maybe Core.Text)
ggccrrsCertificateExpiryInMilliseconds = Lens.field @"certificateExpiryInMilliseconds"
{-# DEPRECATED ggccrrsCertificateExpiryInMilliseconds "Use generic-lens or generic-optics with 'certificateExpiryInMilliseconds' instead." #-}

-- | The ID of the group certificate configuration.
--
-- /Note:/ Consider using 'groupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ggccrrsGroupId :: Lens.Lens' GetGroupCertificateConfigurationResponse (Core.Maybe Core.Text)
ggccrrsGroupId = Lens.field @"groupId"
{-# DEPRECATED ggccrrsGroupId "Use generic-lens or generic-optics with 'groupId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ggccrrsResponseStatus :: Lens.Lens' GetGroupCertificateConfigurationResponse Core.Int
ggccrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ggccrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}