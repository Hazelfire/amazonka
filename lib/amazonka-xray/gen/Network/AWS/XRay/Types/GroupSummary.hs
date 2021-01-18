{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.GroupSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.GroupSummary
  ( GroupSummary (..),

    -- * Smart constructor
    mkGroupSummary,

    -- * Lenses
    gsFilterExpression,
    gsGroupARN,
    gsGroupName,
    gsInsightsConfiguration,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.XRay.Types.InsightsConfiguration as Types
import qualified Network.AWS.XRay.Types.String as Types

-- | Details for a group without metadata.
--
-- /See:/ 'mkGroupSummary' smart constructor.
data GroupSummary = GroupSummary'
  { -- | The filter expression defining the parameters to include traces.
    filterExpression :: Core.Maybe Types.String,
    -- | The ARN of the group generated based on the GroupName.
    groupARN :: Core.Maybe Types.String,
    -- | The unique case-sensitive name of the group.
    groupName :: Core.Maybe Types.String,
    -- | The structure containing configurations related to insights.
    --
    --
    --     * The InsightsEnabled boolean can be set to true to enable insights for the group or false to disable insights for the group.
    --
    --
    --     * The NotificationsEnabled boolean can be set to true to enable insights notifications. Notifications can only be enabled on a group with InsightsEnabled set to true.
    insightsConfiguration :: Core.Maybe Types.InsightsConfiguration
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GroupSummary' value with any optional fields omitted.
mkGroupSummary ::
  GroupSummary
mkGroupSummary =
  GroupSummary'
    { filterExpression = Core.Nothing,
      groupARN = Core.Nothing,
      groupName = Core.Nothing,
      insightsConfiguration = Core.Nothing
    }

-- | The filter expression defining the parameters to include traces.
--
-- /Note:/ Consider using 'filterExpression' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsFilterExpression :: Lens.Lens' GroupSummary (Core.Maybe Types.String)
gsFilterExpression = Lens.field @"filterExpression"
{-# DEPRECATED gsFilterExpression "Use generic-lens or generic-optics with 'filterExpression' instead." #-}

-- | The ARN of the group generated based on the GroupName.
--
-- /Note:/ Consider using 'groupARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsGroupARN :: Lens.Lens' GroupSummary (Core.Maybe Types.String)
gsGroupARN = Lens.field @"groupARN"
{-# DEPRECATED gsGroupARN "Use generic-lens or generic-optics with 'groupARN' instead." #-}

-- | The unique case-sensitive name of the group.
--
-- /Note:/ Consider using 'groupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsGroupName :: Lens.Lens' GroupSummary (Core.Maybe Types.String)
gsGroupName = Lens.field @"groupName"
{-# DEPRECATED gsGroupName "Use generic-lens or generic-optics with 'groupName' instead." #-}

-- | The structure containing configurations related to insights.
--
--
--     * The InsightsEnabled boolean can be set to true to enable insights for the group or false to disable insights for the group.
--
--
--     * The NotificationsEnabled boolean can be set to true to enable insights notifications. Notifications can only be enabled on a group with InsightsEnabled set to true.
--
--
--
-- /Note:/ Consider using 'insightsConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsInsightsConfiguration :: Lens.Lens' GroupSummary (Core.Maybe Types.InsightsConfiguration)
gsInsightsConfiguration = Lens.field @"insightsConfiguration"
{-# DEPRECATED gsInsightsConfiguration "Use generic-lens or generic-optics with 'insightsConfiguration' instead." #-}

instance Core.FromJSON GroupSummary where
  parseJSON =
    Core.withObject "GroupSummary" Core.$
      \x ->
        GroupSummary'
          Core.<$> (x Core..:? "FilterExpression")
          Core.<*> (x Core..:? "GroupARN")
          Core.<*> (x Core..:? "GroupName")
          Core.<*> (x Core..:? "InsightsConfiguration")