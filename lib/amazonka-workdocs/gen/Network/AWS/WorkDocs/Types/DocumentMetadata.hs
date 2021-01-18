{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.DocumentMetadata
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.DocumentMetadata
  ( DocumentMetadata (..),

    -- * Smart constructor
    mkDocumentMetadata,

    -- * Lenses
    dmCreatedTimestamp,
    dmCreatorId,
    dmId,
    dmLabels,
    dmLatestVersionMetadata,
    dmModifiedTimestamp,
    dmParentFolderId,
    dmResourceState,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.WorkDocs.Types.CreatorId as Types
import qualified Network.AWS.WorkDocs.Types.DocumentVersionMetadata as Types
import qualified Network.AWS.WorkDocs.Types.Id as Types
import qualified Network.AWS.WorkDocs.Types.ParentFolderId as Types
import qualified Network.AWS.WorkDocs.Types.ResourceStateType as Types
import qualified Network.AWS.WorkDocs.Types.SharedLabel as Types

-- | Describes the document.
--
-- /See:/ 'mkDocumentMetadata' smart constructor.
data DocumentMetadata = DocumentMetadata'
  { -- | The time when the document was created.
    createdTimestamp :: Core.Maybe Core.NominalDiffTime,
    -- | The ID of the creator.
    creatorId :: Core.Maybe Types.CreatorId,
    -- | The ID of the document.
    id :: Core.Maybe Types.Id,
    -- | List of labels on the document.
    labels :: Core.Maybe [Types.SharedLabel],
    -- | The latest version of the document.
    latestVersionMetadata :: Core.Maybe Types.DocumentVersionMetadata,
    -- | The time when the document was updated.
    modifiedTimestamp :: Core.Maybe Core.NominalDiffTime,
    -- | The ID of the parent folder.
    parentFolderId :: Core.Maybe Types.ParentFolderId,
    -- | The resource state.
    resourceState :: Core.Maybe Types.ResourceStateType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DocumentMetadata' value with any optional fields omitted.
mkDocumentMetadata ::
  DocumentMetadata
mkDocumentMetadata =
  DocumentMetadata'
    { createdTimestamp = Core.Nothing,
      creatorId = Core.Nothing,
      id = Core.Nothing,
      labels = Core.Nothing,
      latestVersionMetadata = Core.Nothing,
      modifiedTimestamp = Core.Nothing,
      parentFolderId = Core.Nothing,
      resourceState = Core.Nothing
    }

-- | The time when the document was created.
--
-- /Note:/ Consider using 'createdTimestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmCreatedTimestamp :: Lens.Lens' DocumentMetadata (Core.Maybe Core.NominalDiffTime)
dmCreatedTimestamp = Lens.field @"createdTimestamp"
{-# DEPRECATED dmCreatedTimestamp "Use generic-lens or generic-optics with 'createdTimestamp' instead." #-}

-- | The ID of the creator.
--
-- /Note:/ Consider using 'creatorId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmCreatorId :: Lens.Lens' DocumentMetadata (Core.Maybe Types.CreatorId)
dmCreatorId = Lens.field @"creatorId"
{-# DEPRECATED dmCreatorId "Use generic-lens or generic-optics with 'creatorId' instead." #-}

-- | The ID of the document.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmId :: Lens.Lens' DocumentMetadata (Core.Maybe Types.Id)
dmId = Lens.field @"id"
{-# DEPRECATED dmId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | List of labels on the document.
--
-- /Note:/ Consider using 'labels' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmLabels :: Lens.Lens' DocumentMetadata (Core.Maybe [Types.SharedLabel])
dmLabels = Lens.field @"labels"
{-# DEPRECATED dmLabels "Use generic-lens or generic-optics with 'labels' instead." #-}

-- | The latest version of the document.
--
-- /Note:/ Consider using 'latestVersionMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmLatestVersionMetadata :: Lens.Lens' DocumentMetadata (Core.Maybe Types.DocumentVersionMetadata)
dmLatestVersionMetadata = Lens.field @"latestVersionMetadata"
{-# DEPRECATED dmLatestVersionMetadata "Use generic-lens or generic-optics with 'latestVersionMetadata' instead." #-}

-- | The time when the document was updated.
--
-- /Note:/ Consider using 'modifiedTimestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmModifiedTimestamp :: Lens.Lens' DocumentMetadata (Core.Maybe Core.NominalDiffTime)
dmModifiedTimestamp = Lens.field @"modifiedTimestamp"
{-# DEPRECATED dmModifiedTimestamp "Use generic-lens or generic-optics with 'modifiedTimestamp' instead." #-}

-- | The ID of the parent folder.
--
-- /Note:/ Consider using 'parentFolderId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmParentFolderId :: Lens.Lens' DocumentMetadata (Core.Maybe Types.ParentFolderId)
dmParentFolderId = Lens.field @"parentFolderId"
{-# DEPRECATED dmParentFolderId "Use generic-lens or generic-optics with 'parentFolderId' instead." #-}

-- | The resource state.
--
-- /Note:/ Consider using 'resourceState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmResourceState :: Lens.Lens' DocumentMetadata (Core.Maybe Types.ResourceStateType)
dmResourceState = Lens.field @"resourceState"
{-# DEPRECATED dmResourceState "Use generic-lens or generic-optics with 'resourceState' instead." #-}

instance Core.FromJSON DocumentMetadata where
  parseJSON =
    Core.withObject "DocumentMetadata" Core.$
      \x ->
        DocumentMetadata'
          Core.<$> (x Core..:? "CreatedTimestamp")
          Core.<*> (x Core..:? "CreatorId")
          Core.<*> (x Core..:? "Id")
          Core.<*> (x Core..:? "Labels")
          Core.<*> (x Core..:? "LatestVersionMetadata")
          Core.<*> (x Core..:? "ModifiedTimestamp")
          Core.<*> (x Core..:? "ParentFolderId")
          Core.<*> (x Core..:? "ResourceState")