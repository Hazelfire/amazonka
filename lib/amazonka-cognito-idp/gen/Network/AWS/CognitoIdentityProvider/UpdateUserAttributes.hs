{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.UpdateUserAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows a user to update a specific attribute (one at a time).
module Network.AWS.CognitoIdentityProvider.UpdateUserAttributes
  ( -- * Creating a request
    UpdateUserAttributes (..),
    mkUpdateUserAttributes,

    -- ** Request lenses
    uuaUserAttributes,
    uuaAccessToken,
    uuaClientMetadata,

    -- * Destructuring the response
    UpdateUserAttributesResponse (..),
    mkUpdateUserAttributesResponse,

    -- ** Response lenses
    uuarrsCodeDeliveryDetailsList,
    uuarrsResponseStatus,
  )
where

import qualified Network.AWS.CognitoIdentityProvider.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to update user attributes.
--
-- /See:/ 'mkUpdateUserAttributes' smart constructor.
data UpdateUserAttributes = UpdateUserAttributes'
  { -- | An array of name-value pairs representing user attributes.
    --
    -- For custom attributes, you must prepend the @custom:@ prefix to the attribute name.
    userAttributes :: [Types.AttributeType],
    -- | The access token for the request to update user attributes.
    accessToken :: Types.TokenModelType,
    -- | A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
    --
    -- You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the UpdateUserAttributes API action, Amazon Cognito invokes the function that is assigned to the /custom message/ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your UpdateUserAttributes request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs.
    -- For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
    clientMetadata :: Core.Maybe (Core.HashMap Types.StringType Types.StringType)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateUserAttributes' value with any optional fields omitted.
mkUpdateUserAttributes ::
  -- | 'accessToken'
  Types.TokenModelType ->
  UpdateUserAttributes
mkUpdateUserAttributes accessToken =
  UpdateUserAttributes'
    { userAttributes = Core.mempty,
      accessToken,
      clientMetadata = Core.Nothing
    }

-- | An array of name-value pairs representing user attributes.
--
-- For custom attributes, you must prepend the @custom:@ prefix to the attribute name.
--
-- /Note:/ Consider using 'userAttributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uuaUserAttributes :: Lens.Lens' UpdateUserAttributes [Types.AttributeType]
uuaUserAttributes = Lens.field @"userAttributes"
{-# DEPRECATED uuaUserAttributes "Use generic-lens or generic-optics with 'userAttributes' instead." #-}

-- | The access token for the request to update user attributes.
--
-- /Note:/ Consider using 'accessToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uuaAccessToken :: Lens.Lens' UpdateUserAttributes Types.TokenModelType
uuaAccessToken = Lens.field @"accessToken"
{-# DEPRECATED uuaAccessToken "Use generic-lens or generic-optics with 'accessToken' instead." #-}

-- | A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
--
-- You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the UpdateUserAttributes API action, Amazon Cognito invokes the function that is assigned to the /custom message/ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your UpdateUserAttributes request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs.
-- For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
--
-- /Note:/ Consider using 'clientMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uuaClientMetadata :: Lens.Lens' UpdateUserAttributes (Core.Maybe (Core.HashMap Types.StringType Types.StringType))
uuaClientMetadata = Lens.field @"clientMetadata"
{-# DEPRECATED uuaClientMetadata "Use generic-lens or generic-optics with 'clientMetadata' instead." #-}

instance Core.FromJSON UpdateUserAttributes where
  toJSON UpdateUserAttributes {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("UserAttributes" Core..= userAttributes),
            Core.Just ("AccessToken" Core..= accessToken),
            ("ClientMetadata" Core..=) Core.<$> clientMetadata
          ]
      )

instance Core.AWSRequest UpdateUserAttributes where
  type Rs UpdateUserAttributes = UpdateUserAttributesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "AWSCognitoIdentityProviderService.UpdateUserAttributes"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateUserAttributesResponse'
            Core.<$> (x Core..:? "CodeDeliveryDetailsList")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the response from the server for the request to update user attributes.
--
-- /See:/ 'mkUpdateUserAttributesResponse' smart constructor.
data UpdateUserAttributesResponse = UpdateUserAttributesResponse'
  { -- | The code delivery details list from the server for the request to update user attributes.
    codeDeliveryDetailsList :: Core.Maybe [Types.CodeDeliveryDetailsType],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateUserAttributesResponse' value with any optional fields omitted.
mkUpdateUserAttributesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateUserAttributesResponse
mkUpdateUserAttributesResponse responseStatus =
  UpdateUserAttributesResponse'
    { codeDeliveryDetailsList =
        Core.Nothing,
      responseStatus
    }

-- | The code delivery details list from the server for the request to update user attributes.
--
-- /Note:/ Consider using 'codeDeliveryDetailsList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uuarrsCodeDeliveryDetailsList :: Lens.Lens' UpdateUserAttributesResponse (Core.Maybe [Types.CodeDeliveryDetailsType])
uuarrsCodeDeliveryDetailsList = Lens.field @"codeDeliveryDetailsList"
{-# DEPRECATED uuarrsCodeDeliveryDetailsList "Use generic-lens or generic-optics with 'codeDeliveryDetailsList' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uuarrsResponseStatus :: Lens.Lens' UpdateUserAttributesResponse Core.Int
uuarrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED uuarrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}