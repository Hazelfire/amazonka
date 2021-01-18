{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.GetFunctionEventInvokeConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the configuration for asynchronous invocation for a function, version, or alias.
--
-- To configure options for asynchronous invocation, use 'PutFunctionEventInvokeConfig' .
module Network.AWS.Lambda.GetFunctionEventInvokeConfig
  ( -- * Creating a request
    GetFunctionEventInvokeConfig (..),
    mkGetFunctionEventInvokeConfig,

    -- ** Request lenses
    gfeicFunctionName,
    gfeicQualifier,

    -- * Destructuring the response
    Types.FunctionEventInvokeConfig (..),
    Types.mkFunctionEventInvokeConfig,

    -- ** Response lenses
    Types.feicDestinationConfig,
    Types.feicFunctionArn,
    Types.feicLastModified,
    Types.feicMaximumEventAgeInSeconds,
    Types.feicMaximumRetryAttempts,
  )
where

import qualified Network.AWS.Lambda.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetFunctionEventInvokeConfig' smart constructor.
data GetFunctionEventInvokeConfig = GetFunctionEventInvokeConfig'
  { -- | The name of the Lambda function, version, or alias.
    --
    -- __Name formats__
    --
    --     * __Function name__ - @my-function@ (name-only), @my-function:v1@ (with alias).
    --
    --
    --     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .
    --
    --
    --     * __Partial ARN__ - @123456789012:function:my-function@ .
    --
    --
    -- You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
    functionName :: Types.FunctionName,
    -- | A version number or alias name.
    qualifier :: Core.Maybe Types.Qualifier
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetFunctionEventInvokeConfig' value with any optional fields omitted.
mkGetFunctionEventInvokeConfig ::
  -- | 'functionName'
  Types.FunctionName ->
  GetFunctionEventInvokeConfig
mkGetFunctionEventInvokeConfig functionName =
  GetFunctionEventInvokeConfig'
    { functionName,
      qualifier = Core.Nothing
    }

-- | The name of the Lambda function, version, or alias.
--
-- __Name formats__
--
--     * __Function name__ - @my-function@ (name-only), @my-function:v1@ (with alias).
--
--
--     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .
--
--
--     * __Partial ARN__ - @123456789012:function:my-function@ .
--
--
-- You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
--
-- /Note:/ Consider using 'functionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfeicFunctionName :: Lens.Lens' GetFunctionEventInvokeConfig Types.FunctionName
gfeicFunctionName = Lens.field @"functionName"
{-# DEPRECATED gfeicFunctionName "Use generic-lens or generic-optics with 'functionName' instead." #-}

-- | A version number or alias name.
--
-- /Note:/ Consider using 'qualifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfeicQualifier :: Lens.Lens' GetFunctionEventInvokeConfig (Core.Maybe Types.Qualifier)
gfeicQualifier = Lens.field @"qualifier"
{-# DEPRECATED gfeicQualifier "Use generic-lens or generic-optics with 'qualifier' instead." #-}

instance Core.AWSRequest GetFunctionEventInvokeConfig where
  type
    Rs GetFunctionEventInvokeConfig =
      Types.FunctionEventInvokeConfig
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/2019-09-25/functions/" Core.<> (Core.toText functionName)
                Core.<> ("/event-invoke-config")
            ),
        Core._rqQuery = Core.toQueryValue "Qualifier" Core.<$> qualifier,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response = Response.receiveJSON (\s h x -> Core.eitherParseJSON x)