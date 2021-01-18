{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.CreateChannel
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new channel
module Network.AWS.MediaLive.CreateChannel
  ( -- * Creating a request
    CreateChannel (..),
    mkCreateChannel,

    -- ** Request lenses
    ccCdiInputSpecification,
    ccChannelClass,
    ccDestinations,
    ccEncoderSettings,
    ccInputAttachments,
    ccInputSpecification,
    ccLogLevel,
    ccName,
    ccRequestId,
    ccReserved,
    ccRoleArn,
    ccTags,

    -- * Destructuring the response
    CreateChannelResponse (..),
    mkCreateChannelResponse,

    -- ** Response lenses
    ccrrsChannel,
    ccrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaLive.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to create a channel
--
-- /See:/ 'mkCreateChannel' smart constructor.
data CreateChannel = CreateChannel'
  { -- | Specification of CDI inputs for this channel
    cdiInputSpecification :: Core.Maybe Types.CdiInputSpecification,
    -- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    channelClass :: Core.Maybe Types.ChannelClass,
    destinations :: Core.Maybe [Types.OutputDestination],
    encoderSettings :: Core.Maybe Types.EncoderSettings,
    -- | List of input attachments for channel.
    inputAttachments :: Core.Maybe [Types.InputAttachment],
    -- | Specification of network and file inputs for this channel
    inputSpecification :: Core.Maybe Types.InputSpecification,
    -- | The log level to write to CloudWatch Logs.
    logLevel :: Core.Maybe Types.LogLevel,
    -- | Name of channel.
    name :: Core.Maybe Core.Text,
    -- | Unique request ID to be specified. This is needed to prevent retries from
    --
    -- creating multiple resources.
    requestId :: Core.Maybe Core.Text,
    -- | Deprecated field that's only usable by whitelisted customers.
    reserved :: Core.Maybe Core.Text,
    -- | An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.
    roleArn :: Core.Maybe Core.Text,
    -- | A collection of key-value pairs.
    tags :: Core.Maybe (Core.HashMap Core.Text Core.Text)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateChannel' value with any optional fields omitted.
mkCreateChannel ::
  CreateChannel
mkCreateChannel =
  CreateChannel'
    { cdiInputSpecification = Core.Nothing,
      channelClass = Core.Nothing,
      destinations = Core.Nothing,
      encoderSettings = Core.Nothing,
      inputAttachments = Core.Nothing,
      inputSpecification = Core.Nothing,
      logLevel = Core.Nothing,
      name = Core.Nothing,
      requestId = Core.Nothing,
      reserved = Core.Nothing,
      roleArn = Core.Nothing,
      tags = Core.Nothing
    }

-- | Specification of CDI inputs for this channel
--
-- /Note:/ Consider using 'cdiInputSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccCdiInputSpecification :: Lens.Lens' CreateChannel (Core.Maybe Types.CdiInputSpecification)
ccCdiInputSpecification = Lens.field @"cdiInputSpecification"
{-# DEPRECATED ccCdiInputSpecification "Use generic-lens or generic-optics with 'cdiInputSpecification' instead." #-}

-- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
--
-- /Note:/ Consider using 'channelClass' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccChannelClass :: Lens.Lens' CreateChannel (Core.Maybe Types.ChannelClass)
ccChannelClass = Lens.field @"channelClass"
{-# DEPRECATED ccChannelClass "Use generic-lens or generic-optics with 'channelClass' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'destinations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccDestinations :: Lens.Lens' CreateChannel (Core.Maybe [Types.OutputDestination])
ccDestinations = Lens.field @"destinations"
{-# DEPRECATED ccDestinations "Use generic-lens or generic-optics with 'destinations' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'encoderSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccEncoderSettings :: Lens.Lens' CreateChannel (Core.Maybe Types.EncoderSettings)
ccEncoderSettings = Lens.field @"encoderSettings"
{-# DEPRECATED ccEncoderSettings "Use generic-lens or generic-optics with 'encoderSettings' instead." #-}

-- | List of input attachments for channel.
--
-- /Note:/ Consider using 'inputAttachments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccInputAttachments :: Lens.Lens' CreateChannel (Core.Maybe [Types.InputAttachment])
ccInputAttachments = Lens.field @"inputAttachments"
{-# DEPRECATED ccInputAttachments "Use generic-lens or generic-optics with 'inputAttachments' instead." #-}

-- | Specification of network and file inputs for this channel
--
-- /Note:/ Consider using 'inputSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccInputSpecification :: Lens.Lens' CreateChannel (Core.Maybe Types.InputSpecification)
ccInputSpecification = Lens.field @"inputSpecification"
{-# DEPRECATED ccInputSpecification "Use generic-lens or generic-optics with 'inputSpecification' instead." #-}

-- | The log level to write to CloudWatch Logs.
--
-- /Note:/ Consider using 'logLevel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccLogLevel :: Lens.Lens' CreateChannel (Core.Maybe Types.LogLevel)
ccLogLevel = Lens.field @"logLevel"
{-# DEPRECATED ccLogLevel "Use generic-lens or generic-optics with 'logLevel' instead." #-}

-- | Name of channel.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccName :: Lens.Lens' CreateChannel (Core.Maybe Core.Text)
ccName = Lens.field @"name"
{-# DEPRECATED ccName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | Unique request ID to be specified. This is needed to prevent retries from
--
-- creating multiple resources.
--
-- /Note:/ Consider using 'requestId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccRequestId :: Lens.Lens' CreateChannel (Core.Maybe Core.Text)
ccRequestId = Lens.field @"requestId"
{-# DEPRECATED ccRequestId "Use generic-lens or generic-optics with 'requestId' instead." #-}

-- | Deprecated field that's only usable by whitelisted customers.
--
-- /Note:/ Consider using 'reserved' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccReserved :: Lens.Lens' CreateChannel (Core.Maybe Core.Text)
ccReserved = Lens.field @"reserved"
{-# DEPRECATED ccReserved "Use generic-lens or generic-optics with 'reserved' instead." #-}

-- | An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccRoleArn :: Lens.Lens' CreateChannel (Core.Maybe Core.Text)
ccRoleArn = Lens.field @"roleArn"
{-# DEPRECATED ccRoleArn "Use generic-lens or generic-optics with 'roleArn' instead." #-}

-- | A collection of key-value pairs.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccTags :: Lens.Lens' CreateChannel (Core.Maybe (Core.HashMap Core.Text Core.Text))
ccTags = Lens.field @"tags"
{-# DEPRECATED ccTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Core.FromJSON CreateChannel where
  toJSON CreateChannel {..} =
    Core.object
      ( Core.catMaybes
          [ ("cdiInputSpecification" Core..=) Core.<$> cdiInputSpecification,
            ("channelClass" Core..=) Core.<$> channelClass,
            ("destinations" Core..=) Core.<$> destinations,
            ("encoderSettings" Core..=) Core.<$> encoderSettings,
            ("inputAttachments" Core..=) Core.<$> inputAttachments,
            ("inputSpecification" Core..=) Core.<$> inputSpecification,
            ("logLevel" Core..=) Core.<$> logLevel,
            ("name" Core..=) Core.<$> name,
            ("requestId" Core..=) Core.<$> requestId,
            ("reserved" Core..=) Core.<$> reserved,
            ("roleArn" Core..=) Core.<$> roleArn,
            ("tags" Core..=) Core.<$> tags
          ]
      )

instance Core.AWSRequest CreateChannel where
  type Rs CreateChannel = CreateChannelResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/prod/channels",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateChannelResponse'
            Core.<$> (x Core..:? "channel") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Placeholder documentation for CreateChannelResponse
--
-- /See:/ 'mkCreateChannelResponse' smart constructor.
data CreateChannelResponse = CreateChannelResponse'
  { channel :: Core.Maybe Types.Channel,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateChannelResponse' value with any optional fields omitted.
mkCreateChannelResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateChannelResponse
mkCreateChannelResponse responseStatus =
  CreateChannelResponse' {channel = Core.Nothing, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'channel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccrrsChannel :: Lens.Lens' CreateChannelResponse (Core.Maybe Types.Channel)
ccrrsChannel = Lens.field @"channel"
{-# DEPRECATED ccrrsChannel "Use generic-lens or generic-optics with 'channel' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccrrsResponseStatus :: Lens.Lens' CreateChannelResponse Core.Int
ccrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ccrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}