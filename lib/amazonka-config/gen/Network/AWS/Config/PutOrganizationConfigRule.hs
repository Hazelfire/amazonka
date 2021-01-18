{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.PutOrganizationConfigRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates organization config rule for your entire organization evaluating whether your AWS resources comply with your desired configurations.
--
-- Only a master account and a delegated administrator can create or update an organization config rule. When calling this API with a delegated administrator, you must ensure AWS Organizations @ListDelegatedAdministrator@ permissions are added.
-- This API enables organization service access through the @EnableAWSServiceAccess@ action and creates a service linked role @AWSServiceRoleForConfigMultiAccountSetup@ in the master or delegated administrator account of your organization. The service linked role is created only when the role does not exist in the caller account. AWS Config verifies the existence of role with @GetRole@ action.
-- To use this API with delegated administrator, register a delegated administrator by calling AWS Organization @register-delegated-administrator@ for @config-multiaccountsetup.amazonaws.com@ .
-- You can use this action to create both custom AWS Config rules and AWS managed Config rules. If you are adding a new custom AWS Config rule, you must first create AWS Lambda function in the master account or a delegated administrator that the rule invokes to evaluate your resources. When you use the @PutOrganizationConfigRule@ action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. If you are adding an AWS managed Config rule, specify the rule's identifier for the @RuleIdentifier@ key.
-- The maximum number of organization config rules that AWS Config supports is 150 and 3 delegated administrator per organization.
module Network.AWS.Config.PutOrganizationConfigRule
  ( -- * Creating a request
    PutOrganizationConfigRule (..),
    mkPutOrganizationConfigRule,

    -- ** Request lenses
    pocrOrganizationConfigRuleName,
    pocrExcludedAccounts,
    pocrOrganizationCustomRuleMetadata,
    pocrOrganizationManagedRuleMetadata,

    -- * Destructuring the response
    PutOrganizationConfigRuleResponse (..),
    mkPutOrganizationConfigRuleResponse,

    -- ** Response lenses
    pocrrrsOrganizationConfigRuleArn,
    pocrrrsResponseStatus,
  )
where

import qualified Network.AWS.Config.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutOrganizationConfigRule' smart constructor.
data PutOrganizationConfigRule = PutOrganizationConfigRule'
  { -- | The name that you assign to an organization config rule.
    organizationConfigRuleName :: Types.OrganizationConfigRuleName,
    -- | A comma-separated list of accounts that you want to exclude from an organization config rule.
    excludedAccounts :: Core.Maybe [Types.AccountId],
    -- | An @OrganizationCustomRuleMetadata@ object.
    organizationCustomRuleMetadata :: Core.Maybe Types.OrganizationCustomRuleMetadata,
    -- | An @OrganizationManagedRuleMetadata@ object.
    organizationManagedRuleMetadata :: Core.Maybe Types.OrganizationManagedRuleMetadata
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutOrganizationConfigRule' value with any optional fields omitted.
mkPutOrganizationConfigRule ::
  -- | 'organizationConfigRuleName'
  Types.OrganizationConfigRuleName ->
  PutOrganizationConfigRule
mkPutOrganizationConfigRule organizationConfigRuleName =
  PutOrganizationConfigRule'
    { organizationConfigRuleName,
      excludedAccounts = Core.Nothing,
      organizationCustomRuleMetadata = Core.Nothing,
      organizationManagedRuleMetadata = Core.Nothing
    }

-- | The name that you assign to an organization config rule.
--
-- /Note:/ Consider using 'organizationConfigRuleName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pocrOrganizationConfigRuleName :: Lens.Lens' PutOrganizationConfigRule Types.OrganizationConfigRuleName
pocrOrganizationConfigRuleName = Lens.field @"organizationConfigRuleName"
{-# DEPRECATED pocrOrganizationConfigRuleName "Use generic-lens or generic-optics with 'organizationConfigRuleName' instead." #-}

-- | A comma-separated list of accounts that you want to exclude from an organization config rule.
--
-- /Note:/ Consider using 'excludedAccounts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pocrExcludedAccounts :: Lens.Lens' PutOrganizationConfigRule (Core.Maybe [Types.AccountId])
pocrExcludedAccounts = Lens.field @"excludedAccounts"
{-# DEPRECATED pocrExcludedAccounts "Use generic-lens or generic-optics with 'excludedAccounts' instead." #-}

-- | An @OrganizationCustomRuleMetadata@ object.
--
-- /Note:/ Consider using 'organizationCustomRuleMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pocrOrganizationCustomRuleMetadata :: Lens.Lens' PutOrganizationConfigRule (Core.Maybe Types.OrganizationCustomRuleMetadata)
pocrOrganizationCustomRuleMetadata = Lens.field @"organizationCustomRuleMetadata"
{-# DEPRECATED pocrOrganizationCustomRuleMetadata "Use generic-lens or generic-optics with 'organizationCustomRuleMetadata' instead." #-}

-- | An @OrganizationManagedRuleMetadata@ object.
--
-- /Note:/ Consider using 'organizationManagedRuleMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pocrOrganizationManagedRuleMetadata :: Lens.Lens' PutOrganizationConfigRule (Core.Maybe Types.OrganizationManagedRuleMetadata)
pocrOrganizationManagedRuleMetadata = Lens.field @"organizationManagedRuleMetadata"
{-# DEPRECATED pocrOrganizationManagedRuleMetadata "Use generic-lens or generic-optics with 'organizationManagedRuleMetadata' instead." #-}

instance Core.FromJSON PutOrganizationConfigRule where
  toJSON PutOrganizationConfigRule {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("OrganizationConfigRuleName" Core..= organizationConfigRuleName),
            ("ExcludedAccounts" Core..=) Core.<$> excludedAccounts,
            ("OrganizationCustomRuleMetadata" Core..=)
              Core.<$> organizationCustomRuleMetadata,
            ("OrganizationManagedRuleMetadata" Core..=)
              Core.<$> organizationManagedRuleMetadata
          ]
      )

instance Core.AWSRequest PutOrganizationConfigRule where
  type
    Rs PutOrganizationConfigRule =
      PutOrganizationConfigRuleResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "StarlingDoveService.PutOrganizationConfigRule")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          PutOrganizationConfigRuleResponse'
            Core.<$> (x Core..:? "OrganizationConfigRuleArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkPutOrganizationConfigRuleResponse' smart constructor.
data PutOrganizationConfigRuleResponse = PutOrganizationConfigRuleResponse'
  { -- | The Amazon Resource Name (ARN) of an organization config rule.
    organizationConfigRuleArn :: Core.Maybe Types.StringWithCharLimit256,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutOrganizationConfigRuleResponse' value with any optional fields omitted.
mkPutOrganizationConfigRuleResponse ::
  -- | 'responseStatus'
  Core.Int ->
  PutOrganizationConfigRuleResponse
mkPutOrganizationConfigRuleResponse responseStatus =
  PutOrganizationConfigRuleResponse'
    { organizationConfigRuleArn =
        Core.Nothing,
      responseStatus
    }

-- | The Amazon Resource Name (ARN) of an organization config rule.
--
-- /Note:/ Consider using 'organizationConfigRuleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pocrrrsOrganizationConfigRuleArn :: Lens.Lens' PutOrganizationConfigRuleResponse (Core.Maybe Types.StringWithCharLimit256)
pocrrrsOrganizationConfigRuleArn = Lens.field @"organizationConfigRuleArn"
{-# DEPRECATED pocrrrsOrganizationConfigRuleArn "Use generic-lens or generic-optics with 'organizationConfigRuleArn' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pocrrrsResponseStatus :: Lens.Lens' PutOrganizationConfigRuleResponse Core.Int
pocrrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED pocrrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}