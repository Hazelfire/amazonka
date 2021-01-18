{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.EnableRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables the specified rule. If the rule does not exist, the operation fails.
--
-- When you enable a rule, incoming events might not immediately start matching to a newly enabled rule. Allow a short period of time for changes to take effect.
module Network.AWS.CloudWatchEvents.EnableRule
  ( -- * Creating a request
    EnableRule (..),
    mkEnableRule,

    -- ** Request lenses
    erName,
    erEventBusName,

    -- * Destructuring the response
    EnableRuleResponse (..),
    mkEnableRuleResponse,
  )
where

import qualified Network.AWS.CloudWatchEvents.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkEnableRule' smart constructor.
data EnableRule = EnableRule'
  { -- | The name of the rule.
    name :: Types.Name,
    -- | The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
    eventBusName :: Core.Maybe Types.EventBusNameOrArn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'EnableRule' value with any optional fields omitted.
mkEnableRule ::
  -- | 'name'
  Types.Name ->
  EnableRule
mkEnableRule name = EnableRule' {name, eventBusName = Core.Nothing}

-- | The name of the rule.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
erName :: Lens.Lens' EnableRule Types.Name
erName = Lens.field @"name"
{-# DEPRECATED erName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
--
-- /Note:/ Consider using 'eventBusName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
erEventBusName :: Lens.Lens' EnableRule (Core.Maybe Types.EventBusNameOrArn)
erEventBusName = Lens.field @"eventBusName"
{-# DEPRECATED erEventBusName "Use generic-lens or generic-optics with 'eventBusName' instead." #-}

instance Core.FromJSON EnableRule where
  toJSON EnableRule {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Name" Core..= name),
            ("EventBusName" Core..=) Core.<$> eventBusName
          ]
      )

instance Core.AWSRequest EnableRule where
  type Rs EnableRule = EnableRuleResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AWSEvents.EnableRule")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveNull EnableRuleResponse'

-- | /See:/ 'mkEnableRuleResponse' smart constructor.
data EnableRuleResponse = EnableRuleResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'EnableRuleResponse' value with any optional fields omitted.
mkEnableRuleResponse ::
  EnableRuleResponse
mkEnableRuleResponse = EnableRuleResponse'