{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.GetAccountLimit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified limit for the current account, for example, the maximum number of health checks that you can create using the account.
--
-- For the default limit, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits> in the /Amazon Route 53 Developer Guide/ . To request a higher limit, <https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53 open a case> .
module Network.AWS.Route53.GetAccountLimit
  ( -- * Creating a request
    GetAccountLimit (..),
    mkGetAccountLimit,

    -- ** Request lenses
    galType,

    -- * Destructuring the response
    GetAccountLimitResponse (..),
    mkGetAccountLimitResponse,

    -- ** Response lenses
    galrrsLimit,
    galrrsCount,
    galrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Route53.Types as Types

-- | A complex type that contains information about the request to create a hosted zone.
--
-- /See:/ 'mkGetAccountLimit' smart constructor.
newtype GetAccountLimit = GetAccountLimit'
  { -- | The limit that you want to get. Valid values include the following:
    --
    --
    --     * __MAX_HEALTH_CHECKS_BY_OWNER__ : The maximum number of health checks that you can create using the current account.
    --
    --
    --     * __MAX_HOSTED_ZONES_BY_OWNER__ : The maximum number of hosted zones that you can create using the current account.
    --
    --
    --     * __MAX_REUSABLE_DELEGATION_SETS_BY_OWNER__ : The maximum number of reusable delegation sets that you can create using the current account.
    --
    --
    --     * __MAX_TRAFFIC_POLICIES_BY_OWNER__ : The maximum number of traffic policies that you can create using the current account.
    --
    --
    --     * __MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER__ : The maximum number of traffic policy instances that you can create using the current account. (Traffic policy instances are referred to as traffic flow policy records in the Amazon Route 53 console.)
    type' :: Types.AccountLimitType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetAccountLimit' value with any optional fields omitted.
mkGetAccountLimit ::
  -- | 'type\''
  Types.AccountLimitType ->
  GetAccountLimit
mkGetAccountLimit type' = GetAccountLimit' {type'}

-- | The limit that you want to get. Valid values include the following:
--
--
--     * __MAX_HEALTH_CHECKS_BY_OWNER__ : The maximum number of health checks that you can create using the current account.
--
--
--     * __MAX_HOSTED_ZONES_BY_OWNER__ : The maximum number of hosted zones that you can create using the current account.
--
--
--     * __MAX_REUSABLE_DELEGATION_SETS_BY_OWNER__ : The maximum number of reusable delegation sets that you can create using the current account.
--
--
--     * __MAX_TRAFFIC_POLICIES_BY_OWNER__ : The maximum number of traffic policies that you can create using the current account.
--
--
--     * __MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER__ : The maximum number of traffic policy instances that you can create using the current account. (Traffic policy instances are referred to as traffic flow policy records in the Amazon Route 53 console.)
--
--
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
galType :: Lens.Lens' GetAccountLimit Types.AccountLimitType
galType = Lens.field @"type'"
{-# DEPRECATED galType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.AWSRequest GetAccountLimit where
  type Rs GetAccountLimit = GetAccountLimitResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ("/2013-04-01/accountlimit/" Core.<> (Core.toText type')),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response =
    Response.receiveXML
      ( \s h x ->
          GetAccountLimitResponse'
            Core.<$> (x Core..@ "Limit")
            Core.<*> (x Core..@ "Count")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | A complex type that contains the requested limit.
--
-- /See:/ 'mkGetAccountLimitResponse' smart constructor.
data GetAccountLimitResponse = GetAccountLimitResponse'
  { -- | The current setting for the specified limit. For example, if you specified @MAX_HEALTH_CHECKS_BY_OWNER@ for the value of @Type@ in the request, the value of @Limit@ is the maximum number of health checks that you can create using the current account.
    limit :: Types.AccountLimit,
    -- | The current number of entities that you have created of the specified type. For example, if you specified @MAX_HEALTH_CHECKS_BY_OWNER@ for the value of @Type@ in the request, the value of @Count@ is the current number of health checks that you have created using the current account.
    count :: Core.Natural,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetAccountLimitResponse' value with any optional fields omitted.
mkGetAccountLimitResponse ::
  -- | 'limit'
  Types.AccountLimit ->
  -- | 'count'
  Core.Natural ->
  -- | 'responseStatus'
  Core.Int ->
  GetAccountLimitResponse
mkGetAccountLimitResponse limit count responseStatus =
  GetAccountLimitResponse' {limit, count, responseStatus}

-- | The current setting for the specified limit. For example, if you specified @MAX_HEALTH_CHECKS_BY_OWNER@ for the value of @Type@ in the request, the value of @Limit@ is the maximum number of health checks that you can create using the current account.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
galrrsLimit :: Lens.Lens' GetAccountLimitResponse Types.AccountLimit
galrrsLimit = Lens.field @"limit"
{-# DEPRECATED galrrsLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | The current number of entities that you have created of the specified type. For example, if you specified @MAX_HEALTH_CHECKS_BY_OWNER@ for the value of @Type@ in the request, the value of @Count@ is the current number of health checks that you have created using the current account.
--
-- /Note:/ Consider using 'count' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
galrrsCount :: Lens.Lens' GetAccountLimitResponse Core.Natural
galrrsCount = Lens.field @"count"
{-# DEPRECATED galrrsCount "Use generic-lens or generic-optics with 'count' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
galrrsResponseStatus :: Lens.Lens' GetAccountLimitResponse Core.Int
galrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED galrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}