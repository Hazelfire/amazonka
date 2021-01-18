{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.BatchDisassociateUserStack
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the specified users from the specified stacks.
module Network.AWS.AppStream.BatchDisassociateUserStack
  ( -- * Creating a request
    BatchDisassociateUserStack (..),
    mkBatchDisassociateUserStack,

    -- ** Request lenses
    bdusUserStackAssociations,

    -- * Destructuring the response
    BatchDisassociateUserStackResponse (..),
    mkBatchDisassociateUserStackResponse,

    -- ** Response lenses
    bdusrrsErrors,
    bdusrrsResponseStatus,
  )
where

import qualified Network.AWS.AppStream.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkBatchDisassociateUserStack' smart constructor.
newtype BatchDisassociateUserStack = BatchDisassociateUserStack'
  { -- | The list of UserStackAssociation objects.
    userStackAssociations :: Core.NonEmpty Types.UserStackAssociation
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'BatchDisassociateUserStack' value with any optional fields omitted.
mkBatchDisassociateUserStack ::
  -- | 'userStackAssociations'
  Core.NonEmpty Types.UserStackAssociation ->
  BatchDisassociateUserStack
mkBatchDisassociateUserStack userStackAssociations =
  BatchDisassociateUserStack' {userStackAssociations}

-- | The list of UserStackAssociation objects.
--
-- /Note:/ Consider using 'userStackAssociations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdusUserStackAssociations :: Lens.Lens' BatchDisassociateUserStack (Core.NonEmpty Types.UserStackAssociation)
bdusUserStackAssociations = Lens.field @"userStackAssociations"
{-# DEPRECATED bdusUserStackAssociations "Use generic-lens or generic-optics with 'userStackAssociations' instead." #-}

instance Core.FromJSON BatchDisassociateUserStack where
  toJSON BatchDisassociateUserStack {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("UserStackAssociations" Core..= userStackAssociations)
          ]
      )

instance Core.AWSRequest BatchDisassociateUserStack where
  type
    Rs BatchDisassociateUserStack =
      BatchDisassociateUserStackResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "PhotonAdminProxyService.BatchDisassociateUserStack"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDisassociateUserStackResponse'
            Core.<$> (x Core..:? "errors") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkBatchDisassociateUserStackResponse' smart constructor.
data BatchDisassociateUserStackResponse = BatchDisassociateUserStackResponse'
  { -- | The list of UserStackAssociationError objects.
    errors :: Core.Maybe [Types.UserStackAssociationError],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BatchDisassociateUserStackResponse' value with any optional fields omitted.
mkBatchDisassociateUserStackResponse ::
  -- | 'responseStatus'
  Core.Int ->
  BatchDisassociateUserStackResponse
mkBatchDisassociateUserStackResponse responseStatus =
  BatchDisassociateUserStackResponse'
    { errors = Core.Nothing,
      responseStatus
    }

-- | The list of UserStackAssociationError objects.
--
-- /Note:/ Consider using 'errors' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdusrrsErrors :: Lens.Lens' BatchDisassociateUserStackResponse (Core.Maybe [Types.UserStackAssociationError])
bdusrrsErrors = Lens.field @"errors"
{-# DEPRECATED bdusrrsErrors "Use generic-lens or generic-optics with 'errors' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdusrrsResponseStatus :: Lens.Lens' BatchDisassociateUserStackResponse Core.Int
bdusrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED bdusrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}