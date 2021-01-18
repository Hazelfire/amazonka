{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.CreateReceiptRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a receipt rule.
--
-- For information about setting up receipt rules, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html Amazon SES Developer Guide> .
-- You can execute this operation no more than once per second.
module Network.AWS.SES.CreateReceiptRule
  ( -- * Creating a request
    CreateReceiptRule (..),
    mkCreateReceiptRule,

    -- ** Request lenses
    crrRuleSetName,
    crrRule,
    crrAfter,

    -- * Destructuring the response
    CreateReceiptRuleResponse (..),
    mkCreateReceiptRuleResponse,

    -- ** Response lenses
    crrrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to create a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkCreateReceiptRule' smart constructor.
data CreateReceiptRule = CreateReceiptRule'
  { -- | The name of the rule set that the receipt rule will be added to.
    ruleSetName :: Types.ReceiptRuleSetName,
    -- | A data structure that contains the specified rule's name, actions, recipients, domains, enabled status, scan status, and TLS policy.
    rule :: Types.ReceiptRule,
    -- | The name of an existing rule after which the new rule will be placed. If this parameter is null, the new rule will be inserted at the beginning of the rule list.
    after :: Core.Maybe Types.ReceiptRuleName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateReceiptRule' value with any optional fields omitted.
mkCreateReceiptRule ::
  -- | 'ruleSetName'
  Types.ReceiptRuleSetName ->
  -- | 'rule'
  Types.ReceiptRule ->
  CreateReceiptRule
mkCreateReceiptRule ruleSetName rule =
  CreateReceiptRule' {ruleSetName, rule, after = Core.Nothing}

-- | The name of the rule set that the receipt rule will be added to.
--
-- /Note:/ Consider using 'ruleSetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crrRuleSetName :: Lens.Lens' CreateReceiptRule Types.ReceiptRuleSetName
crrRuleSetName = Lens.field @"ruleSetName"
{-# DEPRECATED crrRuleSetName "Use generic-lens or generic-optics with 'ruleSetName' instead." #-}

-- | A data structure that contains the specified rule's name, actions, recipients, domains, enabled status, scan status, and TLS policy.
--
-- /Note:/ Consider using 'rule' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crrRule :: Lens.Lens' CreateReceiptRule Types.ReceiptRule
crrRule = Lens.field @"rule"
{-# DEPRECATED crrRule "Use generic-lens or generic-optics with 'rule' instead." #-}

-- | The name of an existing rule after which the new rule will be placed. If this parameter is null, the new rule will be inserted at the beginning of the rule list.
--
-- /Note:/ Consider using 'after' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crrAfter :: Lens.Lens' CreateReceiptRule (Core.Maybe Types.ReceiptRuleName)
crrAfter = Lens.field @"after"
{-# DEPRECATED crrAfter "Use generic-lens or generic-optics with 'after' instead." #-}

instance Core.AWSRequest CreateReceiptRule where
  type Rs CreateReceiptRule = CreateReceiptRuleResponse
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
            ( Core.pure ("Action", "CreateReceiptRule")
                Core.<> (Core.pure ("Version", "2010-12-01"))
                Core.<> (Core.toQueryValue "RuleSetName" ruleSetName)
                Core.<> (Core.toQueryValue "Rule" rule)
                Core.<> (Core.toQueryValue "After" Core.<$> after)
            )
      }
  response =
    Response.receiveXMLWrapper
      "CreateReceiptRuleResult"
      ( \s h x ->
          CreateReceiptRuleResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | An empty element returned on a successful request.
--
-- /See:/ 'mkCreateReceiptRuleResponse' smart constructor.
newtype CreateReceiptRuleResponse = CreateReceiptRuleResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'CreateReceiptRuleResponse' value with any optional fields omitted.
mkCreateReceiptRuleResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateReceiptRuleResponse
mkCreateReceiptRuleResponse responseStatus =
  CreateReceiptRuleResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crrrrsResponseStatus :: Lens.Lens' CreateReceiptRuleResponse Core.Int
crrrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED crrrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}