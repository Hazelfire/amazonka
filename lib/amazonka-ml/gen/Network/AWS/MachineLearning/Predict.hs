{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Predict
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a prediction for the observation using the specified @ML Model@ .
module Network.AWS.MachineLearning.Predict
  ( -- * Creating a request
    Predict (..),
    mkPredict,

    -- ** Request lenses
    pMLModelId,
    pRecord,
    pPredictEndpoint,

    -- * Destructuring the response
    PredictResponse (..),
    mkPredictResponse,

    -- ** Response lenses
    prrsPrediction,
    prrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MachineLearning.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPredict' smart constructor.
data Predict = Predict'
  { -- | A unique identifier of the @MLModel@ .
    mLModelId :: Types.MLModelId,
    record :: Core.HashMap Types.VariableName Types.VariableValue,
    predictEndpoint :: Types.VipURL
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Predict' value with any optional fields omitted.
mkPredict ::
  -- | 'mLModelId'
  Types.MLModelId ->
  -- | 'predictEndpoint'
  Types.VipURL ->
  Predict
mkPredict mLModelId predictEndpoint =
  Predict' {mLModelId, record = Core.mempty, predictEndpoint}

-- | A unique identifier of the @MLModel@ .
--
-- /Note:/ Consider using 'mLModelId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pMLModelId :: Lens.Lens' Predict Types.MLModelId
pMLModelId = Lens.field @"mLModelId"
{-# DEPRECATED pMLModelId "Use generic-lens or generic-optics with 'mLModelId' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'record' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pRecord :: Lens.Lens' Predict (Core.HashMap Types.VariableName Types.VariableValue)
pRecord = Lens.field @"record"
{-# DEPRECATED pRecord "Use generic-lens or generic-optics with 'record' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'predictEndpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pPredictEndpoint :: Lens.Lens' Predict Types.VipURL
pPredictEndpoint = Lens.field @"predictEndpoint"
{-# DEPRECATED pPredictEndpoint "Use generic-lens or generic-optics with 'predictEndpoint' instead." #-}

instance Core.FromJSON Predict where
  toJSON Predict {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("MLModelId" Core..= mLModelId),
            Core.Just ("Record" Core..= record),
            Core.Just ("PredictEndpoint" Core..= predictEndpoint)
          ]
      )

instance Core.AWSRequest Predict where
  type Rs Predict = PredictResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AmazonML_20141212.Predict")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          PredictResponse'
            Core.<$> (x Core..:? "Prediction") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkPredictResponse' smart constructor.
data PredictResponse = PredictResponse'
  { prediction :: Core.Maybe Types.Prediction,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PredictResponse' value with any optional fields omitted.
mkPredictResponse ::
  -- | 'responseStatus'
  Core.Int ->
  PredictResponse
mkPredictResponse responseStatus =
  PredictResponse' {prediction = Core.Nothing, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'prediction' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prrsPrediction :: Lens.Lens' PredictResponse (Core.Maybe Types.Prediction)
prrsPrediction = Lens.field @"prediction"
{-# DEPRECATED prrsPrediction "Use generic-lens or generic-optics with 'prediction' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prrsResponseStatus :: Lens.Lens' PredictResponse Core.Int
prrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED prrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}