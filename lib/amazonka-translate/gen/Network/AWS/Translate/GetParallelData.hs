{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.GetParallelData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about a parallel data resource.
module Network.AWS.Translate.GetParallelData
  ( -- * Creating a request
    GetParallelData (..),
    mkGetParallelData,

    -- ** Request lenses
    gpdName,

    -- * Destructuring the response
    GetParallelDataResponse (..),
    mkGetParallelDataResponse,

    -- ** Response lenses
    gpdrrsAuxiliaryDataLocation,
    gpdrrsDataLocation,
    gpdrrsLatestUpdateAttemptAuxiliaryDataLocation,
    gpdrrsParallelDataProperties,
    gpdrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Translate.Types as Types

-- | /See:/ 'mkGetParallelData' smart constructor.
newtype GetParallelData = GetParallelData'
  { -- | The name of the parallel data resource that is being retrieved.
    name :: Types.Name
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetParallelData' value with any optional fields omitted.
mkGetParallelData ::
  -- | 'name'
  Types.Name ->
  GetParallelData
mkGetParallelData name = GetParallelData' {name}

-- | The name of the parallel data resource that is being retrieved.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpdName :: Lens.Lens' GetParallelData Types.Name
gpdName = Lens.field @"name"
{-# DEPRECATED gpdName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Core.FromJSON GetParallelData where
  toJSON GetParallelData {..} =
    Core.object (Core.catMaybes [Core.Just ("Name" Core..= name)])

instance Core.AWSRequest GetParallelData where
  type Rs GetParallelData = GetParallelDataResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSShineFrontendService_20170701.GetParallelData"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetParallelDataResponse'
            Core.<$> (x Core..:? "AuxiliaryDataLocation")
            Core.<*> (x Core..:? "DataLocation")
            Core.<*> (x Core..:? "LatestUpdateAttemptAuxiliaryDataLocation")
            Core.<*> (x Core..:? "ParallelDataProperties")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetParallelDataResponse' smart constructor.
data GetParallelDataResponse = GetParallelDataResponse'
  { -- | The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to create a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.
    auxiliaryDataLocation :: Core.Maybe Types.ParallelDataDataLocation,
    -- | The location of the most recent parallel data input file that was successfully imported into Amazon Translate. The location is returned as a presigned URL that has a 30 minute expiration.
    dataLocation :: Core.Maybe Types.ParallelDataDataLocation,
    -- | The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to update a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.
    latestUpdateAttemptAuxiliaryDataLocation :: Core.Maybe Types.ParallelDataDataLocation,
    -- | The properties of the parallel data resource that is being retrieved.
    parallelDataProperties :: Core.Maybe Types.ParallelDataProperties,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetParallelDataResponse' value with any optional fields omitted.
mkGetParallelDataResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetParallelDataResponse
mkGetParallelDataResponse responseStatus =
  GetParallelDataResponse'
    { auxiliaryDataLocation = Core.Nothing,
      dataLocation = Core.Nothing,
      latestUpdateAttemptAuxiliaryDataLocation = Core.Nothing,
      parallelDataProperties = Core.Nothing,
      responseStatus
    }

-- | The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to create a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.
--
-- /Note:/ Consider using 'auxiliaryDataLocation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpdrrsAuxiliaryDataLocation :: Lens.Lens' GetParallelDataResponse (Core.Maybe Types.ParallelDataDataLocation)
gpdrrsAuxiliaryDataLocation = Lens.field @"auxiliaryDataLocation"
{-# DEPRECATED gpdrrsAuxiliaryDataLocation "Use generic-lens or generic-optics with 'auxiliaryDataLocation' instead." #-}

-- | The location of the most recent parallel data input file that was successfully imported into Amazon Translate. The location is returned as a presigned URL that has a 30 minute expiration.
--
-- /Note:/ Consider using 'dataLocation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpdrrsDataLocation :: Lens.Lens' GetParallelDataResponse (Core.Maybe Types.ParallelDataDataLocation)
gpdrrsDataLocation = Lens.field @"dataLocation"
{-# DEPRECATED gpdrrsDataLocation "Use generic-lens or generic-optics with 'dataLocation' instead." #-}

-- | The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to update a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.
--
-- /Note:/ Consider using 'latestUpdateAttemptAuxiliaryDataLocation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpdrrsLatestUpdateAttemptAuxiliaryDataLocation :: Lens.Lens' GetParallelDataResponse (Core.Maybe Types.ParallelDataDataLocation)
gpdrrsLatestUpdateAttemptAuxiliaryDataLocation = Lens.field @"latestUpdateAttemptAuxiliaryDataLocation"
{-# DEPRECATED gpdrrsLatestUpdateAttemptAuxiliaryDataLocation "Use generic-lens or generic-optics with 'latestUpdateAttemptAuxiliaryDataLocation' instead." #-}

-- | The properties of the parallel data resource that is being retrieved.
--
-- /Note:/ Consider using 'parallelDataProperties' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpdrrsParallelDataProperties :: Lens.Lens' GetParallelDataResponse (Core.Maybe Types.ParallelDataProperties)
gpdrrsParallelDataProperties = Lens.field @"parallelDataProperties"
{-# DEPRECATED gpdrrsParallelDataProperties "Use generic-lens or generic-optics with 'parallelDataProperties' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpdrrsResponseStatus :: Lens.Lens' GetParallelDataResponse Core.Int
gpdrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gpdrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}