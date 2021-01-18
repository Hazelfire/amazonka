{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.Parameter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.Parameter
  ( Parameter (..),

    -- * Smart constructor
    mkParameter,

    -- * Lenses
    pAllowedValues,
    pChangeType,
    pDataType,
    pDescription,
    pIsModifiable,
    pMinimumEngineVersion,
    pParameterName,
    pParameterValue,
    pSource,
  )
where

import qualified Network.AWS.ElastiCache.Types.ChangeType as Types
import qualified Network.AWS.ElastiCache.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes an individual setting that controls some aspect of ElastiCache behavior.
--
-- /See:/ 'mkParameter' smart constructor.
data Parameter = Parameter'
  { -- | The valid range of values for the parameter.
    allowedValues :: Core.Maybe Types.String,
    -- | Indicates whether a change to the parameter is applied immediately or requires a reboot for the change to be applied. You can force a reboot or wait until the next maintenance window's reboot. For more information, see <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html Rebooting a Cluster> .
    changeType :: Core.Maybe Types.ChangeType,
    -- | The valid data type for the parameter.
    dataType :: Core.Maybe Types.String,
    -- | A description of the parameter.
    description :: Core.Maybe Types.String,
    -- | Indicates whether (@true@ ) or not (@false@ ) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.
    isModifiable :: Core.Maybe Core.Bool,
    -- | The earliest cache engine version to which the parameter can apply.
    minimumEngineVersion :: Core.Maybe Types.String,
    -- | The name of the parameter.
    parameterName :: Core.Maybe Types.String,
    -- | The value of the parameter.
    parameterValue :: Core.Maybe Types.String,
    -- | The source of the parameter.
    source :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Parameter' value with any optional fields omitted.
mkParameter ::
  Parameter
mkParameter =
  Parameter'
    { allowedValues = Core.Nothing,
      changeType = Core.Nothing,
      dataType = Core.Nothing,
      description = Core.Nothing,
      isModifiable = Core.Nothing,
      minimumEngineVersion = Core.Nothing,
      parameterName = Core.Nothing,
      parameterValue = Core.Nothing,
      source = Core.Nothing
    }

-- | The valid range of values for the parameter.
--
-- /Note:/ Consider using 'allowedValues' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pAllowedValues :: Lens.Lens' Parameter (Core.Maybe Types.String)
pAllowedValues = Lens.field @"allowedValues"
{-# DEPRECATED pAllowedValues "Use generic-lens or generic-optics with 'allowedValues' instead." #-}

-- | Indicates whether a change to the parameter is applied immediately or requires a reboot for the change to be applied. You can force a reboot or wait until the next maintenance window's reboot. For more information, see <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html Rebooting a Cluster> .
--
-- /Note:/ Consider using 'changeType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pChangeType :: Lens.Lens' Parameter (Core.Maybe Types.ChangeType)
pChangeType = Lens.field @"changeType"
{-# DEPRECATED pChangeType "Use generic-lens or generic-optics with 'changeType' instead." #-}

-- | The valid data type for the parameter.
--
-- /Note:/ Consider using 'dataType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pDataType :: Lens.Lens' Parameter (Core.Maybe Types.String)
pDataType = Lens.field @"dataType"
{-# DEPRECATED pDataType "Use generic-lens or generic-optics with 'dataType' instead." #-}

-- | A description of the parameter.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pDescription :: Lens.Lens' Parameter (Core.Maybe Types.String)
pDescription = Lens.field @"description"
{-# DEPRECATED pDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Indicates whether (@true@ ) or not (@false@ ) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.
--
-- /Note:/ Consider using 'isModifiable' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pIsModifiable :: Lens.Lens' Parameter (Core.Maybe Core.Bool)
pIsModifiable = Lens.field @"isModifiable"
{-# DEPRECATED pIsModifiable "Use generic-lens or generic-optics with 'isModifiable' instead." #-}

-- | The earliest cache engine version to which the parameter can apply.
--
-- /Note:/ Consider using 'minimumEngineVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pMinimumEngineVersion :: Lens.Lens' Parameter (Core.Maybe Types.String)
pMinimumEngineVersion = Lens.field @"minimumEngineVersion"
{-# DEPRECATED pMinimumEngineVersion "Use generic-lens or generic-optics with 'minimumEngineVersion' instead." #-}

-- | The name of the parameter.
--
-- /Note:/ Consider using 'parameterName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pParameterName :: Lens.Lens' Parameter (Core.Maybe Types.String)
pParameterName = Lens.field @"parameterName"
{-# DEPRECATED pParameterName "Use generic-lens or generic-optics with 'parameterName' instead." #-}

-- | The value of the parameter.
--
-- /Note:/ Consider using 'parameterValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pParameterValue :: Lens.Lens' Parameter (Core.Maybe Types.String)
pParameterValue = Lens.field @"parameterValue"
{-# DEPRECATED pParameterValue "Use generic-lens or generic-optics with 'parameterValue' instead." #-}

-- | The source of the parameter.
--
-- /Note:/ Consider using 'source' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pSource :: Lens.Lens' Parameter (Core.Maybe Types.String)
pSource = Lens.field @"source"
{-# DEPRECATED pSource "Use generic-lens or generic-optics with 'source' instead." #-}

instance Core.FromXML Parameter where
  parseXML x =
    Parameter'
      Core.<$> (x Core..@? "AllowedValues")
      Core.<*> (x Core..@? "ChangeType")
      Core.<*> (x Core..@? "DataType")
      Core.<*> (x Core..@? "Description")
      Core.<*> (x Core..@? "IsModifiable")
      Core.<*> (x Core..@? "MinimumEngineVersion")
      Core.<*> (x Core..@? "ParameterName")
      Core.<*> (x Core..@? "ParameterValue")
      Core.<*> (x Core..@? "Source")