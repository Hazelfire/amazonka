{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.DeleteResourcePolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.
module Network.AWS.CloudWatchLogs.DeleteResourcePolicy
  ( -- * Creating a request
    DeleteResourcePolicy (..),
    mkDeleteResourcePolicy,

    -- ** Request lenses
    drpPolicyName,

    -- * Destructuring the response
    DeleteResourcePolicyResponse (..),
    mkDeleteResourcePolicyResponse,
  )
where

import qualified Network.AWS.CloudWatchLogs.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteResourcePolicy' smart constructor.
newtype DeleteResourcePolicy = DeleteResourcePolicy'
  { -- | The name of the policy to be revoked. This parameter is required.
    policyName :: Core.Maybe Types.PolicyName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteResourcePolicy' value with any optional fields omitted.
mkDeleteResourcePolicy ::
  DeleteResourcePolicy
mkDeleteResourcePolicy =
  DeleteResourcePolicy' {policyName = Core.Nothing}

-- | The name of the policy to be revoked. This parameter is required.
--
-- /Note:/ Consider using 'policyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drpPolicyName :: Lens.Lens' DeleteResourcePolicy (Core.Maybe Types.PolicyName)
drpPolicyName = Lens.field @"policyName"
{-# DEPRECATED drpPolicyName "Use generic-lens or generic-optics with 'policyName' instead." #-}

instance Core.FromJSON DeleteResourcePolicy where
  toJSON DeleteResourcePolicy {..} =
    Core.object
      (Core.catMaybes [("policyName" Core..=) Core.<$> policyName])

instance Core.AWSRequest DeleteResourcePolicy where
  type Rs DeleteResourcePolicy = DeleteResourcePolicyResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "Logs_20140328.DeleteResourcePolicy")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull DeleteResourcePolicyResponse'

-- | /See:/ 'mkDeleteResourcePolicyResponse' smart constructor.
data DeleteResourcePolicyResponse = DeleteResourcePolicyResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteResourcePolicyResponse' value with any optional fields omitted.
mkDeleteResourcePolicyResponse ::
  DeleteResourcePolicyResponse
mkDeleteResourcePolicyResponse = DeleteResourcePolicyResponse'