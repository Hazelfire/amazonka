{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.RegisterInstance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service. When you submit a @RegisterInstance@ request, the following occurs:
--
--
--     * For each DNS record that you define in the service that is specified by @ServiceId@ , a record is created or updated in the hosted zone that is associated with the corresponding namespace.
--
--
--     * If the service includes @HealthCheckConfig@ , a health check is created based on the settings in the health check configuration.
--
--
--     * The health check, if any, is associated with each of the new or updated records.
--
--
-- /Important:/ One @RegisterInstance@ request must complete before you can submit another request and specify the same service ID and instance ID.
-- For more information, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html CreateService> .
-- When AWS Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:
--
--     * __If the health check is healthy__ : returns all the records
--
--
--     * __If the health check is unhealthy__ : returns the applicable value for the last healthy instance
--
--
--     * __If you didn't specify a health check configuration__ : returns all the records
--
--
-- For the current quota on the number of instances that you can register using the same namespace and using the same service, see <https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html AWS Cloud Map Limits> in the /AWS Cloud Map Developer Guide/ .
module Network.AWS.Route53AutoNaming.RegisterInstance
  ( -- * Creating a request
    RegisterInstance (..),
    mkRegisterInstance,

    -- ** Request lenses
    riServiceId,
    riInstanceId,
    riAttributes,
    riCreatorRequestId,

    -- * Destructuring the response
    RegisterInstanceResponse (..),
    mkRegisterInstanceResponse,

    -- ** Response lenses
    rirrsOperationId,
    rirrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Route53AutoNaming.Types as Types

-- | /See:/ 'mkRegisterInstance' smart constructor.
data RegisterInstance = RegisterInstance'
  { -- | The ID of the service that you want to use for settings for the instance.
    serviceId :: Types.ResourceId,
    -- | An identifier that you want to associate with the instance. Note the following:
    --
    --
    --     * If the service that is specified by @ServiceId@ includes settings for an @SRV@ record, the value of @InstanceId@ is automatically included as part of the value for the @SRV@ record. For more information, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type DnsRecord > Type> .
    --
    --
    --     * You can use this value to update an existing instance.
    --
    --
    --     * To register a new instance, you must specify a value that is unique among instances that you register by using the same service.
    --
    --
    --     * If you specify an existing @InstanceId@ and @ServiceId@ , AWS Cloud Map updates the existing DNS records, if any. If there's also an existing health check, AWS Cloud Map deletes the old health check and creates a new one.
    instanceId :: Types.ResourceId,
    -- | A string map that contains the following information for the service that you specify in @ServiceId@ :
    --
    --
    --     * The attributes that apply to the records that are defined in the service.
    --
    --
    --     * For each attribute, the applicable value.
    --
    --
    -- Supported attribute keys include the following:
    -- __AWS_ALIAS_DNS_NAME__
    -- If you want AWS Cloud Map to create an Amazon Route 53 alias record that routes traffic to an Elastic Load Balancing load balancer, specify the DNS name that is associated with the load balancer. For information about how to get the DNS name, see "DNSName" in the topic <https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html AliasTarget> in the /Route 53 API Reference/ .
    -- Note the following:
    --
    --     * The configuration for the service that is specified by @ServiceId@ must include settings for an @A@ record, an @AAAA@ record, or both.
    --
    --
    --     * In the service that is specified by @ServiceId@ , the value of @RoutingPolicy@ must be @WEIGHTED@ .
    --
    --
    --     * If the service that is specified by @ServiceId@ includes @HealthCheckConfig@ settings, AWS Cloud Map will create the Route 53 health check, but it won't associate the health check with the alias record.
    --
    --
    --     * Auto naming currently doesn't support creating alias records that route traffic to AWS resources other than Elastic Load Balancing load balancers.
    --
    --
    --     * If you specify a value for @AWS_ALIAS_DNS_NAME@ , don't specify values for any of the @AWS_INSTANCE@ attributes.
    --
    --
    -- __AWS_EC2_INSTANCE_ID__
    -- /HTTP namespaces only./ The Amazon EC2 instance ID for the instance. If the @AWS_EC2_INSTANCE_ID@ attribute is specified, then the only other attribute that can be specified is @AWS_INIT_HEALTH_STATUS@ . When the @AWS_EC2_INSTANCE_ID@ attribute is specified, then the @AWS_INSTANCE_IPV4@ attribute will be filled out with the primary private IPv4 address.
    -- __AWS_INIT_HEALTH_STATUS__
    -- If the service configuration includes @HealthCheckCustomConfig@ , you can optionally use @AWS_INIT_HEALTH_STATUS@ to specify the initial status of the custom health check, @HEALTHY@ or @UNHEALTHY@ . If you don't specify a value for @AWS_INIT_HEALTH_STATUS@ , the initial status is @HEALTHY@ .
    -- __AWS_INSTANCE_CNAME__
    -- If the service configuration includes a @CNAME@ record, the domain name that you want Route 53 to return in response to DNS queries, for example, @example.com@ .
    -- This value is required if the service specified by @ServiceId@ includes settings for an @CNAME@ record.
    -- __AWS_INSTANCE_IPV4__
    -- If the service configuration includes an @A@ record, the IPv4 address that you want Route 53 to return in response to DNS queries, for example, @192.0.2.44@ .
    -- This value is required if the service specified by @ServiceId@ includes settings for an @A@ record. If the service includes settings for an @SRV@ record, you must specify a value for @AWS_INSTANCE_IPV4@ , @AWS_INSTANCE_IPV6@ , or both.
    -- __AWS_INSTANCE_IPV6__
    -- If the service configuration includes an @AAAA@ record, the IPv6 address that you want Route 53 to return in response to DNS queries, for example, @2001:0db8:85a3:0000:0000:abcd:0001:2345@ .
    -- This value is required if the service specified by @ServiceId@ includes settings for an @AAAA@ record. If the service includes settings for an @SRV@ record, you must specify a value for @AWS_INSTANCE_IPV4@ , @AWS_INSTANCE_IPV6@ , or both.
    -- __AWS_INSTANCE_PORT__
    -- If the service includes an @SRV@ record, the value that you want Route 53 to return for the port.
    -- If the service includes @HealthCheckConfig@ , the port on the endpoint that you want Route 53 to send requests to.
    -- This value is required if you specified settings for an @SRV@ record or a Route 53 health check when you created the service.
    -- __Custom attributes__
    -- You can add up to 30 custom attributes. For each key-value pair, the maximum length of the attribute name is 255 characters, and the maximum length of the attribute value is 1,024 characters. The total size of all provided attributes (sum of all keys and values) must not exceed 5,000 characters.
    attributes :: Core.HashMap Types.AttrKey Types.AttrValue,
    -- | A unique string that identifies the request and that allows failed @RegisterInstance@ requests to be retried without the risk of executing the operation twice. You must use a unique @CreatorRequestId@ string every time you submit a @RegisterInstance@ request if you're registering additional instances for the same namespace and service. @CreatorRequestId@ can be any unique string, for example, a date/time stamp.
    creatorRequestId :: Core.Maybe Types.ResourceId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegisterInstance' value with any optional fields omitted.
mkRegisterInstance ::
  -- | 'serviceId'
  Types.ResourceId ->
  -- | 'instanceId'
  Types.ResourceId ->
  RegisterInstance
mkRegisterInstance serviceId instanceId =
  RegisterInstance'
    { serviceId,
      instanceId,
      attributes = Core.mempty,
      creatorRequestId = Core.Nothing
    }

-- | The ID of the service that you want to use for settings for the instance.
--
-- /Note:/ Consider using 'serviceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riServiceId :: Lens.Lens' RegisterInstance Types.ResourceId
riServiceId = Lens.field @"serviceId"
{-# DEPRECATED riServiceId "Use generic-lens or generic-optics with 'serviceId' instead." #-}

-- | An identifier that you want to associate with the instance. Note the following:
--
--
--     * If the service that is specified by @ServiceId@ includes settings for an @SRV@ record, the value of @InstanceId@ is automatically included as part of the value for the @SRV@ record. For more information, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type DnsRecord > Type> .
--
--
--     * You can use this value to update an existing instance.
--
--
--     * To register a new instance, you must specify a value that is unique among instances that you register by using the same service.
--
--
--     * If you specify an existing @InstanceId@ and @ServiceId@ , AWS Cloud Map updates the existing DNS records, if any. If there's also an existing health check, AWS Cloud Map deletes the old health check and creates a new one.
--
--
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riInstanceId :: Lens.Lens' RegisterInstance Types.ResourceId
riInstanceId = Lens.field @"instanceId"
{-# DEPRECATED riInstanceId "Use generic-lens or generic-optics with 'instanceId' instead." #-}

-- | A string map that contains the following information for the service that you specify in @ServiceId@ :
--
--
--     * The attributes that apply to the records that are defined in the service.
--
--
--     * For each attribute, the applicable value.
--
--
-- Supported attribute keys include the following:
-- __AWS_ALIAS_DNS_NAME__
-- If you want AWS Cloud Map to create an Amazon Route 53 alias record that routes traffic to an Elastic Load Balancing load balancer, specify the DNS name that is associated with the load balancer. For information about how to get the DNS name, see "DNSName" in the topic <https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html AliasTarget> in the /Route 53 API Reference/ .
-- Note the following:
--
--     * The configuration for the service that is specified by @ServiceId@ must include settings for an @A@ record, an @AAAA@ record, or both.
--
--
--     * In the service that is specified by @ServiceId@ , the value of @RoutingPolicy@ must be @WEIGHTED@ .
--
--
--     * If the service that is specified by @ServiceId@ includes @HealthCheckConfig@ settings, AWS Cloud Map will create the Route 53 health check, but it won't associate the health check with the alias record.
--
--
--     * Auto naming currently doesn't support creating alias records that route traffic to AWS resources other than Elastic Load Balancing load balancers.
--
--
--     * If you specify a value for @AWS_ALIAS_DNS_NAME@ , don't specify values for any of the @AWS_INSTANCE@ attributes.
--
--
-- __AWS_EC2_INSTANCE_ID__
-- /HTTP namespaces only./ The Amazon EC2 instance ID for the instance. If the @AWS_EC2_INSTANCE_ID@ attribute is specified, then the only other attribute that can be specified is @AWS_INIT_HEALTH_STATUS@ . When the @AWS_EC2_INSTANCE_ID@ attribute is specified, then the @AWS_INSTANCE_IPV4@ attribute will be filled out with the primary private IPv4 address.
-- __AWS_INIT_HEALTH_STATUS__
-- If the service configuration includes @HealthCheckCustomConfig@ , you can optionally use @AWS_INIT_HEALTH_STATUS@ to specify the initial status of the custom health check, @HEALTHY@ or @UNHEALTHY@ . If you don't specify a value for @AWS_INIT_HEALTH_STATUS@ , the initial status is @HEALTHY@ .
-- __AWS_INSTANCE_CNAME__
-- If the service configuration includes a @CNAME@ record, the domain name that you want Route 53 to return in response to DNS queries, for example, @example.com@ .
-- This value is required if the service specified by @ServiceId@ includes settings for an @CNAME@ record.
-- __AWS_INSTANCE_IPV4__
-- If the service configuration includes an @A@ record, the IPv4 address that you want Route 53 to return in response to DNS queries, for example, @192.0.2.44@ .
-- This value is required if the service specified by @ServiceId@ includes settings for an @A@ record. If the service includes settings for an @SRV@ record, you must specify a value for @AWS_INSTANCE_IPV4@ , @AWS_INSTANCE_IPV6@ , or both.
-- __AWS_INSTANCE_IPV6__
-- If the service configuration includes an @AAAA@ record, the IPv6 address that you want Route 53 to return in response to DNS queries, for example, @2001:0db8:85a3:0000:0000:abcd:0001:2345@ .
-- This value is required if the service specified by @ServiceId@ includes settings for an @AAAA@ record. If the service includes settings for an @SRV@ record, you must specify a value for @AWS_INSTANCE_IPV4@ , @AWS_INSTANCE_IPV6@ , or both.
-- __AWS_INSTANCE_PORT__
-- If the service includes an @SRV@ record, the value that you want Route 53 to return for the port.
-- If the service includes @HealthCheckConfig@ , the port on the endpoint that you want Route 53 to send requests to.
-- This value is required if you specified settings for an @SRV@ record or a Route 53 health check when you created the service.
-- __Custom attributes__
-- You can add up to 30 custom attributes. For each key-value pair, the maximum length of the attribute name is 255 characters, and the maximum length of the attribute value is 1,024 characters. The total size of all provided attributes (sum of all keys and values) must not exceed 5,000 characters.
--
-- /Note:/ Consider using 'attributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riAttributes :: Lens.Lens' RegisterInstance (Core.HashMap Types.AttrKey Types.AttrValue)
riAttributes = Lens.field @"attributes"
{-# DEPRECATED riAttributes "Use generic-lens or generic-optics with 'attributes' instead." #-}

-- | A unique string that identifies the request and that allows failed @RegisterInstance@ requests to be retried without the risk of executing the operation twice. You must use a unique @CreatorRequestId@ string every time you submit a @RegisterInstance@ request if you're registering additional instances for the same namespace and service. @CreatorRequestId@ can be any unique string, for example, a date/time stamp.
--
-- /Note:/ Consider using 'creatorRequestId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riCreatorRequestId :: Lens.Lens' RegisterInstance (Core.Maybe Types.ResourceId)
riCreatorRequestId = Lens.field @"creatorRequestId"
{-# DEPRECATED riCreatorRequestId "Use generic-lens or generic-optics with 'creatorRequestId' instead." #-}

instance Core.FromJSON RegisterInstance where
  toJSON RegisterInstance {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ServiceId" Core..= serviceId),
            Core.Just ("InstanceId" Core..= instanceId),
            Core.Just ("Attributes" Core..= attributes),
            ("CreatorRequestId" Core..=) Core.<$> creatorRequestId
          ]
      )

instance Core.AWSRequest RegisterInstance where
  type Rs RegisterInstance = RegisterInstanceResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "Route53AutoNaming_v20170314.RegisterInstance")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          RegisterInstanceResponse'
            Core.<$> (x Core..:? "OperationId") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkRegisterInstanceResponse' smart constructor.
data RegisterInstanceResponse = RegisterInstanceResponse'
  { -- | A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html GetOperation> .
    operationId :: Core.Maybe Types.OperationId,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegisterInstanceResponse' value with any optional fields omitted.
mkRegisterInstanceResponse ::
  -- | 'responseStatus'
  Core.Int ->
  RegisterInstanceResponse
mkRegisterInstanceResponse responseStatus =
  RegisterInstanceResponse'
    { operationId = Core.Nothing,
      responseStatus
    }

-- | A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html GetOperation> .
--
-- /Note:/ Consider using 'operationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rirrsOperationId :: Lens.Lens' RegisterInstanceResponse (Core.Maybe Types.OperationId)
rirrsOperationId = Lens.field @"operationId"
{-# DEPRECATED rirrsOperationId "Use generic-lens or generic-optics with 'operationId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rirrsResponseStatus :: Lens.Lens' RegisterInstanceResponse Core.Int
rirrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED rirrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}