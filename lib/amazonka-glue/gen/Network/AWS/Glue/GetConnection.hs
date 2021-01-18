{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.GetConnection
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a connection definition from the Data Catalog.
module Network.AWS.Glue.GetConnection
  ( -- * Creating a request
    GetConnection (..),
    mkGetConnection,

    -- ** Request lenses
    gName,
    gCatalogId,
    gHidePassword,

    -- * Destructuring the response
    GetConnectionResponse (..),
    mkGetConnectionResponse,

    -- ** Response lenses
    gcrfrsConnection,
    gcrfrsResponseStatus,
  )
where

import qualified Network.AWS.Glue.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetConnection' smart constructor.
data GetConnection = GetConnection'
  { -- | The name of the connection definition to retrieve.
    name :: Types.NameString,
    -- | The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default.
    catalogId :: Core.Maybe Types.CatalogIdString,
    -- | Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.
    hidePassword :: Core.Maybe Core.Bool
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetConnection' value with any optional fields omitted.
mkGetConnection ::
  -- | 'name'
  Types.NameString ->
  GetConnection
mkGetConnection name =
  GetConnection'
    { name,
      catalogId = Core.Nothing,
      hidePassword = Core.Nothing
    }

-- | The name of the connection definition to retrieve.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gName :: Lens.Lens' GetConnection Types.NameString
gName = Lens.field @"name"
{-# DEPRECATED gName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default.
--
-- /Note:/ Consider using 'catalogId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gCatalogId :: Lens.Lens' GetConnection (Core.Maybe Types.CatalogIdString)
gCatalogId = Lens.field @"catalogId"
{-# DEPRECATED gCatalogId "Use generic-lens or generic-optics with 'catalogId' instead." #-}

-- | Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.
--
-- /Note:/ Consider using 'hidePassword' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gHidePassword :: Lens.Lens' GetConnection (Core.Maybe Core.Bool)
gHidePassword = Lens.field @"hidePassword"
{-# DEPRECATED gHidePassword "Use generic-lens or generic-optics with 'hidePassword' instead." #-}

instance Core.FromJSON GetConnection where
  toJSON GetConnection {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Name" Core..= name),
            ("CatalogId" Core..=) Core.<$> catalogId,
            ("HidePassword" Core..=) Core.<$> hidePassword
          ]
      )

instance Core.AWSRequest GetConnection where
  type Rs GetConnection = GetConnectionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AWSGlue.GetConnection")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetConnectionResponse'
            Core.<$> (x Core..:? "Connection") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetConnectionResponse' smart constructor.
data GetConnectionResponse = GetConnectionResponse'
  { -- | The requested connection definition.
    connection :: Core.Maybe Types.Connection,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetConnectionResponse' value with any optional fields omitted.
mkGetConnectionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetConnectionResponse
mkGetConnectionResponse responseStatus =
  GetConnectionResponse' {connection = Core.Nothing, responseStatus}

-- | The requested connection definition.
--
-- /Note:/ Consider using 'connection' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcrfrsConnection :: Lens.Lens' GetConnectionResponse (Core.Maybe Types.Connection)
gcrfrsConnection = Lens.field @"connection"
{-# DEPRECATED gcrfrsConnection "Use generic-lens or generic-optics with 'connection' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcrfrsResponseStatus :: Lens.Lens' GetConnectionResponse Core.Int
gcrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gcrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}