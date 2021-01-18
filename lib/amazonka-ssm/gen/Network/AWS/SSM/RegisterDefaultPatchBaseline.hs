{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.RegisterDefaultPatchBaseline
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Defines the default patch baseline for the relevant operating system.
--
-- To reset the AWS predefined patch baseline as the default, specify the full patch baseline ARN as the baseline ID value. For example, for CentOS, specify @arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed@ instead of @pb-0574b43a65ea646ed@ .
module Network.AWS.SSM.RegisterDefaultPatchBaseline
  ( -- * Creating a request
    RegisterDefaultPatchBaseline (..),
    mkRegisterDefaultPatchBaseline,

    -- ** Request lenses
    rdpbBaselineId,

    -- * Destructuring the response
    RegisterDefaultPatchBaselineResponse (..),
    mkRegisterDefaultPatchBaselineResponse,

    -- ** Response lenses
    rdpbrrsBaselineId,
    rdpbrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkRegisterDefaultPatchBaseline' smart constructor.
newtype RegisterDefaultPatchBaseline = RegisterDefaultPatchBaseline'
  { -- | The ID of the patch baseline that should be the default patch baseline.
    baselineId :: Types.BaselineId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'RegisterDefaultPatchBaseline' value with any optional fields omitted.
mkRegisterDefaultPatchBaseline ::
  -- | 'baselineId'
  Types.BaselineId ->
  RegisterDefaultPatchBaseline
mkRegisterDefaultPatchBaseline baselineId =
  RegisterDefaultPatchBaseline' {baselineId}

-- | The ID of the patch baseline that should be the default patch baseline.
--
-- /Note:/ Consider using 'baselineId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rdpbBaselineId :: Lens.Lens' RegisterDefaultPatchBaseline Types.BaselineId
rdpbBaselineId = Lens.field @"baselineId"
{-# DEPRECATED rdpbBaselineId "Use generic-lens or generic-optics with 'baselineId' instead." #-}

instance Core.FromJSON RegisterDefaultPatchBaseline where
  toJSON RegisterDefaultPatchBaseline {..} =
    Core.object
      (Core.catMaybes [Core.Just ("BaselineId" Core..= baselineId)])

instance Core.AWSRequest RegisterDefaultPatchBaseline where
  type
    Rs RegisterDefaultPatchBaseline =
      RegisterDefaultPatchBaselineResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AmazonSSM.RegisterDefaultPatchBaseline")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          RegisterDefaultPatchBaselineResponse'
            Core.<$> (x Core..:? "BaselineId") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkRegisterDefaultPatchBaselineResponse' smart constructor.
data RegisterDefaultPatchBaselineResponse = RegisterDefaultPatchBaselineResponse'
  { -- | The ID of the default patch baseline.
    baselineId :: Core.Maybe Types.BaselineId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegisterDefaultPatchBaselineResponse' value with any optional fields omitted.
mkRegisterDefaultPatchBaselineResponse ::
  -- | 'responseStatus'
  Core.Int ->
  RegisterDefaultPatchBaselineResponse
mkRegisterDefaultPatchBaselineResponse responseStatus =
  RegisterDefaultPatchBaselineResponse'
    { baselineId = Core.Nothing,
      responseStatus
    }

-- | The ID of the default patch baseline.
--
-- /Note:/ Consider using 'baselineId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rdpbrrsBaselineId :: Lens.Lens' RegisterDefaultPatchBaselineResponse (Core.Maybe Types.BaselineId)
rdpbrrsBaselineId = Lens.field @"baselineId"
{-# DEPRECATED rdpbrrsBaselineId "Use generic-lens or generic-optics with 'baselineId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rdpbrrsResponseStatus :: Lens.Lens' RegisterDefaultPatchBaselineResponse Core.Int
rdpbrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED rdpbrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}