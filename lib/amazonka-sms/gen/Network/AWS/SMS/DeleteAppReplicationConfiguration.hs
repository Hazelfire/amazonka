{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.DeleteAppReplicationConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the replication configuration for the specified application.
module Network.AWS.SMS.DeleteAppReplicationConfiguration
  ( -- * Creating a request
    DeleteAppReplicationConfiguration (..),
    mkDeleteAppReplicationConfiguration,

    -- ** Request lenses
    darcAppId,

    -- * Destructuring the response
    DeleteAppReplicationConfigurationResponse (..),
    mkDeleteAppReplicationConfigurationResponse,

    -- ** Response lenses
    darcrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SMS.Types as Types

-- | /See:/ 'mkDeleteAppReplicationConfiguration' smart constructor.
newtype DeleteAppReplicationConfiguration = DeleteAppReplicationConfiguration'
  { -- | The ID of the application.
    appId :: Core.Maybe Types.AppId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAppReplicationConfiguration' value with any optional fields omitted.
mkDeleteAppReplicationConfiguration ::
  DeleteAppReplicationConfiguration
mkDeleteAppReplicationConfiguration =
  DeleteAppReplicationConfiguration' {appId = Core.Nothing}

-- | The ID of the application.
--
-- /Note:/ Consider using 'appId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darcAppId :: Lens.Lens' DeleteAppReplicationConfiguration (Core.Maybe Types.AppId)
darcAppId = Lens.field @"appId"
{-# DEPRECATED darcAppId "Use generic-lens or generic-optics with 'appId' instead." #-}

instance Core.FromJSON DeleteAppReplicationConfiguration where
  toJSON DeleteAppReplicationConfiguration {..} =
    Core.object (Core.catMaybes [("appId" Core..=) Core.<$> appId])

instance Core.AWSRequest DeleteAppReplicationConfiguration where
  type
    Rs DeleteAppReplicationConfiguration =
      DeleteAppReplicationConfigurationResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSServerMigrationService_V2016_10_24.DeleteAppReplicationConfiguration"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteAppReplicationConfigurationResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDeleteAppReplicationConfigurationResponse' smart constructor.
newtype DeleteAppReplicationConfigurationResponse = DeleteAppReplicationConfigurationResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAppReplicationConfigurationResponse' value with any optional fields omitted.
mkDeleteAppReplicationConfigurationResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeleteAppReplicationConfigurationResponse
mkDeleteAppReplicationConfigurationResponse responseStatus =
  DeleteAppReplicationConfigurationResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darcrrsResponseStatus :: Lens.Lens' DeleteAppReplicationConfigurationResponse Core.Int
darcrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED darcrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}