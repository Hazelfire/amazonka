{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.StopStackSetOperation
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an in-progress operation on a stack set and its associated stack instances.
module Network.AWS.CloudFormation.StopStackSetOperation
  ( -- * Creating a request
    StopStackSetOperation (..),
    mkStopStackSetOperation,

    -- ** Request lenses
    sssoStackSetName,
    sssoOperationId,

    -- * Destructuring the response
    StopStackSetOperationResponse (..),
    mkStopStackSetOperationResponse,

    -- ** Response lenses
    sssorrsResponseStatus,
  )
where

import qualified Network.AWS.CloudFormation.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStopStackSetOperation' smart constructor.
data StopStackSetOperation = StopStackSetOperation'
  { -- | The name or unique ID of the stack set that you want to stop the operation for.
    stackSetName :: Types.StackSetName,
    -- | The ID of the stack operation.
    operationId :: Types.OperationId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StopStackSetOperation' value with any optional fields omitted.
mkStopStackSetOperation ::
  -- | 'stackSetName'
  Types.StackSetName ->
  -- | 'operationId'
  Types.OperationId ->
  StopStackSetOperation
mkStopStackSetOperation stackSetName operationId =
  StopStackSetOperation' {stackSetName, operationId}

-- | The name or unique ID of the stack set that you want to stop the operation for.
--
-- /Note:/ Consider using 'stackSetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sssoStackSetName :: Lens.Lens' StopStackSetOperation Types.StackSetName
sssoStackSetName = Lens.field @"stackSetName"
{-# DEPRECATED sssoStackSetName "Use generic-lens or generic-optics with 'stackSetName' instead." #-}

-- | The ID of the stack operation.
--
-- /Note:/ Consider using 'operationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sssoOperationId :: Lens.Lens' StopStackSetOperation Types.OperationId
sssoOperationId = Lens.field @"operationId"
{-# DEPRECATED sssoOperationId "Use generic-lens or generic-optics with 'operationId' instead." #-}

instance Core.AWSRequest StopStackSetOperation where
  type Rs StopStackSetOperation = StopStackSetOperationResponse
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
            ( Core.pure ("Action", "StopStackSetOperation")
                Core.<> (Core.pure ("Version", "2010-05-15"))
                Core.<> (Core.toQueryValue "StackSetName" stackSetName)
                Core.<> (Core.toQueryValue "OperationId" operationId)
            )
      }
  response =
    Response.receiveXMLWrapper
      "StopStackSetOperationResult"
      ( \s h x ->
          StopStackSetOperationResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkStopStackSetOperationResponse' smart constructor.
newtype StopStackSetOperationResponse = StopStackSetOperationResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopStackSetOperationResponse' value with any optional fields omitted.
mkStopStackSetOperationResponse ::
  -- | 'responseStatus'
  Core.Int ->
  StopStackSetOperationResponse
mkStopStackSetOperationResponse responseStatus =
  StopStackSetOperationResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sssorrsResponseStatus :: Lens.Lens' StopStackSetOperationResponse Core.Int
sssorrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED sssorrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}