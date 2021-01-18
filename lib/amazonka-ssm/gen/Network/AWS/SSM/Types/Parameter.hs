{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.Parameter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.Parameter
  ( Parameter (..),

    -- * Smart constructor
    mkParameter,

    -- * Lenses
    pfARN,
    pfDataType,
    pfLastModifiedDate,
    pfName,
    pfSelector,
    pfSourceResult,
    pfType,
    pfValue,
    pfVersion,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SSM.Types.PSParameterName as Types
import qualified Network.AWS.SSM.Types.PSParameterSelector as Types
import qualified Network.AWS.SSM.Types.PSParameterValue as Types
import qualified Network.AWS.SSM.Types.ParameterDataType as Types
import qualified Network.AWS.SSM.Types.ParameterType as Types
import qualified Network.AWS.SSM.Types.String as Types

-- | An Systems Manager parameter in Parameter Store.
--
-- /See:/ 'mkParameter' smart constructor.
data Parameter = Parameter'
  { -- | The Amazon Resource Name (ARN) of the parameter.
    arn :: Core.Maybe Types.String,
    -- | The data type of the parameter, such as @text@ or @aws:ec2:image@ . The default is @text@ .
    dataType :: Core.Maybe Types.ParameterDataType,
    -- | Date the parameter was last changed or updated and the parameter version was created.
    lastModifiedDate :: Core.Maybe Core.NominalDiffTime,
    -- | The name of the parameter.
    name :: Core.Maybe Types.PSParameterName,
    -- | Either the version number or the label used to retrieve the parameter value. Specify selectors by using one of the following formats:
    --
    -- parameter_name:version
    -- parameter_name:label
    selector :: Core.Maybe Types.PSParameterSelector,
    -- | Applies to parameters that reference information in other AWS services. SourceResult is the raw result or response from the source.
    sourceResult :: Core.Maybe Types.String,
    -- | The type of parameter. Valid values include the following: @String@ , @StringList@ , and @SecureString@ .
    type' :: Core.Maybe Types.ParameterType,
    -- | The parameter value.
    value :: Core.Maybe Types.PSParameterValue,
    -- | The parameter version.
    version :: Core.Maybe Core.Integer
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'Parameter' value with any optional fields omitted.
mkParameter ::
  Parameter
mkParameter =
  Parameter'
    { arn = Core.Nothing,
      dataType = Core.Nothing,
      lastModifiedDate = Core.Nothing,
      name = Core.Nothing,
      selector = Core.Nothing,
      sourceResult = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing,
      version = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) of the parameter.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfARN :: Lens.Lens' Parameter (Core.Maybe Types.String)
pfARN = Lens.field @"arn"
{-# DEPRECATED pfARN "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The data type of the parameter, such as @text@ or @aws:ec2:image@ . The default is @text@ .
--
-- /Note:/ Consider using 'dataType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfDataType :: Lens.Lens' Parameter (Core.Maybe Types.ParameterDataType)
pfDataType = Lens.field @"dataType"
{-# DEPRECATED pfDataType "Use generic-lens or generic-optics with 'dataType' instead." #-}

-- | Date the parameter was last changed or updated and the parameter version was created.
--
-- /Note:/ Consider using 'lastModifiedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfLastModifiedDate :: Lens.Lens' Parameter (Core.Maybe Core.NominalDiffTime)
pfLastModifiedDate = Lens.field @"lastModifiedDate"
{-# DEPRECATED pfLastModifiedDate "Use generic-lens or generic-optics with 'lastModifiedDate' instead." #-}

-- | The name of the parameter.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfName :: Lens.Lens' Parameter (Core.Maybe Types.PSParameterName)
pfName = Lens.field @"name"
{-# DEPRECATED pfName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | Either the version number or the label used to retrieve the parameter value. Specify selectors by using one of the following formats:
--
-- parameter_name:version
-- parameter_name:label
--
-- /Note:/ Consider using 'selector' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfSelector :: Lens.Lens' Parameter (Core.Maybe Types.PSParameterSelector)
pfSelector = Lens.field @"selector"
{-# DEPRECATED pfSelector "Use generic-lens or generic-optics with 'selector' instead." #-}

-- | Applies to parameters that reference information in other AWS services. SourceResult is the raw result or response from the source.
--
-- /Note:/ Consider using 'sourceResult' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfSourceResult :: Lens.Lens' Parameter (Core.Maybe Types.String)
pfSourceResult = Lens.field @"sourceResult"
{-# DEPRECATED pfSourceResult "Use generic-lens or generic-optics with 'sourceResult' instead." #-}

-- | The type of parameter. Valid values include the following: @String@ , @StringList@ , and @SecureString@ .
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfType :: Lens.Lens' Parameter (Core.Maybe Types.ParameterType)
pfType = Lens.field @"type'"
{-# DEPRECATED pfType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | The parameter value.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfValue :: Lens.Lens' Parameter (Core.Maybe Types.PSParameterValue)
pfValue = Lens.field @"value"
{-# DEPRECATED pfValue "Use generic-lens or generic-optics with 'value' instead." #-}

-- | The parameter version.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfVersion :: Lens.Lens' Parameter (Core.Maybe Core.Integer)
pfVersion = Lens.field @"version"
{-# DEPRECATED pfVersion "Use generic-lens or generic-optics with 'version' instead." #-}

instance Core.FromJSON Parameter where
  parseJSON =
    Core.withObject "Parameter" Core.$
      \x ->
        Parameter'
          Core.<$> (x Core..:? "ARN")
          Core.<*> (x Core..:? "DataType")
          Core.<*> (x Core..:? "LastModifiedDate")
          Core.<*> (x Core..:? "Name")
          Core.<*> (x Core..:? "Selector")
          Core.<*> (x Core..:? "SourceResult")
          Core.<*> (x Core..:? "Type")
          Core.<*> (x Core..:? "Value")
          Core.<*> (x Core..:? "Version")