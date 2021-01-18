{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.DeleteFileSystem
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a file system, permanently severing access to its contents. Upon return, the file system no longer exists and you can't access any contents of the deleted file system.
--
-- You can't delete a file system that is in use. That is, if the file system has any mount targets, you must first delete them. For more information, see 'DescribeMountTargets' and 'DeleteMountTarget' .
-- This operation requires permissions for the @elasticfilesystem:DeleteFileSystem@ action.
module Network.AWS.EFS.DeleteFileSystem
  ( -- * Creating a request
    DeleteFileSystem (..),
    mkDeleteFileSystem,

    -- ** Request lenses
    dfsfFileSystemId,

    -- * Destructuring the response
    DeleteFileSystemResponse (..),
    mkDeleteFileSystemResponse,
  )
where

import qualified Network.AWS.EFS.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'mkDeleteFileSystem' smart constructor.
newtype DeleteFileSystem = DeleteFileSystem'
  { -- | The ID of the file system you want to delete.
    fileSystemId :: Types.FileSystemId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteFileSystem' value with any optional fields omitted.
mkDeleteFileSystem ::
  -- | 'fileSystemId'
  Types.FileSystemId ->
  DeleteFileSystem
mkDeleteFileSystem fileSystemId = DeleteFileSystem' {fileSystemId}

-- | The ID of the file system you want to delete.
--
-- /Note:/ Consider using 'fileSystemId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsfFileSystemId :: Lens.Lens' DeleteFileSystem Types.FileSystemId
dfsfFileSystemId = Lens.field @"fileSystemId"
{-# DEPRECATED dfsfFileSystemId "Use generic-lens or generic-optics with 'fileSystemId' instead." #-}

instance Core.AWSRequest DeleteFileSystem where
  type Rs DeleteFileSystem = DeleteFileSystemResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.DELETE,
        Core._rqPath =
          Core.rawPath
            ("/2015-02-01/file-systems/" Core.<> (Core.toText fileSystemId)),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response = Response.receiveNull DeleteFileSystemResponse'

-- | /See:/ 'mkDeleteFileSystemResponse' smart constructor.
data DeleteFileSystemResponse = DeleteFileSystemResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteFileSystemResponse' value with any optional fields omitted.
mkDeleteFileSystemResponse ::
  DeleteFileSystemResponse
mkDeleteFileSystemResponse = DeleteFileSystemResponse'