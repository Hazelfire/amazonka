{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.CurrentRevision
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.CurrentRevision
  ( CurrentRevision (..),

    -- * Smart constructor
    mkCurrentRevision,

    -- * Lenses
    crRevision,
    crChangeIdentifier,
    crCreated,
    crRevisionSummary,
  )
where

import qualified Network.AWS.CodePipeline.Types.ChangeIdentifier as Types
import qualified Network.AWS.CodePipeline.Types.Revision as Types
import qualified Network.AWS.CodePipeline.Types.RevisionSummary as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents information about a current revision.
--
-- /See:/ 'mkCurrentRevision' smart constructor.
data CurrentRevision = CurrentRevision'
  { -- | The revision ID of the current version of an artifact.
    revision :: Types.Revision,
    -- | The change identifier for the current revision.
    changeIdentifier :: Types.ChangeIdentifier,
    -- | The date and time when the most recent revision of the artifact was created, in timestamp format.
    created :: Core.Maybe Core.NominalDiffTime,
    -- | The summary of the most recent revision of the artifact.
    revisionSummary :: Core.Maybe Types.RevisionSummary
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CurrentRevision' value with any optional fields omitted.
mkCurrentRevision ::
  -- | 'revision'
  Types.Revision ->
  -- | 'changeIdentifier'
  Types.ChangeIdentifier ->
  CurrentRevision
mkCurrentRevision revision changeIdentifier =
  CurrentRevision'
    { revision,
      changeIdentifier,
      created = Core.Nothing,
      revisionSummary = Core.Nothing
    }

-- | The revision ID of the current version of an artifact.
--
-- /Note:/ Consider using 'revision' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crRevision :: Lens.Lens' CurrentRevision Types.Revision
crRevision = Lens.field @"revision"
{-# DEPRECATED crRevision "Use generic-lens or generic-optics with 'revision' instead." #-}

-- | The change identifier for the current revision.
--
-- /Note:/ Consider using 'changeIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crChangeIdentifier :: Lens.Lens' CurrentRevision Types.ChangeIdentifier
crChangeIdentifier = Lens.field @"changeIdentifier"
{-# DEPRECATED crChangeIdentifier "Use generic-lens or generic-optics with 'changeIdentifier' instead." #-}

-- | The date and time when the most recent revision of the artifact was created, in timestamp format.
--
-- /Note:/ Consider using 'created' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crCreated :: Lens.Lens' CurrentRevision (Core.Maybe Core.NominalDiffTime)
crCreated = Lens.field @"created"
{-# DEPRECATED crCreated "Use generic-lens or generic-optics with 'created' instead." #-}

-- | The summary of the most recent revision of the artifact.
--
-- /Note:/ Consider using 'revisionSummary' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crRevisionSummary :: Lens.Lens' CurrentRevision (Core.Maybe Types.RevisionSummary)
crRevisionSummary = Lens.field @"revisionSummary"
{-# DEPRECATED crRevisionSummary "Use generic-lens or generic-optics with 'revisionSummary' instead." #-}

instance Core.FromJSON CurrentRevision where
  toJSON CurrentRevision {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("revision" Core..= revision),
            Core.Just ("changeIdentifier" Core..= changeIdentifier),
            ("created" Core..=) Core.<$> created,
            ("revisionSummary" Core..=) Core.<$> revisionSummary
          ]
      )