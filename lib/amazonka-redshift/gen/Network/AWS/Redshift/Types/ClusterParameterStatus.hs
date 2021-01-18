{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ClusterParameterStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ClusterParameterStatus
  ( ClusterParameterStatus (..),

    -- * Smart constructor
    mkClusterParameterStatus,

    -- * Lenses
    cpsParameterApplyErrorDescription,
    cpsParameterApplyStatus,
    cpsParameterName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Redshift.Internal as Types
import qualified Network.AWS.Redshift.Types.String as Types

-- | Describes the status of a parameter group.
--
-- /See:/ 'mkClusterParameterStatus' smart constructor.
data ClusterParameterStatus = ClusterParameterStatus'
  { -- | The error that prevented the parameter from being applied to the database.
    parameterApplyErrorDescription :: Core.Maybe Types.String,
    -- | The status of the parameter that indicates whether the parameter is in sync with the database, waiting for a cluster reboot, or encountered an error when being applied.
    --
    -- The following are possible statuses and descriptions.
    --
    --     * @in-sync@ : The parameter value is in sync with the database.
    --
    --
    --     * @pending-reboot@ : The parameter value will be applied after the cluster reboots.
    --
    --
    --     * @applying@ : The parameter value is being applied to the database.
    --
    --
    --     * @invalid-parameter@ : Cannot apply the parameter value because it has an invalid value or syntax.
    --
    --
    --     * @apply-deferred@ : The parameter contains static property changes. The changes are deferred until the cluster reboots.
    --
    --
    --     * @apply-error@ : Cannot connect to the cluster. The parameter change will be applied after the cluster reboots.
    --
    --
    --     * @unknown-error@ : Cannot apply the parameter change right now. The change will be applied after the cluster reboots.
    parameterApplyStatus :: Core.Maybe Types.String,
    -- | The name of the parameter.
    parameterName :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ClusterParameterStatus' value with any optional fields omitted.
mkClusterParameterStatus ::
  ClusterParameterStatus
mkClusterParameterStatus =
  ClusterParameterStatus'
    { parameterApplyErrorDescription =
        Core.Nothing,
      parameterApplyStatus = Core.Nothing,
      parameterName = Core.Nothing
    }

-- | The error that prevented the parameter from being applied to the database.
--
-- /Note:/ Consider using 'parameterApplyErrorDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpsParameterApplyErrorDescription :: Lens.Lens' ClusterParameterStatus (Core.Maybe Types.String)
cpsParameterApplyErrorDescription = Lens.field @"parameterApplyErrorDescription"
{-# DEPRECATED cpsParameterApplyErrorDescription "Use generic-lens or generic-optics with 'parameterApplyErrorDescription' instead." #-}

-- | The status of the parameter that indicates whether the parameter is in sync with the database, waiting for a cluster reboot, or encountered an error when being applied.
--
-- The following are possible statuses and descriptions.
--
--     * @in-sync@ : The parameter value is in sync with the database.
--
--
--     * @pending-reboot@ : The parameter value will be applied after the cluster reboots.
--
--
--     * @applying@ : The parameter value is being applied to the database.
--
--
--     * @invalid-parameter@ : Cannot apply the parameter value because it has an invalid value or syntax.
--
--
--     * @apply-deferred@ : The parameter contains static property changes. The changes are deferred until the cluster reboots.
--
--
--     * @apply-error@ : Cannot connect to the cluster. The parameter change will be applied after the cluster reboots.
--
--
--     * @unknown-error@ : Cannot apply the parameter change right now. The change will be applied after the cluster reboots.
--
--
--
-- /Note:/ Consider using 'parameterApplyStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpsParameterApplyStatus :: Lens.Lens' ClusterParameterStatus (Core.Maybe Types.String)
cpsParameterApplyStatus = Lens.field @"parameterApplyStatus"
{-# DEPRECATED cpsParameterApplyStatus "Use generic-lens or generic-optics with 'parameterApplyStatus' instead." #-}

-- | The name of the parameter.
--
-- /Note:/ Consider using 'parameterName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpsParameterName :: Lens.Lens' ClusterParameterStatus (Core.Maybe Types.String)
cpsParameterName = Lens.field @"parameterName"
{-# DEPRECATED cpsParameterName "Use generic-lens or generic-optics with 'parameterName' instead." #-}

instance Core.FromXML ClusterParameterStatus where
  parseXML x =
    ClusterParameterStatus'
      Core.<$> (x Core..@? "ParameterApplyErrorDescription")
      Core.<*> (x Core..@? "ParameterApplyStatus")
      Core.<*> (x Core..@? "ParameterName")