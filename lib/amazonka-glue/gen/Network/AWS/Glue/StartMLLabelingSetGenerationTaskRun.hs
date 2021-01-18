{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.StartMLLabelingSetGenerationTaskRun
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the active learning workflow for your machine learning transform to improve the transform's quality by generating label sets and adding labels.
--
-- When the @StartMLLabelingSetGenerationTaskRun@ finishes, AWS Glue will have generated a "labeling set" or a set of questions for humans to answer.
-- In the case of the @FindMatches@ transform, these questions are of the form, “What is the correct way to group these rows together into groups composed entirely of matching records?”
-- After the labeling process is finished, you can upload your labels with a call to @StartImportLabelsTaskRun@ . After @StartImportLabelsTaskRun@ finishes, all future runs of the machine learning transform will use the new and improved labels and perform a higher-quality transformation.
module Network.AWS.Glue.StartMLLabelingSetGenerationTaskRun
  ( -- * Creating a request
    StartMLLabelingSetGenerationTaskRun (..),
    mkStartMLLabelingSetGenerationTaskRun,

    -- ** Request lenses
    smllsgtrTransformId,
    smllsgtrOutputS3Path,

    -- * Destructuring the response
    StartMLLabelingSetGenerationTaskRunResponse (..),
    mkStartMLLabelingSetGenerationTaskRunResponse,

    -- ** Response lenses
    smllsgtrrrsTaskRunId,
    smllsgtrrrsResponseStatus,
  )
where

import qualified Network.AWS.Glue.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStartMLLabelingSetGenerationTaskRun' smart constructor.
data StartMLLabelingSetGenerationTaskRun = StartMLLabelingSetGenerationTaskRun'
  { -- | The unique identifier of the machine learning transform.
    transformId :: Types.HashString,
    -- | The Amazon Simple Storage Service (Amazon S3) path where you generate the labeling set.
    outputS3Path :: Types.OutputS3Path
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartMLLabelingSetGenerationTaskRun' value with any optional fields omitted.
mkStartMLLabelingSetGenerationTaskRun ::
  -- | 'transformId'
  Types.HashString ->
  -- | 'outputS3Path'
  Types.OutputS3Path ->
  StartMLLabelingSetGenerationTaskRun
mkStartMLLabelingSetGenerationTaskRun transformId outputS3Path =
  StartMLLabelingSetGenerationTaskRun' {transformId, outputS3Path}

-- | The unique identifier of the machine learning transform.
--
-- /Note:/ Consider using 'transformId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smllsgtrTransformId :: Lens.Lens' StartMLLabelingSetGenerationTaskRun Types.HashString
smllsgtrTransformId = Lens.field @"transformId"
{-# DEPRECATED smllsgtrTransformId "Use generic-lens or generic-optics with 'transformId' instead." #-}

-- | The Amazon Simple Storage Service (Amazon S3) path where you generate the labeling set.
--
-- /Note:/ Consider using 'outputS3Path' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smllsgtrOutputS3Path :: Lens.Lens' StartMLLabelingSetGenerationTaskRun Types.OutputS3Path
smllsgtrOutputS3Path = Lens.field @"outputS3Path"
{-# DEPRECATED smllsgtrOutputS3Path "Use generic-lens or generic-optics with 'outputS3Path' instead." #-}

instance Core.FromJSON StartMLLabelingSetGenerationTaskRun where
  toJSON StartMLLabelingSetGenerationTaskRun {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("TransformId" Core..= transformId),
            Core.Just ("OutputS3Path" Core..= outputS3Path)
          ]
      )

instance Core.AWSRequest StartMLLabelingSetGenerationTaskRun where
  type
    Rs StartMLLabelingSetGenerationTaskRun =
      StartMLLabelingSetGenerationTaskRunResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AWSGlue.StartMLLabelingSetGenerationTaskRun")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          StartMLLabelingSetGenerationTaskRunResponse'
            Core.<$> (x Core..:? "TaskRunId") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkStartMLLabelingSetGenerationTaskRunResponse' smart constructor.
data StartMLLabelingSetGenerationTaskRunResponse = StartMLLabelingSetGenerationTaskRunResponse'
  { -- | The unique run identifier that is associated with this task run.
    taskRunId :: Core.Maybe Types.HashString,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartMLLabelingSetGenerationTaskRunResponse' value with any optional fields omitted.
mkStartMLLabelingSetGenerationTaskRunResponse ::
  -- | 'responseStatus'
  Core.Int ->
  StartMLLabelingSetGenerationTaskRunResponse
mkStartMLLabelingSetGenerationTaskRunResponse responseStatus =
  StartMLLabelingSetGenerationTaskRunResponse'
    { taskRunId =
        Core.Nothing,
      responseStatus
    }

-- | The unique run identifier that is associated with this task run.
--
-- /Note:/ Consider using 'taskRunId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smllsgtrrrsTaskRunId :: Lens.Lens' StartMLLabelingSetGenerationTaskRunResponse (Core.Maybe Types.HashString)
smllsgtrrrsTaskRunId = Lens.field @"taskRunId"
{-# DEPRECATED smllsgtrrrsTaskRunId "Use generic-lens or generic-optics with 'taskRunId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smllsgtrrrsResponseStatus :: Lens.Lens' StartMLLabelingSetGenerationTaskRunResponse Core.Int
smllsgtrrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED smllsgtrrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}