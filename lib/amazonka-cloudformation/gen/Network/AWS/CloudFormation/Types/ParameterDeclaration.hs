{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ParameterDeclaration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ParameterDeclaration
  ( ParameterDeclaration (..),

    -- * Smart constructor
    mkParameterDeclaration,

    -- * Lenses
    pdDefaultValue,
    pdDescription,
    pdNoEcho,
    pdParameterConstraints,
    pdParameterKey,
    pdParameterType,
  )
where

import qualified Network.AWS.CloudFormation.Types.Description as Types
import qualified Network.AWS.CloudFormation.Types.ParameterConstraints as Types
import qualified Network.AWS.CloudFormation.Types.ParameterKey as Types
import qualified Network.AWS.CloudFormation.Types.ParameterType as Types
import qualified Network.AWS.CloudFormation.Types.ParameterValue as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The ParameterDeclaration data type.
--
-- /See:/ 'mkParameterDeclaration' smart constructor.
data ParameterDeclaration = ParameterDeclaration'
  { -- | The default value of the parameter.
    defaultValue :: Core.Maybe Types.ParameterValue,
    -- | The description that is associate with the parameter.
    description :: Core.Maybe Types.Description,
    -- | Flag that indicates whether the parameter value is shown as plain text in logs and in the AWS Management Console.
    noEcho :: Core.Maybe Core.Bool,
    -- | The criteria that AWS CloudFormation uses to validate parameter values.
    parameterConstraints :: Core.Maybe Types.ParameterConstraints,
    -- | The name that is associated with the parameter.
    parameterKey :: Core.Maybe Types.ParameterKey,
    -- | The type of parameter.
    parameterType :: Core.Maybe Types.ParameterType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ParameterDeclaration' value with any optional fields omitted.
mkParameterDeclaration ::
  ParameterDeclaration
mkParameterDeclaration =
  ParameterDeclaration'
    { defaultValue = Core.Nothing,
      description = Core.Nothing,
      noEcho = Core.Nothing,
      parameterConstraints = Core.Nothing,
      parameterKey = Core.Nothing,
      parameterType = Core.Nothing
    }

-- | The default value of the parameter.
--
-- /Note:/ Consider using 'defaultValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdDefaultValue :: Lens.Lens' ParameterDeclaration (Core.Maybe Types.ParameterValue)
pdDefaultValue = Lens.field @"defaultValue"
{-# DEPRECATED pdDefaultValue "Use generic-lens or generic-optics with 'defaultValue' instead." #-}

-- | The description that is associate with the parameter.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdDescription :: Lens.Lens' ParameterDeclaration (Core.Maybe Types.Description)
pdDescription = Lens.field @"description"
{-# DEPRECATED pdDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Flag that indicates whether the parameter value is shown as plain text in logs and in the AWS Management Console.
--
-- /Note:/ Consider using 'noEcho' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdNoEcho :: Lens.Lens' ParameterDeclaration (Core.Maybe Core.Bool)
pdNoEcho = Lens.field @"noEcho"
{-# DEPRECATED pdNoEcho "Use generic-lens or generic-optics with 'noEcho' instead." #-}

-- | The criteria that AWS CloudFormation uses to validate parameter values.
--
-- /Note:/ Consider using 'parameterConstraints' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdParameterConstraints :: Lens.Lens' ParameterDeclaration (Core.Maybe Types.ParameterConstraints)
pdParameterConstraints = Lens.field @"parameterConstraints"
{-# DEPRECATED pdParameterConstraints "Use generic-lens or generic-optics with 'parameterConstraints' instead." #-}

-- | The name that is associated with the parameter.
--
-- /Note:/ Consider using 'parameterKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdParameterKey :: Lens.Lens' ParameterDeclaration (Core.Maybe Types.ParameterKey)
pdParameterKey = Lens.field @"parameterKey"
{-# DEPRECATED pdParameterKey "Use generic-lens or generic-optics with 'parameterKey' instead." #-}

-- | The type of parameter.
--
-- /Note:/ Consider using 'parameterType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdParameterType :: Lens.Lens' ParameterDeclaration (Core.Maybe Types.ParameterType)
pdParameterType = Lens.field @"parameterType"
{-# DEPRECATED pdParameterType "Use generic-lens or generic-optics with 'parameterType' instead." #-}

instance Core.FromXML ParameterDeclaration where
  parseXML x =
    ParameterDeclaration'
      Core.<$> (x Core..@? "DefaultValue")
      Core.<*> (x Core..@? "Description")
      Core.<*> (x Core..@? "NoEcho")
      Core.<*> (x Core..@? "ParameterConstraints")
      Core.<*> (x Core..@? "ParameterKey")
      Core.<*> (x Core..@? "ParameterType")