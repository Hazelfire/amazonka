{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.WebhookFilterRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.WebhookFilterRule
  ( WebhookFilterRule (..),

    -- * Smart constructor
    mkWebhookFilterRule,

    -- * Lenses
    wfrJsonPath,
    wfrMatchEquals,
  )
where

import qualified Network.AWS.CodePipeline.Types.JsonPath as Types
import qualified Network.AWS.CodePipeline.Types.MatchEquals as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The event criteria that specify when a webhook notification is sent to your URL.
--
-- /See:/ 'mkWebhookFilterRule' smart constructor.
data WebhookFilterRule = WebhookFilterRule'
  { -- | A JsonPath expression that is applied to the body/payload of the webhook. The value selected by the JsonPath expression must match the value specified in the @MatchEquals@ field. Otherwise, the request is ignored. For more information, see <https://github.com/json-path/JsonPath Java JsonPath implementation> in GitHub.
    jsonPath :: Types.JsonPath,
    -- | The value selected by the @JsonPath@ expression must match what is supplied in the @MatchEquals@ field. Otherwise, the request is ignored. Properties from the target action configuration can be included as placeholders in this value by surrounding the action configuration key with curly brackets. For example, if the value supplied here is "refs/heads/{Branch}" and the target action has an action configuration property called "Branch" with a value of "master", the @MatchEquals@ value is evaluated as "refs/heads/master". For a list of action configuration properties for built-in action types, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements Pipeline Structure Reference Action Requirements> .
    matchEquals :: Core.Maybe Types.MatchEquals
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'WebhookFilterRule' value with any optional fields omitted.
mkWebhookFilterRule ::
  -- | 'jsonPath'
  Types.JsonPath ->
  WebhookFilterRule
mkWebhookFilterRule jsonPath =
  WebhookFilterRule' {jsonPath, matchEquals = Core.Nothing}

-- | A JsonPath expression that is applied to the body/payload of the webhook. The value selected by the JsonPath expression must match the value specified in the @MatchEquals@ field. Otherwise, the request is ignored. For more information, see <https://github.com/json-path/JsonPath Java JsonPath implementation> in GitHub.
--
-- /Note:/ Consider using 'jsonPath' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wfrJsonPath :: Lens.Lens' WebhookFilterRule Types.JsonPath
wfrJsonPath = Lens.field @"jsonPath"
{-# DEPRECATED wfrJsonPath "Use generic-lens or generic-optics with 'jsonPath' instead." #-}

-- | The value selected by the @JsonPath@ expression must match what is supplied in the @MatchEquals@ field. Otherwise, the request is ignored. Properties from the target action configuration can be included as placeholders in this value by surrounding the action configuration key with curly brackets. For example, if the value supplied here is "refs/heads/{Branch}" and the target action has an action configuration property called "Branch" with a value of "master", the @MatchEquals@ value is evaluated as "refs/heads/master". For a list of action configuration properties for built-in action types, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements Pipeline Structure Reference Action Requirements> .
--
-- /Note:/ Consider using 'matchEquals' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wfrMatchEquals :: Lens.Lens' WebhookFilterRule (Core.Maybe Types.MatchEquals)
wfrMatchEquals = Lens.field @"matchEquals"
{-# DEPRECATED wfrMatchEquals "Use generic-lens or generic-optics with 'matchEquals' instead." #-}

instance Core.FromJSON WebhookFilterRule where
  toJSON WebhookFilterRule {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("jsonPath" Core..= jsonPath),
            ("matchEquals" Core..=) Core.<$> matchEquals
          ]
      )

instance Core.FromJSON WebhookFilterRule where
  parseJSON =
    Core.withObject "WebhookFilterRule" Core.$
      \x ->
        WebhookFilterRule'
          Core.<$> (x Core..: "jsonPath") Core.<*> (x Core..:? "matchEquals")