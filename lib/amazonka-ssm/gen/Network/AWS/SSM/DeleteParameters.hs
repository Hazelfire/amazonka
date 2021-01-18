{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.DeleteParameters
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a list of parameters.
module Network.AWS.SSM.DeleteParameters
  ( -- * Creating a request
    DeleteParameters (..),
    mkDeleteParameters,

    -- ** Request lenses
    dpNames,

    -- * Destructuring the response
    DeleteParametersResponse (..),
    mkDeleteParametersResponse,

    -- ** Response lenses
    dprfrsDeletedParameters,
    dprfrsInvalidParameters,
    dprfrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkDeleteParameters' smart constructor.
newtype DeleteParameters = DeleteParameters'
  { -- | The names of the parameters to delete.
    names :: Core.NonEmpty Types.PSParameterName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteParameters' value with any optional fields omitted.
mkDeleteParameters ::
  -- | 'names'
  Core.NonEmpty Types.PSParameterName ->
  DeleteParameters
mkDeleteParameters names = DeleteParameters' {names}

-- | The names of the parameters to delete.
--
-- /Note:/ Consider using 'names' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpNames :: Lens.Lens' DeleteParameters (Core.NonEmpty Types.PSParameterName)
dpNames = Lens.field @"names"
{-# DEPRECATED dpNames "Use generic-lens or generic-optics with 'names' instead." #-}

instance Core.FromJSON DeleteParameters where
  toJSON DeleteParameters {..} =
    Core.object (Core.catMaybes [Core.Just ("Names" Core..= names)])

instance Core.AWSRequest DeleteParameters where
  type Rs DeleteParameters = DeleteParametersResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AmazonSSM.DeleteParameters")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteParametersResponse'
            Core.<$> (x Core..:? "DeletedParameters")
            Core.<*> (x Core..:? "InvalidParameters")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDeleteParametersResponse' smart constructor.
data DeleteParametersResponse = DeleteParametersResponse'
  { -- | The names of the deleted parameters.
    deletedParameters :: Core.Maybe (Core.NonEmpty Types.PSParameterName),
    -- | The names of parameters that weren't deleted because the parameters are not valid.
    invalidParameters :: Core.Maybe (Core.NonEmpty Types.PSParameterName),
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteParametersResponse' value with any optional fields omitted.
mkDeleteParametersResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeleteParametersResponse
mkDeleteParametersResponse responseStatus =
  DeleteParametersResponse'
    { deletedParameters = Core.Nothing,
      invalidParameters = Core.Nothing,
      responseStatus
    }

-- | The names of the deleted parameters.
--
-- /Note:/ Consider using 'deletedParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dprfrsDeletedParameters :: Lens.Lens' DeleteParametersResponse (Core.Maybe (Core.NonEmpty Types.PSParameterName))
dprfrsDeletedParameters = Lens.field @"deletedParameters"
{-# DEPRECATED dprfrsDeletedParameters "Use generic-lens or generic-optics with 'deletedParameters' instead." #-}

-- | The names of parameters that weren't deleted because the parameters are not valid.
--
-- /Note:/ Consider using 'invalidParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dprfrsInvalidParameters :: Lens.Lens' DeleteParametersResponse (Core.Maybe (Core.NonEmpty Types.PSParameterName))
dprfrsInvalidParameters = Lens.field @"invalidParameters"
{-# DEPRECATED dprfrsInvalidParameters "Use generic-lens or generic-optics with 'invalidParameters' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dprfrsResponseStatus :: Lens.Lens' DeleteParametersResponse Core.Int
dprfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dprfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}