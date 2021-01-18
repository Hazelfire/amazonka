{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.CreateGlobalSecondaryIndexAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.CreateGlobalSecondaryIndexAction
  ( CreateGlobalSecondaryIndexAction (..),

    -- * Smart constructor
    mkCreateGlobalSecondaryIndexAction,

    -- * Lenses
    cgsiaIndexName,
    cgsiaKeySchema,
    cgsiaProjection,
    cgsiaProvisionedThroughput,
  )
where

import qualified Network.AWS.DynamoDB.Types.IndexName as Types
import qualified Network.AWS.DynamoDB.Types.KeySchemaElement as Types
import qualified Network.AWS.DynamoDB.Types.Projection as Types
import qualified Network.AWS.DynamoDB.Types.ProvisionedThroughput as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents a new global secondary index to be added to an existing table.
--
-- /See:/ 'mkCreateGlobalSecondaryIndexAction' smart constructor.
data CreateGlobalSecondaryIndexAction = CreateGlobalSecondaryIndexAction'
  { -- | The name of the global secondary index to be created.
    indexName :: Types.IndexName,
    -- | The key schema for the global secondary index.
    keySchema :: Core.NonEmpty Types.KeySchemaElement,
    -- | Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
    projection :: Types.Projection,
    -- | Represents the provisioned throughput settings for the specified global secondary index.
    --
    -- For current minimum and maximum provisioned throughput values, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html Service, Account, and Table Quotas> in the /Amazon DynamoDB Developer Guide/ .
    provisionedThroughput :: Core.Maybe Types.ProvisionedThroughput
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateGlobalSecondaryIndexAction' value with any optional fields omitted.
mkCreateGlobalSecondaryIndexAction ::
  -- | 'indexName'
  Types.IndexName ->
  -- | 'keySchema'
  Core.NonEmpty Types.KeySchemaElement ->
  -- | 'projection'
  Types.Projection ->
  CreateGlobalSecondaryIndexAction
mkCreateGlobalSecondaryIndexAction indexName keySchema projection =
  CreateGlobalSecondaryIndexAction'
    { indexName,
      keySchema,
      projection,
      provisionedThroughput = Core.Nothing
    }

-- | The name of the global secondary index to be created.
--
-- /Note:/ Consider using 'indexName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cgsiaIndexName :: Lens.Lens' CreateGlobalSecondaryIndexAction Types.IndexName
cgsiaIndexName = Lens.field @"indexName"
{-# DEPRECATED cgsiaIndexName "Use generic-lens or generic-optics with 'indexName' instead." #-}

-- | The key schema for the global secondary index.
--
-- /Note:/ Consider using 'keySchema' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cgsiaKeySchema :: Lens.Lens' CreateGlobalSecondaryIndexAction (Core.NonEmpty Types.KeySchemaElement)
cgsiaKeySchema = Lens.field @"keySchema"
{-# DEPRECATED cgsiaKeySchema "Use generic-lens or generic-optics with 'keySchema' instead." #-}

-- | Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
--
-- /Note:/ Consider using 'projection' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cgsiaProjection :: Lens.Lens' CreateGlobalSecondaryIndexAction Types.Projection
cgsiaProjection = Lens.field @"projection"
{-# DEPRECATED cgsiaProjection "Use generic-lens or generic-optics with 'projection' instead." #-}

-- | Represents the provisioned throughput settings for the specified global secondary index.
--
-- For current minimum and maximum provisioned throughput values, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html Service, Account, and Table Quotas> in the /Amazon DynamoDB Developer Guide/ .
--
-- /Note:/ Consider using 'provisionedThroughput' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cgsiaProvisionedThroughput :: Lens.Lens' CreateGlobalSecondaryIndexAction (Core.Maybe Types.ProvisionedThroughput)
cgsiaProvisionedThroughput = Lens.field @"provisionedThroughput"
{-# DEPRECATED cgsiaProvisionedThroughput "Use generic-lens or generic-optics with 'provisionedThroughput' instead." #-}

instance Core.FromJSON CreateGlobalSecondaryIndexAction where
  toJSON CreateGlobalSecondaryIndexAction {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("IndexName" Core..= indexName),
            Core.Just ("KeySchema" Core..= keySchema),
            Core.Just ("Projection" Core..= projection),
            ("ProvisionedThroughput" Core..=) Core.<$> provisionedThroughput
          ]
      )