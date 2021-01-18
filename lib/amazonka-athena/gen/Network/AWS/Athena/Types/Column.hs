{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.Column
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.Column
  ( Column (..),

    -- * Smart constructor
    mkColumn,

    -- * Lenses
    cName,
    cComment,
    cType,
  )
where

import qualified Network.AWS.Athena.Types.CommentString as Types
import qualified Network.AWS.Athena.Types.NameString as Types
import qualified Network.AWS.Athena.Types.TypeString as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains metadata for a column in a table.
--
-- /See:/ 'mkColumn' smart constructor.
data Column = Column'
  { -- | The name of the column.
    name :: Types.NameString,
    -- | Optional information about the column.
    comment :: Core.Maybe Types.CommentString,
    -- | The data type of the column.
    type' :: Core.Maybe Types.TypeString
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Column' value with any optional fields omitted.
mkColumn ::
  -- | 'name'
  Types.NameString ->
  Column
mkColumn name =
  Column' {name, comment = Core.Nothing, type' = Core.Nothing}

-- | The name of the column.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cName :: Lens.Lens' Column Types.NameString
cName = Lens.field @"name"
{-# DEPRECATED cName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | Optional information about the column.
--
-- /Note:/ Consider using 'comment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cComment :: Lens.Lens' Column (Core.Maybe Types.CommentString)
cComment = Lens.field @"comment"
{-# DEPRECATED cComment "Use generic-lens or generic-optics with 'comment' instead." #-}

-- | The data type of the column.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cType :: Lens.Lens' Column (Core.Maybe Types.TypeString)
cType = Lens.field @"type'"
{-# DEPRECATED cType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.FromJSON Column where
  parseJSON =
    Core.withObject "Column" Core.$
      \x ->
        Column'
          Core.<$> (x Core..: "Name")
          Core.<*> (x Core..:? "Comment")
          Core.<*> (x Core..:? "Type")