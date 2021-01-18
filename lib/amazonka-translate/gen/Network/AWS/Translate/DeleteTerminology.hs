{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.DeleteTerminology
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A synchronous action that deletes a custom terminology.
module Network.AWS.Translate.DeleteTerminology
  ( -- * Creating a request
    DeleteTerminology (..),
    mkDeleteTerminology,

    -- ** Request lenses
    dtName,

    -- * Destructuring the response
    DeleteTerminologyResponse (..),
    mkDeleteTerminologyResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Translate.Types as Types

-- | /See:/ 'mkDeleteTerminology' smart constructor.
newtype DeleteTerminology = DeleteTerminology'
  { -- | The name of the custom terminology being deleted.
    name :: Types.ResourceName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteTerminology' value with any optional fields omitted.
mkDeleteTerminology ::
  -- | 'name'
  Types.ResourceName ->
  DeleteTerminology
mkDeleteTerminology name = DeleteTerminology' {name}

-- | The name of the custom terminology being deleted.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtName :: Lens.Lens' DeleteTerminology Types.ResourceName
dtName = Lens.field @"name"
{-# DEPRECATED dtName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Core.FromJSON DeleteTerminology where
  toJSON DeleteTerminology {..} =
    Core.object (Core.catMaybes [Core.Just ("Name" Core..= name)])

instance Core.AWSRequest DeleteTerminology where
  type Rs DeleteTerminology = DeleteTerminologyResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSShineFrontendService_20170701.DeleteTerminology"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull DeleteTerminologyResponse'

-- | /See:/ 'mkDeleteTerminologyResponse' smart constructor.
data DeleteTerminologyResponse = DeleteTerminologyResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteTerminologyResponse' value with any optional fields omitted.
mkDeleteTerminologyResponse ::
  DeleteTerminologyResponse
mkDeleteTerminologyResponse = DeleteTerminologyResponse'