{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.UpdateScalingParameters
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html Configuring Scaling Options> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.UpdateScalingParameters
  ( -- * Creating a request
    UpdateScalingParameters (..),
    mkUpdateScalingParameters,

    -- ** Request lenses
    uspDomainName,
    uspScalingParameters,

    -- * Destructuring the response
    UpdateScalingParametersResponse (..),
    mkUpdateScalingParametersResponse,

    -- ** Response lenses
    usprrsScalingParameters,
    usprrsResponseStatus,
  )
where

import qualified Network.AWS.CloudSearch.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @'UpdateScalingParameters' @ operation. Specifies the name of the domain you want to update and the scaling parameters you want to configure.
--
-- /See:/ 'mkUpdateScalingParameters' smart constructor.
data UpdateScalingParameters = UpdateScalingParameters'
  { domainName :: Types.DomainName,
    scalingParameters :: Types.ScalingParameters
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateScalingParameters' value with any optional fields omitted.
mkUpdateScalingParameters ::
  -- | 'domainName'
  Types.DomainName ->
  -- | 'scalingParameters'
  Types.ScalingParameters ->
  UpdateScalingParameters
mkUpdateScalingParameters domainName scalingParameters =
  UpdateScalingParameters' {domainName, scalingParameters}

-- | Undocumented field.
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uspDomainName :: Lens.Lens' UpdateScalingParameters Types.DomainName
uspDomainName = Lens.field @"domainName"
{-# DEPRECATED uspDomainName "Use generic-lens or generic-optics with 'domainName' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'scalingParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uspScalingParameters :: Lens.Lens' UpdateScalingParameters Types.ScalingParameters
uspScalingParameters = Lens.field @"scalingParameters"
{-# DEPRECATED uspScalingParameters "Use generic-lens or generic-optics with 'scalingParameters' instead." #-}

instance Core.AWSRequest UpdateScalingParameters where
  type Rs UpdateScalingParameters = UpdateScalingParametersResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "UpdateScalingParameters")
                Core.<> (Core.pure ("Version", "2013-01-01"))
                Core.<> (Core.toQueryValue "DomainName" domainName)
                Core.<> (Core.toQueryValue "ScalingParameters" scalingParameters)
            )
      }
  response =
    Response.receiveXMLWrapper
      "UpdateScalingParametersResult"
      ( \s h x ->
          UpdateScalingParametersResponse'
            Core.<$> (x Core..@ "ScalingParameters")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | The result of a @UpdateScalingParameters@ request. Contains the status of the newly-configured scaling parameters.
--
-- /See:/ 'mkUpdateScalingParametersResponse' smart constructor.
data UpdateScalingParametersResponse = UpdateScalingParametersResponse'
  { scalingParameters :: Types.ScalingParametersStatus,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'UpdateScalingParametersResponse' value with any optional fields omitted.
mkUpdateScalingParametersResponse ::
  -- | 'scalingParameters'
  Types.ScalingParametersStatus ->
  -- | 'responseStatus'
  Core.Int ->
  UpdateScalingParametersResponse
mkUpdateScalingParametersResponse scalingParameters responseStatus =
  UpdateScalingParametersResponse'
    { scalingParameters,
      responseStatus
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'scalingParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usprrsScalingParameters :: Lens.Lens' UpdateScalingParametersResponse Types.ScalingParametersStatus
usprrsScalingParameters = Lens.field @"scalingParameters"
{-# DEPRECATED usprrsScalingParameters "Use generic-lens or generic-optics with 'scalingParameters' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usprrsResponseStatus :: Lens.Lens' UpdateScalingParametersResponse Core.Int
usprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED usprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}