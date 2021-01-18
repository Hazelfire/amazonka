{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.PutRetentionConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and updates the retention configuration with details about retention period (number of days) that AWS Config stores your historical information. The API creates the @RetentionConfiguration@ object and names the object as __default__ . When you have a @RetentionConfiguration@ object named __default__ , calling the API modifies the default object.
module Network.AWS.Config.PutRetentionConfiguration
  ( -- * Creating a request
    PutRetentionConfiguration (..),
    mkPutRetentionConfiguration,

    -- ** Request lenses
    prcRetentionPeriodInDays,

    -- * Destructuring the response
    PutRetentionConfigurationResponse (..),
    mkPutRetentionConfigurationResponse,

    -- ** Response lenses
    prsRetentionConfiguration,
    prsResponseStatus,
  )
where

import qualified Network.AWS.Config.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutRetentionConfiguration' smart constructor.
newtype PutRetentionConfiguration = PutRetentionConfiguration'
  { -- | Number of days AWS Config stores your historical information.
    retentionPeriodInDays :: Core.Natural
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'PutRetentionConfiguration' value with any optional fields omitted.
mkPutRetentionConfiguration ::
  -- | 'retentionPeriodInDays'
  Core.Natural ->
  PutRetentionConfiguration
mkPutRetentionConfiguration retentionPeriodInDays =
  PutRetentionConfiguration' {retentionPeriodInDays}

-- | Number of days AWS Config stores your historical information.
--
-- /Note:/ Consider using 'retentionPeriodInDays' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prcRetentionPeriodInDays :: Lens.Lens' PutRetentionConfiguration Core.Natural
prcRetentionPeriodInDays = Lens.field @"retentionPeriodInDays"
{-# DEPRECATED prcRetentionPeriodInDays "Use generic-lens or generic-optics with 'retentionPeriodInDays' instead." #-}

instance Core.FromJSON PutRetentionConfiguration where
  toJSON PutRetentionConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("RetentionPeriodInDays" Core..= retentionPeriodInDays)
          ]
      )

instance Core.AWSRequest PutRetentionConfiguration where
  type
    Rs PutRetentionConfiguration =
      PutRetentionConfigurationResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "StarlingDoveService.PutRetentionConfiguration")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          PutRetentionConfigurationResponse'
            Core.<$> (x Core..:? "RetentionConfiguration")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkPutRetentionConfigurationResponse' smart constructor.
data PutRetentionConfigurationResponse = PutRetentionConfigurationResponse'
  { -- | Returns a retention configuration object.
    retentionConfiguration :: Core.Maybe Types.RetentionConfiguration,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutRetentionConfigurationResponse' value with any optional fields omitted.
mkPutRetentionConfigurationResponse ::
  -- | 'responseStatus'
  Core.Int ->
  PutRetentionConfigurationResponse
mkPutRetentionConfigurationResponse responseStatus =
  PutRetentionConfigurationResponse'
    { retentionConfiguration =
        Core.Nothing,
      responseStatus
    }

-- | Returns a retention configuration object.
--
-- /Note:/ Consider using 'retentionConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prsRetentionConfiguration :: Lens.Lens' PutRetentionConfigurationResponse (Core.Maybe Types.RetentionConfiguration)
prsRetentionConfiguration = Lens.field @"retentionConfiguration"
{-# DEPRECATED prsRetentionConfiguration "Use generic-lens or generic-optics with 'retentionConfiguration' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prsResponseStatus :: Lens.Lens' PutRetentionConfigurationResponse Core.Int
prsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED prsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}