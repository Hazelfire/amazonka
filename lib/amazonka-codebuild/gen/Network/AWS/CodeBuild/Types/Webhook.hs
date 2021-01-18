{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.Webhook
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.Webhook
  ( Webhook (..),

    -- * Smart constructor
    mkWebhook,

    -- * Lenses
    wBranchFilter,
    wBuildType,
    wFilterGroups,
    wLastModifiedSecret,
    wPayloadUrl,
    wSecret,
    wUrl,
  )
where

import qualified Network.AWS.CodeBuild.Types.NonEmptyString as Types
import qualified Network.AWS.CodeBuild.Types.String as Types
import qualified Network.AWS.CodeBuild.Types.WebhookBuildType as Types
import qualified Network.AWS.CodeBuild.Types.WebhookFilter as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Information about a webhook that connects repository events to a build project in AWS CodeBuild.
--
-- /See:/ 'mkWebhook' smart constructor.
data Webhook = Webhook'
  { -- | A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If @branchFilter@ is empty, then all branches are built.
    branchFilter :: Core.Maybe Types.String,
    -- | Specifies the type of build this webhook will trigger.
    buildType :: Core.Maybe Types.WebhookBuildType,
    -- | An array of arrays of @WebhookFilter@ objects used to determine which webhooks are triggered. At least one @WebhookFilter@ in the array must specify @EVENT@ as its @type@ .
    --
    -- For a build to be triggered, at least one filter group in the @filterGroups@ array must pass. For a filter group to pass, each of its filters must pass.
    filterGroups :: Core.Maybe [[Types.WebhookFilter]],
    -- | A timestamp that indicates the last time a repository's secret token was modified.
    lastModifiedSecret :: Core.Maybe Core.NominalDiffTime,
    -- | The AWS CodeBuild endpoint where webhook events are sent.
    payloadUrl :: Core.Maybe Types.NonEmptyString,
    -- | The secret token of the associated repository.
    secret :: Core.Maybe Types.NonEmptyString,
    -- | The URL to the webhook.
    url :: Core.Maybe Types.NonEmptyString
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'Webhook' value with any optional fields omitted.
mkWebhook ::
  Webhook
mkWebhook =
  Webhook'
    { branchFilter = Core.Nothing,
      buildType = Core.Nothing,
      filterGroups = Core.Nothing,
      lastModifiedSecret = Core.Nothing,
      payloadUrl = Core.Nothing,
      secret = Core.Nothing,
      url = Core.Nothing
    }

-- | A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If @branchFilter@ is empty, then all branches are built.
--
-- /Note:/ Consider using 'branchFilter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wBranchFilter :: Lens.Lens' Webhook (Core.Maybe Types.String)
wBranchFilter = Lens.field @"branchFilter"
{-# DEPRECATED wBranchFilter "Use generic-lens or generic-optics with 'branchFilter' instead." #-}

-- | Specifies the type of build this webhook will trigger.
--
-- /Note:/ Consider using 'buildType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wBuildType :: Lens.Lens' Webhook (Core.Maybe Types.WebhookBuildType)
wBuildType = Lens.field @"buildType"
{-# DEPRECATED wBuildType "Use generic-lens or generic-optics with 'buildType' instead." #-}

-- | An array of arrays of @WebhookFilter@ objects used to determine which webhooks are triggered. At least one @WebhookFilter@ in the array must specify @EVENT@ as its @type@ .
--
-- For a build to be triggered, at least one filter group in the @filterGroups@ array must pass. For a filter group to pass, each of its filters must pass.
--
-- /Note:/ Consider using 'filterGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wFilterGroups :: Lens.Lens' Webhook (Core.Maybe [[Types.WebhookFilter]])
wFilterGroups = Lens.field @"filterGroups"
{-# DEPRECATED wFilterGroups "Use generic-lens or generic-optics with 'filterGroups' instead." #-}

-- | A timestamp that indicates the last time a repository's secret token was modified.
--
-- /Note:/ Consider using 'lastModifiedSecret' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wLastModifiedSecret :: Lens.Lens' Webhook (Core.Maybe Core.NominalDiffTime)
wLastModifiedSecret = Lens.field @"lastModifiedSecret"
{-# DEPRECATED wLastModifiedSecret "Use generic-lens or generic-optics with 'lastModifiedSecret' instead." #-}

-- | The AWS CodeBuild endpoint where webhook events are sent.
--
-- /Note:/ Consider using 'payloadUrl' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wPayloadUrl :: Lens.Lens' Webhook (Core.Maybe Types.NonEmptyString)
wPayloadUrl = Lens.field @"payloadUrl"
{-# DEPRECATED wPayloadUrl "Use generic-lens or generic-optics with 'payloadUrl' instead." #-}

-- | The secret token of the associated repository.
--
-- /Note:/ Consider using 'secret' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wSecret :: Lens.Lens' Webhook (Core.Maybe Types.NonEmptyString)
wSecret = Lens.field @"secret"
{-# DEPRECATED wSecret "Use generic-lens or generic-optics with 'secret' instead." #-}

-- | The URL to the webhook.
--
-- /Note:/ Consider using 'url' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wUrl :: Lens.Lens' Webhook (Core.Maybe Types.NonEmptyString)
wUrl = Lens.field @"url"
{-# DEPRECATED wUrl "Use generic-lens or generic-optics with 'url' instead." #-}

instance Core.FromJSON Webhook where
  parseJSON =
    Core.withObject "Webhook" Core.$
      \x ->
        Webhook'
          Core.<$> (x Core..:? "branchFilter")
          Core.<*> (x Core..:? "buildType")
          Core.<*> (x Core..:? "filterGroups")
          Core.<*> (x Core..:? "lastModifiedSecret")
          Core.<*> (x Core..:? "payloadUrl")
          Core.<*> (x Core..:? "secret")
          Core.<*> (x Core..:? "url")