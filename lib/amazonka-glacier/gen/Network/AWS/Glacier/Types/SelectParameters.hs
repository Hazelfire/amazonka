{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.SelectParameters
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.SelectParameters
  ( SelectParameters (..),

    -- * Smart constructor
    mkSelectParameters,

    -- * Lenses
    spExpression,
    spExpressionType,
    spInputSerialization,
    spOutputSerialization,
  )
where

import qualified Network.AWS.Glacier.Types.Expression as Types
import qualified Network.AWS.Glacier.Types.ExpressionType as Types
import qualified Network.AWS.Glacier.Types.InputSerialization as Types
import qualified Network.AWS.Glacier.Types.OutputSerialization as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains information about the parameters used for a select.
--
-- /See:/ 'mkSelectParameters' smart constructor.
data SelectParameters = SelectParameters'
  { -- | The expression that is used to select the object.
    expression :: Core.Maybe Types.Expression,
    -- | The type of the provided expression, for example @SQL@ .
    expressionType :: Core.Maybe Types.ExpressionType,
    -- | Describes the serialization format of the object.
    inputSerialization :: Core.Maybe Types.InputSerialization,
    -- | Describes how the results of the select job are serialized.
    outputSerialization :: Core.Maybe Types.OutputSerialization
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SelectParameters' value with any optional fields omitted.
mkSelectParameters ::
  SelectParameters
mkSelectParameters =
  SelectParameters'
    { expression = Core.Nothing,
      expressionType = Core.Nothing,
      inputSerialization = Core.Nothing,
      outputSerialization = Core.Nothing
    }

-- | The expression that is used to select the object.
--
-- /Note:/ Consider using 'expression' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spExpression :: Lens.Lens' SelectParameters (Core.Maybe Types.Expression)
spExpression = Lens.field @"expression"
{-# DEPRECATED spExpression "Use generic-lens or generic-optics with 'expression' instead." #-}

-- | The type of the provided expression, for example @SQL@ .
--
-- /Note:/ Consider using 'expressionType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spExpressionType :: Lens.Lens' SelectParameters (Core.Maybe Types.ExpressionType)
spExpressionType = Lens.field @"expressionType"
{-# DEPRECATED spExpressionType "Use generic-lens or generic-optics with 'expressionType' instead." #-}

-- | Describes the serialization format of the object.
--
-- /Note:/ Consider using 'inputSerialization' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spInputSerialization :: Lens.Lens' SelectParameters (Core.Maybe Types.InputSerialization)
spInputSerialization = Lens.field @"inputSerialization"
{-# DEPRECATED spInputSerialization "Use generic-lens or generic-optics with 'inputSerialization' instead." #-}

-- | Describes how the results of the select job are serialized.
--
-- /Note:/ Consider using 'outputSerialization' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spOutputSerialization :: Lens.Lens' SelectParameters (Core.Maybe Types.OutputSerialization)
spOutputSerialization = Lens.field @"outputSerialization"
{-# DEPRECATED spOutputSerialization "Use generic-lens or generic-optics with 'outputSerialization' instead." #-}

instance Core.FromJSON SelectParameters where
  toJSON SelectParameters {..} =
    Core.object
      ( Core.catMaybes
          [ ("Expression" Core..=) Core.<$> expression,
            ("ExpressionType" Core..=) Core.<$> expressionType,
            ("InputSerialization" Core..=) Core.<$> inputSerialization,
            ("OutputSerialization" Core..=) Core.<$> outputSerialization
          ]
      )

instance Core.FromJSON SelectParameters where
  parseJSON =
    Core.withObject "SelectParameters" Core.$
      \x ->
        SelectParameters'
          Core.<$> (x Core..:? "Expression")
          Core.<*> (x Core..:? "ExpressionType")
          Core.<*> (x Core..:? "InputSerialization")
          Core.<*> (x Core..:? "OutputSerialization")