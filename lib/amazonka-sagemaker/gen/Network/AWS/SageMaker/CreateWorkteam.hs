{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.CreateWorkteam
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new work team for labeling your data. A work team is defined by one or more Amazon Cognito user pools. You must first create the user pools before you can create a work team.
--
-- You cannot create more than 25 work teams in an account and region.
module Network.AWS.SageMaker.CreateWorkteam
  ( -- * Creating a request
    CreateWorkteam (..),
    mkCreateWorkteam,

    -- ** Request lenses
    cwWorkteamName,
    cwMemberDefinitions,
    cwDescription,
    cwNotificationConfiguration,
    cwTags,
    cwWorkforceName,

    -- * Destructuring the response
    CreateWorkteamResponse (..),
    mkCreateWorkteamResponse,

    -- ** Response lenses
    cwrfrsWorkteamArn,
    cwrfrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SageMaker.Types as Types

-- | /See:/ 'mkCreateWorkteam' smart constructor.
data CreateWorkteam = CreateWorkteam'
  { -- | The name of the work team. Use this name to identify the work team.
    workteamName :: Types.WorkteamName,
    -- | A list of @MemberDefinition@ objects that contains objects that identify the workers that make up the work team.
    --
    -- Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use @CognitoMemberDefinition@ . For workforces created using your own OIDC identity provider (IdP) use @OidcMemberDefinition@ . Do not provide input for both of these parameters in a single request.
    -- For workforces created using Amazon Cognito, private work teams correspond to Amazon Cognito /user groups/ within the user pool used to create a workforce. All of the @CognitoMemberDefinition@ objects that make up the member definition must have the same @ClientId@ and @UserPool@ values. To add a Amazon Cognito user group to an existing worker pool, see < Adding groups to a User Pool> . For more information about user pools, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito User Pools> .
    -- For workforces created using your own OIDC IdP, specify the user groups that you want to include in your private work team in @OidcMemberDefinition@ by listing those groups in @Groups@ .
    memberDefinitions :: Core.NonEmpty Types.MemberDefinition,
    -- | A description of the work team.
    description :: Types.String200,
    -- | Configures notification of workers regarding available or expiring work items.
    notificationConfiguration :: Core.Maybe Types.NotificationConfiguration,
    -- | An array of key-value pairs.
    --
    -- For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html Resource Tag> and <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
    tags :: Core.Maybe [Types.Tag],
    -- | The name of the workforce.
    workforceName :: Core.Maybe Types.WorkforceName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateWorkteam' value with any optional fields omitted.
mkCreateWorkteam ::
  -- | 'workteamName'
  Types.WorkteamName ->
  -- | 'memberDefinitions'
  Core.NonEmpty Types.MemberDefinition ->
  -- | 'description'
  Types.String200 ->
  CreateWorkteam
mkCreateWorkteam workteamName memberDefinitions description =
  CreateWorkteam'
    { workteamName,
      memberDefinitions,
      description,
      notificationConfiguration = Core.Nothing,
      tags = Core.Nothing,
      workforceName = Core.Nothing
    }

-- | The name of the work team. Use this name to identify the work team.
--
-- /Note:/ Consider using 'workteamName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cwWorkteamName :: Lens.Lens' CreateWorkteam Types.WorkteamName
cwWorkteamName = Lens.field @"workteamName"
{-# DEPRECATED cwWorkteamName "Use generic-lens or generic-optics with 'workteamName' instead." #-}

-- | A list of @MemberDefinition@ objects that contains objects that identify the workers that make up the work team.
--
-- Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use @CognitoMemberDefinition@ . For workforces created using your own OIDC identity provider (IdP) use @OidcMemberDefinition@ . Do not provide input for both of these parameters in a single request.
-- For workforces created using Amazon Cognito, private work teams correspond to Amazon Cognito /user groups/ within the user pool used to create a workforce. All of the @CognitoMemberDefinition@ objects that make up the member definition must have the same @ClientId@ and @UserPool@ values. To add a Amazon Cognito user group to an existing worker pool, see < Adding groups to a User Pool> . For more information about user pools, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito User Pools> .
-- For workforces created using your own OIDC IdP, specify the user groups that you want to include in your private work team in @OidcMemberDefinition@ by listing those groups in @Groups@ .
--
-- /Note:/ Consider using 'memberDefinitions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cwMemberDefinitions :: Lens.Lens' CreateWorkteam (Core.NonEmpty Types.MemberDefinition)
cwMemberDefinitions = Lens.field @"memberDefinitions"
{-# DEPRECATED cwMemberDefinitions "Use generic-lens or generic-optics with 'memberDefinitions' instead." #-}

-- | A description of the work team.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cwDescription :: Lens.Lens' CreateWorkteam Types.String200
cwDescription = Lens.field @"description"
{-# DEPRECATED cwDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Configures notification of workers regarding available or expiring work items.
--
-- /Note:/ Consider using 'notificationConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cwNotificationConfiguration :: Lens.Lens' CreateWorkteam (Core.Maybe Types.NotificationConfiguration)
cwNotificationConfiguration = Lens.field @"notificationConfiguration"
{-# DEPRECATED cwNotificationConfiguration "Use generic-lens or generic-optics with 'notificationConfiguration' instead." #-}

-- | An array of key-value pairs.
--
-- For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html Resource Tag> and <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cwTags :: Lens.Lens' CreateWorkteam (Core.Maybe [Types.Tag])
cwTags = Lens.field @"tags"
{-# DEPRECATED cwTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The name of the workforce.
--
-- /Note:/ Consider using 'workforceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cwWorkforceName :: Lens.Lens' CreateWorkteam (Core.Maybe Types.WorkforceName)
cwWorkforceName = Lens.field @"workforceName"
{-# DEPRECATED cwWorkforceName "Use generic-lens or generic-optics with 'workforceName' instead." #-}

instance Core.FromJSON CreateWorkteam where
  toJSON CreateWorkteam {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("WorkteamName" Core..= workteamName),
            Core.Just ("MemberDefinitions" Core..= memberDefinitions),
            Core.Just ("Description" Core..= description),
            ("NotificationConfiguration" Core..=)
              Core.<$> notificationConfiguration,
            ("Tags" Core..=) Core.<$> tags,
            ("WorkforceName" Core..=) Core.<$> workforceName
          ]
      )

instance Core.AWSRequest CreateWorkteam where
  type Rs CreateWorkteam = CreateWorkteamResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "SageMaker.CreateWorkteam")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWorkteamResponse'
            Core.<$> (x Core..:? "WorkteamArn") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateWorkteamResponse' smart constructor.
data CreateWorkteamResponse = CreateWorkteamResponse'
  { -- | The Amazon Resource Name (ARN) of the work team. You can use this ARN to identify the work team.
    workteamArn :: Core.Maybe Types.WorkteamArn,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateWorkteamResponse' value with any optional fields omitted.
mkCreateWorkteamResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateWorkteamResponse
mkCreateWorkteamResponse responseStatus =
  CreateWorkteamResponse'
    { workteamArn = Core.Nothing,
      responseStatus
    }

-- | The Amazon Resource Name (ARN) of the work team. You can use this ARN to identify the work team.
--
-- /Note:/ Consider using 'workteamArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cwrfrsWorkteamArn :: Lens.Lens' CreateWorkteamResponse (Core.Maybe Types.WorkteamArn)
cwrfrsWorkteamArn = Lens.field @"workteamArn"
{-# DEPRECATED cwrfrsWorkteamArn "Use generic-lens or generic-optics with 'workteamArn' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cwrfrsResponseStatus :: Lens.Lens' CreateWorkteamResponse Core.Int
cwrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED cwrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}