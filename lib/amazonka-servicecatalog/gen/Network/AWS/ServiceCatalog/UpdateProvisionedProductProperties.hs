{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.UpdateProvisionedProductProperties
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests updates to the properties of the specified provisioned product.
module Network.AWS.ServiceCatalog.UpdateProvisionedProductProperties
  ( -- * Creating a request
    UpdateProvisionedProductProperties (..),
    mkUpdateProvisionedProductProperties,

    -- ** Request lenses
    upppProvisionedProductId,
    upppProvisionedProductProperties,
    upppIdempotencyToken,
    upppAcceptLanguage,

    -- * Destructuring the response
    UpdateProvisionedProductPropertiesResponse (..),
    mkUpdateProvisionedProductPropertiesResponse,

    -- ** Response lenses
    uppprrsProvisionedProductId,
    uppprrsProvisionedProductProperties,
    uppprrsRecordId,
    uppprrsStatus,
    uppprrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.ServiceCatalog.Types as Types

-- | /See:/ 'mkUpdateProvisionedProductProperties' smart constructor.
data UpdateProvisionedProductProperties = UpdateProvisionedProductProperties'
  { -- | The identifier of the provisioned product.
    provisionedProductId :: Types.ProvisionedProductId,
    -- | A map that contains the provisioned product properties to be updated.
    --
    -- The @LAUNCH_ROLE@ key accepts role ARNs. This key allows an administrator to call @UpdateProvisionedProductProperties@ to update the launch role that is associated with a provisioned product. This role is used when an end user calls a provisioning operation such as @UpdateProvisionedProduct@ , @TerminateProvisionedProduct@ , or @ExecuteProvisionedProductServiceAction@ . Only a role ARN is valid. A user ARN is invalid.
    -- The @OWNER@ key accepts user ARNs and role ARNs. The owner is the user that has permission to see, update, terminate, and execute service actions in the provisioned product.
    -- The administrator can change the owner of a provisioned product to another IAM user within the same account. Both end user owners and administrators can see ownership history of the provisioned product using the @ListRecordHistory@ API. The new owner can describe all past records for the provisioned product using the @DescribeRecord@ API. The previous owner can no longer use @DescribeRecord@ , but can still see the product's history from when he was an owner using @ListRecordHistory@ .
    -- If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or Service Catalog console such as update, terminate, and execute service actions. If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through API or the Service Catalog console on that provisioned product.
    provisionedProductProperties :: Core.HashMap Types.PropertyKey Types.PropertyValue,
    -- | The idempotency token that uniquely identifies the provisioning product update request.
    idempotencyToken :: Types.IdempotencyToken,
    -- | The language code.
    --
    --
    --     * @en@ - English (default)
    --
    --
    --     * @jp@ - Japanese
    --
    --
    --     * @zh@ - Chinese
    acceptLanguage :: Core.Maybe Types.AcceptLanguage
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateProvisionedProductProperties' value with any optional fields omitted.
mkUpdateProvisionedProductProperties ::
  -- | 'provisionedProductId'
  Types.ProvisionedProductId ->
  -- | 'idempotencyToken'
  Types.IdempotencyToken ->
  UpdateProvisionedProductProperties
mkUpdateProvisionedProductProperties
  provisionedProductId
  idempotencyToken =
    UpdateProvisionedProductProperties'
      { provisionedProductId,
        provisionedProductProperties = Core.mempty,
        idempotencyToken,
        acceptLanguage = Core.Nothing
      }

-- | The identifier of the provisioned product.
--
-- /Note:/ Consider using 'provisionedProductId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
upppProvisionedProductId :: Lens.Lens' UpdateProvisionedProductProperties Types.ProvisionedProductId
upppProvisionedProductId = Lens.field @"provisionedProductId"
{-# DEPRECATED upppProvisionedProductId "Use generic-lens or generic-optics with 'provisionedProductId' instead." #-}

-- | A map that contains the provisioned product properties to be updated.
--
-- The @LAUNCH_ROLE@ key accepts role ARNs. This key allows an administrator to call @UpdateProvisionedProductProperties@ to update the launch role that is associated with a provisioned product. This role is used when an end user calls a provisioning operation such as @UpdateProvisionedProduct@ , @TerminateProvisionedProduct@ , or @ExecuteProvisionedProductServiceAction@ . Only a role ARN is valid. A user ARN is invalid.
-- The @OWNER@ key accepts user ARNs and role ARNs. The owner is the user that has permission to see, update, terminate, and execute service actions in the provisioned product.
-- The administrator can change the owner of a provisioned product to another IAM user within the same account. Both end user owners and administrators can see ownership history of the provisioned product using the @ListRecordHistory@ API. The new owner can describe all past records for the provisioned product using the @DescribeRecord@ API. The previous owner can no longer use @DescribeRecord@ , but can still see the product's history from when he was an owner using @ListRecordHistory@ .
-- If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or Service Catalog console such as update, terminate, and execute service actions. If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through API or the Service Catalog console on that provisioned product.
--
-- /Note:/ Consider using 'provisionedProductProperties' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
upppProvisionedProductProperties :: Lens.Lens' UpdateProvisionedProductProperties (Core.HashMap Types.PropertyKey Types.PropertyValue)
upppProvisionedProductProperties = Lens.field @"provisionedProductProperties"
{-# DEPRECATED upppProvisionedProductProperties "Use generic-lens or generic-optics with 'provisionedProductProperties' instead." #-}

-- | The idempotency token that uniquely identifies the provisioning product update request.
--
-- /Note:/ Consider using 'idempotencyToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
upppIdempotencyToken :: Lens.Lens' UpdateProvisionedProductProperties Types.IdempotencyToken
upppIdempotencyToken = Lens.field @"idempotencyToken"
{-# DEPRECATED upppIdempotencyToken "Use generic-lens or generic-optics with 'idempotencyToken' instead." #-}

-- | The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
--
-- /Note:/ Consider using 'acceptLanguage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
upppAcceptLanguage :: Lens.Lens' UpdateProvisionedProductProperties (Core.Maybe Types.AcceptLanguage)
upppAcceptLanguage = Lens.field @"acceptLanguage"
{-# DEPRECATED upppAcceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead." #-}

instance Core.FromJSON UpdateProvisionedProductProperties where
  toJSON UpdateProvisionedProductProperties {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ProvisionedProductId" Core..= provisionedProductId),
            Core.Just
              ( "ProvisionedProductProperties"
                  Core..= provisionedProductProperties
              ),
            Core.Just ("IdempotencyToken" Core..= idempotencyToken),
            ("AcceptLanguage" Core..=) Core.<$> acceptLanguage
          ]
      )

instance Core.AWSRequest UpdateProvisionedProductProperties where
  type
    Rs UpdateProvisionedProductProperties =
      UpdateProvisionedProductPropertiesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWS242ServiceCatalogService.UpdateProvisionedProductProperties"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateProvisionedProductPropertiesResponse'
            Core.<$> (x Core..:? "ProvisionedProductId")
            Core.<*> (x Core..:? "ProvisionedProductProperties")
            Core.<*> (x Core..:? "RecordId")
            Core.<*> (x Core..:? "Status")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateProvisionedProductPropertiesResponse' smart constructor.
data UpdateProvisionedProductPropertiesResponse = UpdateProvisionedProductPropertiesResponse'
  { -- | The provisioned product identifier.
    provisionedProductId :: Core.Maybe Types.ProvisionedProductId,
    -- | A map that contains the properties updated.
    provisionedProductProperties :: Core.Maybe (Core.HashMap Types.PropertyKey Types.PropertyValue),
    -- | The identifier of the record.
    recordId :: Core.Maybe Types.RecordId,
    -- | The status of the request.
    status :: Core.Maybe Types.RecordStatus,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateProvisionedProductPropertiesResponse' value with any optional fields omitted.
mkUpdateProvisionedProductPropertiesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateProvisionedProductPropertiesResponse
mkUpdateProvisionedProductPropertiesResponse responseStatus =
  UpdateProvisionedProductPropertiesResponse'
    { provisionedProductId =
        Core.Nothing,
      provisionedProductProperties = Core.Nothing,
      recordId = Core.Nothing,
      status = Core.Nothing,
      responseStatus
    }

-- | The provisioned product identifier.
--
-- /Note:/ Consider using 'provisionedProductId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uppprrsProvisionedProductId :: Lens.Lens' UpdateProvisionedProductPropertiesResponse (Core.Maybe Types.ProvisionedProductId)
uppprrsProvisionedProductId = Lens.field @"provisionedProductId"
{-# DEPRECATED uppprrsProvisionedProductId "Use generic-lens or generic-optics with 'provisionedProductId' instead." #-}

-- | A map that contains the properties updated.
--
-- /Note:/ Consider using 'provisionedProductProperties' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uppprrsProvisionedProductProperties :: Lens.Lens' UpdateProvisionedProductPropertiesResponse (Core.Maybe (Core.HashMap Types.PropertyKey Types.PropertyValue))
uppprrsProvisionedProductProperties = Lens.field @"provisionedProductProperties"
{-# DEPRECATED uppprrsProvisionedProductProperties "Use generic-lens or generic-optics with 'provisionedProductProperties' instead." #-}

-- | The identifier of the record.
--
-- /Note:/ Consider using 'recordId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uppprrsRecordId :: Lens.Lens' UpdateProvisionedProductPropertiesResponse (Core.Maybe Types.RecordId)
uppprrsRecordId = Lens.field @"recordId"
{-# DEPRECATED uppprrsRecordId "Use generic-lens or generic-optics with 'recordId' instead." #-}

-- | The status of the request.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uppprrsStatus :: Lens.Lens' UpdateProvisionedProductPropertiesResponse (Core.Maybe Types.RecordStatus)
uppprrsStatus = Lens.field @"status"
{-# DEPRECATED uppprrsStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uppprrsResponseStatus :: Lens.Lens' UpdateProvisionedProductPropertiesResponse Core.Int
uppprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED uppprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}