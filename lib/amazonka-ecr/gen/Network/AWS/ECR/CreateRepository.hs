{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.CreateRepository
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a repository. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html Amazon ECR Repositories> in the /Amazon Elastic Container Registry User Guide/ .
module Network.AWS.ECR.CreateRepository
  ( -- * Creating a request
    CreateRepository (..),
    mkCreateRepository,

    -- ** Request lenses
    crRepositoryName,
    crEncryptionConfiguration,
    crImageScanningConfiguration,
    crImageTagMutability,
    crTags,

    -- * Destructuring the response
    CreateRepositoryResponse (..),
    mkCreateRepositoryResponse,

    -- ** Response lenses
    crrrsRepository,
    crrrsResponseStatus,
  )
where

import qualified Network.AWS.ECR.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateRepository' smart constructor.
data CreateRepository = CreateRepository'
  { -- | The name to use for the repository. The repository name may be specified on its own (such as @nginx-web-app@ ) or it can be prepended with a namespace to group the repository into a category (such as @project-a/nginx-web-app@ ).
    repositoryName :: Types.RepositoryName,
    -- | The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest.
    encryptionConfiguration :: Core.Maybe Types.EncryptionConfiguration,
    -- | The image scanning configuration for the repository. This determines whether images are scanned for known vulnerabilities after being pushed to the repository.
    imageScanningConfiguration :: Core.Maybe Types.ImageScanningConfiguration,
    -- | The tag mutability setting for the repository. If this parameter is omitted, the default setting of @MUTABLE@ will be used which will allow image tags to be overwritten. If @IMMUTABLE@ is specified, all image tags within the repository will be immutable which will prevent them from being overwritten.
    imageTagMutability :: Core.Maybe Types.ImageTagMutability,
    -- | The metadata that you apply to the repository to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
    tags :: Core.Maybe [Types.Tag]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateRepository' value with any optional fields omitted.
mkCreateRepository ::
  -- | 'repositoryName'
  Types.RepositoryName ->
  CreateRepository
mkCreateRepository repositoryName =
  CreateRepository'
    { repositoryName,
      encryptionConfiguration = Core.Nothing,
      imageScanningConfiguration = Core.Nothing,
      imageTagMutability = Core.Nothing,
      tags = Core.Nothing
    }

-- | The name to use for the repository. The repository name may be specified on its own (such as @nginx-web-app@ ) or it can be prepended with a namespace to group the repository into a category (such as @project-a/nginx-web-app@ ).
--
-- /Note:/ Consider using 'repositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crRepositoryName :: Lens.Lens' CreateRepository Types.RepositoryName
crRepositoryName = Lens.field @"repositoryName"
{-# DEPRECATED crRepositoryName "Use generic-lens or generic-optics with 'repositoryName' instead." #-}

-- | The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest.
--
-- /Note:/ Consider using 'encryptionConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crEncryptionConfiguration :: Lens.Lens' CreateRepository (Core.Maybe Types.EncryptionConfiguration)
crEncryptionConfiguration = Lens.field @"encryptionConfiguration"
{-# DEPRECATED crEncryptionConfiguration "Use generic-lens or generic-optics with 'encryptionConfiguration' instead." #-}

-- | The image scanning configuration for the repository. This determines whether images are scanned for known vulnerabilities after being pushed to the repository.
--
-- /Note:/ Consider using 'imageScanningConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crImageScanningConfiguration :: Lens.Lens' CreateRepository (Core.Maybe Types.ImageScanningConfiguration)
crImageScanningConfiguration = Lens.field @"imageScanningConfiguration"
{-# DEPRECATED crImageScanningConfiguration "Use generic-lens or generic-optics with 'imageScanningConfiguration' instead." #-}

-- | The tag mutability setting for the repository. If this parameter is omitted, the default setting of @MUTABLE@ will be used which will allow image tags to be overwritten. If @IMMUTABLE@ is specified, all image tags within the repository will be immutable which will prevent them from being overwritten.
--
-- /Note:/ Consider using 'imageTagMutability' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crImageTagMutability :: Lens.Lens' CreateRepository (Core.Maybe Types.ImageTagMutability)
crImageTagMutability = Lens.field @"imageTagMutability"
{-# DEPRECATED crImageTagMutability "Use generic-lens or generic-optics with 'imageTagMutability' instead." #-}

-- | The metadata that you apply to the repository to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crTags :: Lens.Lens' CreateRepository (Core.Maybe [Types.Tag])
crTags = Lens.field @"tags"
{-# DEPRECATED crTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.FromJSON CreateRepository where
  toJSON CreateRepository {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("repositoryName" Core..= repositoryName),
            ("encryptionConfiguration" Core..=)
              Core.<$> encryptionConfiguration,
            ("imageScanningConfiguration" Core..=)
              Core.<$> imageScanningConfiguration,
            ("imageTagMutability" Core..=) Core.<$> imageTagMutability,
            ("tags" Core..=) Core.<$> tags
          ]
      )

instance Core.AWSRequest CreateRepository where
  type Rs CreateRepository = CreateRepositoryResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AmazonEC2ContainerRegistry_V20150921.CreateRepository"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRepositoryResponse'
            Core.<$> (x Core..:? "repository") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateRepositoryResponse' smart constructor.
data CreateRepositoryResponse = CreateRepositoryResponse'
  { -- | The repository that was created.
    repository :: Core.Maybe Types.Repository,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateRepositoryResponse' value with any optional fields omitted.
mkCreateRepositoryResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateRepositoryResponse
mkCreateRepositoryResponse responseStatus =
  CreateRepositoryResponse'
    { repository = Core.Nothing,
      responseStatus
    }

-- | The repository that was created.
--
-- /Note:/ Consider using 'repository' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crrrsRepository :: Lens.Lens' CreateRepositoryResponse (Core.Maybe Types.Repository)
crrrsRepository = Lens.field @"repository"
{-# DEPRECATED crrrsRepository "Use generic-lens or generic-optics with 'repository' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crrrsResponseStatus :: Lens.Lens' CreateRepositoryResponse Core.Int
crrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED crrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}