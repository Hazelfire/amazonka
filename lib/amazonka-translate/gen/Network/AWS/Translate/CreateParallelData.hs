{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.CreateParallelData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a parallel data resource in Amazon Translate by importing an input file from Amazon S3. Parallel data files contain examples of source phrases and their translations from your translation memory. By adding parallel data, you can influence the style, tone, and word choice in your translation output.
module Network.AWS.Translate.CreateParallelData
  ( -- * Creating a request
    CreateParallelData (..),
    mkCreateParallelData,

    -- ** Request lenses
    cpdName,
    cpdParallelDataConfig,
    cpdClientToken,
    cpdDescription,
    cpdEncryptionKey,

    -- * Destructuring the response
    CreateParallelDataResponse (..),
    mkCreateParallelDataResponse,

    -- ** Response lenses
    cpdrrsName,
    cpdrrsStatus,
    cpdrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Translate.Types as Types

-- | /See:/ 'mkCreateParallelData' smart constructor.
data CreateParallelData = CreateParallelData'
  { -- | A custom name for the parallel data resource in Amazon Translate. You must assign a name that is unique in the account and region.
    name :: Types.ResourceName,
    -- | Specifies the format and S3 location of the parallel data input file.
    parallelDataConfig :: Types.ParallelDataConfig,
    -- | A unique identifier for the request. This token is automatically generated when you use Amazon Translate through an AWS SDK.
    clientToken :: Types.ClientTokenString,
    -- | A custom description for the parallel data resource in Amazon Translate.
    description :: Core.Maybe Types.Description,
    encryptionKey :: Core.Maybe Types.EncryptionKey
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateParallelData' value with any optional fields omitted.
mkCreateParallelData ::
  -- | 'name'
  Types.ResourceName ->
  -- | 'parallelDataConfig'
  Types.ParallelDataConfig ->
  -- | 'clientToken'
  Types.ClientTokenString ->
  CreateParallelData
mkCreateParallelData name parallelDataConfig clientToken =
  CreateParallelData'
    { name,
      parallelDataConfig,
      clientToken,
      description = Core.Nothing,
      encryptionKey = Core.Nothing
    }

-- | A custom name for the parallel data resource in Amazon Translate. You must assign a name that is unique in the account and region.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpdName :: Lens.Lens' CreateParallelData Types.ResourceName
cpdName = Lens.field @"name"
{-# DEPRECATED cpdName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | Specifies the format and S3 location of the parallel data input file.
--
-- /Note:/ Consider using 'parallelDataConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpdParallelDataConfig :: Lens.Lens' CreateParallelData Types.ParallelDataConfig
cpdParallelDataConfig = Lens.field @"parallelDataConfig"
{-# DEPRECATED cpdParallelDataConfig "Use generic-lens or generic-optics with 'parallelDataConfig' instead." #-}

-- | A unique identifier for the request. This token is automatically generated when you use Amazon Translate through an AWS SDK.
--
-- /Note:/ Consider using 'clientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpdClientToken :: Lens.Lens' CreateParallelData Types.ClientTokenString
cpdClientToken = Lens.field @"clientToken"
{-# DEPRECATED cpdClientToken "Use generic-lens or generic-optics with 'clientToken' instead." #-}

-- | A custom description for the parallel data resource in Amazon Translate.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpdDescription :: Lens.Lens' CreateParallelData (Core.Maybe Types.Description)
cpdDescription = Lens.field @"description"
{-# DEPRECATED cpdDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'encryptionKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpdEncryptionKey :: Lens.Lens' CreateParallelData (Core.Maybe Types.EncryptionKey)
cpdEncryptionKey = Lens.field @"encryptionKey"
{-# DEPRECATED cpdEncryptionKey "Use generic-lens or generic-optics with 'encryptionKey' instead." #-}

instance Core.FromJSON CreateParallelData where
  toJSON CreateParallelData {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Name" Core..= name),
            Core.Just ("ParallelDataConfig" Core..= parallelDataConfig),
            Core.Just ("ClientToken" Core..= clientToken),
            ("Description" Core..=) Core.<$> description,
            ("EncryptionKey" Core..=) Core.<$> encryptionKey
          ]
      )

instance Core.AWSRequest CreateParallelData where
  type Rs CreateParallelData = CreateParallelDataResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSShineFrontendService_20170701.CreateParallelData"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateParallelDataResponse'
            Core.<$> (x Core..:? "Name")
            Core.<*> (x Core..:? "Status")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateParallelDataResponse' smart constructor.
data CreateParallelDataResponse = CreateParallelDataResponse'
  { -- | The custom name that you assigned to the parallel data resource.
    name :: Core.Maybe Types.Name,
    -- | The status of the parallel data resource. When the resource is ready for you to use, the status is @ACTIVE@ .
    status :: Core.Maybe Types.ParallelDataStatus,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateParallelDataResponse' value with any optional fields omitted.
mkCreateParallelDataResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateParallelDataResponse
mkCreateParallelDataResponse responseStatus =
  CreateParallelDataResponse'
    { name = Core.Nothing,
      status = Core.Nothing,
      responseStatus
    }

-- | The custom name that you assigned to the parallel data resource.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpdrrsName :: Lens.Lens' CreateParallelDataResponse (Core.Maybe Types.Name)
cpdrrsName = Lens.field @"name"
{-# DEPRECATED cpdrrsName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The status of the parallel data resource. When the resource is ready for you to use, the status is @ACTIVE@ .
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpdrrsStatus :: Lens.Lens' CreateParallelDataResponse (Core.Maybe Types.ParallelDataStatus)
cpdrrsStatus = Lens.field @"status"
{-# DEPRECATED cpdrrsStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpdrrsResponseStatus :: Lens.Lens' CreateParallelDataResponse Core.Int
cpdrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cpdrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}