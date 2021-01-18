{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.SubscribeToDataset
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Subscribes to receive notifications when a dataset is modified by another device.
--
-- This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
module Network.AWS.CognitoSync.SubscribeToDataset
  ( -- * Creating a request
    SubscribeToDataset (..),
    mkSubscribeToDataset,

    -- ** Request lenses
    stdIdentityPoolId,
    stdIdentityId,
    stdDatasetName,
    stdDeviceId,

    -- * Destructuring the response
    SubscribeToDatasetResponse (..),
    mkSubscribeToDatasetResponse,

    -- ** Response lenses
    stdrrsResponseStatus,
  )
where

import qualified Network.AWS.CognitoSync.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to SubscribeToDatasetRequest.
--
-- /See:/ 'mkSubscribeToDataset' smart constructor.
data SubscribeToDataset = SubscribeToDataset'
  { -- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which the identity belongs.
    identityPoolId :: Types.IdentityPoolId,
    -- | Unique ID for this identity.
    identityId :: Types.IdentityId,
    -- | The name of the dataset to subcribe to.
    datasetName :: Types.DatasetName,
    -- | The unique ID generated for this device by Cognito.
    deviceId :: Types.DeviceId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SubscribeToDataset' value with any optional fields omitted.
mkSubscribeToDataset ::
  -- | 'identityPoolId'
  Types.IdentityPoolId ->
  -- | 'identityId'
  Types.IdentityId ->
  -- | 'datasetName'
  Types.DatasetName ->
  -- | 'deviceId'
  Types.DeviceId ->
  SubscribeToDataset
mkSubscribeToDataset identityPoolId identityId datasetName deviceId =
  SubscribeToDataset'
    { identityPoolId,
      identityId,
      datasetName,
      deviceId
    }

-- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which the identity belongs.
--
-- /Note:/ Consider using 'identityPoolId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
stdIdentityPoolId :: Lens.Lens' SubscribeToDataset Types.IdentityPoolId
stdIdentityPoolId = Lens.field @"identityPoolId"
{-# DEPRECATED stdIdentityPoolId "Use generic-lens or generic-optics with 'identityPoolId' instead." #-}

-- | Unique ID for this identity.
--
-- /Note:/ Consider using 'identityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
stdIdentityId :: Lens.Lens' SubscribeToDataset Types.IdentityId
stdIdentityId = Lens.field @"identityId"
{-# DEPRECATED stdIdentityId "Use generic-lens or generic-optics with 'identityId' instead." #-}

-- | The name of the dataset to subcribe to.
--
-- /Note:/ Consider using 'datasetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
stdDatasetName :: Lens.Lens' SubscribeToDataset Types.DatasetName
stdDatasetName = Lens.field @"datasetName"
{-# DEPRECATED stdDatasetName "Use generic-lens or generic-optics with 'datasetName' instead." #-}

-- | The unique ID generated for this device by Cognito.
--
-- /Note:/ Consider using 'deviceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
stdDeviceId :: Lens.Lens' SubscribeToDataset Types.DeviceId
stdDeviceId = Lens.field @"deviceId"
{-# DEPRECATED stdDeviceId "Use generic-lens or generic-optics with 'deviceId' instead." #-}

instance Core.FromJSON SubscribeToDataset where
  toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest SubscribeToDataset where
  type Rs SubscribeToDataset = SubscribeToDatasetResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath =
          Core.rawPath
            ( "/identitypools/" Core.<> (Core.toText identityPoolId)
                Core.<> ("/identities/")
                Core.<> (Core.toText identityId)
                Core.<> ("/datasets/")
                Core.<> (Core.toText datasetName)
                Core.<> ("/subscriptions/")
                Core.<> (Core.toText deviceId)
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          SubscribeToDatasetResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | Response to a SubscribeToDataset request.
--
-- /See:/ 'mkSubscribeToDatasetResponse' smart constructor.
newtype SubscribeToDatasetResponse = SubscribeToDatasetResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'SubscribeToDatasetResponse' value with any optional fields omitted.
mkSubscribeToDatasetResponse ::
  -- | 'responseStatus'
  Core.Int ->
  SubscribeToDatasetResponse
mkSubscribeToDatasetResponse responseStatus =
  SubscribeToDatasetResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
stdrrsResponseStatus :: Lens.Lens' SubscribeToDatasetResponse Core.Int
stdrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED stdrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}