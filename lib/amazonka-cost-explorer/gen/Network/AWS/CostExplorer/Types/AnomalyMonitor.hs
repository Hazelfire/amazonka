{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.AnomalyMonitor
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.AnomalyMonitor
  ( AnomalyMonitor (..),

    -- * Smart constructor
    mkAnomalyMonitor,

    -- * Lenses
    amMonitorName,
    amMonitorType,
    amCreationDate,
    amDimensionalValueCount,
    amLastEvaluatedDate,
    amLastUpdatedDate,
    amMonitorArn,
    amMonitorDimension,
    amMonitorSpecification,
  )
where

import qualified Network.AWS.CostExplorer.Types.CreationDate as Types
import qualified Network.AWS.CostExplorer.Types.Expression as Types
import qualified Network.AWS.CostExplorer.Types.LastEvaluatedDate as Types
import qualified Network.AWS.CostExplorer.Types.LastUpdatedDate as Types
import qualified Network.AWS.CostExplorer.Types.MonitorArn as Types
import qualified Network.AWS.CostExplorer.Types.MonitorDimension as Types
import qualified Network.AWS.CostExplorer.Types.MonitorName as Types
import qualified Network.AWS.CostExplorer.Types.MonitorType as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | This object continuously inspects your account's cost data for anomalies, based on @MonitorType@ and @MonitorSpecification@ . The content consists of detailed metadata and the current status of the monitor object.
--
-- /See:/ 'mkAnomalyMonitor' smart constructor.
data AnomalyMonitor = AnomalyMonitor'
  { -- | The name of the monitor.
    monitorName :: Types.MonitorName,
    -- | The possible type values.
    monitorType :: Types.MonitorType,
    -- | The date when the monitor was created.
    creationDate :: Core.Maybe Types.CreationDate,
    -- | The value for evaluated dimensions.
    dimensionalValueCount :: Core.Maybe Core.Natural,
    -- | The date when the monitor last evaluated for anomalies.
    lastEvaluatedDate :: Core.Maybe Types.LastEvaluatedDate,
    -- | The date when the monitor was last updated.
    lastUpdatedDate :: Core.Maybe Types.LastUpdatedDate,
    -- | The Amazon Resource Name (ARN) value.
    monitorArn :: Core.Maybe Types.MonitorArn,
    -- | The dimensions to evaluate.
    monitorDimension :: Core.Maybe Types.MonitorDimension,
    monitorSpecification :: Core.Maybe Types.Expression
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AnomalyMonitor' value with any optional fields omitted.
mkAnomalyMonitor ::
  -- | 'monitorName'
  Types.MonitorName ->
  -- | 'monitorType'
  Types.MonitorType ->
  AnomalyMonitor
mkAnomalyMonitor monitorName monitorType =
  AnomalyMonitor'
    { monitorName,
      monitorType,
      creationDate = Core.Nothing,
      dimensionalValueCount = Core.Nothing,
      lastEvaluatedDate = Core.Nothing,
      lastUpdatedDate = Core.Nothing,
      monitorArn = Core.Nothing,
      monitorDimension = Core.Nothing,
      monitorSpecification = Core.Nothing
    }

-- | The name of the monitor.
--
-- /Note:/ Consider using 'monitorName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
amMonitorName :: Lens.Lens' AnomalyMonitor Types.MonitorName
amMonitorName = Lens.field @"monitorName"
{-# DEPRECATED amMonitorName "Use generic-lens or generic-optics with 'monitorName' instead." #-}

-- | The possible type values.
--
-- /Note:/ Consider using 'monitorType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
amMonitorType :: Lens.Lens' AnomalyMonitor Types.MonitorType
amMonitorType = Lens.field @"monitorType"
{-# DEPRECATED amMonitorType "Use generic-lens or generic-optics with 'monitorType' instead." #-}

-- | The date when the monitor was created.
--
-- /Note:/ Consider using 'creationDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
amCreationDate :: Lens.Lens' AnomalyMonitor (Core.Maybe Types.CreationDate)
amCreationDate = Lens.field @"creationDate"
{-# DEPRECATED amCreationDate "Use generic-lens or generic-optics with 'creationDate' instead." #-}

-- | The value for evaluated dimensions.
--
-- /Note:/ Consider using 'dimensionalValueCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
amDimensionalValueCount :: Lens.Lens' AnomalyMonitor (Core.Maybe Core.Natural)
amDimensionalValueCount = Lens.field @"dimensionalValueCount"
{-# DEPRECATED amDimensionalValueCount "Use generic-lens or generic-optics with 'dimensionalValueCount' instead." #-}

-- | The date when the monitor last evaluated for anomalies.
--
-- /Note:/ Consider using 'lastEvaluatedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
amLastEvaluatedDate :: Lens.Lens' AnomalyMonitor (Core.Maybe Types.LastEvaluatedDate)
amLastEvaluatedDate = Lens.field @"lastEvaluatedDate"
{-# DEPRECATED amLastEvaluatedDate "Use generic-lens or generic-optics with 'lastEvaluatedDate' instead." #-}

-- | The date when the monitor was last updated.
--
-- /Note:/ Consider using 'lastUpdatedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
amLastUpdatedDate :: Lens.Lens' AnomalyMonitor (Core.Maybe Types.LastUpdatedDate)
amLastUpdatedDate = Lens.field @"lastUpdatedDate"
{-# DEPRECATED amLastUpdatedDate "Use generic-lens or generic-optics with 'lastUpdatedDate' instead." #-}

-- | The Amazon Resource Name (ARN) value.
--
-- /Note:/ Consider using 'monitorArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
amMonitorArn :: Lens.Lens' AnomalyMonitor (Core.Maybe Types.MonitorArn)
amMonitorArn = Lens.field @"monitorArn"
{-# DEPRECATED amMonitorArn "Use generic-lens or generic-optics with 'monitorArn' instead." #-}

-- | The dimensions to evaluate.
--
-- /Note:/ Consider using 'monitorDimension' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
amMonitorDimension :: Lens.Lens' AnomalyMonitor (Core.Maybe Types.MonitorDimension)
amMonitorDimension = Lens.field @"monitorDimension"
{-# DEPRECATED amMonitorDimension "Use generic-lens or generic-optics with 'monitorDimension' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'monitorSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
amMonitorSpecification :: Lens.Lens' AnomalyMonitor (Core.Maybe Types.Expression)
amMonitorSpecification = Lens.field @"monitorSpecification"
{-# DEPRECATED amMonitorSpecification "Use generic-lens or generic-optics with 'monitorSpecification' instead." #-}

instance Core.FromJSON AnomalyMonitor where
  toJSON AnomalyMonitor {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("MonitorName" Core..= monitorName),
            Core.Just ("MonitorType" Core..= monitorType),
            ("CreationDate" Core..=) Core.<$> creationDate,
            ("DimensionalValueCount" Core..=) Core.<$> dimensionalValueCount,
            ("LastEvaluatedDate" Core..=) Core.<$> lastEvaluatedDate,
            ("LastUpdatedDate" Core..=) Core.<$> lastUpdatedDate,
            ("MonitorArn" Core..=) Core.<$> monitorArn,
            ("MonitorDimension" Core..=) Core.<$> monitorDimension,
            ("MonitorSpecification" Core..=) Core.<$> monitorSpecification
          ]
      )

instance Core.FromJSON AnomalyMonitor where
  parseJSON =
    Core.withObject "AnomalyMonitor" Core.$
      \x ->
        AnomalyMonitor'
          Core.<$> (x Core..: "MonitorName")
          Core.<*> (x Core..: "MonitorType")
          Core.<*> (x Core..:? "CreationDate")
          Core.<*> (x Core..:? "DimensionalValueCount")
          Core.<*> (x Core..:? "LastEvaluatedDate")
          Core.<*> (x Core..:? "LastUpdatedDate")
          Core.<*> (x Core..:? "MonitorArn")
          Core.<*> (x Core..:? "MonitorDimension")
          Core.<*> (x Core..:? "MonitorSpecification")