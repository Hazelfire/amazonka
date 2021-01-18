{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.PutPermission
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Running @PutPermission@ permits the specified AWS account or AWS organization to put events to the specified /event bus/ . Amazon EventBridge (CloudWatch Events) rules in your account are triggered by these events arriving to an event bus in your account.
--
-- For another account to send events to your account, that external account must have an EventBridge rule with your account's event bus as a target.
-- To enable multiple AWS accounts to put events to your event bus, run @PutPermission@ once for each of these accounts. Or, if all the accounts are members of the same AWS organization, you can run @PutPermission@ once specifying @Principal@ as "*" and specifying the AWS organization ID in @Condition@ , to grant permissions to all accounts in that organization.
-- If you grant permissions using an organization, then accounts in that organization must specify a @RoleArn@ with proper permissions when they use @PutTarget@ to add your account's event bus as a target. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html Sending and Receiving Events Between AWS Accounts> in the /Amazon EventBridge User Guide/ .
-- The permission policy on the default event bus cannot exceed 10 KB in size.
module Network.AWS.CloudWatchEvents.PutPermission
  ( -- * Creating a request
    PutPermission (..),
    mkPutPermission,

    -- ** Request lenses
    ppAction,
    ppCondition,
    ppEventBusName,
    ppPolicy,
    ppPrincipal,
    ppStatementId,

    -- * Destructuring the response
    PutPermissionResponse (..),
    mkPutPermissionResponse,
  )
where

import qualified Network.AWS.CloudWatchEvents.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutPermission' smart constructor.
data PutPermission = PutPermission'
  { -- | The action that you are enabling the other account to perform. Currently, this must be @events:PutEvents@ .
    action :: Core.Maybe Types.Action,
    -- | This parameter enables you to limit the permission to accounts that fulfill a certain condition, such as being a member of a certain AWS organization. For more information about AWS Organizations, see <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html What Is AWS Organizations> in the /AWS Organizations User Guide/ .
    --
    -- If you specify @Condition@ with an AWS organization ID, and specify "*" as the value for @Principal@ , you grant permission to all the accounts in the named organization.
    -- The @Condition@ is a JSON string which must contain @Type@ , @Key@ , and @Value@ fields.
    condition :: Core.Maybe Types.Condition,
    -- | The name of the event bus associated with the rule. If you omit this, the default event bus is used.
    eventBusName :: Core.Maybe Types.NonPartnerEventBusName,
    -- | A JSON string that describes the permission policy statement. You can include a @Policy@ parameter in the request instead of using the @StatementId@ , @Action@ , @Principal@ , or @Condition@ parameters.
    policy :: Core.Maybe Types.String,
    -- | The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify "*" to permit any account to put events to your default event bus.
    --
    -- If you specify "*" without specifying @Condition@ , avoid creating rules that may match undesirable events. To create more secure rules, make sure that the event pattern for each rule contains an @account@ field with a specific account ID from which to receive events. Rules with an account field do not match any events sent from other accounts.
    principal :: Core.Maybe Types.Principal,
    -- | An identifier string for the external account that you are granting permissions to. If you later want to revoke the permission for this external account, specify this @StatementId@ when you run 'RemovePermission' .
    statementId :: Core.Maybe Types.StatementId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutPermission' value with any optional fields omitted.
mkPutPermission ::
  PutPermission
mkPutPermission =
  PutPermission'
    { action = Core.Nothing,
      condition = Core.Nothing,
      eventBusName = Core.Nothing,
      policy = Core.Nothing,
      principal = Core.Nothing,
      statementId = Core.Nothing
    }

-- | The action that you are enabling the other account to perform. Currently, this must be @events:PutEvents@ .
--
-- /Note:/ Consider using 'action' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppAction :: Lens.Lens' PutPermission (Core.Maybe Types.Action)
ppAction = Lens.field @"action"
{-# DEPRECATED ppAction "Use generic-lens or generic-optics with 'action' instead." #-}

-- | This parameter enables you to limit the permission to accounts that fulfill a certain condition, such as being a member of a certain AWS organization. For more information about AWS Organizations, see <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html What Is AWS Organizations> in the /AWS Organizations User Guide/ .
--
-- If you specify @Condition@ with an AWS organization ID, and specify "*" as the value for @Principal@ , you grant permission to all the accounts in the named organization.
-- The @Condition@ is a JSON string which must contain @Type@ , @Key@ , and @Value@ fields.
--
-- /Note:/ Consider using 'condition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppCondition :: Lens.Lens' PutPermission (Core.Maybe Types.Condition)
ppCondition = Lens.field @"condition"
{-# DEPRECATED ppCondition "Use generic-lens or generic-optics with 'condition' instead." #-}

-- | The name of the event bus associated with the rule. If you omit this, the default event bus is used.
--
-- /Note:/ Consider using 'eventBusName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppEventBusName :: Lens.Lens' PutPermission (Core.Maybe Types.NonPartnerEventBusName)
ppEventBusName = Lens.field @"eventBusName"
{-# DEPRECATED ppEventBusName "Use generic-lens or generic-optics with 'eventBusName' instead." #-}

-- | A JSON string that describes the permission policy statement. You can include a @Policy@ parameter in the request instead of using the @StatementId@ , @Action@ , @Principal@ , or @Condition@ parameters.
--
-- /Note:/ Consider using 'policy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppPolicy :: Lens.Lens' PutPermission (Core.Maybe Types.String)
ppPolicy = Lens.field @"policy"
{-# DEPRECATED ppPolicy "Use generic-lens or generic-optics with 'policy' instead." #-}

-- | The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify "*" to permit any account to put events to your default event bus.
--
-- If you specify "*" without specifying @Condition@ , avoid creating rules that may match undesirable events. To create more secure rules, make sure that the event pattern for each rule contains an @account@ field with a specific account ID from which to receive events. Rules with an account field do not match any events sent from other accounts.
--
-- /Note:/ Consider using 'principal' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppPrincipal :: Lens.Lens' PutPermission (Core.Maybe Types.Principal)
ppPrincipal = Lens.field @"principal"
{-# DEPRECATED ppPrincipal "Use generic-lens or generic-optics with 'principal' instead." #-}

-- | An identifier string for the external account that you are granting permissions to. If you later want to revoke the permission for this external account, specify this @StatementId@ when you run 'RemovePermission' .
--
-- /Note:/ Consider using 'statementId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppStatementId :: Lens.Lens' PutPermission (Core.Maybe Types.StatementId)
ppStatementId = Lens.field @"statementId"
{-# DEPRECATED ppStatementId "Use generic-lens or generic-optics with 'statementId' instead." #-}

instance Core.FromJSON PutPermission where
  toJSON PutPermission {..} =
    Core.object
      ( Core.catMaybes
          [ ("Action" Core..=) Core.<$> action,
            ("Condition" Core..=) Core.<$> condition,
            ("EventBusName" Core..=) Core.<$> eventBusName,
            ("Policy" Core..=) Core.<$> policy,
            ("Principal" Core..=) Core.<$> principal,
            ("StatementId" Core..=) Core.<$> statementId
          ]
      )

instance Core.AWSRequest PutPermission where
  type Rs PutPermission = PutPermissionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AWSEvents.PutPermission")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull PutPermissionResponse'

-- | /See:/ 'mkPutPermissionResponse' smart constructor.
data PutPermissionResponse = PutPermissionResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutPermissionResponse' value with any optional fields omitted.
mkPutPermissionResponse ::
  PutPermissionResponse
mkPutPermissionResponse = PutPermissionResponse'