{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.BatchGetImage
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets detailed information for an image. Images are specified with either an @imageTag@ or @imageDigest@ .
--
-- When an image is pulled, the BatchGetImage API is called once to retrieve the image manifest.
module Network.AWS.ECR.BatchGetImage
  ( -- * Creating a request
    BatchGetImage (..),
    mkBatchGetImage,

    -- ** Request lenses
    bgiRepositoryName,
    bgiImageIds,
    bgiAcceptedMediaTypes,
    bgiRegistryId,

    -- * Destructuring the response
    BatchGetImageResponse (..),
    mkBatchGetImageResponse,

    -- ** Response lenses
    bgirrsFailures,
    bgirrsImages,
    bgirrsResponseStatus,
  )
where

import qualified Network.AWS.ECR.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkBatchGetImage' smart constructor.
data BatchGetImage = BatchGetImage'
  { -- | The repository that contains the images to describe.
    repositoryName :: Types.RepositoryName,
    -- | A list of image ID references that correspond to images to describe. The format of the @imageIds@ reference is @imageTag=tag@ or @imageDigest=digest@ .
    imageIds :: [Types.ImageIdentifier],
    -- | The accepted media types for the request.
    --
    -- Valid values: @application/vnd.docker.distribution.manifest.v1+json@ | @application/vnd.docker.distribution.manifest.v2+json@ | @application/vnd.oci.image.manifest.v1+json@
    acceptedMediaTypes :: Core.Maybe (Core.NonEmpty Types.MediaType),
    -- | The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.
    registryId :: Core.Maybe Types.RegistryId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchGetImage' value with any optional fields omitted.
mkBatchGetImage ::
  -- | 'repositoryName'
  Types.RepositoryName ->
  BatchGetImage
mkBatchGetImage repositoryName =
  BatchGetImage'
    { repositoryName,
      imageIds = Core.mempty,
      acceptedMediaTypes = Core.Nothing,
      registryId = Core.Nothing
    }

-- | The repository that contains the images to describe.
--
-- /Note:/ Consider using 'repositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgiRepositoryName :: Lens.Lens' BatchGetImage Types.RepositoryName
bgiRepositoryName = Lens.field @"repositoryName"
{-# DEPRECATED bgiRepositoryName "Use generic-lens or generic-optics with 'repositoryName' instead." #-}

-- | A list of image ID references that correspond to images to describe. The format of the @imageIds@ reference is @imageTag=tag@ or @imageDigest=digest@ .
--
-- /Note:/ Consider using 'imageIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgiImageIds :: Lens.Lens' BatchGetImage [Types.ImageIdentifier]
bgiImageIds = Lens.field @"imageIds"
{-# DEPRECATED bgiImageIds "Use generic-lens or generic-optics with 'imageIds' instead." #-}

-- | The accepted media types for the request.
--
-- Valid values: @application/vnd.docker.distribution.manifest.v1+json@ | @application/vnd.docker.distribution.manifest.v2+json@ | @application/vnd.oci.image.manifest.v1+json@
--
-- /Note:/ Consider using 'acceptedMediaTypes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgiAcceptedMediaTypes :: Lens.Lens' BatchGetImage (Core.Maybe (Core.NonEmpty Types.MediaType))
bgiAcceptedMediaTypes = Lens.field @"acceptedMediaTypes"
{-# DEPRECATED bgiAcceptedMediaTypes "Use generic-lens or generic-optics with 'acceptedMediaTypes' instead." #-}

-- | The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.
--
-- /Note:/ Consider using 'registryId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgiRegistryId :: Lens.Lens' BatchGetImage (Core.Maybe Types.RegistryId)
bgiRegistryId = Lens.field @"registryId"
{-# DEPRECATED bgiRegistryId "Use generic-lens or generic-optics with 'registryId' instead." #-}

instance Core.FromJSON BatchGetImage where
  toJSON BatchGetImage {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("repositoryName" Core..= repositoryName),
            Core.Just ("imageIds" Core..= imageIds),
            ("acceptedMediaTypes" Core..=) Core.<$> acceptedMediaTypes,
            ("registryId" Core..=) Core.<$> registryId
          ]
      )

instance Core.AWSRequest BatchGetImage where
  type Rs BatchGetImage = BatchGetImageResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AmazonEC2ContainerRegistry_V20150921.BatchGetImage"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchGetImageResponse'
            Core.<$> (x Core..:? "failures")
            Core.<*> (x Core..:? "images")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkBatchGetImageResponse' smart constructor.
data BatchGetImageResponse = BatchGetImageResponse'
  { -- | Any failures associated with the call.
    failures :: Core.Maybe [Types.ImageFailure],
    -- | A list of image objects corresponding to the image references in the request.
    images :: Core.Maybe [Types.Image],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchGetImageResponse' value with any optional fields omitted.
mkBatchGetImageResponse ::
  -- | 'responseStatus'
  Core.Int ->
  BatchGetImageResponse
mkBatchGetImageResponse responseStatus =
  BatchGetImageResponse'
    { failures = Core.Nothing,
      images = Core.Nothing,
      responseStatus
    }

-- | Any failures associated with the call.
--
-- /Note:/ Consider using 'failures' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgirrsFailures :: Lens.Lens' BatchGetImageResponse (Core.Maybe [Types.ImageFailure])
bgirrsFailures = Lens.field @"failures"
{-# DEPRECATED bgirrsFailures "Use generic-lens or generic-optics with 'failures' instead." #-}

-- | A list of image objects corresponding to the image references in the request.
--
-- /Note:/ Consider using 'images' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgirrsImages :: Lens.Lens' BatchGetImageResponse (Core.Maybe [Types.Image])
bgirrsImages = Lens.field @"images"
{-# DEPRECATED bgirrsImages "Use generic-lens or generic-optics with 'images' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bgirrsResponseStatus :: Lens.Lens' BatchGetImageResponse Core.Int
bgirrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED bgirrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}