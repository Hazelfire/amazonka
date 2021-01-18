{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.MathActivity
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.MathActivity
  ( MathActivity (..),

    -- * Smart constructor
    mkMathActivity,

    -- * Lenses
    maName,
    maAttribute,
    maMath,
    maNext,
  )
where

import qualified Network.AWS.IoTAnalytics.Types.ActivityName as Types
import qualified Network.AWS.IoTAnalytics.Types.Attribute as Types
import qualified Network.AWS.IoTAnalytics.Types.MathExpression as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | An activity that computes an arithmetic expression using the message's attributes.
--
-- /See:/ 'mkMathActivity' smart constructor.
data MathActivity = MathActivity'
  { -- | The name of the math activity.
    name :: Types.ActivityName,
    -- | The name of the attribute that contains the result of the math operation.
    attribute :: Types.Attribute,
    -- | An expression that uses one or more existing attributes and must return an integer value.
    math :: Types.MathExpression,
    -- | The next activity in the pipeline.
    next :: Core.Maybe Types.ActivityName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'MathActivity' value with any optional fields omitted.
mkMathActivity ::
  -- | 'name'
  Types.ActivityName ->
  -- | 'attribute'
  Types.Attribute ->
  -- | 'math'
  Types.MathExpression ->
  MathActivity
mkMathActivity name attribute math =
  MathActivity' {name, attribute, math, next = Core.Nothing}

-- | The name of the math activity.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
maName :: Lens.Lens' MathActivity Types.ActivityName
maName = Lens.field @"name"
{-# DEPRECATED maName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The name of the attribute that contains the result of the math operation.
--
-- /Note:/ Consider using 'attribute' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
maAttribute :: Lens.Lens' MathActivity Types.Attribute
maAttribute = Lens.field @"attribute"
{-# DEPRECATED maAttribute "Use generic-lens or generic-optics with 'attribute' instead." #-}

-- | An expression that uses one or more existing attributes and must return an integer value.
--
-- /Note:/ Consider using 'math' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
maMath :: Lens.Lens' MathActivity Types.MathExpression
maMath = Lens.field @"math"
{-# DEPRECATED maMath "Use generic-lens or generic-optics with 'math' instead." #-}

-- | The next activity in the pipeline.
--
-- /Note:/ Consider using 'next' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
maNext :: Lens.Lens' MathActivity (Core.Maybe Types.ActivityName)
maNext = Lens.field @"next"
{-# DEPRECATED maNext "Use generic-lens or generic-optics with 'next' instead." #-}

instance Core.FromJSON MathActivity where
  toJSON MathActivity {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("name" Core..= name),
            Core.Just ("attribute" Core..= attribute),
            Core.Just ("math" Core..= math),
            ("next" Core..=) Core.<$> next
          ]
      )

instance Core.FromJSON MathActivity where
  parseJSON =
    Core.withObject "MathActivity" Core.$
      \x ->
        MathActivity'
          Core.<$> (x Core..: "name")
          Core.<*> (x Core..: "attribute")
          Core.<*> (x Core..: "math")
          Core.<*> (x Core..:? "next")