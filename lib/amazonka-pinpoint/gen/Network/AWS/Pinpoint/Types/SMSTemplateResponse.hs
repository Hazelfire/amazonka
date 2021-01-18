{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SMSTemplateResponse
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SMSTemplateResponse
  ( SMSTemplateResponse (..),

    -- * Smart constructor
    mkSMSTemplateResponse,

    -- * Lenses
    smstrfLastModifiedDate,
    smstrfCreationDate,
    smstrfTemplateName,
    smstrfTemplateType,
    smstrfArn,
    smstrfBody,
    smstrfDefaultSubstitutions,
    smstrfRecommenderId,
    smstrfTemplateDescription,
    smstrfVersion,
    smstrfTags,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pinpoint.Types.TemplateType as Types
import qualified Network.AWS.Prelude as Core

-- | Provides information about the content and settings for a message template that can be used in text messages that are sent through the SMS channel.
--
-- /See:/ 'mkSMSTemplateResponse' smart constructor.
data SMSTemplateResponse = SMSTemplateResponse'
  { -- | The date, in ISO 8601 format, when the message template was last modified.
    lastModifiedDate :: Core.Text,
    -- | The date, in ISO 8601 format, when the message template was created.
    creationDate :: Core.Text,
    -- | The name of the message template.
    templateName :: Core.Text,
    -- | The type of channel that the message template is designed for. For an SMS template, this value is SMS.
    templateType :: Types.TemplateType,
    -- | The Amazon Resource Name (ARN) of the message template.
    arn :: Core.Maybe Core.Text,
    -- | The message body that's used in text messages that are based on the message template.
    body :: Core.Maybe Core.Text,
    -- | The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
    defaultSubstitutions :: Core.Maybe Core.Text,
    -- | The unique identifier for the recommender model that's used by the message template.
    recommenderId :: Core.Maybe Core.Text,
    -- | The custom description of the message template.
    templateDescription :: Core.Maybe Core.Text,
    -- | The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
    version :: Core.Maybe Core.Text,
    -- | A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
    tags :: Core.Maybe (Core.HashMap Core.Text Core.Text)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SMSTemplateResponse' value with any optional fields omitted.
mkSMSTemplateResponse ::
  -- | 'lastModifiedDate'
  Core.Text ->
  -- | 'creationDate'
  Core.Text ->
  -- | 'templateName'
  Core.Text ->
  -- | 'templateType'
  Types.TemplateType ->
  SMSTemplateResponse
mkSMSTemplateResponse
  lastModifiedDate
  creationDate
  templateName
  templateType =
    SMSTemplateResponse'
      { lastModifiedDate,
        creationDate,
        templateName,
        templateType,
        arn = Core.Nothing,
        body = Core.Nothing,
        defaultSubstitutions = Core.Nothing,
        recommenderId = Core.Nothing,
        templateDescription = Core.Nothing,
        version = Core.Nothing,
        tags = Core.Nothing
      }

-- | The date, in ISO 8601 format, when the message template was last modified.
--
-- /Note:/ Consider using 'lastModifiedDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfLastModifiedDate :: Lens.Lens' SMSTemplateResponse Core.Text
smstrfLastModifiedDate = Lens.field @"lastModifiedDate"
{-# DEPRECATED smstrfLastModifiedDate "Use generic-lens or generic-optics with 'lastModifiedDate' instead." #-}

-- | The date, in ISO 8601 format, when the message template was created.
--
-- /Note:/ Consider using 'creationDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfCreationDate :: Lens.Lens' SMSTemplateResponse Core.Text
smstrfCreationDate = Lens.field @"creationDate"
{-# DEPRECATED smstrfCreationDate "Use generic-lens or generic-optics with 'creationDate' instead." #-}

-- | The name of the message template.
--
-- /Note:/ Consider using 'templateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfTemplateName :: Lens.Lens' SMSTemplateResponse Core.Text
smstrfTemplateName = Lens.field @"templateName"
{-# DEPRECATED smstrfTemplateName "Use generic-lens or generic-optics with 'templateName' instead." #-}

-- | The type of channel that the message template is designed for. For an SMS template, this value is SMS.
--
-- /Note:/ Consider using 'templateType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfTemplateType :: Lens.Lens' SMSTemplateResponse Types.TemplateType
smstrfTemplateType = Lens.field @"templateType"
{-# DEPRECATED smstrfTemplateType "Use generic-lens or generic-optics with 'templateType' instead." #-}

-- | The Amazon Resource Name (ARN) of the message template.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfArn :: Lens.Lens' SMSTemplateResponse (Core.Maybe Core.Text)
smstrfArn = Lens.field @"arn"
{-# DEPRECATED smstrfArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The message body that's used in text messages that are based on the message template.
--
-- /Note:/ Consider using 'body' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfBody :: Lens.Lens' SMSTemplateResponse (Core.Maybe Core.Text)
smstrfBody = Lens.field @"body"
{-# DEPRECATED smstrfBody "Use generic-lens or generic-optics with 'body' instead." #-}

-- | The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
--
-- /Note:/ Consider using 'defaultSubstitutions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfDefaultSubstitutions :: Lens.Lens' SMSTemplateResponse (Core.Maybe Core.Text)
smstrfDefaultSubstitutions = Lens.field @"defaultSubstitutions"
{-# DEPRECATED smstrfDefaultSubstitutions "Use generic-lens or generic-optics with 'defaultSubstitutions' instead." #-}

-- | The unique identifier for the recommender model that's used by the message template.
--
-- /Note:/ Consider using 'recommenderId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfRecommenderId :: Lens.Lens' SMSTemplateResponse (Core.Maybe Core.Text)
smstrfRecommenderId = Lens.field @"recommenderId"
{-# DEPRECATED smstrfRecommenderId "Use generic-lens or generic-optics with 'recommenderId' instead." #-}

-- | The custom description of the message template.
--
-- /Note:/ Consider using 'templateDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfTemplateDescription :: Lens.Lens' SMSTemplateResponse (Core.Maybe Core.Text)
smstrfTemplateDescription = Lens.field @"templateDescription"
{-# DEPRECATED smstrfTemplateDescription "Use generic-lens or generic-optics with 'templateDescription' instead." #-}

-- | The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfVersion :: Lens.Lens' SMSTemplateResponse (Core.Maybe Core.Text)
smstrfVersion = Lens.field @"version"
{-# DEPRECATED smstrfVersion "Use generic-lens or generic-optics with 'version' instead." #-}

-- | A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smstrfTags :: Lens.Lens' SMSTemplateResponse (Core.Maybe (Core.HashMap Core.Text Core.Text))
smstrfTags = Lens.field @"tags"
{-# DEPRECATED smstrfTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.FromJSON SMSTemplateResponse where
  parseJSON =
    Core.withObject "SMSTemplateResponse" Core.$
      \x ->
        SMSTemplateResponse'
          Core.<$> (x Core..: "LastModifiedDate")
          Core.<*> (x Core..: "CreationDate")
          Core.<*> (x Core..: "TemplateName")
          Core.<*> (x Core..: "TemplateType")
          Core.<*> (x Core..:? "Arn")
          Core.<*> (x Core..:? "Body")
          Core.<*> (x Core..:? "DefaultSubstitutions")
          Core.<*> (x Core..:? "RecommenderId")
          Core.<*> (x Core..:? "TemplateDescription")
          Core.<*> (x Core..:? "Version")
          Core.<*> (x Core..:? "tags")