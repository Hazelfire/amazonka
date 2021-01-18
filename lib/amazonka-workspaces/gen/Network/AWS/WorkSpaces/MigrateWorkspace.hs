{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.MigrateWorkspace
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Migrates a WorkSpace from one operating system or bundle type to another, while retaining the data on the user volume.
--
-- The migration process recreates the WorkSpace by using a new root volume from the target bundle image and the user volume from the last available snapshot of the original WorkSpace. During migration, the original @D:\Users\%USERNAME%@ user profile folder is renamed to @D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated@ . A new @D:\Users\%USERNAME%\@ folder is generated by the new OS. Certain files in the old user profile are moved to the new user profile.
-- For available migration scenarios, details about what happens during migration, and best practices, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html Migrate a WorkSpace> .
module Network.AWS.WorkSpaces.MigrateWorkspace
  ( -- * Creating a request
    MigrateWorkspace (..),
    mkMigrateWorkspace,

    -- ** Request lenses
    mwSourceWorkspaceId,
    mwBundleId,

    -- * Destructuring the response
    MigrateWorkspaceResponse (..),
    mkMigrateWorkspaceResponse,

    -- ** Response lenses
    mwrrsSourceWorkspaceId,
    mwrrsTargetWorkspaceId,
    mwrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WorkSpaces.Types as Types

-- | /See:/ 'mkMigrateWorkspace' smart constructor.
data MigrateWorkspace = MigrateWorkspace'
  { -- | The identifier of the WorkSpace to migrate from.
    sourceWorkspaceId :: Types.SourceWorkspaceId,
    -- | The identifier of the target bundle type to migrate the WorkSpace to.
    bundleId :: Types.BundleId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'MigrateWorkspace' value with any optional fields omitted.
mkMigrateWorkspace ::
  -- | 'sourceWorkspaceId'
  Types.SourceWorkspaceId ->
  -- | 'bundleId'
  Types.BundleId ->
  MigrateWorkspace
mkMigrateWorkspace sourceWorkspaceId bundleId =
  MigrateWorkspace' {sourceWorkspaceId, bundleId}

-- | The identifier of the WorkSpace to migrate from.
--
-- /Note:/ Consider using 'sourceWorkspaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwSourceWorkspaceId :: Lens.Lens' MigrateWorkspace Types.SourceWorkspaceId
mwSourceWorkspaceId = Lens.field @"sourceWorkspaceId"
{-# DEPRECATED mwSourceWorkspaceId "Use generic-lens or generic-optics with 'sourceWorkspaceId' instead." #-}

-- | The identifier of the target bundle type to migrate the WorkSpace to.
--
-- /Note:/ Consider using 'bundleId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwBundleId :: Lens.Lens' MigrateWorkspace Types.BundleId
mwBundleId = Lens.field @"bundleId"
{-# DEPRECATED mwBundleId "Use generic-lens or generic-optics with 'bundleId' instead." #-}

instance Core.FromJSON MigrateWorkspace where
  toJSON MigrateWorkspace {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("SourceWorkspaceId" Core..= sourceWorkspaceId),
            Core.Just ("BundleId" Core..= bundleId)
          ]
      )

instance Core.AWSRequest MigrateWorkspace where
  type Rs MigrateWorkspace = MigrateWorkspaceResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "WorkspacesService.MigrateWorkspace")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          MigrateWorkspaceResponse'
            Core.<$> (x Core..:? "SourceWorkspaceId")
            Core.<*> (x Core..:? "TargetWorkspaceId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkMigrateWorkspaceResponse' smart constructor.
data MigrateWorkspaceResponse = MigrateWorkspaceResponse'
  { -- | The original identifier of the WorkSpace that is being migrated.
    sourceWorkspaceId :: Core.Maybe Types.SourceWorkspaceId,
    -- | The new identifier of the WorkSpace that is being migrated. If the migration does not succeed, the target WorkSpace ID will not be used, and the WorkSpace will still have the original WorkSpace ID.
    targetWorkspaceId :: Core.Maybe Types.TargetWorkspaceId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'MigrateWorkspaceResponse' value with any optional fields omitted.
mkMigrateWorkspaceResponse ::
  -- | 'responseStatus'
  Core.Int ->
  MigrateWorkspaceResponse
mkMigrateWorkspaceResponse responseStatus =
  MigrateWorkspaceResponse'
    { sourceWorkspaceId = Core.Nothing,
      targetWorkspaceId = Core.Nothing,
      responseStatus
    }

-- | The original identifier of the WorkSpace that is being migrated.
--
-- /Note:/ Consider using 'sourceWorkspaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwrrsSourceWorkspaceId :: Lens.Lens' MigrateWorkspaceResponse (Core.Maybe Types.SourceWorkspaceId)
mwrrsSourceWorkspaceId = Lens.field @"sourceWorkspaceId"
{-# DEPRECATED mwrrsSourceWorkspaceId "Use generic-lens or generic-optics with 'sourceWorkspaceId' instead." #-}

-- | The new identifier of the WorkSpace that is being migrated. If the migration does not succeed, the target WorkSpace ID will not be used, and the WorkSpace will still have the original WorkSpace ID.
--
-- /Note:/ Consider using 'targetWorkspaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwrrsTargetWorkspaceId :: Lens.Lens' MigrateWorkspaceResponse (Core.Maybe Types.TargetWorkspaceId)
mwrrsTargetWorkspaceId = Lens.field @"targetWorkspaceId"
{-# DEPRECATED mwrrsTargetWorkspaceId "Use generic-lens or generic-optics with 'targetWorkspaceId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwrrsResponseStatus :: Lens.Lens' MigrateWorkspaceResponse Core.Int
mwrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED mwrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}