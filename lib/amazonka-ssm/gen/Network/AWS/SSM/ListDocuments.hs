{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.ListDocuments
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all Systems Manager (SSM) documents in the current AWS account and Region. You can limit the results of this request by using a filter.
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListDocuments
  ( -- * Creating a request
    ListDocuments (..),
    mkListDocuments,

    -- ** Request lenses
    ldDocumentFilterList,
    ldFilters,
    ldMaxResults,
    ldNextToken,

    -- * Destructuring the response
    ListDocumentsResponse (..),
    mkListDocumentsResponse,

    -- ** Response lenses
    ldrrsDocumentIdentifiers,
    ldrrsNextToken,
    ldrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkListDocuments' smart constructor.
data ListDocuments = ListDocuments'
  { -- | This data type is deprecated. Instead, use @Filters@ .
    documentFilterList :: Core.Maybe (Core.NonEmpty Types.DocumentFilter),
    -- | One or more DocumentKeyValuesFilter objects. Use a filter to return a more specific list of results. For keys, you can specify one or more key-value pair tags that have been applied to a document. Other valid keys include @Owner@ , @Name@ , @PlatformTypes@ , @DocumentType@ , and @TargetType@ . For example, to return documents you own use @Key=Owner,Values=Self@ . To specify a custom key-value pair, use the format @Key=tag:tagName,Values=valueName@ .
    filters :: Core.Maybe [Types.DocumentKeyValuesFilter],
    -- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
    maxResults :: Core.Maybe Core.Natural,
    -- | The token for the next set of items to return. (You received this token from a previous call.)
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListDocuments' value with any optional fields omitted.
mkListDocuments ::
  ListDocuments
mkListDocuments =
  ListDocuments'
    { documentFilterList = Core.Nothing,
      filters = Core.Nothing,
      maxResults = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | This data type is deprecated. Instead, use @Filters@ .
--
-- /Note:/ Consider using 'documentFilterList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldDocumentFilterList :: Lens.Lens' ListDocuments (Core.Maybe (Core.NonEmpty Types.DocumentFilter))
ldDocumentFilterList = Lens.field @"documentFilterList"
{-# DEPRECATED ldDocumentFilterList "Use generic-lens or generic-optics with 'documentFilterList' instead." #-}

-- | One or more DocumentKeyValuesFilter objects. Use a filter to return a more specific list of results. For keys, you can specify one or more key-value pair tags that have been applied to a document. Other valid keys include @Owner@ , @Name@ , @PlatformTypes@ , @DocumentType@ , and @TargetType@ . For example, to return documents you own use @Key=Owner,Values=Self@ . To specify a custom key-value pair, use the format @Key=tag:tagName,Values=valueName@ .
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldFilters :: Lens.Lens' ListDocuments (Core.Maybe [Types.DocumentKeyValuesFilter])
ldFilters = Lens.field @"filters"
{-# DEPRECATED ldFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldMaxResults :: Lens.Lens' ListDocuments (Core.Maybe Core.Natural)
ldMaxResults = Lens.field @"maxResults"
{-# DEPRECATED ldMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The token for the next set of items to return. (You received this token from a previous call.)
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldNextToken :: Lens.Lens' ListDocuments (Core.Maybe Types.NextToken)
ldNextToken = Lens.field @"nextToken"
{-# DEPRECATED ldNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.FromJSON ListDocuments where
  toJSON ListDocuments {..} =
    Core.object
      ( Core.catMaybes
          [ ("DocumentFilterList" Core..=) Core.<$> documentFilterList,
            ("Filters" Core..=) Core.<$> filters,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.AWSRequest ListDocuments where
  type Rs ListDocuments = ListDocumentsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AmazonSSM.ListDocuments")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDocumentsResponse'
            Core.<$> (x Core..:? "DocumentIdentifiers")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListDocuments where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"documentIdentifiers" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListDocumentsResponse' smart constructor.
data ListDocumentsResponse = ListDocumentsResponse'
  { -- | The names of the Systems Manager documents.
    documentIdentifiers :: Core.Maybe [Types.DocumentIdentifier],
    -- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListDocumentsResponse' value with any optional fields omitted.
mkListDocumentsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListDocumentsResponse
mkListDocumentsResponse responseStatus =
  ListDocumentsResponse'
    { documentIdentifiers = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | The names of the Systems Manager documents.
--
-- /Note:/ Consider using 'documentIdentifiers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldrrsDocumentIdentifiers :: Lens.Lens' ListDocumentsResponse (Core.Maybe [Types.DocumentIdentifier])
ldrrsDocumentIdentifiers = Lens.field @"documentIdentifiers"
{-# DEPRECATED ldrrsDocumentIdentifiers "Use generic-lens or generic-optics with 'documentIdentifiers' instead." #-}

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldrrsNextToken :: Lens.Lens' ListDocumentsResponse (Core.Maybe Types.NextToken)
ldrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED ldrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldrrsResponseStatus :: Lens.Lens' ListDocumentsResponse Core.Int
ldrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ldrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}