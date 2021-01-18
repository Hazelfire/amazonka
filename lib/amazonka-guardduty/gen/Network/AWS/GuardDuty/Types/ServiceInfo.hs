{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.ServiceInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.ServiceInfo
  ( ServiceInfo (..),

    -- * Smart constructor
    mkServiceInfo,

    -- * Lenses
    siAction,
    siArchived,
    siCount,
    siDetectorId,
    siEventFirstSeen,
    siEventLastSeen,
    siEvidence,
    siResourceRole,
    siServiceName,
    siUserFeedback,
  )
where

import qualified Network.AWS.GuardDuty.Types.Action as Types
import qualified Network.AWS.GuardDuty.Types.DetectorId as Types
import qualified Network.AWS.GuardDuty.Types.Evidence as Types
import qualified Network.AWS.GuardDuty.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains additional information about the generated finding.
--
-- /See:/ 'mkServiceInfo' smart constructor.
data ServiceInfo = ServiceInfo'
  { -- | Information about the activity that is described in a finding.
    action :: Core.Maybe Types.Action,
    -- | Indicates whether this finding is archived.
    archived :: Core.Maybe Core.Bool,
    -- | The total count of the occurrences of this finding type.
    count :: Core.Maybe Core.Int,
    -- | The detector ID for the GuardDuty service.
    detectorId :: Core.Maybe Types.DetectorId,
    -- | The first-seen timestamp of the activity that prompted GuardDuty to generate this finding.
    eventFirstSeen :: Core.Maybe Types.String,
    -- | The last-seen timestamp of the activity that prompted GuardDuty to generate this finding.
    eventLastSeen :: Core.Maybe Types.String,
    -- | An evidence object associated with the service.
    evidence :: Core.Maybe Types.Evidence,
    -- | The resource role information for this finding.
    resourceRole :: Core.Maybe Types.String,
    -- | The name of the AWS service (GuardDuty) that generated a finding.
    serviceName :: Core.Maybe Types.String,
    -- | Feedback that was submitted about the finding.
    userFeedback :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ServiceInfo' value with any optional fields omitted.
mkServiceInfo ::
  ServiceInfo
mkServiceInfo =
  ServiceInfo'
    { action = Core.Nothing,
      archived = Core.Nothing,
      count = Core.Nothing,
      detectorId = Core.Nothing,
      eventFirstSeen = Core.Nothing,
      eventLastSeen = Core.Nothing,
      evidence = Core.Nothing,
      resourceRole = Core.Nothing,
      serviceName = Core.Nothing,
      userFeedback = Core.Nothing
    }

-- | Information about the activity that is described in a finding.
--
-- /Note:/ Consider using 'action' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siAction :: Lens.Lens' ServiceInfo (Core.Maybe Types.Action)
siAction = Lens.field @"action"
{-# DEPRECATED siAction "Use generic-lens or generic-optics with 'action' instead." #-}

-- | Indicates whether this finding is archived.
--
-- /Note:/ Consider using 'archived' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siArchived :: Lens.Lens' ServiceInfo (Core.Maybe Core.Bool)
siArchived = Lens.field @"archived"
{-# DEPRECATED siArchived "Use generic-lens or generic-optics with 'archived' instead." #-}

-- | The total count of the occurrences of this finding type.
--
-- /Note:/ Consider using 'count' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siCount :: Lens.Lens' ServiceInfo (Core.Maybe Core.Int)
siCount = Lens.field @"count"
{-# DEPRECATED siCount "Use generic-lens or generic-optics with 'count' instead." #-}

-- | The detector ID for the GuardDuty service.
--
-- /Note:/ Consider using 'detectorId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siDetectorId :: Lens.Lens' ServiceInfo (Core.Maybe Types.DetectorId)
siDetectorId = Lens.field @"detectorId"
{-# DEPRECATED siDetectorId "Use generic-lens or generic-optics with 'detectorId' instead." #-}

-- | The first-seen timestamp of the activity that prompted GuardDuty to generate this finding.
--
-- /Note:/ Consider using 'eventFirstSeen' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siEventFirstSeen :: Lens.Lens' ServiceInfo (Core.Maybe Types.String)
siEventFirstSeen = Lens.field @"eventFirstSeen"
{-# DEPRECATED siEventFirstSeen "Use generic-lens or generic-optics with 'eventFirstSeen' instead." #-}

-- | The last-seen timestamp of the activity that prompted GuardDuty to generate this finding.
--
-- /Note:/ Consider using 'eventLastSeen' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siEventLastSeen :: Lens.Lens' ServiceInfo (Core.Maybe Types.String)
siEventLastSeen = Lens.field @"eventLastSeen"
{-# DEPRECATED siEventLastSeen "Use generic-lens or generic-optics with 'eventLastSeen' instead." #-}

-- | An evidence object associated with the service.
--
-- /Note:/ Consider using 'evidence' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siEvidence :: Lens.Lens' ServiceInfo (Core.Maybe Types.Evidence)
siEvidence = Lens.field @"evidence"
{-# DEPRECATED siEvidence "Use generic-lens or generic-optics with 'evidence' instead." #-}

-- | The resource role information for this finding.
--
-- /Note:/ Consider using 'resourceRole' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siResourceRole :: Lens.Lens' ServiceInfo (Core.Maybe Types.String)
siResourceRole = Lens.field @"resourceRole"
{-# DEPRECATED siResourceRole "Use generic-lens or generic-optics with 'resourceRole' instead." #-}

-- | The name of the AWS service (GuardDuty) that generated a finding.
--
-- /Note:/ Consider using 'serviceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siServiceName :: Lens.Lens' ServiceInfo (Core.Maybe Types.String)
siServiceName = Lens.field @"serviceName"
{-# DEPRECATED siServiceName "Use generic-lens or generic-optics with 'serviceName' instead." #-}

-- | Feedback that was submitted about the finding.
--
-- /Note:/ Consider using 'userFeedback' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
siUserFeedback :: Lens.Lens' ServiceInfo (Core.Maybe Types.String)
siUserFeedback = Lens.field @"userFeedback"
{-# DEPRECATED siUserFeedback "Use generic-lens or generic-optics with 'userFeedback' instead." #-}

instance Core.FromJSON ServiceInfo where
  parseJSON =
    Core.withObject "ServiceInfo" Core.$
      \x ->
        ServiceInfo'
          Core.<$> (x Core..:? "action")
          Core.<*> (x Core..:? "archived")
          Core.<*> (x Core..:? "count")
          Core.<*> (x Core..:? "detectorId")
          Core.<*> (x Core..:? "eventFirstSeen")
          Core.<*> (x Core..:? "eventLastSeen")
          Core.<*> (x Core..:? "evidence")
          Core.<*> (x Core..:? "resourceRole")
          Core.<*> (x Core..:? "serviceName")
          Core.<*> (x Core..:? "userFeedback")