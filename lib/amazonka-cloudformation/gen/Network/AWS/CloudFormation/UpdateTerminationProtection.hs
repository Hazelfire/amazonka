{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.UpdateTerminationProtection
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates termination protection for the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html Protecting a Stack From Being Deleted> in the /AWS CloudFormation User Guide/ .
--
-- For <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html nested stacks> , termination protection is set on the root stack and cannot be changed directly on the nested stack.
module Network.AWS.CloudFormation.UpdateTerminationProtection
  ( -- * Creating a request
    UpdateTerminationProtection (..),
    mkUpdateTerminationProtection,

    -- ** Request lenses
    utpEnableTerminationProtection,
    utpStackName,

    -- * Destructuring the response
    UpdateTerminationProtectionResponse (..),
    mkUpdateTerminationProtectionResponse,

    -- ** Response lenses
    utprrsStackId,
    utprrsResponseStatus,
  )
where

import qualified Network.AWS.CloudFormation.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateTerminationProtection' smart constructor.
data UpdateTerminationProtection = UpdateTerminationProtection'
  { -- | Whether to enable termination protection on the specified stack.
    enableTerminationProtection :: Core.Bool,
    -- | The name or unique ID of the stack for which you want to set termination protection.
    stackName :: Types.StackName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateTerminationProtection' value with any optional fields omitted.
mkUpdateTerminationProtection ::
  -- | 'enableTerminationProtection'
  Core.Bool ->
  -- | 'stackName'
  Types.StackName ->
  UpdateTerminationProtection
mkUpdateTerminationProtection enableTerminationProtection stackName =
  UpdateTerminationProtection'
    { enableTerminationProtection,
      stackName
    }

-- | Whether to enable termination protection on the specified stack.
--
-- /Note:/ Consider using 'enableTerminationProtection' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utpEnableTerminationProtection :: Lens.Lens' UpdateTerminationProtection Core.Bool
utpEnableTerminationProtection = Lens.field @"enableTerminationProtection"
{-# DEPRECATED utpEnableTerminationProtection "Use generic-lens or generic-optics with 'enableTerminationProtection' instead." #-}

-- | The name or unique ID of the stack for which you want to set termination protection.
--
-- /Note:/ Consider using 'stackName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utpStackName :: Lens.Lens' UpdateTerminationProtection Types.StackName
utpStackName = Lens.field @"stackName"
{-# DEPRECATED utpStackName "Use generic-lens or generic-optics with 'stackName' instead." #-}

instance Core.AWSRequest UpdateTerminationProtection where
  type
    Rs UpdateTerminationProtection =
      UpdateTerminationProtectionResponse
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
            ( Core.pure ("Action", "UpdateTerminationProtection")
                Core.<> (Core.pure ("Version", "2010-05-15"))
                Core.<> ( Core.toQueryValue
                            "EnableTerminationProtection"
                            enableTerminationProtection
                        )
                Core.<> (Core.toQueryValue "StackName" stackName)
            )
      }
  response =
    Response.receiveXMLWrapper
      "UpdateTerminationProtectionResult"
      ( \s h x ->
          UpdateTerminationProtectionResponse'
            Core.<$> (x Core..@? "StackId") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateTerminationProtectionResponse' smart constructor.
data UpdateTerminationProtectionResponse = UpdateTerminationProtectionResponse'
  { -- | The unique ID of the stack.
    stackId :: Core.Maybe Types.StackId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateTerminationProtectionResponse' value with any optional fields omitted.
mkUpdateTerminationProtectionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateTerminationProtectionResponse
mkUpdateTerminationProtectionResponse responseStatus =
  UpdateTerminationProtectionResponse'
    { stackId = Core.Nothing,
      responseStatus
    }

-- | The unique ID of the stack.
--
-- /Note:/ Consider using 'stackId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utprrsStackId :: Lens.Lens' UpdateTerminationProtectionResponse (Core.Maybe Types.StackId)
utprrsStackId = Lens.field @"stackId"
{-# DEPRECATED utprrsStackId "Use generic-lens or generic-optics with 'stackId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utprrsResponseStatus :: Lens.Lens' UpdateTerminationProtectionResponse Core.Int
utprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED utprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}