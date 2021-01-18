{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.DeleteLayerVersion
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a version of an <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html AWS Lambda layer> . Deleted versions can no longer be viewed or added to functions. To avoid breaking functions, a copy of the version remains in Lambda until no functions refer to it.
module Network.AWS.Lambda.DeleteLayerVersion
  ( -- * Creating a request
    DeleteLayerVersion (..),
    mkDeleteLayerVersion,

    -- ** Request lenses
    dlvLayerName,
    dlvVersionNumber,

    -- * Destructuring the response
    DeleteLayerVersionResponse (..),
    mkDeleteLayerVersionResponse,
  )
where

import qualified Network.AWS.Lambda.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteLayerVersion' smart constructor.
data DeleteLayerVersion = DeleteLayerVersion'
  { -- | The name or Amazon Resource Name (ARN) of the layer.
    layerName :: Types.LayerName,
    -- | The version number.
    versionNumber :: Core.Integer
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteLayerVersion' value with any optional fields omitted.
mkDeleteLayerVersion ::
  -- | 'layerName'
  Types.LayerName ->
  -- | 'versionNumber'
  Core.Integer ->
  DeleteLayerVersion
mkDeleteLayerVersion layerName versionNumber =
  DeleteLayerVersion' {layerName, versionNumber}

-- | The name or Amazon Resource Name (ARN) of the layer.
--
-- /Note:/ Consider using 'layerName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlvLayerName :: Lens.Lens' DeleteLayerVersion Types.LayerName
dlvLayerName = Lens.field @"layerName"
{-# DEPRECATED dlvLayerName "Use generic-lens or generic-optics with 'layerName' instead." #-}

-- | The version number.
--
-- /Note:/ Consider using 'versionNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlvVersionNumber :: Lens.Lens' DeleteLayerVersion Core.Integer
dlvVersionNumber = Lens.field @"versionNumber"
{-# DEPRECATED dlvVersionNumber "Use generic-lens or generic-optics with 'versionNumber' instead." #-}

instance Core.AWSRequest DeleteLayerVersion where
  type Rs DeleteLayerVersion = DeleteLayerVersionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.DELETE,
        Core._rqPath =
          Core.rawPath
            ( "/2018-10-31/layers/" Core.<> (Core.toText layerName)
                Core.<> ("/versions/")
                Core.<> (Core.toText versionNumber)
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response = Response.receiveNull DeleteLayerVersionResponse'

-- | /See:/ 'mkDeleteLayerVersionResponse' smart constructor.
data DeleteLayerVersionResponse = DeleteLayerVersionResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteLayerVersionResponse' value with any optional fields omitted.
mkDeleteLayerVersionResponse ::
  DeleteLayerVersionResponse
mkDeleteLayerVersionResponse = DeleteLayerVersionResponse'