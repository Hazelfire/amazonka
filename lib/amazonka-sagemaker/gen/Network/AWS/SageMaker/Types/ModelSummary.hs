{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelSummary
  ( ModelSummary (..),

    -- * Smart constructor
    mkModelSummary,

    -- * Lenses
    msModelName,
    msModelArn,
    msCreationTime,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SageMaker.Types.ModelArn as Types
import qualified Network.AWS.SageMaker.Types.ModelName as Types

-- | Provides summary information about a model.
--
-- /See:/ 'mkModelSummary' smart constructor.
data ModelSummary = ModelSummary'
  { -- | The name of the model that you want a summary for.
    modelName :: Types.ModelName,
    -- | The Amazon Resource Name (ARN) of the model.
    modelArn :: Types.ModelArn,
    -- | A timestamp that indicates when the model was created.
    creationTime :: Core.NominalDiffTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ModelSummary' value with any optional fields omitted.
mkModelSummary ::
  -- | 'modelName'
  Types.ModelName ->
  -- | 'modelArn'
  Types.ModelArn ->
  -- | 'creationTime'
  Core.NominalDiffTime ->
  ModelSummary
mkModelSummary modelName modelArn creationTime =
  ModelSummary' {modelName, modelArn, creationTime}

-- | The name of the model that you want a summary for.
--
-- /Note:/ Consider using 'modelName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
msModelName :: Lens.Lens' ModelSummary Types.ModelName
msModelName = Lens.field @"modelName"
{-# DEPRECATED msModelName "Use generic-lens or generic-optics with 'modelName' instead." #-}

-- | The Amazon Resource Name (ARN) of the model.
--
-- /Note:/ Consider using 'modelArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
msModelArn :: Lens.Lens' ModelSummary Types.ModelArn
msModelArn = Lens.field @"modelArn"
{-# DEPRECATED msModelArn "Use generic-lens or generic-optics with 'modelArn' instead." #-}

-- | A timestamp that indicates when the model was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
msCreationTime :: Lens.Lens' ModelSummary Core.NominalDiffTime
msCreationTime = Lens.field @"creationTime"
{-# DEPRECATED msCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

instance Core.FromJSON ModelSummary where
  parseJSON =
    Core.withObject "ModelSummary" Core.$
      \x ->
        ModelSummary'
          Core.<$> (x Core..: "ModelName")
          Core.<*> (x Core..: "ModelArn")
          Core.<*> (x Core..: "CreationTime")