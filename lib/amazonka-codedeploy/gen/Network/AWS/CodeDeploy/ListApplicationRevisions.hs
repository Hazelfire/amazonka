{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.ListApplicationRevisions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about revisions for an application.
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListApplicationRevisions
  ( -- * Creating a request
    ListApplicationRevisions (..),
    mkListApplicationRevisions,

    -- ** Request lenses
    larApplicationName,
    larDeployed,
    larNextToken,
    larS3Bucket,
    larS3KeyPrefix,
    larSortBy,
    larSortOrder,

    -- * Destructuring the response
    ListApplicationRevisionsResponse (..),
    mkListApplicationRevisionsResponse,

    -- ** Response lenses
    larrrsNextToken,
    larrrsRevisions,
    larrrsResponseStatus,
  )
where

import qualified Network.AWS.CodeDeploy.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @ListApplicationRevisions@ operation.
--
-- /See:/ 'mkListApplicationRevisions' smart constructor.
data ListApplicationRevisions = ListApplicationRevisions'
  { -- | The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
    applicationName :: Types.ApplicationName,
    -- | Whether to list revisions based on whether the revision is the target revision of a deployment group:
    --
    --
    --     * @include@ : List revisions that are target revisions of a deployment group.
    --
    --
    --     * @exclude@ : Do not list revisions that are target revisions of a deployment group.
    --
    --
    --     * @ignore@ : List all revisions.
    deployed :: Core.Maybe Types.ListStateFilterAction,
    -- | An identifier returned from the previous @ListApplicationRevisions@ call. It can be used to return the next set of applications in the list.
    nextToken :: Core.Maybe Types.NextToken,
    -- | An Amazon S3 bucket name to limit the search for revisions.
    --
    -- If set to null, all of the user's buckets are searched.
    s3Bucket :: Core.Maybe Types.S3Bucket,
    -- | A key prefix for the set of Amazon S3 objects to limit the search for revisions.
    s3KeyPrefix :: Core.Maybe Types.S3Key,
    -- | The column name to use to sort the list results:
    --
    --
    --     * @registerTime@ : Sort by the time the revisions were registered with AWS CodeDeploy.
    --
    --
    --     * @firstUsedTime@ : Sort by the time the revisions were first used in a deployment.
    --
    --
    --     * @lastUsedTime@ : Sort by the time the revisions were last used in a deployment.
    --
    --
    -- If not specified or set to null, the results are returned in an arbitrary order.
    sortBy :: Core.Maybe Types.ApplicationRevisionSortBy,
    -- | The order in which to sort the list results:
    --
    --
    --     * @ascending@ : ascending order.
    --
    --
    --     * @descending@ : descending order.
    --
    --
    -- If not specified, the results are sorted in ascending order.
    -- If set to null, the results are sorted in an arbitrary order.
    sortOrder :: Core.Maybe Types.SortOrder
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListApplicationRevisions' value with any optional fields omitted.
mkListApplicationRevisions ::
  -- | 'applicationName'
  Types.ApplicationName ->
  ListApplicationRevisions
mkListApplicationRevisions applicationName =
  ListApplicationRevisions'
    { applicationName,
      deployed = Core.Nothing,
      nextToken = Core.Nothing,
      s3Bucket = Core.Nothing,
      s3KeyPrefix = Core.Nothing,
      sortBy = Core.Nothing,
      sortOrder = Core.Nothing
    }

-- | The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
--
-- /Note:/ Consider using 'applicationName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larApplicationName :: Lens.Lens' ListApplicationRevisions Types.ApplicationName
larApplicationName = Lens.field @"applicationName"
{-# DEPRECATED larApplicationName "Use generic-lens or generic-optics with 'applicationName' instead." #-}

-- | Whether to list revisions based on whether the revision is the target revision of a deployment group:
--
--
--     * @include@ : List revisions that are target revisions of a deployment group.
--
--
--     * @exclude@ : Do not list revisions that are target revisions of a deployment group.
--
--
--     * @ignore@ : List all revisions.
--
--
--
-- /Note:/ Consider using 'deployed' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larDeployed :: Lens.Lens' ListApplicationRevisions (Core.Maybe Types.ListStateFilterAction)
larDeployed = Lens.field @"deployed"
{-# DEPRECATED larDeployed "Use generic-lens or generic-optics with 'deployed' instead." #-}

-- | An identifier returned from the previous @ListApplicationRevisions@ call. It can be used to return the next set of applications in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larNextToken :: Lens.Lens' ListApplicationRevisions (Core.Maybe Types.NextToken)
larNextToken = Lens.field @"nextToken"
{-# DEPRECATED larNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | An Amazon S3 bucket name to limit the search for revisions.
--
-- If set to null, all of the user's buckets are searched.
--
-- /Note:/ Consider using 's3Bucket' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larS3Bucket :: Lens.Lens' ListApplicationRevisions (Core.Maybe Types.S3Bucket)
larS3Bucket = Lens.field @"s3Bucket"
{-# DEPRECATED larS3Bucket "Use generic-lens or generic-optics with 's3Bucket' instead." #-}

-- | A key prefix for the set of Amazon S3 objects to limit the search for revisions.
--
-- /Note:/ Consider using 's3KeyPrefix' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larS3KeyPrefix :: Lens.Lens' ListApplicationRevisions (Core.Maybe Types.S3Key)
larS3KeyPrefix = Lens.field @"s3KeyPrefix"
{-# DEPRECATED larS3KeyPrefix "Use generic-lens or generic-optics with 's3KeyPrefix' instead." #-}

-- | The column name to use to sort the list results:
--
--
--     * @registerTime@ : Sort by the time the revisions were registered with AWS CodeDeploy.
--
--
--     * @firstUsedTime@ : Sort by the time the revisions were first used in a deployment.
--
--
--     * @lastUsedTime@ : Sort by the time the revisions were last used in a deployment.
--
--
-- If not specified or set to null, the results are returned in an arbitrary order.
--
-- /Note:/ Consider using 'sortBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larSortBy :: Lens.Lens' ListApplicationRevisions (Core.Maybe Types.ApplicationRevisionSortBy)
larSortBy = Lens.field @"sortBy"
{-# DEPRECATED larSortBy "Use generic-lens or generic-optics with 'sortBy' instead." #-}

-- | The order in which to sort the list results:
--
--
--     * @ascending@ : ascending order.
--
--
--     * @descending@ : descending order.
--
--
-- If not specified, the results are sorted in ascending order.
-- If set to null, the results are sorted in an arbitrary order.
--
-- /Note:/ Consider using 'sortOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larSortOrder :: Lens.Lens' ListApplicationRevisions (Core.Maybe Types.SortOrder)
larSortOrder = Lens.field @"sortOrder"
{-# DEPRECATED larSortOrder "Use generic-lens or generic-optics with 'sortOrder' instead." #-}

instance Core.FromJSON ListApplicationRevisions where
  toJSON ListApplicationRevisions {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("applicationName" Core..= applicationName),
            ("deployed" Core..=) Core.<$> deployed,
            ("nextToken" Core..=) Core.<$> nextToken,
            ("s3Bucket" Core..=) Core.<$> s3Bucket,
            ("s3KeyPrefix" Core..=) Core.<$> s3KeyPrefix,
            ("sortBy" Core..=) Core.<$> sortBy,
            ("sortOrder" Core..=) Core.<$> sortOrder
          ]
      )

instance Core.AWSRequest ListApplicationRevisions where
  type Rs ListApplicationRevisions = ListApplicationRevisionsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "CodeDeploy_20141006.ListApplicationRevisions")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListApplicationRevisionsResponse'
            Core.<$> (x Core..:? "nextToken")
            Core.<*> (x Core..:? "revisions")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListApplicationRevisions where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"revisions" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | Represents the output of a @ListApplicationRevisions@ operation.
--
-- /See:/ 'mkListApplicationRevisionsResponse' smart constructor.
data ListApplicationRevisionsResponse = ListApplicationRevisionsResponse'
  { -- | If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list application revisions call to return the next set of application revisions in the list.
    nextToken :: Core.Maybe Types.NextToken,
    -- | A list of locations that contain the matching revisions.
    revisions :: Core.Maybe [Types.RevisionLocation],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListApplicationRevisionsResponse' value with any optional fields omitted.
mkListApplicationRevisionsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListApplicationRevisionsResponse
mkListApplicationRevisionsResponse responseStatus =
  ListApplicationRevisionsResponse'
    { nextToken = Core.Nothing,
      revisions = Core.Nothing,
      responseStatus
    }

-- | If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list application revisions call to return the next set of application revisions in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larrrsNextToken :: Lens.Lens' ListApplicationRevisionsResponse (Core.Maybe Types.NextToken)
larrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED larrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | A list of locations that contain the matching revisions.
--
-- /Note:/ Consider using 'revisions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larrrsRevisions :: Lens.Lens' ListApplicationRevisionsResponse (Core.Maybe [Types.RevisionLocation])
larrrsRevisions = Lens.field @"revisions"
{-# DEPRECATED larrrsRevisions "Use generic-lens or generic-optics with 'revisions' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larrrsResponseStatus :: Lens.Lens' ListApplicationRevisionsResponse Core.Int
larrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED larrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}