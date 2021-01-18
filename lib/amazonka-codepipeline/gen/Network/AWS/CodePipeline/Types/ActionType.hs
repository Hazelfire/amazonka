{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionType
  ( ActionType (..),

    -- * Smart constructor
    mkActionType,

    -- * Lenses
    atId,
    atInputArtifactDetails,
    atOutputArtifactDetails,
    atActionConfigurationProperties,
    atSettings,
  )
where

import qualified Network.AWS.CodePipeline.Types.ActionConfigurationProperty as Types
import qualified Network.AWS.CodePipeline.Types.ActionTypeId as Types
import qualified Network.AWS.CodePipeline.Types.ActionTypeSettings as Types
import qualified Network.AWS.CodePipeline.Types.ArtifactDetails as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Returns information about the details of an action type.
--
-- /See:/ 'mkActionType' smart constructor.
data ActionType = ActionType'
  { -- | Represents information about an action type.
    id :: Types.ActionTypeId,
    -- | The details of the input artifact for the action, such as its commit ID.
    inputArtifactDetails :: Types.ArtifactDetails,
    -- | The details of the output artifact of the action, such as its commit ID.
    outputArtifactDetails :: Types.ArtifactDetails,
    -- | The configuration properties for the action type.
    actionConfigurationProperties :: Core.Maybe [Types.ActionConfigurationProperty],
    -- | The settings for the action type.
    settings :: Core.Maybe Types.ActionTypeSettings
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ActionType' value with any optional fields omitted.
mkActionType ::
  -- | 'id'
  Types.ActionTypeId ->
  -- | 'inputArtifactDetails'
  Types.ArtifactDetails ->
  -- | 'outputArtifactDetails'
  Types.ArtifactDetails ->
  ActionType
mkActionType id inputArtifactDetails outputArtifactDetails =
  ActionType'
    { id,
      inputArtifactDetails,
      outputArtifactDetails,
      actionConfigurationProperties = Core.Nothing,
      settings = Core.Nothing
    }

-- | Represents information about an action type.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atId :: Lens.Lens' ActionType Types.ActionTypeId
atId = Lens.field @"id"
{-# DEPRECATED atId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The details of the input artifact for the action, such as its commit ID.
--
-- /Note:/ Consider using 'inputArtifactDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atInputArtifactDetails :: Lens.Lens' ActionType Types.ArtifactDetails
atInputArtifactDetails = Lens.field @"inputArtifactDetails"
{-# DEPRECATED atInputArtifactDetails "Use generic-lens or generic-optics with 'inputArtifactDetails' instead." #-}

-- | The details of the output artifact of the action, such as its commit ID.
--
-- /Note:/ Consider using 'outputArtifactDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atOutputArtifactDetails :: Lens.Lens' ActionType Types.ArtifactDetails
atOutputArtifactDetails = Lens.field @"outputArtifactDetails"
{-# DEPRECATED atOutputArtifactDetails "Use generic-lens or generic-optics with 'outputArtifactDetails' instead." #-}

-- | The configuration properties for the action type.
--
-- /Note:/ Consider using 'actionConfigurationProperties' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atActionConfigurationProperties :: Lens.Lens' ActionType (Core.Maybe [Types.ActionConfigurationProperty])
atActionConfigurationProperties = Lens.field @"actionConfigurationProperties"
{-# DEPRECATED atActionConfigurationProperties "Use generic-lens or generic-optics with 'actionConfigurationProperties' instead." #-}

-- | The settings for the action type.
--
-- /Note:/ Consider using 'settings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
atSettings :: Lens.Lens' ActionType (Core.Maybe Types.ActionTypeSettings)
atSettings = Lens.field @"settings"
{-# DEPRECATED atSettings "Use generic-lens or generic-optics with 'settings' instead." #-}

instance Core.FromJSON ActionType where
  parseJSON =
    Core.withObject "ActionType" Core.$
      \x ->
        ActionType'
          Core.<$> (x Core..: "id")
          Core.<*> (x Core..: "inputArtifactDetails")
          Core.<*> (x Core..: "outputArtifactDetails")
          Core.<*> (x Core..:? "actionConfigurationProperties")
          Core.<*> (x Core..:? "settings")