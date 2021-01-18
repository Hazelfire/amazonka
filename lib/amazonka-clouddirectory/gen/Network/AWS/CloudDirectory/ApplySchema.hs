{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.ApplySchema
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the input published schema, at the specified version, into the 'Directory' with the same name and version as that of the published schema.
module Network.AWS.CloudDirectory.ApplySchema
  ( -- * Creating a request
    ApplySchema (..),
    mkApplySchema,

    -- ** Request lenses
    asPublishedSchemaArn,
    asDirectoryArn,

    -- * Destructuring the response
    ApplySchemaResponse (..),
    mkApplySchemaResponse,

    -- ** Response lenses
    asrrsAppliedSchemaArn,
    asrrsDirectoryArn,
    asrrsResponseStatus,
  )
where

import qualified Network.AWS.CloudDirectory.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkApplySchema' smart constructor.
data ApplySchema = ApplySchema'
  { -- | Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see 'arns' .
    publishedSchemaArn :: Types.Arn,
    -- | The Amazon Resource Name (ARN) that is associated with the 'Directory' into which the schema is copied. For more information, see 'arns' .
    directoryArn :: Types.Arn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ApplySchema' value with any optional fields omitted.
mkApplySchema ::
  -- | 'publishedSchemaArn'
  Types.Arn ->
  -- | 'directoryArn'
  Types.Arn ->
  ApplySchema
mkApplySchema publishedSchemaArn directoryArn =
  ApplySchema' {publishedSchemaArn, directoryArn}

-- | Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see 'arns' .
--
-- /Note:/ Consider using 'publishedSchemaArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asPublishedSchemaArn :: Lens.Lens' ApplySchema Types.Arn
asPublishedSchemaArn = Lens.field @"publishedSchemaArn"
{-# DEPRECATED asPublishedSchemaArn "Use generic-lens or generic-optics with 'publishedSchemaArn' instead." #-}

-- | The Amazon Resource Name (ARN) that is associated with the 'Directory' into which the schema is copied. For more information, see 'arns' .
--
-- /Note:/ Consider using 'directoryArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asDirectoryArn :: Lens.Lens' ApplySchema Types.Arn
asDirectoryArn = Lens.field @"directoryArn"
{-# DEPRECATED asDirectoryArn "Use generic-lens or generic-optics with 'directoryArn' instead." #-}

instance Core.FromJSON ApplySchema where
  toJSON ApplySchema {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("PublishedSchemaArn" Core..= publishedSchemaArn)]
      )

instance Core.AWSRequest ApplySchema where
  type Rs ApplySchema = ApplySchemaResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.PUT,
        Core._rqPath =
          Core.rawPath "/amazonclouddirectory/2017-01-11/schema/apply",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.toHeaders "x-amz-data-partition" directoryArn,
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ApplySchemaResponse'
            Core.<$> (x Core..:? "AppliedSchemaArn")
            Core.<*> (x Core..:? "DirectoryArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkApplySchemaResponse' smart constructor.
data ApplySchemaResponse = ApplySchemaResponse'
  { -- | The applied schema ARN that is associated with the copied schema in the 'Directory' . You can use this ARN to describe the schema information applied on this directory. For more information, see 'arns' .
    appliedSchemaArn :: Core.Maybe Types.Arn,
    -- | The ARN that is associated with the 'Directory' . For more information, see 'arns' .
    directoryArn :: Core.Maybe Types.Arn,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ApplySchemaResponse' value with any optional fields omitted.
mkApplySchemaResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ApplySchemaResponse
mkApplySchemaResponse responseStatus =
  ApplySchemaResponse'
    { appliedSchemaArn = Core.Nothing,
      directoryArn = Core.Nothing,
      responseStatus
    }

-- | The applied schema ARN that is associated with the copied schema in the 'Directory' . You can use this ARN to describe the schema information applied on this directory. For more information, see 'arns' .
--
-- /Note:/ Consider using 'appliedSchemaArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asrrsAppliedSchemaArn :: Lens.Lens' ApplySchemaResponse (Core.Maybe Types.Arn)
asrrsAppliedSchemaArn = Lens.field @"appliedSchemaArn"
{-# DEPRECATED asrrsAppliedSchemaArn "Use generic-lens or generic-optics with 'appliedSchemaArn' instead." #-}

-- | The ARN that is associated with the 'Directory' . For more information, see 'arns' .
--
-- /Note:/ Consider using 'directoryArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asrrsDirectoryArn :: Lens.Lens' ApplySchemaResponse (Core.Maybe Types.Arn)
asrrsDirectoryArn = Lens.field @"directoryArn"
{-# DEPRECATED asrrsDirectoryArn "Use generic-lens or generic-optics with 'directoryArn' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asrrsResponseStatus :: Lens.Lens' ApplySchemaResponse Core.Int
asrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED asrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}