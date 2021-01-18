{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.BatchAssociateServiceActionWithProvisioningArtifact
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates multiple self-service actions with provisioning artifacts.
module Network.AWS.ServiceCatalog.BatchAssociateServiceActionWithProvisioningArtifact
  ( -- * Creating a request
    BatchAssociateServiceActionWithProvisioningArtifact (..),
    mkBatchAssociateServiceActionWithProvisioningArtifact,

    -- ** Request lenses
    basawpaServiceActionAssociations,
    basawpaAcceptLanguage,

    -- * Destructuring the response
    BatchAssociateServiceActionWithProvisioningArtifactResponse (..),
    mkBatchAssociateServiceActionWithProvisioningArtifactResponse,

    -- ** Response lenses
    basawparrsFailedServiceActionAssociations,
    basawparrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.ServiceCatalog.Types as Types

-- | /See:/ 'mkBatchAssociateServiceActionWithProvisioningArtifact' smart constructor.
data BatchAssociateServiceActionWithProvisioningArtifact = BatchAssociateServiceActionWithProvisioningArtifact'
  { -- | One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.
    serviceActionAssociations :: Core.NonEmpty Types.ServiceActionAssociation,
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

-- | Creates a 'BatchAssociateServiceActionWithProvisioningArtifact' value with any optional fields omitted.
mkBatchAssociateServiceActionWithProvisioningArtifact ::
  -- | 'serviceActionAssociations'
  Core.NonEmpty Types.ServiceActionAssociation ->
  BatchAssociateServiceActionWithProvisioningArtifact
mkBatchAssociateServiceActionWithProvisioningArtifact
  serviceActionAssociations =
    BatchAssociateServiceActionWithProvisioningArtifact'
      { serviceActionAssociations,
        acceptLanguage = Core.Nothing
      }

-- | One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.
--
-- /Note:/ Consider using 'serviceActionAssociations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
basawpaServiceActionAssociations :: Lens.Lens' BatchAssociateServiceActionWithProvisioningArtifact (Core.NonEmpty Types.ServiceActionAssociation)
basawpaServiceActionAssociations = Lens.field @"serviceActionAssociations"
{-# DEPRECATED basawpaServiceActionAssociations "Use generic-lens or generic-optics with 'serviceActionAssociations' instead." #-}

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
basawpaAcceptLanguage :: Lens.Lens' BatchAssociateServiceActionWithProvisioningArtifact (Core.Maybe Types.AcceptLanguage)
basawpaAcceptLanguage = Lens.field @"acceptLanguage"
{-# DEPRECATED basawpaAcceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead." #-}

instance
  Core.FromJSON
    BatchAssociateServiceActionWithProvisioningArtifact
  where
  toJSON BatchAssociateServiceActionWithProvisioningArtifact {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("ServiceActionAssociations" Core..= serviceActionAssociations),
            ("AcceptLanguage" Core..=) Core.<$> acceptLanguage
          ]
      )

instance
  Core.AWSRequest
    BatchAssociateServiceActionWithProvisioningArtifact
  where
  type
    Rs BatchAssociateServiceActionWithProvisioningArtifact =
      BatchAssociateServiceActionWithProvisioningArtifactResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWS242ServiceCatalogService.BatchAssociateServiceActionWithProvisioningArtifact"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchAssociateServiceActionWithProvisioningArtifactResponse'
            Core.<$> (x Core..:? "FailedServiceActionAssociations")
              Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkBatchAssociateServiceActionWithProvisioningArtifactResponse' smart constructor.
data BatchAssociateServiceActionWithProvisioningArtifactResponse = BatchAssociateServiceActionWithProvisioningArtifactResponse'
  { -- | An object that contains a list of errors, along with information to help you identify the self-service action.
    failedServiceActionAssociations :: Core.Maybe [Types.FailedServiceActionAssociation],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchAssociateServiceActionWithProvisioningArtifactResponse' value with any optional fields omitted.
mkBatchAssociateServiceActionWithProvisioningArtifactResponse ::
  -- | 'responseStatus'
  Core.Int ->
  BatchAssociateServiceActionWithProvisioningArtifactResponse
mkBatchAssociateServiceActionWithProvisioningArtifactResponse
  responseStatus =
    BatchAssociateServiceActionWithProvisioningArtifactResponse'
      { failedServiceActionAssociations =
          Core.Nothing,
        responseStatus
      }

-- | An object that contains a list of errors, along with information to help you identify the self-service action.
--
-- /Note:/ Consider using 'failedServiceActionAssociations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
basawparrsFailedServiceActionAssociations :: Lens.Lens' BatchAssociateServiceActionWithProvisioningArtifactResponse (Core.Maybe [Types.FailedServiceActionAssociation])
basawparrsFailedServiceActionAssociations = Lens.field @"failedServiceActionAssociations"
{-# DEPRECATED basawparrsFailedServiceActionAssociations "Use generic-lens or generic-optics with 'failedServiceActionAssociations' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
basawparrsResponseStatus :: Lens.Lens' BatchAssociateServiceActionWithProvisioningArtifactResponse Core.Int
basawparrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED basawparrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}