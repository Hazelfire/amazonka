{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.Node
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.Node
  ( Node (..),

    -- * Smart constructor
    mkNode,

    -- * Lenses
    nAvailabilityZone,
    nEndpoint,
    nNodeCreateTime,
    nNodeId,
    nNodeStatus,
    nParameterGroupStatus,
  )
where

import qualified Network.AWS.DAX.Types.Endpoint as Types
import qualified Network.AWS.DAX.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents an individual node within a DAX cluster.
--
-- /See:/ 'mkNode' smart constructor.
data Node = Node'
  { -- | The Availability Zone (AZ) in which the node has been deployed.
    availabilityZone :: Core.Maybe Types.String,
    -- | The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.
    endpoint :: Core.Maybe Types.Endpoint,
    -- | The date and time (in UNIX epoch format) when the node was launched.
    nodeCreateTime :: Core.Maybe Core.NominalDiffTime,
    -- | A system-generated identifier for the node.
    nodeId :: Core.Maybe Types.String,
    -- | The current status of the node. For example: @available@ .
    nodeStatus :: Core.Maybe Types.String,
    -- | The status of the parameter group associated with this node. For example, @in-sync@ .
    parameterGroupStatus :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'Node' value with any optional fields omitted.
mkNode ::
  Node
mkNode =
  Node'
    { availabilityZone = Core.Nothing,
      endpoint = Core.Nothing,
      nodeCreateTime = Core.Nothing,
      nodeId = Core.Nothing,
      nodeStatus = Core.Nothing,
      parameterGroupStatus = Core.Nothing
    }

-- | The Availability Zone (AZ) in which the node has been deployed.
--
-- /Note:/ Consider using 'availabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
nAvailabilityZone :: Lens.Lens' Node (Core.Maybe Types.String)
nAvailabilityZone = Lens.field @"availabilityZone"
{-# DEPRECATED nAvailabilityZone "Use generic-lens or generic-optics with 'availabilityZone' instead." #-}

-- | The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.
--
-- /Note:/ Consider using 'endpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
nEndpoint :: Lens.Lens' Node (Core.Maybe Types.Endpoint)
nEndpoint = Lens.field @"endpoint"
{-# DEPRECATED nEndpoint "Use generic-lens or generic-optics with 'endpoint' instead." #-}

-- | The date and time (in UNIX epoch format) when the node was launched.
--
-- /Note:/ Consider using 'nodeCreateTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
nNodeCreateTime :: Lens.Lens' Node (Core.Maybe Core.NominalDiffTime)
nNodeCreateTime = Lens.field @"nodeCreateTime"
{-# DEPRECATED nNodeCreateTime "Use generic-lens or generic-optics with 'nodeCreateTime' instead." #-}

-- | A system-generated identifier for the node.
--
-- /Note:/ Consider using 'nodeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
nNodeId :: Lens.Lens' Node (Core.Maybe Types.String)
nNodeId = Lens.field @"nodeId"
{-# DEPRECATED nNodeId "Use generic-lens or generic-optics with 'nodeId' instead." #-}

-- | The current status of the node. For example: @available@ .
--
-- /Note:/ Consider using 'nodeStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
nNodeStatus :: Lens.Lens' Node (Core.Maybe Types.String)
nNodeStatus = Lens.field @"nodeStatus"
{-# DEPRECATED nNodeStatus "Use generic-lens or generic-optics with 'nodeStatus' instead." #-}

-- | The status of the parameter group associated with this node. For example, @in-sync@ .
--
-- /Note:/ Consider using 'parameterGroupStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
nParameterGroupStatus :: Lens.Lens' Node (Core.Maybe Types.String)
nParameterGroupStatus = Lens.field @"parameterGroupStatus"
{-# DEPRECATED nParameterGroupStatus "Use generic-lens or generic-optics with 'parameterGroupStatus' instead." #-}

instance Core.FromJSON Node where
  parseJSON =
    Core.withObject "Node" Core.$
      \x ->
        Node'
          Core.<$> (x Core..:? "AvailabilityZone")
          Core.<*> (x Core..:? "Endpoint")
          Core.<*> (x Core..:? "NodeCreateTime")
          Core.<*> (x Core..:? "NodeId")
          Core.<*> (x Core..:? "NodeStatus")
          Core.<*> (x Core..:? "ParameterGroupStatus")