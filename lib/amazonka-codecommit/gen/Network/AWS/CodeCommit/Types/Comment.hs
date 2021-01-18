{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.Comment
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.Comment
  ( Comment (..),

    -- * Smart constructor
    mkComment,

    -- * Lenses
    cAuthorArn,
    cCallerReactions,
    cClientRequestToken,
    cCommentId,
    cContent,
    cCreationDate,
    cDeleted,
    cInReplyTo,
    cLastModifiedDate,
    cReactionCounts,
  )
where

import qualified Network.AWS.CodeCommit.Types.Arn as Types
import qualified Network.AWS.CodeCommit.Types.ClientRequestToken as Types
import qualified Network.AWS.CodeCommit.Types.CommentId as Types
import qualified Network.AWS.CodeCommit.Types.Content as Types
import qualified Network.AWS.CodeCommit.Types.InReplyTo as Types
import qualified Network.AWS.CodeCommit.Types.ReactionValue as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Returns information about a specific comment.
--
-- /See:/ 'mkComment' smart constructor.
data Comment = Comment'
  { -- | The Amazon Resource Name (ARN) of the person who posted the comment.
    authorArn :: Core.Maybe Types.Arn,
    -- | The emoji reactions to a comment, if any, submitted by the user whose credentials are associated with the call to the API.
    callerReactions :: Core.Maybe [Types.ReactionValue],
    -- | A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
    clientRequestToken :: Core.Maybe Types.ClientRequestToken,
    -- | The system-generated comment ID.
    commentId :: Core.Maybe Types.CommentId,
    -- | The content of the comment.
    content :: Core.Maybe Types.Content,
    -- | The date and time the comment was created, in timestamp format.
    creationDate :: Core.Maybe Core.NominalDiffTime,
    -- | A Boolean value indicating whether the comment has been deleted.
    deleted :: Core.Maybe Core.Bool,
    -- | The ID of the comment for which this comment is a reply, if any.
    inReplyTo :: Core.Maybe Types.InReplyTo,
    -- | The date and time the comment was most recently modified, in timestamp format.
    lastModifiedDate :: Core.Maybe Core.NominalDiffTime,
    -- | A string to integer map that represents the number of individual users who have responded to a comment with the specified reactions.
    reactionCounts :: Core.Maybe (Core.HashMap Types.ReactionValue Core.Int)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'Comment' value with any optional fields omitted.
mkComment ::
  Comment
mkComment =
  Comment'
    { authorArn = Core.Nothing,
      callerReactions = Core.Nothing,
      clientRequestToken = Core.Nothing,
      commentId = Core.Nothing,
      content = Core.Nothing,
      creationDate = Core.Nothing,
      deleted = Core.Nothing,
      inReplyTo = Core.Nothing,
      lastModifiedDate = Core.Nothing,
      reactionCounts = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) of the person who posted the comment.
--
-- /Note:/ Consider using 'authorArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cAuthorArn :: Lens.Lens' Comment (Core.Maybe Types.Arn)
cAuthorArn = Lens.field @"authorArn"
{-# DEPRECATED cAuthorArn "Use generic-lens or generic-optics with 'authorArn' instead." #-}

-- | The emoji reactions to a comment, if any, submitted by the user whose credentials are associated with the call to the API.
--
-- /Note:/ Consider using 'callerReactions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cCallerReactions :: Lens.Lens' Comment (Core.Maybe [Types.ReactionValue])
cCallerReactions = Lens.field @"callerReactions"
{-# DEPRECATED cCallerReactions "Use generic-lens or generic-optics with 'callerReactions' instead." #-}

-- | A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
--
-- /Note:/ Consider using 'clientRequestToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cClientRequestToken :: Lens.Lens' Comment (Core.Maybe Types.ClientRequestToken)
cClientRequestToken = Lens.field @"clientRequestToken"
{-# DEPRECATED cClientRequestToken "Use generic-lens or generic-optics with 'clientRequestToken' instead." #-}

-- | The system-generated comment ID.
--
-- /Note:/ Consider using 'commentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cCommentId :: Lens.Lens' Comment (Core.Maybe Types.CommentId)
cCommentId = Lens.field @"commentId"
{-# DEPRECATED cCommentId "Use generic-lens or generic-optics with 'commentId' instead." #-}

-- | The content of the comment.
--
-- /Note:/ Consider using 'content' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cContent :: Lens.Lens' Comment (Core.Maybe Types.Content)
cContent = Lens.field @"content"
{-# DEPRECATED cContent "Use generic-lens or generic-optics with 'content' instead." #-}

-- | The date and time the comment was created, in timestamp format.
--
-- /Note:/ Consider using 'creationDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cCreationDate :: Lens.Lens' Comment (Core.Maybe Core.NominalDiffTime)
cCreationDate = Lens.field @"creationDate"
{-# DEPRECATED cCreationDate "Use generic-lens or generic-optics with 'creationDate' instead." #-}

-- | A Boolean value indicating whether the comment has been deleted.
--
-- /Note:/ Consider using 'deleted' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cDeleted :: Lens.Lens' Comment (Core.Maybe Core.Bool)
cDeleted = Lens.field @"deleted"
{-# DEPRECATED cDeleted "Use generic-lens or generic-optics with 'deleted' instead." #-}

-- | The ID of the comment for which this comment is a reply, if any.
--
-- /Note:/ Consider using 'inReplyTo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cInReplyTo :: Lens.Lens' Comment (Core.Maybe Types.InReplyTo)
cInReplyTo = Lens.field @"inReplyTo"
{-# DEPRECATED cInReplyTo "Use generic-lens or generic-optics with 'inReplyTo' instead." #-}

-- | The date and time the comment was most recently modified, in timestamp format.
--
-- /Note:/ Consider using 'lastModifiedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cLastModifiedDate :: Lens.Lens' Comment (Core.Maybe Core.NominalDiffTime)
cLastModifiedDate = Lens.field @"lastModifiedDate"
{-# DEPRECATED cLastModifiedDate "Use generic-lens or generic-optics with 'lastModifiedDate' instead." #-}

-- | A string to integer map that represents the number of individual users who have responded to a comment with the specified reactions.
--
-- /Note:/ Consider using 'reactionCounts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cReactionCounts :: Lens.Lens' Comment (Core.Maybe (Core.HashMap Types.ReactionValue Core.Int))
cReactionCounts = Lens.field @"reactionCounts"
{-# DEPRECATED cReactionCounts "Use generic-lens or generic-optics with 'reactionCounts' instead." #-}

instance Core.FromJSON Comment where
  parseJSON =
    Core.withObject "Comment" Core.$
      \x ->
        Comment'
          Core.<$> (x Core..:? "authorArn")
          Core.<*> (x Core..:? "callerReactions")
          Core.<*> (x Core..:? "clientRequestToken")
          Core.<*> (x Core..:? "commentId")
          Core.<*> (x Core..:? "content")
          Core.<*> (x Core..:? "creationDate")
          Core.<*> (x Core..:? "deleted")
          Core.<*> (x Core..:? "inReplyTo")
          Core.<*> (x Core..:? "lastModifiedDate")
          Core.<*> (x Core..:? "reactionCounts")