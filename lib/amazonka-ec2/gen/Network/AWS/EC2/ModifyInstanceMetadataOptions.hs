{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.ModifyInstanceMetadataOptions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the instance metadata parameters on a running or stopped instance. When you modify the parameters on a stopped instance, they are applied when the instance is started. When you modify the parameters on a running instance, the API responds with a state of “pending”. After the parameter modifications are successfully applied to the instance, the state of the modifications changes from “pending” to “applied” in subsequent describe-instances API calls. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data> .
module Network.AWS.EC2.ModifyInstanceMetadataOptions
  ( -- * Creating a request
    ModifyInstanceMetadataOptions (..),
    mkModifyInstanceMetadataOptions,

    -- ** Request lenses
    mimoInstanceId,
    mimoDryRun,
    mimoHttpEndpoint,
    mimoHttpPutResponseHopLimit,
    mimoHttpTokens,

    -- * Destructuring the response
    ModifyInstanceMetadataOptionsResponse (..),
    mkModifyInstanceMetadataOptionsResponse,

    -- ** Response lenses
    mimorrsInstanceId,
    mimorrsInstanceMetadataOptions,
    mimorrsResponseStatus,
  )
where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkModifyInstanceMetadataOptions' smart constructor.
data ModifyInstanceMetadataOptions = ModifyInstanceMetadataOptions'
  { -- | The ID of the instance.
    instanceId :: Types.InstanceId,
    -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Core.Maybe Core.Bool,
    -- | This parameter enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the existing state is maintained.
    httpEndpoint :: Core.Maybe Types.InstanceMetadataEndpointState,
    -- | The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. If no parameter is specified, the existing state is maintained.
    --
    -- Possible values: Integers from 1 to 64
    httpPutResponseHopLimit :: Core.Maybe Core.Int,
    -- | The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is @optional@ .
    --
    -- If the state is @optional@ , you can choose to retrieve instance metadata with or without a signed token header on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.
    -- If the state is @required@ , you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credential always returns the version 2.0 credentials; the version 1.0 credentials are not available.
    httpTokens :: Core.Maybe Types.HttpTokensState
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ModifyInstanceMetadataOptions' value with any optional fields omitted.
mkModifyInstanceMetadataOptions ::
  -- | 'instanceId'
  Types.InstanceId ->
  ModifyInstanceMetadataOptions
mkModifyInstanceMetadataOptions instanceId =
  ModifyInstanceMetadataOptions'
    { instanceId,
      dryRun = Core.Nothing,
      httpEndpoint = Core.Nothing,
      httpPutResponseHopLimit = Core.Nothing,
      httpTokens = Core.Nothing
    }

-- | The ID of the instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mimoInstanceId :: Lens.Lens' ModifyInstanceMetadataOptions Types.InstanceId
mimoInstanceId = Lens.field @"instanceId"
{-# DEPRECATED mimoInstanceId "Use generic-lens or generic-optics with 'instanceId' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mimoDryRun :: Lens.Lens' ModifyInstanceMetadataOptions (Core.Maybe Core.Bool)
mimoDryRun = Lens.field @"dryRun"
{-# DEPRECATED mimoDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | This parameter enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the existing state is maintained.
--
-- /Note:/ Consider using 'httpEndpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mimoHttpEndpoint :: Lens.Lens' ModifyInstanceMetadataOptions (Core.Maybe Types.InstanceMetadataEndpointState)
mimoHttpEndpoint = Lens.field @"httpEndpoint"
{-# DEPRECATED mimoHttpEndpoint "Use generic-lens or generic-optics with 'httpEndpoint' instead." #-}

-- | The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. If no parameter is specified, the existing state is maintained.
--
-- Possible values: Integers from 1 to 64
--
-- /Note:/ Consider using 'httpPutResponseHopLimit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mimoHttpPutResponseHopLimit :: Lens.Lens' ModifyInstanceMetadataOptions (Core.Maybe Core.Int)
mimoHttpPutResponseHopLimit = Lens.field @"httpPutResponseHopLimit"
{-# DEPRECATED mimoHttpPutResponseHopLimit "Use generic-lens or generic-optics with 'httpPutResponseHopLimit' instead." #-}

-- | The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is @optional@ .
--
-- If the state is @optional@ , you can choose to retrieve instance metadata with or without a signed token header on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.
-- If the state is @required@ , you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credential always returns the version 2.0 credentials; the version 1.0 credentials are not available.
--
-- /Note:/ Consider using 'httpTokens' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mimoHttpTokens :: Lens.Lens' ModifyInstanceMetadataOptions (Core.Maybe Types.HttpTokensState)
mimoHttpTokens = Lens.field @"httpTokens"
{-# DEPRECATED mimoHttpTokens "Use generic-lens or generic-optics with 'httpTokens' instead." #-}

instance Core.AWSRequest ModifyInstanceMetadataOptions where
  type
    Rs ModifyInstanceMetadataOptions =
      ModifyInstanceMetadataOptionsResponse
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
            ( Core.pure ("Action", "ModifyInstanceMetadataOptions")
                Core.<> (Core.pure ("Version", "2016-11-15"))
                Core.<> (Core.toQueryValue "InstanceId" instanceId)
                Core.<> (Core.toQueryValue "DryRun" Core.<$> dryRun)
                Core.<> (Core.toQueryValue "HttpEndpoint" Core.<$> httpEndpoint)
                Core.<> ( Core.toQueryValue "HttpPutResponseHopLimit"
                            Core.<$> httpPutResponseHopLimit
                        )
                Core.<> (Core.toQueryValue "HttpTokens" Core.<$> httpTokens)
            )
      }
  response =
    Response.receiveXML
      ( \s h x ->
          ModifyInstanceMetadataOptionsResponse'
            Core.<$> (x Core..@? "instanceId")
            Core.<*> (x Core..@? "instanceMetadataOptions")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkModifyInstanceMetadataOptionsResponse' smart constructor.
data ModifyInstanceMetadataOptionsResponse = ModifyInstanceMetadataOptionsResponse'
  { -- | The ID of the instance.
    instanceId :: Core.Maybe Types.InstanceId,
    -- | The metadata options for the instance.
    instanceMetadataOptions :: Core.Maybe Types.InstanceMetadataOptionsResponse,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ModifyInstanceMetadataOptionsResponse' value with any optional fields omitted.
mkModifyInstanceMetadataOptionsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ModifyInstanceMetadataOptionsResponse
mkModifyInstanceMetadataOptionsResponse responseStatus =
  ModifyInstanceMetadataOptionsResponse'
    { instanceId = Core.Nothing,
      instanceMetadataOptions = Core.Nothing,
      responseStatus
    }

-- | The ID of the instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mimorrsInstanceId :: Lens.Lens' ModifyInstanceMetadataOptionsResponse (Core.Maybe Types.InstanceId)
mimorrsInstanceId = Lens.field @"instanceId"
{-# DEPRECATED mimorrsInstanceId "Use generic-lens or generic-optics with 'instanceId' instead." #-}

-- | The metadata options for the instance.
--
-- /Note:/ Consider using 'instanceMetadataOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mimorrsInstanceMetadataOptions :: Lens.Lens' ModifyInstanceMetadataOptionsResponse (Core.Maybe Types.InstanceMetadataOptionsResponse)
mimorrsInstanceMetadataOptions = Lens.field @"instanceMetadataOptions"
{-# DEPRECATED mimorrsInstanceMetadataOptions "Use generic-lens or generic-optics with 'instanceMetadataOptions' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mimorrsResponseStatus :: Lens.Lens' ModifyInstanceMetadataOptionsResponse Core.Int
mimorrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED mimorrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}