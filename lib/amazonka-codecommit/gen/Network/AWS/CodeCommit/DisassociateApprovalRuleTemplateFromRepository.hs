{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.DisassociateApprovalRuleTemplateFromRepository
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the association between a template and a repository so that approval rules based on the template are not automatically created when pull requests are created in the specified repository. This does not delete any approval rules previously created for pull requests through the template association.
module Network.AWS.CodeCommit.DisassociateApprovalRuleTemplateFromRepository
  ( -- * Creating a request
    DisassociateApprovalRuleTemplateFromRepository (..),
    mkDisassociateApprovalRuleTemplateFromRepository,

    -- ** Request lenses
    dartfrApprovalRuleTemplateName,
    dartfrRepositoryName,

    -- * Destructuring the response
    DisassociateApprovalRuleTemplateFromRepositoryResponse (..),
    mkDisassociateApprovalRuleTemplateFromRepositoryResponse,
  )
where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDisassociateApprovalRuleTemplateFromRepository' smart constructor.
data DisassociateApprovalRuleTemplateFromRepository = DisassociateApprovalRuleTemplateFromRepository'
  { -- | The name of the approval rule template to disassociate from a specified repository.
    approvalRuleTemplateName :: Types.ApprovalRuleTemplateName,
    -- | The name of the repository you want to disassociate from the template.
    repositoryName :: Types.RepositoryName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DisassociateApprovalRuleTemplateFromRepository' value with any optional fields omitted.
mkDisassociateApprovalRuleTemplateFromRepository ::
  -- | 'approvalRuleTemplateName'
  Types.ApprovalRuleTemplateName ->
  -- | 'repositoryName'
  Types.RepositoryName ->
  DisassociateApprovalRuleTemplateFromRepository
mkDisassociateApprovalRuleTemplateFromRepository
  approvalRuleTemplateName
  repositoryName =
    DisassociateApprovalRuleTemplateFromRepository'
      { approvalRuleTemplateName,
        repositoryName
      }

-- | The name of the approval rule template to disassociate from a specified repository.
--
-- /Note:/ Consider using 'approvalRuleTemplateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dartfrApprovalRuleTemplateName :: Lens.Lens' DisassociateApprovalRuleTemplateFromRepository Types.ApprovalRuleTemplateName
dartfrApprovalRuleTemplateName = Lens.field @"approvalRuleTemplateName"
{-# DEPRECATED dartfrApprovalRuleTemplateName "Use generic-lens or generic-optics with 'approvalRuleTemplateName' instead." #-}

-- | The name of the repository you want to disassociate from the template.
--
-- /Note:/ Consider using 'repositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dartfrRepositoryName :: Lens.Lens' DisassociateApprovalRuleTemplateFromRepository Types.RepositoryName
dartfrRepositoryName = Lens.field @"repositoryName"
{-# DEPRECATED dartfrRepositoryName "Use generic-lens or generic-optics with 'repositoryName' instead." #-}

instance
  Core.FromJSON
    DisassociateApprovalRuleTemplateFromRepository
  where
  toJSON DisassociateApprovalRuleTemplateFromRepository {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("approvalRuleTemplateName" Core..= approvalRuleTemplateName),
            Core.Just ("repositoryName" Core..= repositoryName)
          ]
      )

instance
  Core.AWSRequest
    DisassociateApprovalRuleTemplateFromRepository
  where
  type
    Rs DisassociateApprovalRuleTemplateFromRepository =
      DisassociateApprovalRuleTemplateFromRepositoryResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "CodeCommit_20150413.DisassociateApprovalRuleTemplateFromRepository"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveNull
      DisassociateApprovalRuleTemplateFromRepositoryResponse'

-- | /See:/ 'mkDisassociateApprovalRuleTemplateFromRepositoryResponse' smart constructor.
data DisassociateApprovalRuleTemplateFromRepositoryResponse = DisassociateApprovalRuleTemplateFromRepositoryResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DisassociateApprovalRuleTemplateFromRepositoryResponse' value with any optional fields omitted.
mkDisassociateApprovalRuleTemplateFromRepositoryResponse ::
  DisassociateApprovalRuleTemplateFromRepositoryResponse
mkDisassociateApprovalRuleTemplateFromRepositoryResponse =
  DisassociateApprovalRuleTemplateFromRepositoryResponse'