{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.ListGameServers
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __This operation is used with the Amazon GameLift FleetIQ solution and game server groups.__
--
-- Retrieves information on all game servers that are currently active in a specified game server group. You can opt to sort the list by game server age. Use the pagination parameters to retrieve results in a set of sequential segments.
-- __Learn more__
-- <https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html GameLift FleetIQ Guide>
-- __Related operations__
--
--     * 'RegisterGameServer'
--
--
--     * 'ListGameServers'
--
--
--     * 'ClaimGameServer'
--
--
--     * 'DescribeGameServer'
--
--
--     * 'UpdateGameServer'
--
--
--     * 'DeregisterGameServer'
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.ListGameServers
  ( -- * Creating a request
    ListGameServers (..),
    mkListGameServers,

    -- ** Request lenses
    lgsGameServerGroupName,
    lgsLimit,
    lgsNextToken,
    lgsSortOrder,

    -- * Destructuring the response
    ListGameServersResponse (..),
    mkListGameServersResponse,

    -- ** Response lenses
    lgsrrsGameServers,
    lgsrrsNextToken,
    lgsrrsResponseStatus,
  )
where

import qualified Network.AWS.GameLift.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListGameServers' smart constructor.
data ListGameServers = ListGameServers'
  { -- | An identifier for the game server group to retrieve a list of game servers from. Use either the 'GameServerGroup' name or ARN value.
    gameServerGroupName :: Types.GameServerGroupName,
    -- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential segments.
    limit :: Core.Maybe Core.Natural,
    -- | A token that indicates the start of the next sequential segment of results. Use the token returned with the previous call to this operation. To start at the beginning of the result set, do not specify a value.
    nextToken :: Core.Maybe Types.NonZeroAndMaxString,
    -- | Indicates how to sort the returned data based on game server registration timestamp. Use ASCENDING to retrieve oldest game servers first, or use DESCENDING to retrieve newest game servers first. If this parameter is left empty, game servers are returned in no particular order.
    sortOrder :: Core.Maybe Types.SortOrder
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListGameServers' value with any optional fields omitted.
mkListGameServers ::
  -- | 'gameServerGroupName'
  Types.GameServerGroupName ->
  ListGameServers
mkListGameServers gameServerGroupName =
  ListGameServers'
    { gameServerGroupName,
      limit = Core.Nothing,
      nextToken = Core.Nothing,
      sortOrder = Core.Nothing
    }

-- | An identifier for the game server group to retrieve a list of game servers from. Use either the 'GameServerGroup' name or ARN value.
--
-- /Note:/ Consider using 'gameServerGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgsGameServerGroupName :: Lens.Lens' ListGameServers Types.GameServerGroupName
lgsGameServerGroupName = Lens.field @"gameServerGroupName"
{-# DEPRECATED lgsGameServerGroupName "Use generic-lens or generic-optics with 'gameServerGroupName' instead." #-}

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential segments.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgsLimit :: Lens.Lens' ListGameServers (Core.Maybe Core.Natural)
lgsLimit = Lens.field @"limit"
{-# DEPRECATED lgsLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | A token that indicates the start of the next sequential segment of results. Use the token returned with the previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgsNextToken :: Lens.Lens' ListGameServers (Core.Maybe Types.NonZeroAndMaxString)
lgsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lgsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Indicates how to sort the returned data based on game server registration timestamp. Use ASCENDING to retrieve oldest game servers first, or use DESCENDING to retrieve newest game servers first. If this parameter is left empty, game servers are returned in no particular order.
--
-- /Note:/ Consider using 'sortOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgsSortOrder :: Lens.Lens' ListGameServers (Core.Maybe Types.SortOrder)
lgsSortOrder = Lens.field @"sortOrder"
{-# DEPRECATED lgsSortOrder "Use generic-lens or generic-optics with 'sortOrder' instead." #-}

instance Core.FromJSON ListGameServers where
  toJSON ListGameServers {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("GameServerGroupName" Core..= gameServerGroupName),
            ("Limit" Core..=) Core.<$> limit,
            ("NextToken" Core..=) Core.<$> nextToken,
            ("SortOrder" Core..=) Core.<$> sortOrder
          ]
      )

instance Core.AWSRequest ListGameServers where
  type Rs ListGameServers = ListGameServersResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "GameLift.ListGameServers")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGameServersResponse'
            Core.<$> (x Core..:? "GameServers")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListGameServers where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop
        (rs Lens.^? Lens.field @"gameServers" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | /See:/ 'mkListGameServersResponse' smart constructor.
data ListGameServersResponse = ListGameServersResponse'
  { -- | A collection of game server objects that match the request.
    gameServers :: Core.Maybe [Types.GameServer],
    -- | A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
    nextToken :: Core.Maybe Types.NonZeroAndMaxString,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListGameServersResponse' value with any optional fields omitted.
mkListGameServersResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListGameServersResponse
mkListGameServersResponse responseStatus =
  ListGameServersResponse'
    { gameServers = Core.Nothing,
      nextToken = Core.Nothing,
      responseStatus
    }

-- | A collection of game server objects that match the request.
--
-- /Note:/ Consider using 'gameServers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgsrrsGameServers :: Lens.Lens' ListGameServersResponse (Core.Maybe [Types.GameServer])
lgsrrsGameServers = Lens.field @"gameServers"
{-# DEPRECATED lgsrrsGameServers "Use generic-lens or generic-optics with 'gameServers' instead." #-}

-- | A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgsrrsNextToken :: Lens.Lens' ListGameServersResponse (Core.Maybe Types.NonZeroAndMaxString)
lgsrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lgsrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgsrrsResponseStatus :: Lens.Lens' ListGameServersResponse Core.Int
lgsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lgsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}