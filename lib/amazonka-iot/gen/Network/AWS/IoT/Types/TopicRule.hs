{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.TopicRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TopicRule
  ( TopicRule (..),

    -- * Smart constructor
    mkTopicRule,

    -- * Lenses
    trActions,
    trAwsIotSqlVersion,
    trCreatedAt,
    trDescription,
    trErrorAction,
    trRuleDisabled,
    trRuleName,
    trSql,
  )
where

import qualified Network.AWS.IoT.Types.Action as Types
import qualified Network.AWS.IoT.Types.AwsIotSqlVersion as Types
import qualified Network.AWS.IoT.Types.Description as Types
import qualified Network.AWS.IoT.Types.RuleName as Types
import qualified Network.AWS.IoT.Types.Sql as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a rule.
--
-- /See:/ 'mkTopicRule' smart constructor.
data TopicRule = TopicRule'
  { -- | The actions associated with the rule.
    actions :: Core.Maybe [Types.Action],
    -- | The version of the SQL rules engine to use when evaluating the rule.
    awsIotSqlVersion :: Core.Maybe Types.AwsIotSqlVersion,
    -- | The date and time the rule was created.
    createdAt :: Core.Maybe Core.NominalDiffTime,
    -- | The description of the rule.
    description :: Core.Maybe Types.Description,
    -- | The action to perform when an error occurs.
    errorAction :: Core.Maybe Types.Action,
    -- | Specifies whether the rule is disabled.
    ruleDisabled :: Core.Maybe Core.Bool,
    -- | The name of the rule.
    ruleName :: Core.Maybe Types.RuleName,
    -- | The SQL statement used to query the topic. When using a SQL query with multiple lines, be sure to escape the newline characters.
    sql :: Core.Maybe Types.Sql
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'TopicRule' value with any optional fields omitted.
mkTopicRule ::
  TopicRule
mkTopicRule =
  TopicRule'
    { actions = Core.Nothing,
      awsIotSqlVersion = Core.Nothing,
      createdAt = Core.Nothing,
      description = Core.Nothing,
      errorAction = Core.Nothing,
      ruleDisabled = Core.Nothing,
      ruleName = Core.Nothing,
      sql = Core.Nothing
    }

-- | The actions associated with the rule.
--
-- /Note:/ Consider using 'actions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trActions :: Lens.Lens' TopicRule (Core.Maybe [Types.Action])
trActions = Lens.field @"actions"
{-# DEPRECATED trActions "Use generic-lens or generic-optics with 'actions' instead." #-}

-- | The version of the SQL rules engine to use when evaluating the rule.
--
-- /Note:/ Consider using 'awsIotSqlVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trAwsIotSqlVersion :: Lens.Lens' TopicRule (Core.Maybe Types.AwsIotSqlVersion)
trAwsIotSqlVersion = Lens.field @"awsIotSqlVersion"
{-# DEPRECATED trAwsIotSqlVersion "Use generic-lens or generic-optics with 'awsIotSqlVersion' instead." #-}

-- | The date and time the rule was created.
--
-- /Note:/ Consider using 'createdAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trCreatedAt :: Lens.Lens' TopicRule (Core.Maybe Core.NominalDiffTime)
trCreatedAt = Lens.field @"createdAt"
{-# DEPRECATED trCreatedAt "Use generic-lens or generic-optics with 'createdAt' instead." #-}

-- | The description of the rule.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trDescription :: Lens.Lens' TopicRule (Core.Maybe Types.Description)
trDescription = Lens.field @"description"
{-# DEPRECATED trDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The action to perform when an error occurs.
--
-- /Note:/ Consider using 'errorAction' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trErrorAction :: Lens.Lens' TopicRule (Core.Maybe Types.Action)
trErrorAction = Lens.field @"errorAction"
{-# DEPRECATED trErrorAction "Use generic-lens or generic-optics with 'errorAction' instead." #-}

-- | Specifies whether the rule is disabled.
--
-- /Note:/ Consider using 'ruleDisabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trRuleDisabled :: Lens.Lens' TopicRule (Core.Maybe Core.Bool)
trRuleDisabled = Lens.field @"ruleDisabled"
{-# DEPRECATED trRuleDisabled "Use generic-lens or generic-optics with 'ruleDisabled' instead." #-}

-- | The name of the rule.
--
-- /Note:/ Consider using 'ruleName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trRuleName :: Lens.Lens' TopicRule (Core.Maybe Types.RuleName)
trRuleName = Lens.field @"ruleName"
{-# DEPRECATED trRuleName "Use generic-lens or generic-optics with 'ruleName' instead." #-}

-- | The SQL statement used to query the topic. When using a SQL query with multiple lines, be sure to escape the newline characters.
--
-- /Note:/ Consider using 'sql' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trSql :: Lens.Lens' TopicRule (Core.Maybe Types.Sql)
trSql = Lens.field @"sql"
{-# DEPRECATED trSql "Use generic-lens or generic-optics with 'sql' instead." #-}

instance Core.FromJSON TopicRule where
  parseJSON =
    Core.withObject "TopicRule" Core.$
      \x ->
        TopicRule'
          Core.<$> (x Core..:? "actions")
          Core.<*> (x Core..:? "awsIotSqlVersion")
          Core.<*> (x Core..:? "createdAt")
          Core.<*> (x Core..:? "description")
          Core.<*> (x Core..:? "errorAction")
          Core.<*> (x Core..:? "ruleDisabled")
          Core.<*> (x Core..:? "ruleName")
          Core.<*> (x Core..:? "sql")