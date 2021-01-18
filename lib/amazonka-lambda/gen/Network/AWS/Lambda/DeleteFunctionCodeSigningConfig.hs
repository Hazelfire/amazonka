{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.DeleteFunctionCodeSigningConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the code signing configuration from the function.
module Network.AWS.Lambda.DeleteFunctionCodeSigningConfig
  ( -- * Creating a request
    DeleteFunctionCodeSigningConfig (..),
    mkDeleteFunctionCodeSigningConfig,

    -- ** Request lenses
    dfcscFunctionName,

    -- * Destructuring the response
    DeleteFunctionCodeSigningConfigResponse (..),
    mkDeleteFunctionCodeSigningConfigResponse,
  )
where

import qualified Network.AWS.Lambda.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteFunctionCodeSigningConfig' smart constructor.
newtype DeleteFunctionCodeSigningConfig = DeleteFunctionCodeSigningConfig'
  { -- | The name of the Lambda function.
    --
    -- __Name formats__
    --
    --     * __Function name__ - @MyFunction@ .
    --
    --
    --     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .
    --
    --
    --     * __Partial ARN__ - @123456789012:function:MyFunction@ .
    --
    --
    -- The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
    functionName :: Types.FunctionName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteFunctionCodeSigningConfig' value with any optional fields omitted.
mkDeleteFunctionCodeSigningConfig ::
  -- | 'functionName'
  Types.FunctionName ->
  DeleteFunctionCodeSigningConfig
mkDeleteFunctionCodeSigningConfig functionName =
  DeleteFunctionCodeSigningConfig' {functionName}

-- | The name of the Lambda function.
--
-- __Name formats__
--
--     * __Function name__ - @MyFunction@ .
--
--
--     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .
--
--
--     * __Partial ARN__ - @123456789012:function:MyFunction@ .
--
--
-- The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
--
-- /Note:/ Consider using 'functionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfcscFunctionName :: Lens.Lens' DeleteFunctionCodeSigningConfig Types.FunctionName
dfcscFunctionName = Lens.field @"functionName"
{-# DEPRECATED dfcscFunctionName "Use generic-lens or generic-optics with 'functionName' instead." #-}

instance Core.AWSRequest DeleteFunctionCodeSigningConfig where
  type
    Rs DeleteFunctionCodeSigningConfig =
      DeleteFunctionCodeSigningConfigResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.DELETE,
        Core._rqPath =
          Core.rawPath
            ( "/2020-06-30/functions/" Core.<> (Core.toText functionName)
                Core.<> ("/code-signing-config")
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveNull DeleteFunctionCodeSigningConfigResponse'

-- | /See:/ 'mkDeleteFunctionCodeSigningConfigResponse' smart constructor.
data DeleteFunctionCodeSigningConfigResponse = DeleteFunctionCodeSigningConfigResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteFunctionCodeSigningConfigResponse' value with any optional fields omitted.
mkDeleteFunctionCodeSigningConfigResponse ::
  DeleteFunctionCodeSigningConfigResponse
mkDeleteFunctionCodeSigningConfigResponse =
  DeleteFunctionCodeSigningConfigResponse'