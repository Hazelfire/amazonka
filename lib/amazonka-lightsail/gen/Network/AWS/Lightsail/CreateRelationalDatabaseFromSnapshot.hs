{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.CreateRelationalDatabaseFromSnapshot
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new database from an existing database snapshot in Amazon Lightsail.
--
-- You can create a new database from a snapshot in if something goes wrong with your original database, or to change it to a different plan, such as a high availability or standard plan.
-- The @create relational database from snapshot@ operation supports tag-based access control via request tags and resource tags applied to the resource identified by relationalDatabaseSnapshotName. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.CreateRelationalDatabaseFromSnapshot
  ( -- * Creating a request
    CreateRelationalDatabaseFromSnapshot (..),
    mkCreateRelationalDatabaseFromSnapshot,

    -- ** Request lenses
    crdfsRelationalDatabaseName,
    crdfsAvailabilityZone,
    crdfsPubliclyAccessible,
    crdfsRelationalDatabaseBundleId,
    crdfsRelationalDatabaseSnapshotName,
    crdfsRestoreTime,
    crdfsSourceRelationalDatabaseName,
    crdfsTags,
    crdfsUseLatestRestorableTime,

    -- * Destructuring the response
    CreateRelationalDatabaseFromSnapshotResponse (..),
    mkCreateRelationalDatabaseFromSnapshotResponse,

    -- ** Response lenses
    crdfsrrsOperations,
    crdfsrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateRelationalDatabaseFromSnapshot' smart constructor.
data CreateRelationalDatabaseFromSnapshot = CreateRelationalDatabaseFromSnapshot'
  { -- | The name to use for your new database.
    --
    -- Constraints:
    --
    --     * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    --
    --
    --     * The first and last character must be a letter or number.
    relationalDatabaseName :: Types.ResourceName,
    -- | The Availability Zone in which to create your new database. Use the @us-east-2a@ case-sensitive format.
    --
    -- You can get a list of Availability Zones by using the @get regions@ operation. Be sure to add the @include relational database Availability Zones@ parameter to your request.
    availabilityZone :: Core.Maybe Types.String,
    -- | Specifies the accessibility options for your new database. A value of @true@ specifies a database that is available to resources outside of your Lightsail account. A value of @false@ specifies a database that is available only to your Lightsail resources in the same region as your database.
    publiclyAccessible :: Core.Maybe Core.Bool,
    -- | The bundle ID for your new database. A bundle describes the performance specifications for your database.
    --
    -- You can get a list of database bundle IDs by using the @get relational database bundles@ operation.
    -- When creating a new database from a snapshot, you cannot choose a bundle that is smaller than the bundle of the source database.
    relationalDatabaseBundleId :: Core.Maybe Types.String,
    -- | The name of the database snapshot from which to create your new database.
    relationalDatabaseSnapshotName :: Core.Maybe Types.ResourceName,
    -- | The date and time to restore your database from.
    --
    -- Constraints:
    --
    --     * Must be before the latest restorable time for the database.
    --
    --
    --     * Cannot be specified if the @use latest restorable time@ parameter is @true@ .
    --
    --
    --     * Specified in Coordinated Universal Time (UTC).
    --
    --
    --     * Specified in the Unix time format.
    -- For example, if you wish to use a restore time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the restore time.
    restoreTime :: Core.Maybe Core.NominalDiffTime,
    -- | The name of the source database.
    sourceRelationalDatabaseName :: Core.Maybe Types.ResourceName,
    -- | The tag keys and optional values to add to the resource during create.
    --
    -- Use the @TagResource@ action to tag a resource after it's created.
    tags :: Core.Maybe [Types.Tag],
    -- | Specifies whether your database is restored from the latest backup time. A value of @true@ restores from the latest backup time.
    --
    -- Default: @false@
    -- Constraints: Cannot be specified if the @restore time@ parameter is provided.
    useLatestRestorableTime :: Core.Maybe Core.Bool
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateRelationalDatabaseFromSnapshot' value with any optional fields omitted.
mkCreateRelationalDatabaseFromSnapshot ::
  -- | 'relationalDatabaseName'
  Types.ResourceName ->
  CreateRelationalDatabaseFromSnapshot
mkCreateRelationalDatabaseFromSnapshot relationalDatabaseName =
  CreateRelationalDatabaseFromSnapshot'
    { relationalDatabaseName,
      availabilityZone = Core.Nothing,
      publiclyAccessible = Core.Nothing,
      relationalDatabaseBundleId = Core.Nothing,
      relationalDatabaseSnapshotName = Core.Nothing,
      restoreTime = Core.Nothing,
      sourceRelationalDatabaseName = Core.Nothing,
      tags = Core.Nothing,
      useLatestRestorableTime = Core.Nothing
    }

-- | The name to use for your new database.
--
-- Constraints:
--
--     * Must contain from 2 to 255 alphanumeric characters, or hyphens.
--
--
--     * The first and last character must be a letter or number.
--
--
--
-- /Note:/ Consider using 'relationalDatabaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsRelationalDatabaseName :: Lens.Lens' CreateRelationalDatabaseFromSnapshot Types.ResourceName
crdfsRelationalDatabaseName = Lens.field @"relationalDatabaseName"
{-# DEPRECATED crdfsRelationalDatabaseName "Use generic-lens or generic-optics with 'relationalDatabaseName' instead." #-}

-- | The Availability Zone in which to create your new database. Use the @us-east-2a@ case-sensitive format.
--
-- You can get a list of Availability Zones by using the @get regions@ operation. Be sure to add the @include relational database Availability Zones@ parameter to your request.
--
-- /Note:/ Consider using 'availabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsAvailabilityZone :: Lens.Lens' CreateRelationalDatabaseFromSnapshot (Core.Maybe Types.String)
crdfsAvailabilityZone = Lens.field @"availabilityZone"
{-# DEPRECATED crdfsAvailabilityZone "Use generic-lens or generic-optics with 'availabilityZone' instead." #-}

-- | Specifies the accessibility options for your new database. A value of @true@ specifies a database that is available to resources outside of your Lightsail account. A value of @false@ specifies a database that is available only to your Lightsail resources in the same region as your database.
--
-- /Note:/ Consider using 'publiclyAccessible' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsPubliclyAccessible :: Lens.Lens' CreateRelationalDatabaseFromSnapshot (Core.Maybe Core.Bool)
crdfsPubliclyAccessible = Lens.field @"publiclyAccessible"
{-# DEPRECATED crdfsPubliclyAccessible "Use generic-lens or generic-optics with 'publiclyAccessible' instead." #-}

-- | The bundle ID for your new database. A bundle describes the performance specifications for your database.
--
-- You can get a list of database bundle IDs by using the @get relational database bundles@ operation.
-- When creating a new database from a snapshot, you cannot choose a bundle that is smaller than the bundle of the source database.
--
-- /Note:/ Consider using 'relationalDatabaseBundleId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsRelationalDatabaseBundleId :: Lens.Lens' CreateRelationalDatabaseFromSnapshot (Core.Maybe Types.String)
crdfsRelationalDatabaseBundleId = Lens.field @"relationalDatabaseBundleId"
{-# DEPRECATED crdfsRelationalDatabaseBundleId "Use generic-lens or generic-optics with 'relationalDatabaseBundleId' instead." #-}

-- | The name of the database snapshot from which to create your new database.
--
-- /Note:/ Consider using 'relationalDatabaseSnapshotName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsRelationalDatabaseSnapshotName :: Lens.Lens' CreateRelationalDatabaseFromSnapshot (Core.Maybe Types.ResourceName)
crdfsRelationalDatabaseSnapshotName = Lens.field @"relationalDatabaseSnapshotName"
{-# DEPRECATED crdfsRelationalDatabaseSnapshotName "Use generic-lens or generic-optics with 'relationalDatabaseSnapshotName' instead." #-}

-- | The date and time to restore your database from.
--
-- Constraints:
--
--     * Must be before the latest restorable time for the database.
--
--
--     * Cannot be specified if the @use latest restorable time@ parameter is @true@ .
--
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Specified in the Unix time format.
-- For example, if you wish to use a restore time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the restore time.
--
--
--
-- /Note:/ Consider using 'restoreTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsRestoreTime :: Lens.Lens' CreateRelationalDatabaseFromSnapshot (Core.Maybe Core.NominalDiffTime)
crdfsRestoreTime = Lens.field @"restoreTime"
{-# DEPRECATED crdfsRestoreTime "Use generic-lens or generic-optics with 'restoreTime' instead." #-}

-- | The name of the source database.
--
-- /Note:/ Consider using 'sourceRelationalDatabaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsSourceRelationalDatabaseName :: Lens.Lens' CreateRelationalDatabaseFromSnapshot (Core.Maybe Types.ResourceName)
crdfsSourceRelationalDatabaseName = Lens.field @"sourceRelationalDatabaseName"
{-# DEPRECATED crdfsSourceRelationalDatabaseName "Use generic-lens or generic-optics with 'sourceRelationalDatabaseName' instead." #-}

-- | The tag keys and optional values to add to the resource during create.
--
-- Use the @TagResource@ action to tag a resource after it's created.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsTags :: Lens.Lens' CreateRelationalDatabaseFromSnapshot (Core.Maybe [Types.Tag])
crdfsTags = Lens.field @"tags"
{-# DEPRECATED crdfsTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | Specifies whether your database is restored from the latest backup time. A value of @true@ restores from the latest backup time.
--
-- Default: @false@
-- Constraints: Cannot be specified if the @restore time@ parameter is provided.
--
-- /Note:/ Consider using 'useLatestRestorableTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsUseLatestRestorableTime :: Lens.Lens' CreateRelationalDatabaseFromSnapshot (Core.Maybe Core.Bool)
crdfsUseLatestRestorableTime = Lens.field @"useLatestRestorableTime"
{-# DEPRECATED crdfsUseLatestRestorableTime "Use generic-lens or generic-optics with 'useLatestRestorableTime' instead." #-}

instance Core.FromJSON CreateRelationalDatabaseFromSnapshot where
  toJSON CreateRelationalDatabaseFromSnapshot {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("relationalDatabaseName" Core..= relationalDatabaseName),
            ("availabilityZone" Core..=) Core.<$> availabilityZone,
            ("publiclyAccessible" Core..=) Core.<$> publiclyAccessible,
            ("relationalDatabaseBundleId" Core..=)
              Core.<$> relationalDatabaseBundleId,
            ("relationalDatabaseSnapshotName" Core..=)
              Core.<$> relationalDatabaseSnapshotName,
            ("restoreTime" Core..=) Core.<$> restoreTime,
            ("sourceRelationalDatabaseName" Core..=)
              Core.<$> sourceRelationalDatabaseName,
            ("tags" Core..=) Core.<$> tags,
            ("useLatestRestorableTime" Core..=)
              Core.<$> useLatestRestorableTime
          ]
      )

instance Core.AWSRequest CreateRelationalDatabaseFromSnapshot where
  type
    Rs CreateRelationalDatabaseFromSnapshot =
      CreateRelationalDatabaseFromSnapshotResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "Lightsail_20161128.CreateRelationalDatabaseFromSnapshot"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRelationalDatabaseFromSnapshotResponse'
            Core.<$> (x Core..:? "operations") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateRelationalDatabaseFromSnapshotResponse' smart constructor.
data CreateRelationalDatabaseFromSnapshotResponse = CreateRelationalDatabaseFromSnapshotResponse'
  { -- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
    operations :: Core.Maybe [Types.Operation],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateRelationalDatabaseFromSnapshotResponse' value with any optional fields omitted.
mkCreateRelationalDatabaseFromSnapshotResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateRelationalDatabaseFromSnapshotResponse
mkCreateRelationalDatabaseFromSnapshotResponse responseStatus =
  CreateRelationalDatabaseFromSnapshotResponse'
    { operations =
        Core.Nothing,
      responseStatus
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- /Note:/ Consider using 'operations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsrrsOperations :: Lens.Lens' CreateRelationalDatabaseFromSnapshotResponse (Core.Maybe [Types.Operation])
crdfsrrsOperations = Lens.field @"operations"
{-# DEPRECATED crdfsrrsOperations "Use generic-lens or generic-optics with 'operations' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crdfsrrsResponseStatus :: Lens.Lens' CreateRelationalDatabaseFromSnapshotResponse Core.Int
crdfsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED crdfsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}