{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InstancePatchStateFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InstancePatchStateFilter
  ( InstancePatchStateFilter (..),

    -- * Smart constructor
    mkInstancePatchStateFilter,

    -- * Lenses
    ipsfKey,
    ipsfValues,
    ipsfType,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SSM.Types.InstancePatchStateFilterKey as Types
import qualified Network.AWS.SSM.Types.InstancePatchStateFilterValue as Types
import qualified Network.AWS.SSM.Types.InstancePatchStateOperatorType as Types

-- | Defines a filter used in 'DescribeInstancePatchStatesForPatchGroup' used to scope down the information returned by the API.
--
-- /See:/ 'mkInstancePatchStateFilter' smart constructor.
data InstancePatchStateFilter = InstancePatchStateFilter'
  { -- | The key for the filter. Supported values are FailedCount, InstalledCount, InstalledOtherCount, MissingCount and NotApplicableCount.
    key :: Types.InstancePatchStateFilterKey,
    -- | The value for the filter, must be an integer greater than or equal to 0.
    values :: Core.NonEmpty Types.InstancePatchStateFilterValue,
    -- | The type of comparison that should be performed for the value: Equal, NotEqual, LessThan or GreaterThan.
    type' :: Types.InstancePatchStateOperatorType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'InstancePatchStateFilter' value with any optional fields omitted.
mkInstancePatchStateFilter ::
  -- | 'key'
  Types.InstancePatchStateFilterKey ->
  -- | 'values'
  Core.NonEmpty Types.InstancePatchStateFilterValue ->
  -- | 'type\''
  Types.InstancePatchStateOperatorType ->
  InstancePatchStateFilter
mkInstancePatchStateFilter key values type' =
  InstancePatchStateFilter' {key, values, type'}

-- | The key for the filter. Supported values are FailedCount, InstalledCount, InstalledOtherCount, MissingCount and NotApplicableCount.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipsfKey :: Lens.Lens' InstancePatchStateFilter Types.InstancePatchStateFilterKey
ipsfKey = Lens.field @"key"
{-# DEPRECATED ipsfKey "Use generic-lens or generic-optics with 'key' instead." #-}

-- | The value for the filter, must be an integer greater than or equal to 0.
--
-- /Note:/ Consider using 'values' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipsfValues :: Lens.Lens' InstancePatchStateFilter (Core.NonEmpty Types.InstancePatchStateFilterValue)
ipsfValues = Lens.field @"values"
{-# DEPRECATED ipsfValues "Use generic-lens or generic-optics with 'values' instead." #-}

-- | The type of comparison that should be performed for the value: Equal, NotEqual, LessThan or GreaterThan.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipsfType :: Lens.Lens' InstancePatchStateFilter Types.InstancePatchStateOperatorType
ipsfType = Lens.field @"type'"
{-# DEPRECATED ipsfType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.FromJSON InstancePatchStateFilter where
  toJSON InstancePatchStateFilter {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Key" Core..= key),
            Core.Just ("Values" Core..= values),
            Core.Just ("Type" Core..= type')
          ]
      )