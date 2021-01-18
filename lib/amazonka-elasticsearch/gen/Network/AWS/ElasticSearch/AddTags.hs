{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.AddTags
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging Tagging Amazon Elasticsearch Service Domains for more information.>
module Network.AWS.ElasticSearch.AddTags
  ( -- * Creating a request
    AddTags (..),
    mkAddTags,

    -- ** Request lenses
    atARN,
    atTagList,

    -- * Destructuring the response
    AddTagsResponse (..),
    mkAddTagsResponse,
  )
where

import qualified Network.AWS.ElasticSearch.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @'AddTags' @ operation. Specify the tags that you want to attach to the Elasticsearch domain.
--
-- /See:/ 'mkAddTags' smart constructor.
data AddTags = AddTags'
  { -- | Specify the @ARN@ for which you want to add the tags.
    arn :: Types.ARN,
    -- | List of @Tag@ that need to be added for the Elasticsearch domain.
    tagList :: [Types.Tag]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AddTags' value with any optional fields omitted.
mkAddTags ::
  -- | 'arn'
  Types.ARN ->
  AddTags
mkAddTags arn = AddTags' {arn, tagList = Core.mempty}

-- | Specify the @ARN@ for which you want to add the tags.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atARN :: Lens.Lens' AddTags Types.ARN
atARN = Lens.field @"arn"
{-# DEPRECATED atARN "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | List of @Tag@ that need to be added for the Elasticsearch domain.
--
-- /Note:/ Consider using 'tagList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atTagList :: Lens.Lens' AddTags [Types.Tag]
atTagList = Lens.field @"tagList"
{-# DEPRECATED atTagList "Use generic-lens or generic-optics with 'tagList' instead." #-}

instance Core.FromJSON AddTags where
  toJSON AddTags {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ARN" Core..= arn),
            Core.Just ("TagList" Core..= tagList)
          ]
      )

instance Core.AWSRequest AddTags where
  type Rs AddTags = AddTagsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/2015-01-01/tags",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull AddTagsResponse'

-- | /See:/ 'mkAddTagsResponse' smart constructor.
data AddTagsResponse = AddTagsResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AddTagsResponse' value with any optional fields omitted.
mkAddTagsResponse ::
  AddTagsResponse
mkAddTagsResponse = AddTagsResponse'