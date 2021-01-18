{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.DescribeFolderContents
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the contents of the specified folder, including its documents and subfolders.
--
-- By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
--
-- This operation returns paginated results.
module Network.AWS.WorkDocs.DescribeFolderContents
  ( -- * Creating a request
    DescribeFolderContents (..),
    mkDescribeFolderContents,

    -- ** Request lenses
    dfcsFolderId,
    dfcsAuthenticationToken,
    dfcsInclude,
    dfcsLimit,
    dfcsMarker,
    dfcsOrder,
    dfcsSort,
    dfcsType,

    -- * Destructuring the response
    DescribeFolderContentsResponse (..),
    mkDescribeFolderContentsResponse,

    -- ** Response lenses
    dfcrrsDocuments,
    dfcrrsFolders,
    dfcrrsMarker,
    dfcrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WorkDocs.Types as Types

-- | /See:/ 'mkDescribeFolderContents' smart constructor.
data DescribeFolderContents = DescribeFolderContents'
  { -- | The ID of the folder.
    folderId :: Types.FolderId,
    -- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
    authenticationToken :: Core.Maybe Types.AuthenticationHeaderType,
    -- | The contents to include. Specify "INITIALIZED" to include initialized documents.
    include :: Core.Maybe Types.Include,
    -- | The maximum number of items to return with this call.
    limit :: Core.Maybe Core.Natural,
    -- | The marker for the next set of results. This marker was received from a previous call.
    marker :: Core.Maybe Types.Marker,
    -- | The order for the contents of the folder.
    order :: Core.Maybe Types.OrderType,
    -- | The sorting criteria.
    sort :: Core.Maybe Types.ResourceSortType,
    -- | The type of items.
    type' :: Core.Maybe Types.FolderContentType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFolderContents' value with any optional fields omitted.
mkDescribeFolderContents ::
  -- | 'folderId'
  Types.FolderId ->
  DescribeFolderContents
mkDescribeFolderContents folderId =
  DescribeFolderContents'
    { folderId,
      authenticationToken = Core.Nothing,
      include = Core.Nothing,
      limit = Core.Nothing,
      marker = Core.Nothing,
      order = Core.Nothing,
      sort = Core.Nothing,
      type' = Core.Nothing
    }

-- | The ID of the folder.
--
-- /Note:/ Consider using 'folderId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcsFolderId :: Lens.Lens' DescribeFolderContents Types.FolderId
dfcsFolderId = Lens.field @"folderId"
{-# DEPRECATED dfcsFolderId "Use generic-lens or generic-optics with 'folderId' instead." #-}

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- /Note:/ Consider using 'authenticationToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcsAuthenticationToken :: Lens.Lens' DescribeFolderContents (Core.Maybe Types.AuthenticationHeaderType)
dfcsAuthenticationToken = Lens.field @"authenticationToken"
{-# DEPRECATED dfcsAuthenticationToken "Use generic-lens or generic-optics with 'authenticationToken' instead." #-}

-- | The contents to include. Specify "INITIALIZED" to include initialized documents.
--
-- /Note:/ Consider using 'include' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcsInclude :: Lens.Lens' DescribeFolderContents (Core.Maybe Types.Include)
dfcsInclude = Lens.field @"include"
{-# DEPRECATED dfcsInclude "Use generic-lens or generic-optics with 'include' instead." #-}

-- | The maximum number of items to return with this call.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcsLimit :: Lens.Lens' DescribeFolderContents (Core.Maybe Core.Natural)
dfcsLimit = Lens.field @"limit"
{-# DEPRECATED dfcsLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | The marker for the next set of results. This marker was received from a previous call.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcsMarker :: Lens.Lens' DescribeFolderContents (Core.Maybe Types.Marker)
dfcsMarker = Lens.field @"marker"
{-# DEPRECATED dfcsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The order for the contents of the folder.
--
-- /Note:/ Consider using 'order' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcsOrder :: Lens.Lens' DescribeFolderContents (Core.Maybe Types.OrderType)
dfcsOrder = Lens.field @"order"
{-# DEPRECATED dfcsOrder "Use generic-lens or generic-optics with 'order' instead." #-}

-- | The sorting criteria.
--
-- /Note:/ Consider using 'sort' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcsSort :: Lens.Lens' DescribeFolderContents (Core.Maybe Types.ResourceSortType)
dfcsSort = Lens.field @"sort"
{-# DEPRECATED dfcsSort "Use generic-lens or generic-optics with 'sort' instead." #-}

-- | The type of items.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcsType :: Lens.Lens' DescribeFolderContents (Core.Maybe Types.FolderContentType)
dfcsType = Lens.field @"type'"
{-# DEPRECATED dfcsType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.AWSRequest DescribeFolderContents where
  type Rs DescribeFolderContents = DescribeFolderContentsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/api/v1/folders/" Core.<> (Core.toText folderId)
                Core.<> ("/contents")
            ),
        Core._rqQuery =
          Core.toQueryValue "include" Core.<$> include
            Core.<> (Core.toQueryValue "limit" Core.<$> limit)
            Core.<> (Core.toQueryValue "marker" Core.<$> marker)
            Core.<> (Core.toQueryValue "order" Core.<$> order)
            Core.<> (Core.toQueryValue "sort" Core.<$> sort)
            Core.<> (Core.toQueryValue "type" Core.<$> type'),
        Core._rqHeaders =
          Core.toHeaders "Authentication" authenticationToken
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFolderContentsResponse'
            Core.<$> (x Core..:? "Documents")
            Core.<*> (x Core..:? "Folders")
            Core.<*> (x Core..:? "Marker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager DescribeFolderContents where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"marker") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"folders" Core.. Lens._Just) =
      Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"documents" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"marker"
        )

-- | /See:/ 'mkDescribeFolderContentsResponse' smart constructor.
data DescribeFolderContentsResponse = DescribeFolderContentsResponse'
  { -- | The documents in the specified folder.
    documents :: Core.Maybe [Types.DocumentMetadata],
    -- | The subfolders in the specified folder.
    folders :: Core.Maybe [Types.FolderMetadata],
    -- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
    marker :: Core.Maybe Types.Marker,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeFolderContentsResponse' value with any optional fields omitted.
mkDescribeFolderContentsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeFolderContentsResponse
mkDescribeFolderContentsResponse responseStatus =
  DescribeFolderContentsResponse'
    { documents = Core.Nothing,
      folders = Core.Nothing,
      marker = Core.Nothing,
      responseStatus
    }

-- | The documents in the specified folder.
--
-- /Note:/ Consider using 'documents' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcrrsDocuments :: Lens.Lens' DescribeFolderContentsResponse (Core.Maybe [Types.DocumentMetadata])
dfcrrsDocuments = Lens.field @"documents"
{-# DEPRECATED dfcrrsDocuments "Use generic-lens or generic-optics with 'documents' instead." #-}

-- | The subfolders in the specified folder.
--
-- /Note:/ Consider using 'folders' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcrrsFolders :: Lens.Lens' DescribeFolderContentsResponse (Core.Maybe [Types.FolderMetadata])
dfcrrsFolders = Lens.field @"folders"
{-# DEPRECATED dfcrrsFolders "Use generic-lens or generic-optics with 'folders' instead." #-}

-- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcrrsMarker :: Lens.Lens' DescribeFolderContentsResponse (Core.Maybe Types.Marker)
dfcrrsMarker = Lens.field @"marker"
{-# DEPRECATED dfcrrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcrrsResponseStatus :: Lens.Lens' DescribeFolderContentsResponse Core.Int
dfcrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dfcrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}