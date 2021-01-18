{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SNS.GetEndpointAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM (Firebase Cloud Messaging) and APNS. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html Using Amazon SNS Mobile Push Notifications> .
module Network.AWS.SNS.GetEndpointAttributes
  ( -- * Creating a request
    GetEndpointAttributes (..),
    mkGetEndpointAttributes,

    -- ** Request lenses
    geaEndpointArn,

    -- * Destructuring the response
    GetEndpointAttributesResponse (..),
    mkGetEndpointAttributesResponse,

    -- ** Response lenses
    gearrsAttributes,
    gearrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SNS.Types as Types

-- | Input for GetEndpointAttributes action.
--
-- /See:/ 'mkGetEndpointAttributes' smart constructor.
newtype GetEndpointAttributes = GetEndpointAttributes'
  { -- | EndpointArn for GetEndpointAttributes input.
    endpointArn :: Types.EndpointArn
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetEndpointAttributes' value with any optional fields omitted.
mkGetEndpointAttributes ::
  -- | 'endpointArn'
  Types.EndpointArn ->
  GetEndpointAttributes
mkGetEndpointAttributes endpointArn =
  GetEndpointAttributes' {endpointArn}

-- | EndpointArn for GetEndpointAttributes input.
--
-- /Note:/ Consider using 'endpointArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
geaEndpointArn :: Lens.Lens' GetEndpointAttributes Types.EndpointArn
geaEndpointArn = Lens.field @"endpointArn"
{-# DEPRECATED geaEndpointArn "Use generic-lens or generic-optics with 'endpointArn' instead." #-}

instance Core.AWSRequest GetEndpointAttributes where
  type Rs GetEndpointAttributes = GetEndpointAttributesResponse
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
            ( Core.pure ("Action", "GetEndpointAttributes")
                Core.<> (Core.pure ("Version", "2010-03-31"))
                Core.<> (Core.toQueryValue "EndpointArn" endpointArn)
            )
      }
  response =
    Response.receiveXMLWrapper
      "GetEndpointAttributesResult"
      ( \s h x ->
          GetEndpointAttributesResponse'
            Core.<$> ( x Core..@? "Attributes"
                         Core..<@> Core.parseXMLMap "entry" "key" "value"
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Response from GetEndpointAttributes of the EndpointArn.
--
-- /See:/ 'mkGetEndpointAttributesResponse' smart constructor.
data GetEndpointAttributesResponse = GetEndpointAttributesResponse'
  { -- | Attributes include the following:
    --
    --
    --     * @CustomUserData@ – arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.
    --
    --
    --     * @Enabled@ – flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.
    --
    --
    --     * @Token@ – device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.
    attributes :: Core.Maybe (Core.HashMap Types.String Types.String),
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetEndpointAttributesResponse' value with any optional fields omitted.
mkGetEndpointAttributesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetEndpointAttributesResponse
mkGetEndpointAttributesResponse responseStatus =
  GetEndpointAttributesResponse'
    { attributes = Core.Nothing,
      responseStatus
    }

-- | Attributes include the following:
--
--
--     * @CustomUserData@ – arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.
--
--
--     * @Enabled@ – flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.
--
--
--     * @Token@ – device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.
--
--
--
-- /Note:/ Consider using 'attributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gearrsAttributes :: Lens.Lens' GetEndpointAttributesResponse (Core.Maybe (Core.HashMap Types.String Types.String))
gearrsAttributes = Lens.field @"attributes"
{-# DEPRECATED gearrsAttributes "Use generic-lens or generic-optics with 'attributes' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gearrsResponseStatus :: Lens.Lens' GetEndpointAttributesResponse Core.Int
gearrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gearrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}