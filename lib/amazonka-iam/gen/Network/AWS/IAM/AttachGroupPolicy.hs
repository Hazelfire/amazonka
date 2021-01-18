{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.AttachGroupPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches the specified managed policy to the specified IAM group.
--
-- You use this API to attach a managed policy to a group. To embed an inline policy in a group, use 'PutGroupPolicy' .
-- For more information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed Policies and Inline Policies> in the /IAM User Guide/ .
module Network.AWS.IAM.AttachGroupPolicy
  ( -- * Creating a request
    AttachGroupPolicy (..),
    mkAttachGroupPolicy,

    -- ** Request lenses
    agpGroupName,
    agpPolicyArn,

    -- * Destructuring the response
    AttachGroupPolicyResponse (..),
    mkAttachGroupPolicyResponse,
  )
where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkAttachGroupPolicy' smart constructor.
data AttachGroupPolicy = AttachGroupPolicy'
  { -- | The name (friendly name, not ARN) of the group to attach the policy to.
    --
    -- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
    groupName :: Types.GroupNameType,
    -- | The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    --
    -- For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
    policyArn :: Types.PolicyArn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AttachGroupPolicy' value with any optional fields omitted.
mkAttachGroupPolicy ::
  -- | 'groupName'
  Types.GroupNameType ->
  -- | 'policyArn'
  Types.PolicyArn ->
  AttachGroupPolicy
mkAttachGroupPolicy groupName policyArn =
  AttachGroupPolicy' {groupName, policyArn}

-- | The name (friendly name, not ARN) of the group to attach the policy to.
--
-- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- /Note:/ Consider using 'groupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
agpGroupName :: Lens.Lens' AttachGroupPolicy Types.GroupNameType
agpGroupName = Lens.field @"groupName"
{-# DEPRECATED agpGroupName "Use generic-lens or generic-optics with 'groupName' instead." #-}

-- | The Amazon Resource Name (ARN) of the IAM policy you want to attach.
--
-- For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
--
-- /Note:/ Consider using 'policyArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
agpPolicyArn :: Lens.Lens' AttachGroupPolicy Types.PolicyArn
agpPolicyArn = Lens.field @"policyArn"
{-# DEPRECATED agpPolicyArn "Use generic-lens or generic-optics with 'policyArn' instead." #-}

instance Core.AWSRequest AttachGroupPolicy where
  type Rs AttachGroupPolicy = AttachGroupPolicyResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "AttachGroupPolicy")
                Core.<> (Core.pure ("Version", "2010-05-08"))
                Core.<> (Core.toQueryValue "GroupName" groupName)
                Core.<> (Core.toQueryValue "PolicyArn" policyArn)
            )
      }
  response = Response.receiveNull AttachGroupPolicyResponse'

-- | /See:/ 'mkAttachGroupPolicyResponse' smart constructor.
data AttachGroupPolicyResponse = AttachGroupPolicyResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AttachGroupPolicyResponse' value with any optional fields omitted.
mkAttachGroupPolicyResponse ::
  AttachGroupPolicyResponse
mkAttachGroupPolicyResponse = AttachGroupPolicyResponse'