{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.GetBlob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the base-64 encoded content of an individual blob in a repository.
module Network.AWS.CodeCommit.GetBlob
  ( -- * Creating a request
    GetBlob (..),
    mkGetBlob,

    -- ** Request lenses
    gRepositoryName,
    gBlobId,

    -- * Destructuring the response
    GetBlobResponse (..),
    mkGetBlobResponse,

    -- ** Response lenses
    gbrfrsContent,
    gbrfrsResponseStatus,
  )
where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a get blob operation.
--
-- /See:/ 'mkGetBlob' smart constructor.
data GetBlob = GetBlob'
  { -- | The name of the repository that contains the blob.
    repositoryName :: Types.RepositoryName,
    -- | The ID of the blob, which is its SHA-1 pointer.
    blobId :: Types.ObjectId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetBlob' value with any optional fields omitted.
mkGetBlob ::
  -- | 'repositoryName'
  Types.RepositoryName ->
  -- | 'blobId'
  Types.ObjectId ->
  GetBlob
mkGetBlob repositoryName blobId = GetBlob' {repositoryName, blobId}

-- | The name of the repository that contains the blob.
--
-- /Note:/ Consider using 'repositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gRepositoryName :: Lens.Lens' GetBlob Types.RepositoryName
gRepositoryName = Lens.field @"repositoryName"
{-# DEPRECATED gRepositoryName "Use generic-lens or generic-optics with 'repositoryName' instead." #-}

-- | The ID of the blob, which is its SHA-1 pointer.
--
-- /Note:/ Consider using 'blobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gBlobId :: Lens.Lens' GetBlob Types.ObjectId
gBlobId = Lens.field @"blobId"
{-# DEPRECATED gBlobId "Use generic-lens or generic-optics with 'blobId' instead." #-}

instance Core.FromJSON GetBlob where
  toJSON GetBlob {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("repositoryName" Core..= repositoryName),
            Core.Just ("blobId" Core..= blobId)
          ]
      )

instance Core.AWSRequest GetBlob where
  type Rs GetBlob = GetBlobResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "CodeCommit_20150413.GetBlob")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetBlobResponse'
            Core.<$> (x Core..: "content") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the output of a get blob operation.
--
-- /See:/ 'mkGetBlobResponse' smart constructor.
data GetBlobResponse = GetBlobResponse'
  { -- | The content of the blob, usually a file.
    content :: Core.Base64,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetBlobResponse' value with any optional fields omitted.
mkGetBlobResponse ::
  -- | 'content'
  Core.Base64 ->
  -- | 'responseStatus'
  Core.Int ->
  GetBlobResponse
mkGetBlobResponse content responseStatus =
  GetBlobResponse' {content, responseStatus}

-- | The content of the blob, usually a file.--
-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- The underlying isomorphism will encode to Base64 representation during
-- serialisation, and decode from Base64 representation during deserialisation.
-- This 'Lens' accepts and returns only raw unencoded data.
--
-- /Note:/ Consider using 'content' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gbrfrsContent :: Lens.Lens' GetBlobResponse Core.Base64
gbrfrsContent = Lens.field @"content"
{-# DEPRECATED gbrfrsContent "Use generic-lens or generic-optics with 'content' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gbrfrsResponseStatus :: Lens.Lens' GetBlobResponse Core.Int
gbrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gbrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}