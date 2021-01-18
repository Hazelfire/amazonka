{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.DeleteIPSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes an 'IPSet' . You can't delete an @IPSet@ if it's still used in any @Rules@ or if it still includes any IP addresses.
--
-- If you just want to remove an @IPSet@ from a @Rule@ , use 'UpdateRule' .
-- To permanently delete an @IPSet@ from AWS WAF, perform the following steps:
--
--     * Update the @IPSet@ to remove IP address ranges, if any. For more information, see 'UpdateIPSet' .
--
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @DeleteIPSet@ request.
--
--
--     * Submit a @DeleteIPSet@ request.
module Network.AWS.WAFRegional.DeleteIPSet
  ( -- * Creating a request
    DeleteIPSet (..),
    mkDeleteIPSet,

    -- ** Request lenses
    dipsIPSetId,
    dipsChangeToken,

    -- * Destructuring the response
    DeleteIPSetResponse (..),
    mkDeleteIPSetResponse,

    -- ** Response lenses
    dipsrrsChangeToken,
    dipsrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WAFRegional.Types as Types

-- | /See:/ 'mkDeleteIPSet' smart constructor.
data DeleteIPSet = DeleteIPSet'
  { -- | The @IPSetId@ of the 'IPSet' that you want to delete. @IPSetId@ is returned by 'CreateIPSet' and by 'ListIPSets' .
    iPSetId :: Types.ResourceId,
    -- | The value returned by the most recent call to 'GetChangeToken' .
    changeToken :: Types.ChangeToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteIPSet' value with any optional fields omitted.
mkDeleteIPSet ::
  -- | 'iPSetId'
  Types.ResourceId ->
  -- | 'changeToken'
  Types.ChangeToken ->
  DeleteIPSet
mkDeleteIPSet iPSetId changeToken =
  DeleteIPSet' {iPSetId, changeToken}

-- | The @IPSetId@ of the 'IPSet' that you want to delete. @IPSetId@ is returned by 'CreateIPSet' and by 'ListIPSets' .
--
-- /Note:/ Consider using 'iPSetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dipsIPSetId :: Lens.Lens' DeleteIPSet Types.ResourceId
dipsIPSetId = Lens.field @"iPSetId"
{-# DEPRECATED dipsIPSetId "Use generic-lens or generic-optics with 'iPSetId' instead." #-}

-- | The value returned by the most recent call to 'GetChangeToken' .
--
-- /Note:/ Consider using 'changeToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dipsChangeToken :: Lens.Lens' DeleteIPSet Types.ChangeToken
dipsChangeToken = Lens.field @"changeToken"
{-# DEPRECATED dipsChangeToken "Use generic-lens or generic-optics with 'changeToken' instead." #-}

instance Core.FromJSON DeleteIPSet where
  toJSON DeleteIPSet {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("IPSetId" Core..= iPSetId),
            Core.Just ("ChangeToken" Core..= changeToken)
          ]
      )

instance Core.AWSRequest DeleteIPSet where
  type Rs DeleteIPSet = DeleteIPSetResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AWSWAF_Regional_20161128.DeleteIPSet")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteIPSetResponse'
            Core.<$> (x Core..:? "ChangeToken") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDeleteIPSetResponse' smart constructor.
data DeleteIPSetResponse = DeleteIPSetResponse'
  { -- | The @ChangeToken@ that you used to submit the @DeleteIPSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
    changeToken :: Core.Maybe Types.ChangeToken,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteIPSetResponse' value with any optional fields omitted.
mkDeleteIPSetResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeleteIPSetResponse
mkDeleteIPSetResponse responseStatus =
  DeleteIPSetResponse' {changeToken = Core.Nothing, responseStatus}

-- | The @ChangeToken@ that you used to submit the @DeleteIPSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- /Note:/ Consider using 'changeToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dipsrrsChangeToken :: Lens.Lens' DeleteIPSetResponse (Core.Maybe Types.ChangeToken)
dipsrrsChangeToken = Lens.field @"changeToken"
{-# DEPRECATED dipsrrsChangeToken "Use generic-lens or generic-optics with 'changeToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dipsrrsResponseStatus :: Lens.Lens' DeleteIPSetResponse Core.Int
dipsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dipsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}