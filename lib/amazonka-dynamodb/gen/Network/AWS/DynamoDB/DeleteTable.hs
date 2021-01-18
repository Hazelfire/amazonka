{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.DeleteTable
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @DeleteTable@ operation deletes a table and all of its items. After a @DeleteTable@ request, the specified table is in the @DELETING@ state until DynamoDB completes the deletion. If the table is in the @ACTIVE@ state, you can delete it. If a table is in @CREATING@ or @UPDATING@ states, then DynamoDB returns a @ResourceInUseException@ . If the specified table does not exist, DynamoDB returns a @ResourceNotFoundException@ . If table is already in the @DELETING@ state, no error is returned.
--
-- When you delete a table, any indexes on that table are also deleted.
-- If you have DynamoDB Streams enabled on the table, then the corresponding stream on that table goes into the @DISABLED@ state, and the stream is automatically deleted after 24 hours.
-- Use the @DescribeTable@ action to check the status of the table.
module Network.AWS.DynamoDB.DeleteTable
  ( -- * Creating a request
    DeleteTable (..),
    mkDeleteTable,

    -- ** Request lenses
    dtTableName,

    -- * Destructuring the response
    DeleteTableResponse (..),
    mkDeleteTableResponse,

    -- ** Response lenses
    dtrrsTableDescription,
    dtrrsResponseStatus,
  )
where

import qualified Network.AWS.DynamoDB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @DeleteTable@ operation.
--
-- /See:/ 'mkDeleteTable' smart constructor.
newtype DeleteTable = DeleteTable'
  { -- | The name of the table to delete.
    tableName :: Types.TableName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteTable' value with any optional fields omitted.
mkDeleteTable ::
  -- | 'tableName'
  Types.TableName ->
  DeleteTable
mkDeleteTable tableName = DeleteTable' {tableName}

-- | The name of the table to delete.
--
-- /Note:/ Consider using 'tableName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtTableName :: Lens.Lens' DeleteTable Types.TableName
dtTableName = Lens.field @"tableName"
{-# DEPRECATED dtTableName "Use generic-lens or generic-optics with 'tableName' instead." #-}

instance Core.FromJSON DeleteTable where
  toJSON DeleteTable {..} =
    Core.object
      (Core.catMaybes [Core.Just ("TableName" Core..= tableName)])

instance Core.AWSRequest DeleteTable where
  type Rs DeleteTable = DeleteTableResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "DynamoDB_20120810.DeleteTable")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.0")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteTableResponse'
            Core.<$> (x Core..:? "TableDescription")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the output of a @DeleteTable@ operation.
--
-- /See:/ 'mkDeleteTableResponse' smart constructor.
data DeleteTableResponse = DeleteTableResponse'
  { -- | Represents the properties of a table.
    tableDescription :: Core.Maybe Types.TableDescription,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DeleteTableResponse' value with any optional fields omitted.
mkDeleteTableResponse ::
  -- | 'responseStatus'
  Core.Int ->
  DeleteTableResponse
mkDeleteTableResponse responseStatus =
  DeleteTableResponse'
    { tableDescription = Core.Nothing,
      responseStatus
    }

-- | Represents the properties of a table.
--
-- /Note:/ Consider using 'tableDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrrsTableDescription :: Lens.Lens' DeleteTableResponse (Core.Maybe Types.TableDescription)
dtrrsTableDescription = Lens.field @"tableDescription"
{-# DEPRECATED dtrrsTableDescription "Use generic-lens or generic-optics with 'tableDescription' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrrsResponseStatus :: Lens.Lens' DeleteTableResponse Core.Int
dtrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dtrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}