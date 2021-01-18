{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.DeregisterWorkspaceDirectory
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deregisters the specified directory. This operation is asynchronous and returns before the WorkSpace directory is deregistered. If any WorkSpaces are registered to this directory, you must remove them before you can deregister the directory.
module Network.AWS.WorkSpaces.DeregisterWorkspaceDirectory
  ( -- * Creating a request
    DeregisterWorkspaceDirectory (..),
    mkDeregisterWorkspaceDirectory,

    -- ** Request lenses
    dwdDirectoryId,

    -- * Destructuring the response
    DeregisterWorkspaceDirectoryResponse (..),
    mkDeregisterWorkspaceDirectoryResponse,

    -- ** Response lenses
    dwdrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WorkSpaces.Types as Types

-- | /See:/ 'mkDeregisterWorkspaceDirectory' smart constructor.
newtype DeregisterWorkspaceDirectory = DeregisterWorkspaceDirectory'
  { -- | The identifier of the directory. If any WorkSpaces are registered to this directory, you must remove them before you deregister the directory, or you will receive an OperationNotSupportedException error.
    directoryId :: Types.DirectoryId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeregisterWorkspaceDirectory' value with any optional fields omitted.
mkDeregisterWorkspaceDirectory ::
  -- | 'directoryId'
  Types.DirectoryId ->
  DeregisterWorkspaceDirectory
mkDeregisterWorkspaceDirectory directoryId =
  DeregisterWorkspaceDirectory' {directoryId}

-- | The identifier of the directory. If any WorkSpaces are registered to this directory, you must remove them before you deregister the directory, or you will receive an OperationNotSupportedException error.
--
-- /Note:/ Consider using 'directoryId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dwdDirectoryId :: Lens.Lens' DeregisterWorkspaceDirectory Types.DirectoryId
dwdDirectoryId = Lens.field @"directoryId"
{-# DEPRECATED dwdDirectoryId "Use generic-lens or generic-optics with 'directoryId' instead." #-}

instance Core.FromJSON DeregisterWorkspaceDirectory where
  toJSON DeregisterWorkspaceDirectory {..} =
    Core.object
      (Core.catMaybes [Core.Just ("DirectoryId" Core..= directoryId)])

instance Core.AWSRequest DeregisterWorkspaceDirectory where
  type
    Rs DeregisterWorkspaceDirectory =
      DeregisterWorkspaceDirectoryResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "WorkspacesService.DeregisterWorkspaceDirectory")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeregisterWorkspaceDirectoryResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDeregisterWorkspaceDirectoryResponse' smart constructor.
newtype DeregisterWorkspaceDirectoryResponse = DeregisterWorkspaceDirectoryResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeregisterWorkspaceDirectoryResponse' value with any optional fields omitted.
mkDeregisterWorkspaceDirectoryResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeregisterWorkspaceDirectoryResponse
mkDeregisterWorkspaceDirectoryResponse responseStatus =
  DeregisterWorkspaceDirectoryResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dwdrrsResponseStatus :: Lens.Lens' DeregisterWorkspaceDirectoryResponse Core.Int
dwdrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dwdrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}