{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.InsightSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.InsightSummary
  ( InsightSummary (..),

    -- * Smart constructor
    mkInsightSummary,

    -- * Lenses
    isCategories,
    isClientRequestImpactStatistics,
    isEndTime,
    isGroupARN,
    isGroupName,
    isInsightId,
    isLastUpdateTime,
    isRootCauseServiceId,
    isRootCauseServiceRequestImpactStatistics,
    isStartTime,
    isState,
    isSummary,
    isTopAnomalousServices,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.XRay.Types.AnomalousService as Types
import qualified Network.AWS.XRay.Types.GroupARN as Types
import qualified Network.AWS.XRay.Types.GroupName as Types
import qualified Network.AWS.XRay.Types.InsightCategory as Types
import qualified Network.AWS.XRay.Types.InsightId as Types
import qualified Network.AWS.XRay.Types.InsightState as Types
import qualified Network.AWS.XRay.Types.InsightSummaryText as Types
import qualified Network.AWS.XRay.Types.RequestImpactStatistics as Types
import qualified Network.AWS.XRay.Types.ServiceId as Types

-- | Information that describes an insight.
--
-- /See:/ 'mkInsightSummary' smart constructor.
data InsightSummary = InsightSummary'
  { -- | Categories The categories that label and describe the type of insight.
    categories :: Core.Maybe [Types.InsightCategory],
    -- | The impact statistics of the client side service. This includes the number of requests to the client service and whether the requests were faults or okay.
    clientRequestImpactStatistics :: Core.Maybe Types.RequestImpactStatistics,
    -- | The time, in Unix seconds, at which the insight ended.
    endTime :: Core.Maybe Core.NominalDiffTime,
    -- | The Amazon Resource Name (ARN) of the group that the insight belongs to.
    groupARN :: Core.Maybe Types.GroupARN,
    -- | The name of the group that the insight belongs to.
    groupName :: Core.Maybe Types.GroupName,
    -- | The insights unique identifier.
    insightId :: Core.Maybe Types.InsightId,
    -- | The time, in Unix seconds, that the insight was last updated.
    lastUpdateTime :: Core.Maybe Core.NominalDiffTime,
    rootCauseServiceId :: Core.Maybe Types.ServiceId,
    -- | The impact statistics of the root cause service. This includes the number of requests to the client service and whether the requests were faults or okay.
    rootCauseServiceRequestImpactStatistics :: Core.Maybe Types.RequestImpactStatistics,
    -- | The time, in Unix seconds, at which the insight began.
    startTime :: Core.Maybe Core.NominalDiffTime,
    -- | The current state of the insight.
    state :: Core.Maybe Types.InsightState,
    -- | A brief description of the insight.
    summary :: Core.Maybe Types.InsightSummaryText,
    -- | The service within the insight that is most impacted by the incident.
    topAnomalousServices :: Core.Maybe [Types.AnomalousService]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'InsightSummary' value with any optional fields omitted.
mkInsightSummary ::
  InsightSummary
mkInsightSummary =
  InsightSummary'
    { categories = Core.Nothing,
      clientRequestImpactStatistics = Core.Nothing,
      endTime = Core.Nothing,
      groupARN = Core.Nothing,
      groupName = Core.Nothing,
      insightId = Core.Nothing,
      lastUpdateTime = Core.Nothing,
      rootCauseServiceId = Core.Nothing,
      rootCauseServiceRequestImpactStatistics = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      summary = Core.Nothing,
      topAnomalousServices = Core.Nothing
    }

-- | Categories The categories that label and describe the type of insight.
--
-- /Note:/ Consider using 'categories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isCategories :: Lens.Lens' InsightSummary (Core.Maybe [Types.InsightCategory])
isCategories = Lens.field @"categories"
{-# DEPRECATED isCategories "Use generic-lens or generic-optics with 'categories' instead." #-}

-- | The impact statistics of the client side service. This includes the number of requests to the client service and whether the requests were faults or okay.
--
-- /Note:/ Consider using 'clientRequestImpactStatistics' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isClientRequestImpactStatistics :: Lens.Lens' InsightSummary (Core.Maybe Types.RequestImpactStatistics)
isClientRequestImpactStatistics = Lens.field @"clientRequestImpactStatistics"
{-# DEPRECATED isClientRequestImpactStatistics "Use generic-lens or generic-optics with 'clientRequestImpactStatistics' instead." #-}

-- | The time, in Unix seconds, at which the insight ended.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isEndTime :: Lens.Lens' InsightSummary (Core.Maybe Core.NominalDiffTime)
isEndTime = Lens.field @"endTime"
{-# DEPRECATED isEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The Amazon Resource Name (ARN) of the group that the insight belongs to.
--
-- /Note:/ Consider using 'groupARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isGroupARN :: Lens.Lens' InsightSummary (Core.Maybe Types.GroupARN)
isGroupARN = Lens.field @"groupARN"
{-# DEPRECATED isGroupARN "Use generic-lens or generic-optics with 'groupARN' instead." #-}

-- | The name of the group that the insight belongs to.
--
-- /Note:/ Consider using 'groupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isGroupName :: Lens.Lens' InsightSummary (Core.Maybe Types.GroupName)
isGroupName = Lens.field @"groupName"
{-# DEPRECATED isGroupName "Use generic-lens or generic-optics with 'groupName' instead." #-}

-- | The insights unique identifier.
--
-- /Note:/ Consider using 'insightId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isInsightId :: Lens.Lens' InsightSummary (Core.Maybe Types.InsightId)
isInsightId = Lens.field @"insightId"
{-# DEPRECATED isInsightId "Use generic-lens or generic-optics with 'insightId' instead." #-}

-- | The time, in Unix seconds, that the insight was last updated.
--
-- /Note:/ Consider using 'lastUpdateTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isLastUpdateTime :: Lens.Lens' InsightSummary (Core.Maybe Core.NominalDiffTime)
isLastUpdateTime = Lens.field @"lastUpdateTime"
{-# DEPRECATED isLastUpdateTime "Use generic-lens or generic-optics with 'lastUpdateTime' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'rootCauseServiceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isRootCauseServiceId :: Lens.Lens' InsightSummary (Core.Maybe Types.ServiceId)
isRootCauseServiceId = Lens.field @"rootCauseServiceId"
{-# DEPRECATED isRootCauseServiceId "Use generic-lens or generic-optics with 'rootCauseServiceId' instead." #-}

-- | The impact statistics of the root cause service. This includes the number of requests to the client service and whether the requests were faults or okay.
--
-- /Note:/ Consider using 'rootCauseServiceRequestImpactStatistics' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isRootCauseServiceRequestImpactStatistics :: Lens.Lens' InsightSummary (Core.Maybe Types.RequestImpactStatistics)
isRootCauseServiceRequestImpactStatistics = Lens.field @"rootCauseServiceRequestImpactStatistics"
{-# DEPRECATED isRootCauseServiceRequestImpactStatistics "Use generic-lens or generic-optics with 'rootCauseServiceRequestImpactStatistics' instead." #-}

-- | The time, in Unix seconds, at which the insight began.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isStartTime :: Lens.Lens' InsightSummary (Core.Maybe Core.NominalDiffTime)
isStartTime = Lens.field @"startTime"
{-# DEPRECATED isStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The current state of the insight.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isState :: Lens.Lens' InsightSummary (Core.Maybe Types.InsightState)
isState = Lens.field @"state"
{-# DEPRECATED isState "Use generic-lens or generic-optics with 'state' instead." #-}

-- | A brief description of the insight.
--
-- /Note:/ Consider using 'summary' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isSummary :: Lens.Lens' InsightSummary (Core.Maybe Types.InsightSummaryText)
isSummary = Lens.field @"summary"
{-# DEPRECATED isSummary "Use generic-lens or generic-optics with 'summary' instead." #-}

-- | The service within the insight that is most impacted by the incident.
--
-- /Note:/ Consider using 'topAnomalousServices' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
isTopAnomalousServices :: Lens.Lens' InsightSummary (Core.Maybe [Types.AnomalousService])
isTopAnomalousServices = Lens.field @"topAnomalousServices"
{-# DEPRECATED isTopAnomalousServices "Use generic-lens or generic-optics with 'topAnomalousServices' instead." #-}

instance Core.FromJSON InsightSummary where
  parseJSON =
    Core.withObject "InsightSummary" Core.$
      \x ->
        InsightSummary'
          Core.<$> (x Core..:? "Categories")
          Core.<*> (x Core..:? "ClientRequestImpactStatistics")
          Core.<*> (x Core..:? "EndTime")
          Core.<*> (x Core..:? "GroupARN")
          Core.<*> (x Core..:? "GroupName")
          Core.<*> (x Core..:? "InsightId")
          Core.<*> (x Core..:? "LastUpdateTime")
          Core.<*> (x Core..:? "RootCauseServiceId")
          Core.<*> (x Core..:? "RootCauseServiceRequestImpactStatistics")
          Core.<*> (x Core..:? "StartTime")
          Core.<*> (x Core..:? "State")
          Core.<*> (x Core..:? "Summary")
          Core.<*> (x Core..:? "TopAnomalousServices")