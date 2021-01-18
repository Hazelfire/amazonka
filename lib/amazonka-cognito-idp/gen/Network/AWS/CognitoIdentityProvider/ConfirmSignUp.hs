{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.ConfirmSignUp
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Confirms registration of a user and handles the existing alias from a previous user.
module Network.AWS.CognitoIdentityProvider.ConfirmSignUp
  ( -- * Creating a request
    ConfirmSignUp (..),
    mkConfirmSignUp,

    -- ** Request lenses
    csuClientId,
    csuUsername,
    csuConfirmationCode,
    csuAnalyticsMetadata,
    csuClientMetadata,
    csuForceAliasCreation,
    csuSecretHash,
    csuUserContextData,

    -- * Destructuring the response
    ConfirmSignUpResponse (..),
    mkConfirmSignUpResponse,

    -- ** Response lenses
    csurrsResponseStatus,
  )
where

import qualified Network.AWS.CognitoIdentityProvider.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to confirm registration of a user.
--
-- /See:/ 'mkConfirmSignUp' smart constructor.
data ConfirmSignUp = ConfirmSignUp'
  { -- | The ID of the app client associated with the user pool.
    clientId :: Types.ClientId,
    -- | The user name of the user whose registration you wish to confirm.
    username :: Types.Username,
    -- | The confirmation code sent by a user's request to confirm registration.
    confirmationCode :: Types.ConfirmationCode,
    -- | The Amazon Pinpoint analytics metadata for collecting metrics for @ConfirmSignUp@ calls.
    analyticsMetadata :: Core.Maybe Types.AnalyticsMetadataType,
    -- | A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
    --
    -- You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the ConfirmSignUp API action, Amazon Cognito invokes the function that is assigned to the /post confirmation/ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your ConfirmSignUp request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs.
    -- For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
    clientMetadata :: Core.Maybe (Core.HashMap Types.StringType Types.StringType),
    -- | Boolean to be specified to force user confirmation irrespective of existing alias. By default set to @False@ . If this parameter is set to @True@ and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to @False@ , the API will throw an __AliasExistsException__ error.
    forceAliasCreation :: Core.Maybe Core.Bool,
    -- | A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
    secretHash :: Core.Maybe Types.SecretHashType,
    -- | Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
    userContextData :: Core.Maybe Types.UserContextDataType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ConfirmSignUp' value with any optional fields omitted.
mkConfirmSignUp ::
  -- | 'clientId'
  Types.ClientId ->
  -- | 'username'
  Types.Username ->
  -- | 'confirmationCode'
  Types.ConfirmationCode ->
  ConfirmSignUp
mkConfirmSignUp clientId username confirmationCode =
  ConfirmSignUp'
    { clientId,
      username,
      confirmationCode,
      analyticsMetadata = Core.Nothing,
      clientMetadata = Core.Nothing,
      forceAliasCreation = Core.Nothing,
      secretHash = Core.Nothing,
      userContextData = Core.Nothing
    }

-- | The ID of the app client associated with the user pool.
--
-- /Note:/ Consider using 'clientId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csuClientId :: Lens.Lens' ConfirmSignUp Types.ClientId
csuClientId = Lens.field @"clientId"
{-# DEPRECATED csuClientId "Use generic-lens or generic-optics with 'clientId' instead." #-}

-- | The user name of the user whose registration you wish to confirm.
--
-- /Note:/ Consider using 'username' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csuUsername :: Lens.Lens' ConfirmSignUp Types.Username
csuUsername = Lens.field @"username"
{-# DEPRECATED csuUsername "Use generic-lens or generic-optics with 'username' instead." #-}

-- | The confirmation code sent by a user's request to confirm registration.
--
-- /Note:/ Consider using 'confirmationCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csuConfirmationCode :: Lens.Lens' ConfirmSignUp Types.ConfirmationCode
csuConfirmationCode = Lens.field @"confirmationCode"
{-# DEPRECATED csuConfirmationCode "Use generic-lens or generic-optics with 'confirmationCode' instead." #-}

-- | The Amazon Pinpoint analytics metadata for collecting metrics for @ConfirmSignUp@ calls.
--
-- /Note:/ Consider using 'analyticsMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csuAnalyticsMetadata :: Lens.Lens' ConfirmSignUp (Core.Maybe Types.AnalyticsMetadataType)
csuAnalyticsMetadata = Lens.field @"analyticsMetadata"
{-# DEPRECATED csuAnalyticsMetadata "Use generic-lens or generic-optics with 'analyticsMetadata' instead." #-}

-- | A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
--
-- You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the ConfirmSignUp API action, Amazon Cognito invokes the function that is assigned to the /post confirmation/ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your ConfirmSignUp request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs.
-- For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
--
-- /Note:/ Consider using 'clientMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csuClientMetadata :: Lens.Lens' ConfirmSignUp (Core.Maybe (Core.HashMap Types.StringType Types.StringType))
csuClientMetadata = Lens.field @"clientMetadata"
{-# DEPRECATED csuClientMetadata "Use generic-lens or generic-optics with 'clientMetadata' instead." #-}

-- | Boolean to be specified to force user confirmation irrespective of existing alias. By default set to @False@ . If this parameter is set to @True@ and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to @False@ , the API will throw an __AliasExistsException__ error.
--
-- /Note:/ Consider using 'forceAliasCreation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csuForceAliasCreation :: Lens.Lens' ConfirmSignUp (Core.Maybe Core.Bool)
csuForceAliasCreation = Lens.field @"forceAliasCreation"
{-# DEPRECATED csuForceAliasCreation "Use generic-lens or generic-optics with 'forceAliasCreation' instead." #-}

-- | A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
--
-- /Note:/ Consider using 'secretHash' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csuSecretHash :: Lens.Lens' ConfirmSignUp (Core.Maybe Types.SecretHashType)
csuSecretHash = Lens.field @"secretHash"
{-# DEPRECATED csuSecretHash "Use generic-lens or generic-optics with 'secretHash' instead." #-}

-- | Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
--
-- /Note:/ Consider using 'userContextData' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csuUserContextData :: Lens.Lens' ConfirmSignUp (Core.Maybe Types.UserContextDataType)
csuUserContextData = Lens.field @"userContextData"
{-# DEPRECATED csuUserContextData "Use generic-lens or generic-optics with 'userContextData' instead." #-}

instance Core.FromJSON ConfirmSignUp where
  toJSON ConfirmSignUp {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ClientId" Core..= clientId),
            Core.Just ("Username" Core..= username),
            Core.Just ("ConfirmationCode" Core..= confirmationCode),
            ("AnalyticsMetadata" Core..=) Core.<$> analyticsMetadata,
            ("ClientMetadata" Core..=) Core.<$> clientMetadata,
            ("ForceAliasCreation" Core..=) Core.<$> forceAliasCreation,
            ("SecretHash" Core..=) Core.<$> secretHash,
            ("UserContextData" Core..=) Core.<$> userContextData
          ]
      )

instance Core.AWSRequest ConfirmSignUp where
  type Rs ConfirmSignUp = ConfirmSignUpResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AWSCognitoIdentityProviderService.ConfirmSignUp")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          ConfirmSignUpResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | Represents the response from the server for the registration confirmation.
--
-- /See:/ 'mkConfirmSignUpResponse' smart constructor.
newtype ConfirmSignUpResponse = ConfirmSignUpResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'ConfirmSignUpResponse' value with any optional fields omitted.
mkConfirmSignUpResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ConfirmSignUpResponse
mkConfirmSignUpResponse responseStatus =
  ConfirmSignUpResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csurrsResponseStatus :: Lens.Lens' ConfirmSignUpResponse Core.Int
csurrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED csurrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}