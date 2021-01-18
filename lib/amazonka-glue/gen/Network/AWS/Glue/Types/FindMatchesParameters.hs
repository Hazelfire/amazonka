{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.FindMatchesParameters
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.FindMatchesParameters
  ( FindMatchesParameters (..),

    -- * Smart constructor
    mkFindMatchesParameters,

    -- * Lenses
    fmpAccuracyCostTradeoff,
    fmpEnforceProvidedLabels,
    fmpPrecisionRecallTradeoff,
    fmpPrimaryKeyColumnName,
  )
where

import qualified Network.AWS.Glue.Types.ColumnNameString as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The parameters to configure the find matches transform.
--
-- /See:/ 'mkFindMatchesParameters' smart constructor.
data FindMatchesParameters = FindMatchesParameters'
  { -- | The value that is selected when tuning your transform for a balance between accuracy and cost. A value of 0.5 means that the system balances accuracy and cost concerns. A value of 1.0 means a bias purely for accuracy, which typically results in a higher cost, sometimes substantially higher. A value of 0.0 means a bias purely for cost, which results in a less accurate @FindMatches@ transform, sometimes with unacceptable accuracy.
    --
    -- Accuracy measures how well the transform finds true positives and true negatives. Increasing accuracy requires more machine resources and cost. But it also results in increased recall.
    -- Cost measures how many compute resources, and thus money, are consumed to run the transform.
    accuracyCostTradeoff :: Core.Maybe Core.Double,
    -- | The value to switch on or off to force the output to match the provided labels from users. If the value is @True@ , the @find matches@ transform forces the output to match the provided labels. The results override the normal conflation results. If the value is @False@ , the @find matches@ transform does not ensure all the labels provided are respected, and the results rely on the trained model.
    --
    -- Note that setting this value to true may increase the conflation execution time.
    enforceProvidedLabels :: Core.Maybe Core.Bool,
    -- | The value selected when tuning your transform for a balance between precision and recall. A value of 0.5 means no preference; a value of 1.0 means a bias purely for precision, and a value of 0.0 means a bias for recall. Because this is a tradeoff, choosing values close to 1.0 means very low recall, and choosing values close to 0.0 results in very low precision.
    --
    -- The precision metric indicates how often your model is correct when it predicts a match.
    -- The recall metric indicates that for an actual match, how often your model predicts the match.
    precisionRecallTradeoff :: Core.Maybe Core.Double,
    -- | The name of a column that uniquely identifies rows in the source table. Used to help identify matching records.
    primaryKeyColumnName :: Core.Maybe Types.ColumnNameString
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'FindMatchesParameters' value with any optional fields omitted.
mkFindMatchesParameters ::
  FindMatchesParameters
mkFindMatchesParameters =
  FindMatchesParameters'
    { accuracyCostTradeoff = Core.Nothing,
      enforceProvidedLabels = Core.Nothing,
      precisionRecallTradeoff = Core.Nothing,
      primaryKeyColumnName = Core.Nothing
    }

-- | The value that is selected when tuning your transform for a balance between accuracy and cost. A value of 0.5 means that the system balances accuracy and cost concerns. A value of 1.0 means a bias purely for accuracy, which typically results in a higher cost, sometimes substantially higher. A value of 0.0 means a bias purely for cost, which results in a less accurate @FindMatches@ transform, sometimes with unacceptable accuracy.
--
-- Accuracy measures how well the transform finds true positives and true negatives. Increasing accuracy requires more machine resources and cost. But it also results in increased recall.
-- Cost measures how many compute resources, and thus money, are consumed to run the transform.
--
-- /Note:/ Consider using 'accuracyCostTradeoff' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fmpAccuracyCostTradeoff :: Lens.Lens' FindMatchesParameters (Core.Maybe Core.Double)
fmpAccuracyCostTradeoff = Lens.field @"accuracyCostTradeoff"
{-# DEPRECATED fmpAccuracyCostTradeoff "Use generic-lens or generic-optics with 'accuracyCostTradeoff' instead." #-}

-- | The value to switch on or off to force the output to match the provided labels from users. If the value is @True@ , the @find matches@ transform forces the output to match the provided labels. The results override the normal conflation results. If the value is @False@ , the @find matches@ transform does not ensure all the labels provided are respected, and the results rely on the trained model.
--
-- Note that setting this value to true may increase the conflation execution time.
--
-- /Note:/ Consider using 'enforceProvidedLabels' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fmpEnforceProvidedLabels :: Lens.Lens' FindMatchesParameters (Core.Maybe Core.Bool)
fmpEnforceProvidedLabels = Lens.field @"enforceProvidedLabels"
{-# DEPRECATED fmpEnforceProvidedLabels "Use generic-lens or generic-optics with 'enforceProvidedLabels' instead." #-}

-- | The value selected when tuning your transform for a balance between precision and recall. A value of 0.5 means no preference; a value of 1.0 means a bias purely for precision, and a value of 0.0 means a bias for recall. Because this is a tradeoff, choosing values close to 1.0 means very low recall, and choosing values close to 0.0 results in very low precision.
--
-- The precision metric indicates how often your model is correct when it predicts a match.
-- The recall metric indicates that for an actual match, how often your model predicts the match.
--
-- /Note:/ Consider using 'precisionRecallTradeoff' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fmpPrecisionRecallTradeoff :: Lens.Lens' FindMatchesParameters (Core.Maybe Core.Double)
fmpPrecisionRecallTradeoff = Lens.field @"precisionRecallTradeoff"
{-# DEPRECATED fmpPrecisionRecallTradeoff "Use generic-lens or generic-optics with 'precisionRecallTradeoff' instead." #-}

-- | The name of a column that uniquely identifies rows in the source table. Used to help identify matching records.
--
-- /Note:/ Consider using 'primaryKeyColumnName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fmpPrimaryKeyColumnName :: Lens.Lens' FindMatchesParameters (Core.Maybe Types.ColumnNameString)
fmpPrimaryKeyColumnName = Lens.field @"primaryKeyColumnName"
{-# DEPRECATED fmpPrimaryKeyColumnName "Use generic-lens or generic-optics with 'primaryKeyColumnName' instead." #-}

instance Core.FromJSON FindMatchesParameters where
  toJSON FindMatchesParameters {..} =
    Core.object
      ( Core.catMaybes
          [ ("AccuracyCostTradeoff" Core..=) Core.<$> accuracyCostTradeoff,
            ("EnforceProvidedLabels" Core..=) Core.<$> enforceProvidedLabels,
            ("PrecisionRecallTradeoff" Core..=)
              Core.<$> precisionRecallTradeoff,
            ("PrimaryKeyColumnName" Core..=) Core.<$> primaryKeyColumnName
          ]
      )

instance Core.FromJSON FindMatchesParameters where
  parseJSON =
    Core.withObject "FindMatchesParameters" Core.$
      \x ->
        FindMatchesParameters'
          Core.<$> (x Core..:? "AccuracyCostTradeoff")
          Core.<*> (x Core..:? "EnforceProvidedLabels")
          Core.<*> (x Core..:? "PrecisionRecallTradeoff")
          Core.<*> (x Core..:? "PrimaryKeyColumnName")