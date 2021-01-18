{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.RebootDBInstance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain modifications, or if you change the DB parameter group associated with the DB instance, you must reboot the instance for the changes to take effect.
--
-- Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting.
-- For more information about rebooting, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html Rebooting a DB Instance> in the /Amazon RDS User Guide./
module Network.AWS.RDS.RebootDBInstance
  ( -- * Creating a request
    RebootDBInstance (..),
    mkRebootDBInstance,

    -- ** Request lenses
    rdbiDBInstanceIdentifier,
    rdbiForceFailover,

    -- * Destructuring the response
    RebootDBInstanceResponse (..),
    mkRebootDBInstanceResponse,

    -- ** Response lenses
    rdbirrsDBInstance,
    rdbirrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.RDS.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'mkRebootDBInstance' smart constructor.
data RebootDBInstance = RebootDBInstance'
  { -- | The DB instance identifier. This parameter is stored as a lowercase string.
    --
    -- Constraints:
    --
    --     * Must match the identifier of an existing DBInstance.
    dBInstanceIdentifier :: Types.String,
    -- | A value that indicates whether the reboot is conducted through a Multi-AZ failover.
    --
    -- Constraint: You can't enable force failover if the instance isn't configured for Multi-AZ.
    forceFailover :: Core.Maybe Core.Bool
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RebootDBInstance' value with any optional fields omitted.
mkRebootDBInstance ::
  -- | 'dBInstanceIdentifier'
  Types.String ->
  RebootDBInstance
mkRebootDBInstance dBInstanceIdentifier =
  RebootDBInstance'
    { dBInstanceIdentifier,
      forceFailover = Core.Nothing
    }

-- | The DB instance identifier. This parameter is stored as a lowercase string.
--
-- Constraints:
--
--     * Must match the identifier of an existing DBInstance.
--
--
--
-- /Note:/ Consider using 'dBInstanceIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rdbiDBInstanceIdentifier :: Lens.Lens' RebootDBInstance Types.String
rdbiDBInstanceIdentifier = Lens.field @"dBInstanceIdentifier"
{-# DEPRECATED rdbiDBInstanceIdentifier "Use generic-lens or generic-optics with 'dBInstanceIdentifier' instead." #-}

-- | A value that indicates whether the reboot is conducted through a Multi-AZ failover.
--
-- Constraint: You can't enable force failover if the instance isn't configured for Multi-AZ.
--
-- /Note:/ Consider using 'forceFailover' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rdbiForceFailover :: Lens.Lens' RebootDBInstance (Core.Maybe Core.Bool)
rdbiForceFailover = Lens.field @"forceFailover"
{-# DEPRECATED rdbiForceFailover "Use generic-lens or generic-optics with 'forceFailover' instead." #-}

instance Core.AWSRequest RebootDBInstance where
  type Rs RebootDBInstance = RebootDBInstanceResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "RebootDBInstance")
                Core.<> (Core.pure ("Version", "2014-10-31"))
                Core.<> (Core.toQueryValue "DBInstanceIdentifier" dBInstanceIdentifier)
                Core.<> (Core.toQueryValue "ForceFailover" Core.<$> forceFailover)
            )
      }
  response =
    Response.receiveXMLWrapper
      "RebootDBInstanceResult"
      ( \s h x ->
          RebootDBInstanceResponse'
            Core.<$> (x Core..@? "DBInstance") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkRebootDBInstanceResponse' smart constructor.
data RebootDBInstanceResponse = RebootDBInstanceResponse'
  { dBInstance :: Core.Maybe Types.DBInstance,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'RebootDBInstanceResponse' value with any optional fields omitted.
mkRebootDBInstanceResponse ::
  -- | 'responseStatus'
  Core.Int ->
  RebootDBInstanceResponse
mkRebootDBInstanceResponse responseStatus =
  RebootDBInstanceResponse'
    { dBInstance = Core.Nothing,
      responseStatus
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'dBInstance' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rdbirrsDBInstance :: Lens.Lens' RebootDBInstanceResponse (Core.Maybe Types.DBInstance)
rdbirrsDBInstance = Lens.field @"dBInstance"
{-# DEPRECATED rdbirrsDBInstance "Use generic-lens or generic-optics with 'dBInstance' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rdbirrsResponseStatus :: Lens.Lens' RebootDBInstanceResponse Core.Int
rdbirrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED rdbirrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}