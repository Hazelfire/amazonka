{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.GetDataCatalogEncryptionSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the security configuration for a specified catalog.
module Network.AWS.Glue.GetDataCatalogEncryptionSettings
  ( -- * Creating a request
    GetDataCatalogEncryptionSettings (..),
    mkGetDataCatalogEncryptionSettings,

    -- ** Request lenses
    gdcesCatalogId,

    -- * Destructuring the response
    GetDataCatalogEncryptionSettingsResponse (..),
    mkGetDataCatalogEncryptionSettingsResponse,

    -- ** Response lenses
    gdcesrrsDataCatalogEncryptionSettings,
    gdcesrrsResponseStatus,
  )
where

import qualified Network.AWS.Glue.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetDataCatalogEncryptionSettings' smart constructor.
newtype GetDataCatalogEncryptionSettings = GetDataCatalogEncryptionSettings'
  { -- | The ID of the Data Catalog to retrieve the security configuration for. If none is provided, the AWS account ID is used by default.
    catalogId :: Core.Maybe Types.CatalogIdString
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetDataCatalogEncryptionSettings' value with any optional fields omitted.
mkGetDataCatalogEncryptionSettings ::
  GetDataCatalogEncryptionSettings
mkGetDataCatalogEncryptionSettings =
  GetDataCatalogEncryptionSettings' {catalogId = Core.Nothing}

-- | The ID of the Data Catalog to retrieve the security configuration for. If none is provided, the AWS account ID is used by default.
--
-- /Note:/ Consider using 'catalogId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gdcesCatalogId :: Lens.Lens' GetDataCatalogEncryptionSettings (Core.Maybe Types.CatalogIdString)
gdcesCatalogId = Lens.field @"catalogId"
{-# DEPRECATED gdcesCatalogId "Use generic-lens or generic-optics with 'catalogId' instead." #-}

instance Core.FromJSON GetDataCatalogEncryptionSettings where
  toJSON GetDataCatalogEncryptionSettings {..} =
    Core.object
      (Core.catMaybes [("CatalogId" Core..=) Core.<$> catalogId])

instance Core.AWSRequest GetDataCatalogEncryptionSettings where
  type
    Rs GetDataCatalogEncryptionSettings =
      GetDataCatalogEncryptionSettingsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AWSGlue.GetDataCatalogEncryptionSettings")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDataCatalogEncryptionSettingsResponse'
            Core.<$> (x Core..:? "DataCatalogEncryptionSettings")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetDataCatalogEncryptionSettingsResponse' smart constructor.
data GetDataCatalogEncryptionSettingsResponse = GetDataCatalogEncryptionSettingsResponse'
  { -- | The requested security configuration.
    dataCatalogEncryptionSettings :: Core.Maybe Types.DataCatalogEncryptionSettings,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetDataCatalogEncryptionSettingsResponse' value with any optional fields omitted.
mkGetDataCatalogEncryptionSettingsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetDataCatalogEncryptionSettingsResponse
mkGetDataCatalogEncryptionSettingsResponse responseStatus =
  GetDataCatalogEncryptionSettingsResponse'
    { dataCatalogEncryptionSettings =
        Core.Nothing,
      responseStatus
    }

-- | The requested security configuration.
--
-- /Note:/ Consider using 'dataCatalogEncryptionSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gdcesrrsDataCatalogEncryptionSettings :: Lens.Lens' GetDataCatalogEncryptionSettingsResponse (Core.Maybe Types.DataCatalogEncryptionSettings)
gdcesrrsDataCatalogEncryptionSettings = Lens.field @"dataCatalogEncryptionSettings"
{-# DEPRECATED gdcesrrsDataCatalogEncryptionSettings "Use generic-lens or generic-optics with 'dataCatalogEncryptionSettings' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gdcesrrsResponseStatus :: Lens.Lens' GetDataCatalogEncryptionSettingsResponse Core.Int
gdcesrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gdcesrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}