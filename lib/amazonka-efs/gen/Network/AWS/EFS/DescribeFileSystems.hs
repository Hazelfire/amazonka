{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.DescribeFileSystems
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description of a specific Amazon EFS file system if either the file system @CreationToken@ or the @FileSystemId@ is provided. Otherwise, it returns descriptions of all file systems owned by the caller's AWS account in the AWS Region of the endpoint that you're calling.
--
-- When retrieving all file system descriptions, you can optionally specify the @MaxItems@ parameter to limit the number of descriptions in a response. Currently, this number is automatically set to 10. If more file system descriptions remain, Amazon EFS returns a @NextMarker@ , an opaque token, in the response. In this case, you should send a subsequent request with the @Marker@ request parameter set to the value of @NextMarker@ .
-- To retrieve a list of your file system descriptions, this operation is used in an iterative process, where @DescribeFileSystems@ is called first without the @Marker@ and then the operation continues to call it with the @Marker@ parameter set to the value of the @NextMarker@ from the previous response until the response has no @NextMarker@ .
-- The order of file systems returned in the response of one @DescribeFileSystems@ call and the order of file systems returned across the responses of a multi-call iteration is unspecified.
-- This operation requires permissions for the @elasticfilesystem:DescribeFileSystems@ action.
--
-- This operation returns paginated results.
module Network.AWS.EFS.DescribeFileSystems
  ( -- * Creating a request
    DescribeFileSystems (..),
    mkDescribeFileSystems,

    -- ** Request lenses
    dfsCreationToken,
    dfsFileSystemId,
    dfsMarker,
    dfsMaxItems,

    -- * Destructuring the response
    DescribeFileSystemsResponse (..),
    mkDescribeFileSystemsResponse,

    -- ** Response lenses
    dfsrrsFileSystems,
    dfsrrsMarker,
    dfsrrsNextMarker,
    dfsrrsResponseStatus,
  )
where

import qualified Network.AWS.EFS.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'mkDescribeFileSystems' smart constructor.
data DescribeFileSystems = DescribeFileSystems'
  { -- | (Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.
    creationToken :: Core.Maybe Types.CreationToken,
    -- | (Optional) ID of the file system whose description you want to retrieve (String).
    fileSystemId :: Core.Maybe Types.FileSystemId,
    -- | (Optional) Opaque pagination token returned from a previous @DescribeFileSystems@ operation (String). If present, specifies to continue the list from where the returning call had left off.
    marker :: Core.Maybe Types.Marker,
    -- | (Optional) Specifies the maximum number of file systems to return in the response (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems.
    maxItems :: Core.Maybe Core.Natural
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFileSystems' value with any optional fields omitted.
mkDescribeFileSystems ::
  DescribeFileSystems
mkDescribeFileSystems =
  DescribeFileSystems'
    { creationToken = Core.Nothing,
      fileSystemId = Core.Nothing,
      marker = Core.Nothing,
      maxItems = Core.Nothing
    }

-- | (Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.
--
-- /Note:/ Consider using 'creationToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsCreationToken :: Lens.Lens' DescribeFileSystems (Core.Maybe Types.CreationToken)
dfsCreationToken = Lens.field @"creationToken"
{-# DEPRECATED dfsCreationToken "Use generic-lens or generic-optics with 'creationToken' instead." #-}

-- | (Optional) ID of the file system whose description you want to retrieve (String).
--
-- /Note:/ Consider using 'fileSystemId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsFileSystemId :: Lens.Lens' DescribeFileSystems (Core.Maybe Types.FileSystemId)
dfsFileSystemId = Lens.field @"fileSystemId"
{-# DEPRECATED dfsFileSystemId "Use generic-lens or generic-optics with 'fileSystemId' instead." #-}

-- | (Optional) Opaque pagination token returned from a previous @DescribeFileSystems@ operation (String). If present, specifies to continue the list from where the returning call had left off.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsMarker :: Lens.Lens' DescribeFileSystems (Core.Maybe Types.Marker)
dfsMarker = Lens.field @"marker"
{-# DEPRECATED dfsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | (Optional) Specifies the maximum number of file systems to return in the response (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems.
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsMaxItems :: Lens.Lens' DescribeFileSystems (Core.Maybe Core.Natural)
dfsMaxItems = Lens.field @"maxItems"
{-# DEPRECATED dfsMaxItems "Use generic-lens or generic-optics with 'maxItems' instead." #-}

instance Core.AWSRequest DescribeFileSystems where
  type Rs DescribeFileSystems = DescribeFileSystemsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath = Core.rawPath "/2015-02-01/file-systems",
        Core._rqQuery =
          Core.toQueryValue "CreationToken" Core.<$> creationToken
            Core.<> (Core.toQueryValue "FileSystemId" Core.<$> fileSystemId)
            Core.<> (Core.toQueryValue "Marker" Core.<$> marker)
            Core.<> (Core.toQueryValue "MaxItems" Core.<$> maxItems),
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFileSystemsResponse'
            Core.<$> (x Core..:? "FileSystems")
            Core.<*> (x Core..:? "Marker")
            Core.<*> (x Core..:? "NextMarker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeFileSystems where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextMarker") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"fileSystems" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"nextMarker"
        )

-- | /See:/ 'mkDescribeFileSystemsResponse' smart constructor.
data DescribeFileSystemsResponse = DescribeFileSystemsResponse'
  { -- | An array of file system descriptions.
    fileSystems :: Core.Maybe [Types.FileSystemDescription],
    -- | Present if provided by caller in the request (String).
    marker :: Core.Maybe Types.Marker,
    -- | Present if there are more file systems than returned in the response (String). You can use the @NextMarker@ in the subsequent request to fetch the descriptions.
    nextMarker :: Core.Maybe Types.Marker,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeFileSystemsResponse' value with any optional fields omitted.
mkDescribeFileSystemsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeFileSystemsResponse
mkDescribeFileSystemsResponse responseStatus =
  DescribeFileSystemsResponse'
    { fileSystems = Core.Nothing,
      marker = Core.Nothing,
      nextMarker = Core.Nothing,
      responseStatus
    }

-- | An array of file system descriptions.
--
-- /Note:/ Consider using 'fileSystems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsrrsFileSystems :: Lens.Lens' DescribeFileSystemsResponse (Core.Maybe [Types.FileSystemDescription])
dfsrrsFileSystems = Lens.field @"fileSystems"
{-# DEPRECATED dfsrrsFileSystems "Use generic-lens or generic-optics with 'fileSystems' instead." #-}

-- | Present if provided by caller in the request (String).
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsrrsMarker :: Lens.Lens' DescribeFileSystemsResponse (Core.Maybe Types.Marker)
dfsrrsMarker = Lens.field @"marker"
{-# DEPRECATED dfsrrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | Present if there are more file systems than returned in the response (String). You can use the @NextMarker@ in the subsequent request to fetch the descriptions.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsrrsNextMarker :: Lens.Lens' DescribeFileSystemsResponse (Core.Maybe Types.Marker)
dfsrrsNextMarker = Lens.field @"nextMarker"
{-# DEPRECATED dfsrrsNextMarker "Use generic-lens or generic-optics with 'nextMarker' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfsrrsResponseStatus :: Lens.Lens' DescribeFileSystemsResponse Core.Int
dfsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dfsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}