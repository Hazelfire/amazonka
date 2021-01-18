{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductDetail
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductDetail
  ( ProvisionedProductDetail (..),

    -- * Smart constructor
    mkProvisionedProductDetail,

    -- * Lenses
    ppdArn,
    ppdCreatedTime,
    ppdId,
    ppdIdempotencyToken,
    ppdLastProvisioningRecordId,
    ppdLastRecordId,
    ppdLastSuccessfulProvisioningRecordId,
    ppdLaunchRoleArn,
    ppdName,
    ppdProductId,
    ppdProvisioningArtifactId,
    ppdStatus,
    ppdStatusMessage,
    ppdType,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.ServiceCatalog.Types.IdempotencyToken as Types
import qualified Network.AWS.ServiceCatalog.Types.LastProvisioningRecordId as Types
import qualified Network.AWS.ServiceCatalog.Types.LastRecordId as Types
import qualified Network.AWS.ServiceCatalog.Types.LastSuccessfulProvisioningRecordId as Types
import qualified Network.AWS.ServiceCatalog.Types.LaunchRoleArn as Types
import qualified Network.AWS.ServiceCatalog.Types.ProductId as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisionedProductId as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisionedProductNameOrArn as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisionedProductStatusMessage as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisioningArtifactId as Types
import qualified Network.AWS.ServiceCatalog.Types.Type as Types

-- | Information about a provisioned product.
--
-- /See:/ 'mkProvisionedProductDetail' smart constructor.
data ProvisionedProductDetail = ProvisionedProductDetail'
  { -- | The ARN of the provisioned product.
    arn :: Core.Maybe Types.ProvisionedProductNameOrArn,
    -- | The UTC time stamp of the creation time.
    createdTime :: Core.Maybe Core.NominalDiffTime,
    -- | The identifier of the provisioned product.
    id :: Core.Maybe Types.ProvisionedProductId,
    -- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
    idempotencyToken :: Core.Maybe Types.IdempotencyToken,
    -- | The record identifier of the last request performed on this provisioned product of the following types:
    --
    --
    --     * ProvisionedProduct
    --
    --
    --     * UpdateProvisionedProduct
    --
    --
    --     * ExecuteProvisionedProductPlan
    --
    --
    --     * TerminateProvisionedProduct
    lastProvisioningRecordId :: Core.Maybe Types.LastProvisioningRecordId,
    -- | The record identifier of the last request performed on this provisioned product.
    lastRecordId :: Core.Maybe Types.LastRecordId,
    -- | The record identifier of the last successful request performed on this provisioned product of the following types:
    --
    --
    --     * ProvisionedProduct
    --
    --
    --     * UpdateProvisionedProduct
    --
    --
    --     * ExecuteProvisionedProductPlan
    --
    --
    --     * TerminateProvisionedProduct
    lastSuccessfulProvisioningRecordId :: Core.Maybe Types.LastSuccessfulProvisioningRecordId,
    -- | The ARN of the launch role associated with the provisioned product.
    launchRoleArn :: Core.Maybe Types.LaunchRoleArn,
    -- | The user-friendly name of the provisioned product.
    name :: Core.Maybe Types.ProvisionedProductNameOrArn,
    -- | The product identifier. For example, @prod-abcdzk7xy33qa@ .
    productId :: Core.Maybe Types.ProductId,
    -- | The identifier of the provisioning artifact. For example, @pa-4abcdjnxjj6ne@ .
    provisioningArtifactId :: Core.Maybe Types.ProvisioningArtifactId,
    -- | The current status of the provisioned product.
    --
    --
    --     * @AVAILABLE@ - Stable state, ready to perform any operation. The most recent operation succeeded and completed.
    --
    --
    --     * @UNDER_CHANGE@ - Transitive state. Operations performed might not have valid results. Wait for an @AVAILABLE@ status before performing operations.
    --
    --
    --     * @TAINTED@ - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.
    --
    --
    --     * @ERROR@ - An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.
    --
    --
    --     * @PLAN_IN_PROGRESS@ - Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an @AVAILABLE@ status before performing operations.
    status :: Core.Maybe Types.ProvisionedProductStatus,
    -- | The current status message of the provisioned product.
    statusMessage :: Core.Maybe Types.ProvisionedProductStatusMessage,
    -- | The type of provisioned product. The supported values are @CFN_STACK@ and @CFN_STACKSET@ .
    type' :: Core.Maybe Types.Type
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ProvisionedProductDetail' value with any optional fields omitted.
mkProvisionedProductDetail ::
  ProvisionedProductDetail
mkProvisionedProductDetail =
  ProvisionedProductDetail'
    { arn = Core.Nothing,
      createdTime = Core.Nothing,
      id = Core.Nothing,
      idempotencyToken = Core.Nothing,
      lastProvisioningRecordId = Core.Nothing,
      lastRecordId = Core.Nothing,
      lastSuccessfulProvisioningRecordId = Core.Nothing,
      launchRoleArn = Core.Nothing,
      name = Core.Nothing,
      productId = Core.Nothing,
      provisioningArtifactId = Core.Nothing,
      status = Core.Nothing,
      statusMessage = Core.Nothing,
      type' = Core.Nothing
    }

-- | The ARN of the provisioned product.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdArn :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.ProvisionedProductNameOrArn)
ppdArn = Lens.field @"arn"
{-# DEPRECATED ppdArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The UTC time stamp of the creation time.
--
-- /Note:/ Consider using 'createdTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdCreatedTime :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Core.NominalDiffTime)
ppdCreatedTime = Lens.field @"createdTime"
{-# DEPRECATED ppdCreatedTime "Use generic-lens or generic-optics with 'createdTime' instead." #-}

-- | The identifier of the provisioned product.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdId :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.ProvisionedProductId)
ppdId = Lens.field @"id"
{-# DEPRECATED ppdId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
--
-- /Note:/ Consider using 'idempotencyToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdIdempotencyToken :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.IdempotencyToken)
ppdIdempotencyToken = Lens.field @"idempotencyToken"
{-# DEPRECATED ppdIdempotencyToken "Use generic-lens or generic-optics with 'idempotencyToken' instead." #-}

-- | The record identifier of the last request performed on this provisioned product of the following types:
--
--
--     * ProvisionedProduct
--
--
--     * UpdateProvisionedProduct
--
--
--     * ExecuteProvisionedProductPlan
--
--
--     * TerminateProvisionedProduct
--
--
--
-- /Note:/ Consider using 'lastProvisioningRecordId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdLastProvisioningRecordId :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.LastProvisioningRecordId)
ppdLastProvisioningRecordId = Lens.field @"lastProvisioningRecordId"
{-# DEPRECATED ppdLastProvisioningRecordId "Use generic-lens or generic-optics with 'lastProvisioningRecordId' instead." #-}

-- | The record identifier of the last request performed on this provisioned product.
--
-- /Note:/ Consider using 'lastRecordId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdLastRecordId :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.LastRecordId)
ppdLastRecordId = Lens.field @"lastRecordId"
{-# DEPRECATED ppdLastRecordId "Use generic-lens or generic-optics with 'lastRecordId' instead." #-}

-- | The record identifier of the last successful request performed on this provisioned product of the following types:
--
--
--     * ProvisionedProduct
--
--
--     * UpdateProvisionedProduct
--
--
--     * ExecuteProvisionedProductPlan
--
--
--     * TerminateProvisionedProduct
--
--
--
-- /Note:/ Consider using 'lastSuccessfulProvisioningRecordId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdLastSuccessfulProvisioningRecordId :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.LastSuccessfulProvisioningRecordId)
ppdLastSuccessfulProvisioningRecordId = Lens.field @"lastSuccessfulProvisioningRecordId"
{-# DEPRECATED ppdLastSuccessfulProvisioningRecordId "Use generic-lens or generic-optics with 'lastSuccessfulProvisioningRecordId' instead." #-}

-- | The ARN of the launch role associated with the provisioned product.
--
-- /Note:/ Consider using 'launchRoleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdLaunchRoleArn :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.LaunchRoleArn)
ppdLaunchRoleArn = Lens.field @"launchRoleArn"
{-# DEPRECATED ppdLaunchRoleArn "Use generic-lens or generic-optics with 'launchRoleArn' instead." #-}

-- | The user-friendly name of the provisioned product.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdName :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.ProvisionedProductNameOrArn)
ppdName = Lens.field @"name"
{-# DEPRECATED ppdName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The product identifier. For example, @prod-abcdzk7xy33qa@ .
--
-- /Note:/ Consider using 'productId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdProductId :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.ProductId)
ppdProductId = Lens.field @"productId"
{-# DEPRECATED ppdProductId "Use generic-lens or generic-optics with 'productId' instead." #-}

-- | The identifier of the provisioning artifact. For example, @pa-4abcdjnxjj6ne@ .
--
-- /Note:/ Consider using 'provisioningArtifactId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdProvisioningArtifactId :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.ProvisioningArtifactId)
ppdProvisioningArtifactId = Lens.field @"provisioningArtifactId"
{-# DEPRECATED ppdProvisioningArtifactId "Use generic-lens or generic-optics with 'provisioningArtifactId' instead." #-}

-- | The current status of the provisioned product.
--
--
--     * @AVAILABLE@ - Stable state, ready to perform any operation. The most recent operation succeeded and completed.
--
--
--     * @UNDER_CHANGE@ - Transitive state. Operations performed might not have valid results. Wait for an @AVAILABLE@ status before performing operations.
--
--
--     * @TAINTED@ - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.
--
--
--     * @ERROR@ - An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.
--
--
--     * @PLAN_IN_PROGRESS@ - Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an @AVAILABLE@ status before performing operations.
--
--
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdStatus :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.ProvisionedProductStatus)
ppdStatus = Lens.field @"status"
{-# DEPRECATED ppdStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The current status message of the provisioned product.
--
-- /Note:/ Consider using 'statusMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdStatusMessage :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.ProvisionedProductStatusMessage)
ppdStatusMessage = Lens.field @"statusMessage"
{-# DEPRECATED ppdStatusMessage "Use generic-lens or generic-optics with 'statusMessage' instead." #-}

-- | The type of provisioned product. The supported values are @CFN_STACK@ and @CFN_STACKSET@ .
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppdType :: Lens.Lens' ProvisionedProductDetail (Core.Maybe Types.Type)
ppdType = Lens.field @"type'"
{-# DEPRECATED ppdType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.FromJSON ProvisionedProductDetail where
  parseJSON =
    Core.withObject "ProvisionedProductDetail" Core.$
      \x ->
        ProvisionedProductDetail'
          Core.<$> (x Core..:? "Arn")
          Core.<*> (x Core..:? "CreatedTime")
          Core.<*> (x Core..:? "Id")
          Core.<*> (x Core..:? "IdempotencyToken")
          Core.<*> (x Core..:? "LastProvisioningRecordId")
          Core.<*> (x Core..:? "LastRecordId")
          Core.<*> (x Core..:? "LastSuccessfulProvisioningRecordId")
          Core.<*> (x Core..:? "LaunchRoleArn")
          Core.<*> (x Core..:? "Name")
          Core.<*> (x Core..:? "ProductId")
          Core.<*> (x Core..:? "ProvisioningArtifactId")
          Core.<*> (x Core..:? "Status")
          Core.<*> (x Core..:? "StatusMessage")
          Core.<*> (x Core..:? "Type")