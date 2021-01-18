{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.CreateHIT
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @CreateHIT@ operation creates a new Human Intelligence Task (HIT). The new HIT is made available for Workers to find and accept on the Amazon Mechanical Turk website.
--
-- This operation allows you to specify a new HIT by passing in values for the properties of the HIT, such as its title, reward amount and number of assignments. When you pass these values to @CreateHIT@ , a new HIT is created for you, with a new @HITTypeID@ . The HITTypeID can be used to create additional HITs in the future without needing to specify common parameters such as the title, description and reward amount each time.
-- An alternative way to create HITs is to first generate a HITTypeID using the @CreateHITType@ operation and then call the @CreateHITWithHITType@ operation. This is the recommended best practice for Requesters who are creating large numbers of HITs.
-- CreateHIT also supports several ways to provide question data: by providing a value for the @Question@ parameter that fully specifies the contents of the HIT, or by providing a @HitLayoutId@ and associated @HitLayoutParameters@ .
module Network.AWS.MechanicalTurk.CreateHIT
  ( -- * Creating a request
    CreateHIT (..),
    mkCreateHIT,

    -- ** Request lenses
    chitLifetimeInSeconds,
    chitAssignmentDurationInSeconds,
    chitReward,
    chitTitle,
    chitDescription,
    chitAssignmentReviewPolicy,
    chitAutoApprovalDelayInSeconds,
    chitHITLayoutId,
    chitHITLayoutParameters,
    chitHITReviewPolicy,
    chitKeywords,
    chitMaxAssignments,
    chitQualificationRequirements,
    chitQuestion,
    chitRequesterAnnotation,
    chitUniqueRequestToken,

    -- * Destructuring the response
    CreateHITResponse (..),
    mkCreateHITResponse,

    -- ** Response lenses
    chitrrsHIT,
    chitrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MechanicalTurk.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateHIT' smart constructor.
data CreateHIT = CreateHIT'
  { -- | An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted.
    lifetimeInSeconds :: Core.Integer,
    -- | The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept.
    assignmentDurationInSeconds :: Core.Integer,
    -- | The amount of money the Requester will pay a Worker for successfully completing the HIT.
    reward :: Types.Reward,
    -- | The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned.
    title :: Types.String,
    -- | A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it.
    description :: Types.String,
    -- | The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy.
    assignmentReviewPolicy :: Core.Maybe Types.ReviewPolicy,
    -- | The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it.
    autoApprovalDelayInSeconds :: Core.Maybe Core.Integer,
    -- | The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters.
    --
    -- Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
    hITLayoutId :: Core.Maybe Types.HITLayoutId,
    -- | If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout.
    hITLayoutParameters :: Core.Maybe [Types.HITLayoutParameter],
    -- | The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy.
    hITReviewPolicy :: Core.Maybe Types.ReviewPolicy,
    -- | One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs.
    keywords :: Core.Maybe Types.String,
    -- | The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
    maxAssignments :: Core.Maybe Core.Int,
    -- | Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the @ActionsGuarded@ field on each @QualificationRequirement@ structure.
    qualificationRequirements :: Core.Maybe [Types.QualificationRequirement],
    -- | The data the person completing the HIT uses to produce the results.
    --
    -- Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace.
    -- Either a Question parameter or a HITLayoutId parameter must be provided.
    question :: Core.Maybe Types.String,
    -- | An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT.
    --
    -- The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester.
    -- The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped.
    requesterAnnotation :: Core.Maybe Types.String,
    -- | A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId.
    uniqueRequestToken :: Core.Maybe Types.IdempotencyToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateHIT' value with any optional fields omitted.
mkCreateHIT ::
  -- | 'lifetimeInSeconds'
  Core.Integer ->
  -- | 'assignmentDurationInSeconds'
  Core.Integer ->
  -- | 'reward'
  Types.Reward ->
  -- | 'title'
  Types.String ->
  -- | 'description'
  Types.String ->
  CreateHIT
mkCreateHIT
  lifetimeInSeconds
  assignmentDurationInSeconds
  reward
  title
  description =
    CreateHIT'
      { lifetimeInSeconds,
        assignmentDurationInSeconds,
        reward,
        title,
        description,
        assignmentReviewPolicy = Core.Nothing,
        autoApprovalDelayInSeconds = Core.Nothing,
        hITLayoutId = Core.Nothing,
        hITLayoutParameters = Core.Nothing,
        hITReviewPolicy = Core.Nothing,
        keywords = Core.Nothing,
        maxAssignments = Core.Nothing,
        qualificationRequirements = Core.Nothing,
        question = Core.Nothing,
        requesterAnnotation = Core.Nothing,
        uniqueRequestToken = Core.Nothing
      }

-- | An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted.
--
-- /Note:/ Consider using 'lifetimeInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitLifetimeInSeconds :: Lens.Lens' CreateHIT Core.Integer
chitLifetimeInSeconds = Lens.field @"lifetimeInSeconds"
{-# DEPRECATED chitLifetimeInSeconds "Use generic-lens or generic-optics with 'lifetimeInSeconds' instead." #-}

-- | The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept.
--
-- /Note:/ Consider using 'assignmentDurationInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitAssignmentDurationInSeconds :: Lens.Lens' CreateHIT Core.Integer
chitAssignmentDurationInSeconds = Lens.field @"assignmentDurationInSeconds"
{-# DEPRECATED chitAssignmentDurationInSeconds "Use generic-lens or generic-optics with 'assignmentDurationInSeconds' instead." #-}

-- | The amount of money the Requester will pay a Worker for successfully completing the HIT.
--
-- /Note:/ Consider using 'reward' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitReward :: Lens.Lens' CreateHIT Types.Reward
chitReward = Lens.field @"reward"
{-# DEPRECATED chitReward "Use generic-lens or generic-optics with 'reward' instead." #-}

-- | The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned.
--
-- /Note:/ Consider using 'title' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitTitle :: Lens.Lens' CreateHIT Types.String
chitTitle = Lens.field @"title"
{-# DEPRECATED chitTitle "Use generic-lens or generic-optics with 'title' instead." #-}

-- | A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitDescription :: Lens.Lens' CreateHIT Types.String
chitDescription = Lens.field @"description"
{-# DEPRECATED chitDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy.
--
-- /Note:/ Consider using 'assignmentReviewPolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitAssignmentReviewPolicy :: Lens.Lens' CreateHIT (Core.Maybe Types.ReviewPolicy)
chitAssignmentReviewPolicy = Lens.field @"assignmentReviewPolicy"
{-# DEPRECATED chitAssignmentReviewPolicy "Use generic-lens or generic-optics with 'assignmentReviewPolicy' instead." #-}

-- | The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it.
--
-- /Note:/ Consider using 'autoApprovalDelayInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitAutoApprovalDelayInSeconds :: Lens.Lens' CreateHIT (Core.Maybe Core.Integer)
chitAutoApprovalDelayInSeconds = Lens.field @"autoApprovalDelayInSeconds"
{-# DEPRECATED chitAutoApprovalDelayInSeconds "Use generic-lens or generic-optics with 'autoApprovalDelayInSeconds' instead." #-}

-- | The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters.
--
-- Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
--
-- /Note:/ Consider using 'hITLayoutId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitHITLayoutId :: Lens.Lens' CreateHIT (Core.Maybe Types.HITLayoutId)
chitHITLayoutId = Lens.field @"hITLayoutId"
{-# DEPRECATED chitHITLayoutId "Use generic-lens or generic-optics with 'hITLayoutId' instead." #-}

-- | If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout.
--
-- /Note:/ Consider using 'hITLayoutParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitHITLayoutParameters :: Lens.Lens' CreateHIT (Core.Maybe [Types.HITLayoutParameter])
chitHITLayoutParameters = Lens.field @"hITLayoutParameters"
{-# DEPRECATED chitHITLayoutParameters "Use generic-lens or generic-optics with 'hITLayoutParameters' instead." #-}

-- | The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy.
--
-- /Note:/ Consider using 'hITReviewPolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitHITReviewPolicy :: Lens.Lens' CreateHIT (Core.Maybe Types.ReviewPolicy)
chitHITReviewPolicy = Lens.field @"hITReviewPolicy"
{-# DEPRECATED chitHITReviewPolicy "Use generic-lens or generic-optics with 'hITReviewPolicy' instead." #-}

-- | One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs.
--
-- /Note:/ Consider using 'keywords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitKeywords :: Lens.Lens' CreateHIT (Core.Maybe Types.String)
chitKeywords = Lens.field @"keywords"
{-# DEPRECATED chitKeywords "Use generic-lens or generic-optics with 'keywords' instead." #-}

-- | The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
--
-- /Note:/ Consider using 'maxAssignments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitMaxAssignments :: Lens.Lens' CreateHIT (Core.Maybe Core.Int)
chitMaxAssignments = Lens.field @"maxAssignments"
{-# DEPRECATED chitMaxAssignments "Use generic-lens or generic-optics with 'maxAssignments' instead." #-}

-- | Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the @ActionsGuarded@ field on each @QualificationRequirement@ structure.
--
-- /Note:/ Consider using 'qualificationRequirements' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitQualificationRequirements :: Lens.Lens' CreateHIT (Core.Maybe [Types.QualificationRequirement])
chitQualificationRequirements = Lens.field @"qualificationRequirements"
{-# DEPRECATED chitQualificationRequirements "Use generic-lens or generic-optics with 'qualificationRequirements' instead." #-}

-- | The data the person completing the HIT uses to produce the results.
--
-- Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace.
-- Either a Question parameter or a HITLayoutId parameter must be provided.
--
-- /Note:/ Consider using 'question' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitQuestion :: Lens.Lens' CreateHIT (Core.Maybe Types.String)
chitQuestion = Lens.field @"question"
{-# DEPRECATED chitQuestion "Use generic-lens or generic-optics with 'question' instead." #-}

-- | An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT.
--
-- The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester.
-- The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped.
--
-- /Note:/ Consider using 'requesterAnnotation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitRequesterAnnotation :: Lens.Lens' CreateHIT (Core.Maybe Types.String)
chitRequesterAnnotation = Lens.field @"requesterAnnotation"
{-# DEPRECATED chitRequesterAnnotation "Use generic-lens or generic-optics with 'requesterAnnotation' instead." #-}

-- | A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId.
--
-- /Note:/ Consider using 'uniqueRequestToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitUniqueRequestToken :: Lens.Lens' CreateHIT (Core.Maybe Types.IdempotencyToken)
chitUniqueRequestToken = Lens.field @"uniqueRequestToken"
{-# DEPRECATED chitUniqueRequestToken "Use generic-lens or generic-optics with 'uniqueRequestToken' instead." #-}

instance Core.FromJSON CreateHIT where
  toJSON CreateHIT {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("LifetimeInSeconds" Core..= lifetimeInSeconds),
            Core.Just
              ( "AssignmentDurationInSeconds"
                  Core..= assignmentDurationInSeconds
              ),
            Core.Just ("Reward" Core..= reward),
            Core.Just ("Title" Core..= title),
            Core.Just ("Description" Core..= description),
            ("AssignmentReviewPolicy" Core..=) Core.<$> assignmentReviewPolicy,
            ("AutoApprovalDelayInSeconds" Core..=)
              Core.<$> autoApprovalDelayInSeconds,
            ("HITLayoutId" Core..=) Core.<$> hITLayoutId,
            ("HITLayoutParameters" Core..=) Core.<$> hITLayoutParameters,
            ("HITReviewPolicy" Core..=) Core.<$> hITReviewPolicy,
            ("Keywords" Core..=) Core.<$> keywords,
            ("MaxAssignments" Core..=) Core.<$> maxAssignments,
            ("QualificationRequirements" Core..=)
              Core.<$> qualificationRequirements,
            ("Question" Core..=) Core.<$> question,
            ("RequesterAnnotation" Core..=) Core.<$> requesterAnnotation,
            ("UniqueRequestToken" Core..=) Core.<$> uniqueRequestToken
          ]
      )

instance Core.AWSRequest CreateHIT where
  type Rs CreateHIT = CreateHITResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "MTurkRequesterServiceV20170117.CreateHIT")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateHITResponse'
            Core.<$> (x Core..:? "HIT") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateHITResponse' smart constructor.
data CreateHITResponse = CreateHITResponse'
  { -- | Contains the newly created HIT data. For a description of the HIT data structure as it appears in responses, see the HIT Data Structure documentation.
    hit :: Core.Maybe Types.HIT,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateHITResponse' value with any optional fields omitted.
mkCreateHITResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateHITResponse
mkCreateHITResponse responseStatus =
  CreateHITResponse' {hit = Core.Nothing, responseStatus}

-- | Contains the newly created HIT data. For a description of the HIT data structure as it appears in responses, see the HIT Data Structure documentation.
--
-- /Note:/ Consider using 'hit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitrrsHIT :: Lens.Lens' CreateHITResponse (Core.Maybe Types.HIT)
chitrrsHIT = Lens.field @"hit"
{-# DEPRECATED chitrrsHIT "Use generic-lens or generic-optics with 'hit' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chitrrsResponseStatus :: Lens.Lens' CreateHITResponse Core.Int
chitrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED chitrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}