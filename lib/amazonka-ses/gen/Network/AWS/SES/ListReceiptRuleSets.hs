{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.ListReceiptRuleSets
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the receipt rule sets that exist under your AWS account in the current AWS Region. If there are additional receipt rule sets to be retrieved, you will receive a @NextToken@ that you can provide to the next call to @ListReceiptRuleSets@ to retrieve the additional entries.
--
-- For information about managing receipt rule sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html Amazon SES Developer Guide> .
-- You can execute this operation no more than once per second.
--
-- This operation returns paginated results.
module Network.AWS.SES.ListReceiptRuleSets
  ( -- * Creating a request
    ListReceiptRuleSets (..),
    mkListReceiptRuleSets,

    -- ** Request lenses
    lrrsNextToken,

    -- * Destructuring the response
    ListReceiptRuleSetsResponse (..),
    mkListReceiptRuleSetsResponse,

    -- ** Response lenses
    lrrsrrsNextToken,
    lrrsrrsRuleSets,
    lrrsrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to list the receipt rule sets that exist under your AWS account. You use receipt rule sets to receive email with Amazon SES. For more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkListReceiptRuleSets' smart constructor.
newtype ListReceiptRuleSets = ListReceiptRuleSets'
  { -- | A token returned from a previous call to @ListReceiptRuleSets@ to indicate the position in the receipt rule set list.
    nextToken :: Core.Maybe Types.NextToken
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'ListReceiptRuleSets' value with any optional fields omitted.
mkListReceiptRuleSets ::
  ListReceiptRuleSets
mkListReceiptRuleSets =
  ListReceiptRuleSets' {nextToken = Core.Nothing}

-- | A token returned from a previous call to @ListReceiptRuleSets@ to indicate the position in the receipt rule set list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrrsNextToken :: Lens.Lens' ListReceiptRuleSets (Core.Maybe Types.NextToken)
lrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.AWSRequest ListReceiptRuleSets where
  type Rs ListReceiptRuleSets = ListReceiptRuleSetsResponse
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
            ( Core.pure ("Action", "ListReceiptRuleSets")
                Core.<> (Core.pure ("Version", "2010-12-01"))
                Core.<> (Core.toQueryValue "NextToken" Core.<$> nextToken)
            )
      }
  response =
    Response.receiveXMLWrapper
      "ListReceiptRuleSetsResult"
      ( \s h x ->
          ListReceiptRuleSetsResponse'
            Core.<$> (x Core..@? "NextToken")
            Core.<*> (x Core..@? "RuleSets" Core..<@> Core.parseXMLList "member")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListReceiptRuleSets where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
    | Pager.stop (rs Lens.^? Lens.field @"ruleSets" Core.. Lens._Just) =
      Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken"
        )

-- | A list of receipt rule sets that exist under your AWS account.
--
-- /See:/ 'mkListReceiptRuleSetsResponse' smart constructor.
data ListReceiptRuleSetsResponse = ListReceiptRuleSetsResponse'
  { -- | A token indicating that there are additional receipt rule sets available to be listed. Pass this token to successive calls of @ListReceiptRuleSets@ to retrieve up to 100 receipt rule sets at a time.
    nextToken :: Core.Maybe Types.NextToken,
    -- | The metadata for the currently active receipt rule set. The metadata consists of the rule set name and the timestamp of when the rule set was created.
    ruleSets :: Core.Maybe [Types.ReceiptRuleSetMetadata],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListReceiptRuleSetsResponse' value with any optional fields omitted.
mkListReceiptRuleSetsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListReceiptRuleSetsResponse
mkListReceiptRuleSetsResponse responseStatus =
  ListReceiptRuleSetsResponse'
    { nextToken = Core.Nothing,
      ruleSets = Core.Nothing,
      responseStatus
    }

-- | A token indicating that there are additional receipt rule sets available to be listed. Pass this token to successive calls of @ListReceiptRuleSets@ to retrieve up to 100 receipt rule sets at a time.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrrsrrsNextToken :: Lens.Lens' ListReceiptRuleSetsResponse (Core.Maybe Types.NextToken)
lrrsrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED lrrsrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The metadata for the currently active receipt rule set. The metadata consists of the rule set name and the timestamp of when the rule set was created.
--
-- /Note:/ Consider using 'ruleSets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrrsrrsRuleSets :: Lens.Lens' ListReceiptRuleSetsResponse (Core.Maybe [Types.ReceiptRuleSetMetadata])
lrrsrrsRuleSets = Lens.field @"ruleSets"
{-# DEPRECATED lrrsrrsRuleSets "Use generic-lens or generic-optics with 'ruleSets' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrrsrrsResponseStatus :: Lens.Lens' ListReceiptRuleSetsResponse Core.Int
lrrsrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lrrsrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}