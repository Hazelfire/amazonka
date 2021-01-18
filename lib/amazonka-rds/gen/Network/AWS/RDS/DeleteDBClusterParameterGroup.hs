{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.DeleteDBClusterParameterGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
module Network.AWS.RDS.DeleteDBClusterParameterGroup
  ( -- * Creating a request
    DeleteDBClusterParameterGroup (..),
    mkDeleteDBClusterParameterGroup,

    -- ** Request lenses
    dDBClusterParameterGroupName,

    -- * Destructuring the response
    DeleteDBClusterParameterGroupResponse (..),
    mkDeleteDBClusterParameterGroupResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.RDS.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'mkDeleteDBClusterParameterGroup' smart constructor.
newtype DeleteDBClusterParameterGroup = DeleteDBClusterParameterGroup'
  { -- | The name of the DB cluster parameter group.
    --
    -- Constraints:
    --
    --     * Must be the name of an existing DB cluster parameter group.
    --
    --
    --     * You can't delete a default DB cluster parameter group.
    --
    --
    --     * Can't be associated with any DB clusters.
    dBClusterParameterGroupName :: Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteDBClusterParameterGroup' value with any optional fields omitted.
mkDeleteDBClusterParameterGroup ::
  -- | 'dBClusterParameterGroupName'
  Types.String ->
  DeleteDBClusterParameterGroup
mkDeleteDBClusterParameterGroup dBClusterParameterGroupName =
  DeleteDBClusterParameterGroup' {dBClusterParameterGroupName}

-- | The name of the DB cluster parameter group.
--
-- Constraints:
--
--     * Must be the name of an existing DB cluster parameter group.
--
--
--     * You can't delete a default DB cluster parameter group.
--
--
--     * Can't be associated with any DB clusters.
--
--
--
-- /Note:/ Consider using 'dBClusterParameterGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDBClusterParameterGroupName :: Lens.Lens' DeleteDBClusterParameterGroup Types.String
dDBClusterParameterGroupName = Lens.field @"dBClusterParameterGroupName"
{-# DEPRECATED dDBClusterParameterGroupName "Use generic-lens or generic-optics with 'dBClusterParameterGroupName' instead." #-}

instance Core.AWSRequest DeleteDBClusterParameterGroup where
  type
    Rs DeleteDBClusterParameterGroup =
      DeleteDBClusterParameterGroupResponse
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
            ( Core.pure ("Action", "DeleteDBClusterParameterGroup")
                Core.<> (Core.pure ("Version", "2014-10-31"))
                Core.<> ( Core.toQueryValue
                            "DBClusterParameterGroupName"
                            dBClusterParameterGroupName
                        )
            )
      }
  response =
    Response.receiveNull DeleteDBClusterParameterGroupResponse'

-- | /See:/ 'mkDeleteDBClusterParameterGroupResponse' smart constructor.
data DeleteDBClusterParameterGroupResponse = DeleteDBClusterParameterGroupResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteDBClusterParameterGroupResponse' value with any optional fields omitted.
mkDeleteDBClusterParameterGroupResponse ::
  DeleteDBClusterParameterGroupResponse
mkDeleteDBClusterParameterGroupResponse =
  DeleteDBClusterParameterGroupResponse'