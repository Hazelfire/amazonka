{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.ListFunctionsByCodeSigningConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the functions that use the specified code signing configuration. You can use this method prior to deleting a code signing configuration, to verify that no functions are using it.
--
-- This operation returns paginated results.
module Network.AWS.Lambda.ListFunctionsByCodeSigningConfig
  ( -- * Creating a request
    ListFunctionsByCodeSigningConfig (..),
    mkListFunctionsByCodeSigningConfig,

    -- ** Request lenses
    lfbcscCodeSigningConfigArn,
    lfbcscMarker,
    lfbcscMaxItems,

    -- * Destructuring the response
    ListFunctionsByCodeSigningConfigResponse (..),
    mkListFunctionsByCodeSigningConfigResponse,

    -- ** Response lenses
    lfbcscrrsFunctionArns,
    lfbcscrrsNextMarker,
    lfbcscrrsResponseStatus,
  )
where

import qualified Network.AWS.Lambda.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListFunctionsByCodeSigningConfig' smart constructor.
data ListFunctionsByCodeSigningConfig = ListFunctionsByCodeSigningConfig'
  { -- | The The Amazon Resource Name (ARN) of the code signing configuration.
    codeSigningConfigArn :: Types.CodeSigningConfigArn,
    -- | Specify the pagination token that's returned by a previous request to retrieve the next page of results.
    marker :: Core.Maybe Types.Marker,
    -- | Maximum number of items to return.
    maxItems :: Core.Maybe Core.Natural
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListFunctionsByCodeSigningConfig' value with any optional fields omitted.
mkListFunctionsByCodeSigningConfig ::
  -- | 'codeSigningConfigArn'
  Types.CodeSigningConfigArn ->
  ListFunctionsByCodeSigningConfig
mkListFunctionsByCodeSigningConfig codeSigningConfigArn =
  ListFunctionsByCodeSigningConfig'
    { codeSigningConfigArn,
      marker = Core.Nothing,
      maxItems = Core.Nothing
    }

-- | The The Amazon Resource Name (ARN) of the code signing configuration.
--
-- /Note:/ Consider using 'codeSigningConfigArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfbcscCodeSigningConfigArn :: Lens.Lens' ListFunctionsByCodeSigningConfig Types.CodeSigningConfigArn
lfbcscCodeSigningConfigArn = Lens.field @"codeSigningConfigArn"
{-# DEPRECATED lfbcscCodeSigningConfigArn "Use generic-lens or generic-optics with 'codeSigningConfigArn' instead." #-}

-- | Specify the pagination token that's returned by a previous request to retrieve the next page of results.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfbcscMarker :: Lens.Lens' ListFunctionsByCodeSigningConfig (Core.Maybe Types.Marker)
lfbcscMarker = Lens.field @"marker"
{-# DEPRECATED lfbcscMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | Maximum number of items to return.
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfbcscMaxItems :: Lens.Lens' ListFunctionsByCodeSigningConfig (Core.Maybe Core.Natural)
lfbcscMaxItems = Lens.field @"maxItems"
{-# DEPRECATED lfbcscMaxItems "Use generic-lens or generic-optics with 'maxItems' instead." #-}

instance Core.AWSRequest ListFunctionsByCodeSigningConfig where
  type
    Rs ListFunctionsByCodeSigningConfig =
      ListFunctionsByCodeSigningConfigResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/2020-04-22/code-signing-configs/"
                Core.<> (Core.toText codeSigningConfigArn)
                Core.<> ("/functions")
            ),
        Core._rqQuery =
          Core.toQueryValue "Marker" Core.<$> marker
            Core.<> (Core.toQueryValue "MaxItems" Core.<$> maxItems),
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListFunctionsByCodeSigningConfigResponse'
            Core.<$> (x Core..:? "FunctionArns")
            Core.<*> (x Core..:? "NextMarker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListFunctionsByCodeSigningConfig where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextMarker") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"functionArns" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"nextMarker"
        )

-- | /See:/ 'mkListFunctionsByCodeSigningConfigResponse' smart constructor.
data ListFunctionsByCodeSigningConfigResponse = ListFunctionsByCodeSigningConfigResponse'
  { -- | The function ARNs.
    functionArns :: Core.Maybe [Types.FunctionArn],
    -- | The pagination token that's included if more results are available.
    nextMarker :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListFunctionsByCodeSigningConfigResponse' value with any optional fields omitted.
mkListFunctionsByCodeSigningConfigResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListFunctionsByCodeSigningConfigResponse
mkListFunctionsByCodeSigningConfigResponse responseStatus =
  ListFunctionsByCodeSigningConfigResponse'
    { functionArns =
        Core.Nothing,
      nextMarker = Core.Nothing,
      responseStatus
    }

-- | The function ARNs.
--
-- /Note:/ Consider using 'functionArns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfbcscrrsFunctionArns :: Lens.Lens' ListFunctionsByCodeSigningConfigResponse (Core.Maybe [Types.FunctionArn])
lfbcscrrsFunctionArns = Lens.field @"functionArns"
{-# DEPRECATED lfbcscrrsFunctionArns "Use generic-lens or generic-optics with 'functionArns' instead." #-}

-- | The pagination token that's included if more results are available.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfbcscrrsNextMarker :: Lens.Lens' ListFunctionsByCodeSigningConfigResponse (Core.Maybe Types.String)
lfbcscrrsNextMarker = Lens.field @"nextMarker"
{-# DEPRECATED lfbcscrrsNextMarker "Use generic-lens or generic-optics with 'nextMarker' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfbcscrrsResponseStatus :: Lens.Lens' ListFunctionsByCodeSigningConfigResponse Core.Int
lfbcscrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lfbcscrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}