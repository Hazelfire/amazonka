{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.CreateBatchPrediction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a @DataSource@ . This operation creates a new @BatchPrediction@ , and uses an @MLModel@ and the data files referenced by the @DataSource@ as information sources.
--
-- @CreateBatchPrediction@ is an asynchronous operation. In response to @CreateBatchPrediction@ , Amazon Machine Learning (Amazon ML) immediately returns and sets the @BatchPrediction@ status to @PENDING@ . After the @BatchPrediction@ completes, Amazon ML sets the status to @COMPLETED@ .
-- You can poll for status updates by using the 'GetBatchPrediction' operation and checking the @Status@ parameter of the result. After the @COMPLETED@ status appears, the results are available in the location specified by the @OutputUri@ parameter.
module Network.AWS.MachineLearning.CreateBatchPrediction
  ( -- * Creating a request
    CreateBatchPrediction (..),
    mkCreateBatchPrediction,

    -- ** Request lenses
    cbpBatchPredictionId,
    cbpMLModelId,
    cbpBatchPredictionDataSourceId,
    cbpOutputUri,
    cbpBatchPredictionName,

    -- * Destructuring the response
    CreateBatchPredictionResponse (..),
    mkCreateBatchPredictionResponse,

    -- ** Response lenses
    cbprrsBatchPredictionId,
    cbprrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MachineLearning.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateBatchPrediction' smart constructor.
data CreateBatchPrediction = CreateBatchPrediction'
  { -- | A user-supplied ID that uniquely identifies the @BatchPrediction@ .
    batchPredictionId :: Types.BatchPredictionId,
    -- | The ID of the @MLModel@ that will generate predictions for the group of observations.
    mLModelId :: Types.MLModelId,
    -- | The ID of the @DataSource@ that points to the group of observations to predict.
    batchPredictionDataSourceId :: Types.BatchPredictionDataSourceId,
    -- | The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the @s3 key@ portion of the @outputURI@ field: ':', '//', '/./', '/../'.
    --
    -- Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the <http://docs.aws.amazon.com/machine-learning/latest/dg Amazon Machine Learning Developer Guide> .
    outputUri :: Types.S3Url,
    -- | A user-supplied name or description of the @BatchPrediction@ . @BatchPredictionName@ can only use the UTF-8 character set.
    batchPredictionName :: Core.Maybe Types.EntityName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateBatchPrediction' value with any optional fields omitted.
mkCreateBatchPrediction ::
  -- | 'batchPredictionId'
  Types.BatchPredictionId ->
  -- | 'mLModelId'
  Types.MLModelId ->
  -- | 'batchPredictionDataSourceId'
  Types.BatchPredictionDataSourceId ->
  -- | 'outputUri'
  Types.S3Url ->
  CreateBatchPrediction
mkCreateBatchPrediction
  batchPredictionId
  mLModelId
  batchPredictionDataSourceId
  outputUri =
    CreateBatchPrediction'
      { batchPredictionId,
        mLModelId,
        batchPredictionDataSourceId,
        outputUri,
        batchPredictionName = Core.Nothing
      }

-- | A user-supplied ID that uniquely identifies the @BatchPrediction@ .
--
-- /Note:/ Consider using 'batchPredictionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cbpBatchPredictionId :: Lens.Lens' CreateBatchPrediction Types.BatchPredictionId
cbpBatchPredictionId = Lens.field @"batchPredictionId"
{-# DEPRECATED cbpBatchPredictionId "Use generic-lens or generic-optics with 'batchPredictionId' instead." #-}

-- | The ID of the @MLModel@ that will generate predictions for the group of observations.
--
-- /Note:/ Consider using 'mLModelId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cbpMLModelId :: Lens.Lens' CreateBatchPrediction Types.MLModelId
cbpMLModelId = Lens.field @"mLModelId"
{-# DEPRECATED cbpMLModelId "Use generic-lens or generic-optics with 'mLModelId' instead." #-}

-- | The ID of the @DataSource@ that points to the group of observations to predict.
--
-- /Note:/ Consider using 'batchPredictionDataSourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cbpBatchPredictionDataSourceId :: Lens.Lens' CreateBatchPrediction Types.BatchPredictionDataSourceId
cbpBatchPredictionDataSourceId = Lens.field @"batchPredictionDataSourceId"
{-# DEPRECATED cbpBatchPredictionDataSourceId "Use generic-lens or generic-optics with 'batchPredictionDataSourceId' instead." #-}

-- | The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the @s3 key@ portion of the @outputURI@ field: ':', '//', '/./', '/../'.
--
-- Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the <http://docs.aws.amazon.com/machine-learning/latest/dg Amazon Machine Learning Developer Guide> .
--
-- /Note:/ Consider using 'outputUri' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cbpOutputUri :: Lens.Lens' CreateBatchPrediction Types.S3Url
cbpOutputUri = Lens.field @"outputUri"
{-# DEPRECATED cbpOutputUri "Use generic-lens or generic-optics with 'outputUri' instead." #-}

-- | A user-supplied name or description of the @BatchPrediction@ . @BatchPredictionName@ can only use the UTF-8 character set.
--
-- /Note:/ Consider using 'batchPredictionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cbpBatchPredictionName :: Lens.Lens' CreateBatchPrediction (Core.Maybe Types.EntityName)
cbpBatchPredictionName = Lens.field @"batchPredictionName"
{-# DEPRECATED cbpBatchPredictionName "Use generic-lens or generic-optics with 'batchPredictionName' instead." #-}

instance Core.FromJSON CreateBatchPrediction where
  toJSON CreateBatchPrediction {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("BatchPredictionId" Core..= batchPredictionId),
            Core.Just ("MLModelId" Core..= mLModelId),
            Core.Just
              ( "BatchPredictionDataSourceId"
                  Core..= batchPredictionDataSourceId
              ),
            Core.Just ("OutputUri" Core..= outputUri),
            ("BatchPredictionName" Core..=) Core.<$> batchPredictionName
          ]
      )

instance Core.AWSRequest CreateBatchPrediction where
  type Rs CreateBatchPrediction = CreateBatchPredictionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AmazonML_20141212.CreateBatchPrediction")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateBatchPredictionResponse'
            Core.<$> (x Core..:? "BatchPredictionId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the output of a @CreateBatchPrediction@ operation, and is an acknowledgement that Amazon ML received the request.
--
-- The @CreateBatchPrediction@ operation is asynchronous. You can poll for status updates by using the @>GetBatchPrediction@ operation and checking the @Status@ parameter of the result.
--
-- /See:/ 'mkCreateBatchPredictionResponse' smart constructor.
data CreateBatchPredictionResponse = CreateBatchPredictionResponse'
  { -- | A user-supplied ID that uniquely identifies the @BatchPrediction@ . This value is identical to the value of the @BatchPredictionId@ in the request.
    batchPredictionId :: Core.Maybe Types.BatchPredictionId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateBatchPredictionResponse' value with any optional fields omitted.
mkCreateBatchPredictionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateBatchPredictionResponse
mkCreateBatchPredictionResponse responseStatus =
  CreateBatchPredictionResponse'
    { batchPredictionId = Core.Nothing,
      responseStatus
    }

-- | A user-supplied ID that uniquely identifies the @BatchPrediction@ . This value is identical to the value of the @BatchPredictionId@ in the request.
--
-- /Note:/ Consider using 'batchPredictionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cbprrsBatchPredictionId :: Lens.Lens' CreateBatchPredictionResponse (Core.Maybe Types.BatchPredictionId)
cbprrsBatchPredictionId = Lens.field @"batchPredictionId"
{-# DEPRECATED cbprrsBatchPredictionId "Use generic-lens or generic-optics with 'batchPredictionId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cbprrsResponseStatus :: Lens.Lens' CreateBatchPredictionResponse Core.Int
cbprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cbprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}