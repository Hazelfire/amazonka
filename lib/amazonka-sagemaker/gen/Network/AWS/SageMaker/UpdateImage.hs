{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.UpdateImage
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the properties of a SageMaker image. To change the image's tags, use the 'AddTags' and 'DeleteTags' APIs.
module Network.AWS.SageMaker.UpdateImage
  ( -- * Creating a request
    UpdateImage (..),
    mkUpdateImage,

    -- ** Request lenses
    uiImageName,
    uiDeleteProperties,
    uiDescription,
    uiDisplayName,
    uiRoleArn,

    -- * Destructuring the response
    UpdateImageResponse (..),
    mkUpdateImageResponse,

    -- ** Response lenses
    uirrsImageArn,
    uirrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SageMaker.Types as Types

-- | /See:/ 'mkUpdateImage' smart constructor.
data UpdateImage = UpdateImage'
  { -- | The name of the image to update.
    imageName :: Types.ImageName,
    -- | A list of properties to delete. Only the @Description@ and @DisplayName@ properties can be deleted.
    deleteProperties :: Core.Maybe [Types.ImageDeleteProperty],
    -- | The new description for the image.
    description :: Core.Maybe Types.Description,
    -- | The new display name for the image.
    displayName :: Core.Maybe Types.ImageDisplayName,
    -- | The new Amazon Resource Name (ARN) for the IAM role that enables Amazon SageMaker to perform tasks on your behalf.
    roleArn :: Core.Maybe Types.RoleArn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateImage' value with any optional fields omitted.
mkUpdateImage ::
  -- | 'imageName'
  Types.ImageName ->
  UpdateImage
mkUpdateImage imageName =
  UpdateImage'
    { imageName,
      deleteProperties = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      roleArn = Core.Nothing
    }

-- | The name of the image to update.
--
-- /Note:/ Consider using 'imageName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiImageName :: Lens.Lens' UpdateImage Types.ImageName
uiImageName = Lens.field @"imageName"
{-# DEPRECATED uiImageName "Use generic-lens or generic-optics with 'imageName' instead." #-}

-- | A list of properties to delete. Only the @Description@ and @DisplayName@ properties can be deleted.
--
-- /Note:/ Consider using 'deleteProperties' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiDeleteProperties :: Lens.Lens' UpdateImage (Core.Maybe [Types.ImageDeleteProperty])
uiDeleteProperties = Lens.field @"deleteProperties"
{-# DEPRECATED uiDeleteProperties "Use generic-lens or generic-optics with 'deleteProperties' instead." #-}

-- | The new description for the image.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiDescription :: Lens.Lens' UpdateImage (Core.Maybe Types.Description)
uiDescription = Lens.field @"description"
{-# DEPRECATED uiDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The new display name for the image.
--
-- /Note:/ Consider using 'displayName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiDisplayName :: Lens.Lens' UpdateImage (Core.Maybe Types.ImageDisplayName)
uiDisplayName = Lens.field @"displayName"
{-# DEPRECATED uiDisplayName "Use generic-lens or generic-optics with 'displayName' instead." #-}

-- | The new Amazon Resource Name (ARN) for the IAM role that enables Amazon SageMaker to perform tasks on your behalf.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiRoleArn :: Lens.Lens' UpdateImage (Core.Maybe Types.RoleArn)
uiRoleArn = Lens.field @"roleArn"
{-# DEPRECATED uiRoleArn "Use generic-lens or generic-optics with 'roleArn' instead." #-}

instance Core.FromJSON UpdateImage where
  toJSON UpdateImage {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ImageName" Core..= imageName),
            ("DeleteProperties" Core..=) Core.<$> deleteProperties,
            ("Description" Core..=) Core.<$> description,
            ("DisplayName" Core..=) Core.<$> displayName,
            ("RoleArn" Core..=) Core.<$> roleArn
          ]
      )

instance Core.AWSRequest UpdateImage where
  type Rs UpdateImage = UpdateImageResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "SageMaker.UpdateImage")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateImageResponse'
            Core.<$> (x Core..:? "ImageArn") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateImageResponse' smart constructor.
data UpdateImageResponse = UpdateImageResponse'
  { -- | The Amazon Resource Name (ARN) of the image.
    imageArn :: Core.Maybe Types.ImageArn,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateImageResponse' value with any optional fields omitted.
mkUpdateImageResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateImageResponse
mkUpdateImageResponse responseStatus =
  UpdateImageResponse' {imageArn = Core.Nothing, responseStatus}

-- | The Amazon Resource Name (ARN) of the image.
--
-- /Note:/ Consider using 'imageArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uirrsImageArn :: Lens.Lens' UpdateImageResponse (Core.Maybe Types.ImageArn)
uirrsImageArn = Lens.field @"imageArn"
{-# DEPRECATED uirrsImageArn "Use generic-lens or generic-optics with 'imageArn' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uirrsResponseStatus :: Lens.Lens' UpdateImageResponse Core.Int
uirrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED uirrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}