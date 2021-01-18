{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.DescribeAlgorithm
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of the specified algorithm that is in your account.
module Network.AWS.SageMaker.DescribeAlgorithm
  ( -- * Creating a request
    DescribeAlgorithm (..),
    mkDescribeAlgorithm,

    -- ** Request lenses
    dAlgorithmName,

    -- * Destructuring the response
    DescribeAlgorithmResponse (..),
    mkDescribeAlgorithmResponse,

    -- ** Response lenses
    darfrsAlgorithmName,
    darfrsAlgorithmArn,
    darfrsCreationTime,
    darfrsTrainingSpecification,
    darfrsAlgorithmStatus,
    darfrsAlgorithmStatusDetails,
    darfrsAlgorithmDescription,
    darfrsCertifyForMarketplace,
    darfrsInferenceSpecification,
    darfrsProductId,
    darfrsValidationSpecification,
    darfrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SageMaker.Types as Types

-- | /See:/ 'mkDescribeAlgorithm' smart constructor.
newtype DescribeAlgorithm = DescribeAlgorithm'
  { -- | The name of the algorithm to describe.
    algorithmName :: Types.AlgorithmName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeAlgorithm' value with any optional fields omitted.
mkDescribeAlgorithm ::
  -- | 'algorithmName'
  Types.AlgorithmName ->
  DescribeAlgorithm
mkDescribeAlgorithm algorithmName =
  DescribeAlgorithm' {algorithmName}

-- | The name of the algorithm to describe.
--
-- /Note:/ Consider using 'algorithmName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dAlgorithmName :: Lens.Lens' DescribeAlgorithm Types.AlgorithmName
dAlgorithmName = Lens.field @"algorithmName"
{-# DEPRECATED dAlgorithmName "Use generic-lens or generic-optics with 'algorithmName' instead." #-}

instance Core.FromJSON DescribeAlgorithm where
  toJSON DescribeAlgorithm {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("AlgorithmName" Core..= algorithmName)]
      )

instance Core.AWSRequest DescribeAlgorithm where
  type Rs DescribeAlgorithm = DescribeAlgorithmResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "SageMaker.DescribeAlgorithm")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAlgorithmResponse'
            Core.<$> (x Core..: "AlgorithmName")
            Core.<*> (x Core..: "AlgorithmArn")
            Core.<*> (x Core..: "CreationTime")
            Core.<*> (x Core..: "TrainingSpecification")
            Core.<*> (x Core..: "AlgorithmStatus")
            Core.<*> (x Core..: "AlgorithmStatusDetails")
            Core.<*> (x Core..:? "AlgorithmDescription")
            Core.<*> (x Core..:? "CertifyForMarketplace")
            Core.<*> (x Core..:? "InferenceSpecification")
            Core.<*> (x Core..:? "ProductId")
            Core.<*> (x Core..:? "ValidationSpecification")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDescribeAlgorithmResponse' smart constructor.
data DescribeAlgorithmResponse = DescribeAlgorithmResponse'
  { -- | The name of the algorithm being described.
    algorithmName :: Types.EntityName,
    -- | The Amazon Resource Name (ARN) of the algorithm.
    algorithmArn :: Types.AlgorithmArn,
    -- | A timestamp specifying when the algorithm was created.
    creationTime :: Core.NominalDiffTime,
    -- | Details about training jobs run by this algorithm.
    trainingSpecification :: Types.TrainingSpecification,
    -- | The current status of the algorithm.
    algorithmStatus :: Types.AlgorithmStatus,
    -- | Details about the current status of the algorithm.
    algorithmStatusDetails :: Types.AlgorithmStatusDetails,
    -- | A brief summary about the algorithm.
    algorithmDescription :: Core.Maybe Types.EntityDescription,
    -- | Whether the algorithm is certified to be listed in AWS Marketplace.
    certifyForMarketplace :: Core.Maybe Core.Bool,
    -- | Details about inference jobs that the algorithm runs.
    inferenceSpecification :: Core.Maybe Types.InferenceSpecification,
    -- | The product identifier of the algorithm.
    productId :: Core.Maybe Types.ProductId,
    -- | Details about configurations for one or more training jobs that Amazon SageMaker runs to test the algorithm.
    validationSpecification :: Core.Maybe Types.AlgorithmValidationSpecification,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeAlgorithmResponse' value with any optional fields omitted.
mkDescribeAlgorithmResponse ::
  -- | 'algorithmName'
  Types.EntityName ->
  -- | 'algorithmArn'
  Types.AlgorithmArn ->
  -- | 'creationTime'
  Core.NominalDiffTime ->
  -- | 'trainingSpecification'
  Types.TrainingSpecification ->
  -- | 'algorithmStatus'
  Types.AlgorithmStatus ->
  -- | 'algorithmStatusDetails'
  Types.AlgorithmStatusDetails ->
  -- | 'responseStatus'
  Core.Int ->
  DescribeAlgorithmResponse
mkDescribeAlgorithmResponse
  algorithmName
  algorithmArn
  creationTime
  trainingSpecification
  algorithmStatus
  algorithmStatusDetails
  responseStatus =
    DescribeAlgorithmResponse'
      { algorithmName,
        algorithmArn,
        creationTime,
        trainingSpecification,
        algorithmStatus,
        algorithmStatusDetails,
        algorithmDescription = Core.Nothing,
        certifyForMarketplace = Core.Nothing,
        inferenceSpecification = Core.Nothing,
        productId = Core.Nothing,
        validationSpecification = Core.Nothing,
        responseStatus
      }

-- | The name of the algorithm being described.
--
-- /Note:/ Consider using 'algorithmName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsAlgorithmName :: Lens.Lens' DescribeAlgorithmResponse Types.EntityName
darfrsAlgorithmName = Lens.field @"algorithmName"
{-# DEPRECATED darfrsAlgorithmName "Use generic-lens or generic-optics with 'algorithmName' instead." #-}

-- | The Amazon Resource Name (ARN) of the algorithm.
--
-- /Note:/ Consider using 'algorithmArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsAlgorithmArn :: Lens.Lens' DescribeAlgorithmResponse Types.AlgorithmArn
darfrsAlgorithmArn = Lens.field @"algorithmArn"
{-# DEPRECATED darfrsAlgorithmArn "Use generic-lens or generic-optics with 'algorithmArn' instead." #-}

-- | A timestamp specifying when the algorithm was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsCreationTime :: Lens.Lens' DescribeAlgorithmResponse Core.NominalDiffTime
darfrsCreationTime = Lens.field @"creationTime"
{-# DEPRECATED darfrsCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

-- | Details about training jobs run by this algorithm.
--
-- /Note:/ Consider using 'trainingSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsTrainingSpecification :: Lens.Lens' DescribeAlgorithmResponse Types.TrainingSpecification
darfrsTrainingSpecification = Lens.field @"trainingSpecification"
{-# DEPRECATED darfrsTrainingSpecification "Use generic-lens or generic-optics with 'trainingSpecification' instead." #-}

-- | The current status of the algorithm.
--
-- /Note:/ Consider using 'algorithmStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsAlgorithmStatus :: Lens.Lens' DescribeAlgorithmResponse Types.AlgorithmStatus
darfrsAlgorithmStatus = Lens.field @"algorithmStatus"
{-# DEPRECATED darfrsAlgorithmStatus "Use generic-lens or generic-optics with 'algorithmStatus' instead." #-}

-- | Details about the current status of the algorithm.
--
-- /Note:/ Consider using 'algorithmStatusDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsAlgorithmStatusDetails :: Lens.Lens' DescribeAlgorithmResponse Types.AlgorithmStatusDetails
darfrsAlgorithmStatusDetails = Lens.field @"algorithmStatusDetails"
{-# DEPRECATED darfrsAlgorithmStatusDetails "Use generic-lens or generic-optics with 'algorithmStatusDetails' instead." #-}

-- | A brief summary about the algorithm.
--
-- /Note:/ Consider using 'algorithmDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsAlgorithmDescription :: Lens.Lens' DescribeAlgorithmResponse (Core.Maybe Types.EntityDescription)
darfrsAlgorithmDescription = Lens.field @"algorithmDescription"
{-# DEPRECATED darfrsAlgorithmDescription "Use generic-lens or generic-optics with 'algorithmDescription' instead." #-}

-- | Whether the algorithm is certified to be listed in AWS Marketplace.
--
-- /Note:/ Consider using 'certifyForMarketplace' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsCertifyForMarketplace :: Lens.Lens' DescribeAlgorithmResponse (Core.Maybe Core.Bool)
darfrsCertifyForMarketplace = Lens.field @"certifyForMarketplace"
{-# DEPRECATED darfrsCertifyForMarketplace "Use generic-lens or generic-optics with 'certifyForMarketplace' instead." #-}

-- | Details about inference jobs that the algorithm runs.
--
-- /Note:/ Consider using 'inferenceSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsInferenceSpecification :: Lens.Lens' DescribeAlgorithmResponse (Core.Maybe Types.InferenceSpecification)
darfrsInferenceSpecification = Lens.field @"inferenceSpecification"
{-# DEPRECATED darfrsInferenceSpecification "Use generic-lens or generic-optics with 'inferenceSpecification' instead." #-}

-- | The product identifier of the algorithm.
--
-- /Note:/ Consider using 'productId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsProductId :: Lens.Lens' DescribeAlgorithmResponse (Core.Maybe Types.ProductId)
darfrsProductId = Lens.field @"productId"
{-# DEPRECATED darfrsProductId "Use generic-lens or generic-optics with 'productId' instead." #-}

-- | Details about configurations for one or more training jobs that Amazon SageMaker runs to test the algorithm.
--
-- /Note:/ Consider using 'validationSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsValidationSpecification :: Lens.Lens' DescribeAlgorithmResponse (Core.Maybe Types.AlgorithmValidationSpecification)
darfrsValidationSpecification = Lens.field @"validationSpecification"
{-# DEPRECATED darfrsValidationSpecification "Use generic-lens or generic-optics with 'validationSpecification' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darfrsResponseStatus :: Lens.Lens' DescribeAlgorithmResponse Core.Int
darfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED darfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}