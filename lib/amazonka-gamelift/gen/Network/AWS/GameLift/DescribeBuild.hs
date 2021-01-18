{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.DescribeBuild
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves properties for a custom game build. To request a build resource, specify a build ID. If successful, an object containing the build properties is returned.
--
-- __Learn more__
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html Upload a Custom Server Build>
-- __Related operations__
--
--     * 'CreateBuild'
--
--
--     * 'ListBuilds'
--
--
--     * 'DescribeBuild'
--
--
--     * 'UpdateBuild'
--
--
--     * 'DeleteBuild'
module Network.AWS.GameLift.DescribeBuild
  ( -- * Creating a request
    DescribeBuild (..),
    mkDescribeBuild,

    -- ** Request lenses
    dBuildId,

    -- * Destructuring the response
    DescribeBuildResponse (..),
    mkDescribeBuildResponse,

    -- ** Response lenses
    dbrrsBuild,
    dbrrsResponseStatus,
  )
where

import qualified Network.AWS.GameLift.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input for a request operation.
--
-- /See:/ 'mkDescribeBuild' smart constructor.
newtype DescribeBuild = DescribeBuild'
  { -- | A unique identifier for a build to retrieve properties for. You can use either the build ID or ARN value.
    buildId :: Types.BuildId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeBuild' value with any optional fields omitted.
mkDescribeBuild ::
  -- | 'buildId'
  Types.BuildId ->
  DescribeBuild
mkDescribeBuild buildId = DescribeBuild' {buildId}

-- | A unique identifier for a build to retrieve properties for. You can use either the build ID or ARN value.
--
-- /Note:/ Consider using 'buildId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dBuildId :: Lens.Lens' DescribeBuild Types.BuildId
dBuildId = Lens.field @"buildId"
{-# DEPRECATED dBuildId "Use generic-lens or generic-optics with 'buildId' instead." #-}

instance Core.FromJSON DescribeBuild where
  toJSON DescribeBuild {..} =
    Core.object
      (Core.catMaybes [Core.Just ("BuildId" Core..= buildId)])

instance Core.AWSRequest DescribeBuild where
  type Rs DescribeBuild = DescribeBuildResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "GameLift.DescribeBuild")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeBuildResponse'
            Core.<$> (x Core..:? "Build") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the returned data in response to a request operation.
--
-- /See:/ 'mkDescribeBuildResponse' smart constructor.
data DescribeBuildResponse = DescribeBuildResponse'
  { -- | Set of properties describing the requested build.
    build :: Core.Maybe Types.Build,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DescribeBuildResponse' value with any optional fields omitted.
mkDescribeBuildResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DescribeBuildResponse
mkDescribeBuildResponse responseStatus =
  DescribeBuildResponse' {build = Core.Nothing, responseStatus}

-- | Set of properties describing the requested build.
--
-- /Note:/ Consider using 'build' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrrsBuild :: Lens.Lens' DescribeBuildResponse (Core.Maybe Types.Build)
dbrrsBuild = Lens.field @"build"
{-# DEPRECATED dbrrsBuild "Use generic-lens or generic-optics with 'build' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbrrsResponseStatus :: Lens.Lens' DescribeBuildResponse Core.Int
dbrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dbrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}