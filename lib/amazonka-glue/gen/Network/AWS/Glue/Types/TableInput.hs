{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TableInput
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TableInput
  ( TableInput (..),

    -- * Smart constructor
    mkTableInput,

    -- * Lenses
    tifName,
    tifDescription,
    tifLastAccessTime,
    tifLastAnalyzedTime,
    tifOwner,
    tifParameters,
    tifPartitionKeys,
    tifRetention,
    tifStorageDescriptor,
    tifTableType,
    tifTargetTable,
    tifViewExpandedText,
    tifViewOriginalText,
  )
where

import qualified Network.AWS.Glue.Types.Column as Types
import qualified Network.AWS.Glue.Types.DescriptionString as Types
import qualified Network.AWS.Glue.Types.KeyString as Types
import qualified Network.AWS.Glue.Types.NameString as Types
import qualified Network.AWS.Glue.Types.ParametersMapValue as Types
import qualified Network.AWS.Glue.Types.StorageDescriptor as Types
import qualified Network.AWS.Glue.Types.TableIdentifier as Types
import qualified Network.AWS.Glue.Types.TableType as Types
import qualified Network.AWS.Glue.Types.ViewTextString as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A structure used to define a table.
--
-- /See:/ 'mkTableInput' smart constructor.
data TableInput = TableInput'
  { -- | The table name. For Hive compatibility, this is folded to lowercase when it is stored.
    name :: Types.NameString,
    -- | A description of the table.
    description :: Core.Maybe Types.DescriptionString,
    -- | The last time that the table was accessed.
    lastAccessTime :: Core.Maybe Core.NominalDiffTime,
    -- | The last time that column statistics were computed for this table.
    lastAnalyzedTime :: Core.Maybe Core.NominalDiffTime,
    -- | The table owner.
    owner :: Core.Maybe Types.NameString,
    -- | These key-value pairs define properties associated with the table.
    parameters :: Core.Maybe (Core.HashMap Types.KeyString Types.ParametersMapValue),
    -- | A list of columns by which the table is partitioned. Only primitive types are supported as partition keys.
    --
    -- When you create a table used by Amazon Athena, and you do not specify any @partitionKeys@ , you must at least set the value of @partitionKeys@ to an empty list. For example:
    -- @"PartitionKeys": []@
    partitionKeys :: Core.Maybe [Types.Column],
    -- | The retention time for this table.
    retention :: Core.Maybe Core.Natural,
    -- | A storage descriptor containing information about the physical storage of this table.
    storageDescriptor :: Core.Maybe Types.StorageDescriptor,
    -- | The type of this table (@EXTERNAL_TABLE@ , @VIRTUAL_VIEW@ , etc.).
    tableType :: Core.Maybe Types.TableType,
    -- | A @TableIdentifier@ structure that describes a target table for resource linking.
    targetTable :: Core.Maybe Types.TableIdentifier,
    -- | If the table is a view, the expanded text of the view; otherwise @null@ .
    viewExpandedText :: Core.Maybe Types.ViewTextString,
    -- | If the table is a view, the original text of the view; otherwise @null@ .
    viewOriginalText :: Core.Maybe Types.ViewTextString
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'TableInput' value with any optional fields omitted.
mkTableInput ::
  -- | 'name'
  Types.NameString ->
  TableInput
mkTableInput name =
  TableInput'
    { name,
      description = Core.Nothing,
      lastAccessTime = Core.Nothing,
      lastAnalyzedTime = Core.Nothing,
      owner = Core.Nothing,
      parameters = Core.Nothing,
      partitionKeys = Core.Nothing,
      retention = Core.Nothing,
      storageDescriptor = Core.Nothing,
      tableType = Core.Nothing,
      targetTable = Core.Nothing,
      viewExpandedText = Core.Nothing,
      viewOriginalText = Core.Nothing
    }

-- | The table name. For Hive compatibility, this is folded to lowercase when it is stored.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifName :: Lens.Lens' TableInput Types.NameString
tifName = Lens.field @"name"
{-# DEPRECATED tifName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | A description of the table.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifDescription :: Lens.Lens' TableInput (Core.Maybe Types.DescriptionString)
tifDescription = Lens.field @"description"
{-# DEPRECATED tifDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The last time that the table was accessed.
--
-- /Note:/ Consider using 'lastAccessTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifLastAccessTime :: Lens.Lens' TableInput (Core.Maybe Core.NominalDiffTime)
tifLastAccessTime = Lens.field @"lastAccessTime"
{-# DEPRECATED tifLastAccessTime "Use generic-lens or generic-optics with 'lastAccessTime' instead." #-}

-- | The last time that column statistics were computed for this table.
--
-- /Note:/ Consider using 'lastAnalyzedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifLastAnalyzedTime :: Lens.Lens' TableInput (Core.Maybe Core.NominalDiffTime)
tifLastAnalyzedTime = Lens.field @"lastAnalyzedTime"
{-# DEPRECATED tifLastAnalyzedTime "Use generic-lens or generic-optics with 'lastAnalyzedTime' instead." #-}

-- | The table owner.
--
-- /Note:/ Consider using 'owner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifOwner :: Lens.Lens' TableInput (Core.Maybe Types.NameString)
tifOwner = Lens.field @"owner"
{-# DEPRECATED tifOwner "Use generic-lens or generic-optics with 'owner' instead." #-}

-- | These key-value pairs define properties associated with the table.
--
-- /Note:/ Consider using 'parameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifParameters :: Lens.Lens' TableInput (Core.Maybe (Core.HashMap Types.KeyString Types.ParametersMapValue))
tifParameters = Lens.field @"parameters"
{-# DEPRECATED tifParameters "Use generic-lens or generic-optics with 'parameters' instead." #-}

-- | A list of columns by which the table is partitioned. Only primitive types are supported as partition keys.
--
-- When you create a table used by Amazon Athena, and you do not specify any @partitionKeys@ , you must at least set the value of @partitionKeys@ to an empty list. For example:
-- @"PartitionKeys": []@
--
-- /Note:/ Consider using 'partitionKeys' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifPartitionKeys :: Lens.Lens' TableInput (Core.Maybe [Types.Column])
tifPartitionKeys = Lens.field @"partitionKeys"
{-# DEPRECATED tifPartitionKeys "Use generic-lens or generic-optics with 'partitionKeys' instead." #-}

-- | The retention time for this table.
--
-- /Note:/ Consider using 'retention' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifRetention :: Lens.Lens' TableInput (Core.Maybe Core.Natural)
tifRetention = Lens.field @"retention"
{-# DEPRECATED tifRetention "Use generic-lens or generic-optics with 'retention' instead." #-}

-- | A storage descriptor containing information about the physical storage of this table.
--
-- /Note:/ Consider using 'storageDescriptor' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifStorageDescriptor :: Lens.Lens' TableInput (Core.Maybe Types.StorageDescriptor)
tifStorageDescriptor = Lens.field @"storageDescriptor"
{-# DEPRECATED tifStorageDescriptor "Use generic-lens or generic-optics with 'storageDescriptor' instead." #-}

-- | The type of this table (@EXTERNAL_TABLE@ , @VIRTUAL_VIEW@ , etc.).
--
-- /Note:/ Consider using 'tableType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifTableType :: Lens.Lens' TableInput (Core.Maybe Types.TableType)
tifTableType = Lens.field @"tableType"
{-# DEPRECATED tifTableType "Use generic-lens or generic-optics with 'tableType' instead." #-}

-- | A @TableIdentifier@ structure that describes a target table for resource linking.
--
-- /Note:/ Consider using 'targetTable' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifTargetTable :: Lens.Lens' TableInput (Core.Maybe Types.TableIdentifier)
tifTargetTable = Lens.field @"targetTable"
{-# DEPRECATED tifTargetTable "Use generic-lens or generic-optics with 'targetTable' instead." #-}

-- | If the table is a view, the expanded text of the view; otherwise @null@ .
--
-- /Note:/ Consider using 'viewExpandedText' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifViewExpandedText :: Lens.Lens' TableInput (Core.Maybe Types.ViewTextString)
tifViewExpandedText = Lens.field @"viewExpandedText"
{-# DEPRECATED tifViewExpandedText "Use generic-lens or generic-optics with 'viewExpandedText' instead." #-}

-- | If the table is a view, the original text of the view; otherwise @null@ .
--
-- /Note:/ Consider using 'viewOriginalText' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tifViewOriginalText :: Lens.Lens' TableInput (Core.Maybe Types.ViewTextString)
tifViewOriginalText = Lens.field @"viewOriginalText"
{-# DEPRECATED tifViewOriginalText "Use generic-lens or generic-optics with 'viewOriginalText' instead." #-}

instance Core.FromJSON TableInput where
  toJSON TableInput {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Name" Core..= name),
            ("Description" Core..=) Core.<$> description,
            ("LastAccessTime" Core..=) Core.<$> lastAccessTime,
            ("LastAnalyzedTime" Core..=) Core.<$> lastAnalyzedTime,
            ("Owner" Core..=) Core.<$> owner,
            ("Parameters" Core..=) Core.<$> parameters,
            ("PartitionKeys" Core..=) Core.<$> partitionKeys,
            ("Retention" Core..=) Core.<$> retention,
            ("StorageDescriptor" Core..=) Core.<$> storageDescriptor,
            ("TableType" Core..=) Core.<$> tableType,
            ("TargetTable" Core..=) Core.<$> targetTable,
            ("ViewExpandedText" Core..=) Core.<$> viewExpandedText,
            ("ViewOriginalText" Core..=) Core.<$> viewOriginalText
          ]
      )