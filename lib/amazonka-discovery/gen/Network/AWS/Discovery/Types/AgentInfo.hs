{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.AgentInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.AgentInfo
  ( AgentInfo (..),

    -- * Smart constructor
    mkAgentInfo,

    -- * Lenses
    aiAgentId,
    aiAgentNetworkInfoList,
    aiAgentType,
    aiCollectionStatus,
    aiConnectorId,
    aiHealth,
    aiHostName,
    aiLastHealthPingTime,
    aiRegisteredTime,
    aiVersion,
  )
where

import qualified Network.AWS.Discovery.Types.AgentId as Types
import qualified Network.AWS.Discovery.Types.AgentNetworkInfo as Types
import qualified Network.AWS.Discovery.Types.AgentStatus as Types
import qualified Network.AWS.Discovery.Types.AgentType as Types
import qualified Network.AWS.Discovery.Types.CollectionStatus as Types
import qualified Network.AWS.Discovery.Types.ConnectorId as Types
import qualified Network.AWS.Discovery.Types.HostName as Types
import qualified Network.AWS.Discovery.Types.LastHealthPingTime as Types
import qualified Network.AWS.Discovery.Types.RegisteredTime as Types
import qualified Network.AWS.Discovery.Types.Version as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Information about agents or connectors associated with the user’s AWS account. Information includes agent or connector IDs, IP addresses, media access control (MAC) addresses, agent or connector health, hostname where the agent or connector resides, and agent version for each agent.
--
-- /See:/ 'mkAgentInfo' smart constructor.
data AgentInfo = AgentInfo'
  { -- | The agent or connector ID.
    agentId :: Core.Maybe Types.AgentId,
    -- | Network details about the host where the agent or connector resides.
    agentNetworkInfoList :: Core.Maybe [Types.AgentNetworkInfo],
    -- | Type of agent.
    agentType :: Core.Maybe Types.AgentType,
    -- | Status of the collection process for an agent or connector.
    collectionStatus :: Core.Maybe Types.CollectionStatus,
    -- | The ID of the connector.
    connectorId :: Core.Maybe Types.ConnectorId,
    -- | The health of the agent or connector.
    health :: Core.Maybe Types.AgentStatus,
    -- | The name of the host where the agent or connector resides. The host can be a server or virtual machine.
    hostName :: Core.Maybe Types.HostName,
    -- | Time since agent or connector health was reported.
    lastHealthPingTime :: Core.Maybe Types.LastHealthPingTime,
    -- | Agent's first registration timestamp in UTC.
    registeredTime :: Core.Maybe Types.RegisteredTime,
    -- | The agent or connector version.
    version :: Core.Maybe Types.Version
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AgentInfo' value with any optional fields omitted.
mkAgentInfo ::
  AgentInfo
mkAgentInfo =
  AgentInfo'
    { agentId = Core.Nothing,
      agentNetworkInfoList = Core.Nothing,
      agentType = Core.Nothing,
      collectionStatus = Core.Nothing,
      connectorId = Core.Nothing,
      health = Core.Nothing,
      hostName = Core.Nothing,
      lastHealthPingTime = Core.Nothing,
      registeredTime = Core.Nothing,
      version = Core.Nothing
    }

-- | The agent or connector ID.
--
-- /Note:/ Consider using 'agentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiAgentId :: Lens.Lens' AgentInfo (Core.Maybe Types.AgentId)
aiAgentId = Lens.field @"agentId"
{-# DEPRECATED aiAgentId "Use generic-lens or generic-optics with 'agentId' instead." #-}

-- | Network details about the host where the agent or connector resides.
--
-- /Note:/ Consider using 'agentNetworkInfoList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiAgentNetworkInfoList :: Lens.Lens' AgentInfo (Core.Maybe [Types.AgentNetworkInfo])
aiAgentNetworkInfoList = Lens.field @"agentNetworkInfoList"
{-# DEPRECATED aiAgentNetworkInfoList "Use generic-lens or generic-optics with 'agentNetworkInfoList' instead." #-}

-- | Type of agent.
--
-- /Note:/ Consider using 'agentType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiAgentType :: Lens.Lens' AgentInfo (Core.Maybe Types.AgentType)
aiAgentType = Lens.field @"agentType"
{-# DEPRECATED aiAgentType "Use generic-lens or generic-optics with 'agentType' instead." #-}

-- | Status of the collection process for an agent or connector.
--
-- /Note:/ Consider using 'collectionStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiCollectionStatus :: Lens.Lens' AgentInfo (Core.Maybe Types.CollectionStatus)
aiCollectionStatus = Lens.field @"collectionStatus"
{-# DEPRECATED aiCollectionStatus "Use generic-lens or generic-optics with 'collectionStatus' instead." #-}

-- | The ID of the connector.
--
-- /Note:/ Consider using 'connectorId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiConnectorId :: Lens.Lens' AgentInfo (Core.Maybe Types.ConnectorId)
aiConnectorId = Lens.field @"connectorId"
{-# DEPRECATED aiConnectorId "Use generic-lens or generic-optics with 'connectorId' instead." #-}

-- | The health of the agent or connector.
--
-- /Note:/ Consider using 'health' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiHealth :: Lens.Lens' AgentInfo (Core.Maybe Types.AgentStatus)
aiHealth = Lens.field @"health"
{-# DEPRECATED aiHealth "Use generic-lens or generic-optics with 'health' instead." #-}

-- | The name of the host where the agent or connector resides. The host can be a server or virtual machine.
--
-- /Note:/ Consider using 'hostName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiHostName :: Lens.Lens' AgentInfo (Core.Maybe Types.HostName)
aiHostName = Lens.field @"hostName"
{-# DEPRECATED aiHostName "Use generic-lens or generic-optics with 'hostName' instead." #-}

-- | Time since agent or connector health was reported.
--
-- /Note:/ Consider using 'lastHealthPingTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiLastHealthPingTime :: Lens.Lens' AgentInfo (Core.Maybe Types.LastHealthPingTime)
aiLastHealthPingTime = Lens.field @"lastHealthPingTime"
{-# DEPRECATED aiLastHealthPingTime "Use generic-lens or generic-optics with 'lastHealthPingTime' instead." #-}

-- | Agent's first registration timestamp in UTC.
--
-- /Note:/ Consider using 'registeredTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiRegisteredTime :: Lens.Lens' AgentInfo (Core.Maybe Types.RegisteredTime)
aiRegisteredTime = Lens.field @"registeredTime"
{-# DEPRECATED aiRegisteredTime "Use generic-lens or generic-optics with 'registeredTime' instead." #-}

-- | The agent or connector version.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiVersion :: Lens.Lens' AgentInfo (Core.Maybe Types.Version)
aiVersion = Lens.field @"version"
{-# DEPRECATED aiVersion "Use generic-lens or generic-optics with 'version' instead." #-}

instance Core.FromJSON AgentInfo where
  parseJSON =
    Core.withObject "AgentInfo" Core.$
      \x ->
        AgentInfo'
          Core.<$> (x Core..:? "agentId")
          Core.<*> (x Core..:? "agentNetworkInfoList")
          Core.<*> (x Core..:? "agentType")
          Core.<*> (x Core..:? "collectionStatus")
          Core.<*> (x Core..:? "connectorId")
          Core.<*> (x Core..:? "health")
          Core.<*> (x Core..:? "hostName")
          Core.<*> (x Core..:? "lastHealthPingTime")
          Core.<*> (x Core..:? "registeredTime")
          Core.<*> (x Core..:? "version")