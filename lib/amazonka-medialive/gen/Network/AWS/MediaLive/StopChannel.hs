{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.StopChannel
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running channel
module Network.AWS.MediaLive.StopChannel
  ( -- * Creating a request
    StopChannel (..),
    mkStopChannel,

    -- ** Request lenses
    sChannelId,

    -- * Destructuring the response
    StopChannelResponse (..),
    mkStopChannelResponse,

    -- ** Response lenses
    srsArn,
    srsCdiInputSpecification,
    srsChannelClass,
    srsDestinations,
    srsEgressEndpoints,
    srsEncoderSettings,
    srsId,
    srsInputAttachments,
    srsInputSpecification,
    srsLogLevel,
    srsName,
    srsPipelineDetails,
    srsPipelinesRunningCount,
    srsRoleArn,
    srsState,
    srsTags,
    srsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaLive.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Placeholder documentation for StopChannelRequest
--
-- /See:/ 'mkStopChannel' smart constructor.
newtype StopChannel = StopChannel'
  { -- | A request to stop a running channel
    channelId :: Core.Text
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopChannel' value with any optional fields omitted.
mkStopChannel ::
  -- | 'channelId'
  Core.Text ->
  StopChannel
mkStopChannel channelId = StopChannel' {channelId}

-- | A request to stop a running channel
--
-- /Note:/ Consider using 'channelId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sChannelId :: Lens.Lens' StopChannel Core.Text
sChannelId = Lens.field @"channelId"
{-# DEPRECATED sChannelId "Use generic-lens or generic-optics with 'channelId' instead." #-}

instance Core.FromJSON StopChannel where
  toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest StopChannel where
  type Rs StopChannel = StopChannelResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath =
          Core.rawPath
            ( "/prod/channels/" Core.<> (Core.toText channelId)
                Core.<> ("/stop")
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          StopChannelResponse'
            Core.<$> (x Core..:? "arn")
            Core.<*> (x Core..:? "cdiInputSpecification")
            Core.<*> (x Core..:? "channelClass")
            Core.<*> (x Core..:? "destinations")
            Core.<*> (x Core..:? "egressEndpoints")
            Core.<*> (x Core..:? "encoderSettings")
            Core.<*> (x Core..:? "id")
            Core.<*> (x Core..:? "inputAttachments")
            Core.<*> (x Core..:? "inputSpecification")
            Core.<*> (x Core..:? "logLevel")
            Core.<*> (x Core..:? "name")
            Core.<*> (x Core..:? "pipelineDetails")
            Core.<*> (x Core..:? "pipelinesRunningCount")
            Core.<*> (x Core..:? "roleArn")
            Core.<*> (x Core..:? "state")
            Core.<*> (x Core..:? "tags")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Placeholder documentation for StopChannelResponse
--
-- /See:/ 'mkStopChannelResponse' smart constructor.
data StopChannelResponse = StopChannelResponse'
  { -- | The unique arn of the channel.
    arn :: Core.Maybe Core.Text,
    -- | Specification of CDI inputs for this channel
    cdiInputSpecification :: Core.Maybe Types.CdiInputSpecification,
    -- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    channelClass :: Core.Maybe Types.ChannelClass,
    -- | A list of destinations of the channel. For UDP outputs, there is one
    --
    -- destination per output. For other types (HLS, for example), there is
    -- one destination per packager.
    destinations :: Core.Maybe [Types.OutputDestination],
    -- | The endpoints where outgoing connections initiate from
    egressEndpoints :: Core.Maybe [Types.ChannelEgressEndpoint],
    encoderSettings :: Core.Maybe Types.EncoderSettings,
    -- | The unique id of the channel.
    id :: Core.Maybe Core.Text,
    -- | List of input attachments for channel.
    inputAttachments :: Core.Maybe [Types.InputAttachment],
    -- | Specification of network and file inputs for this channel
    inputSpecification :: Core.Maybe Types.InputSpecification,
    -- | The log level being written to CloudWatch Logs.
    logLevel :: Core.Maybe Types.LogLevel,
    -- | The name of the channel. (user-mutable)
    name :: Core.Maybe Core.Text,
    -- | Runtime details for the pipelines of a running channel.
    pipelineDetails :: Core.Maybe [Types.PipelineDetail],
    -- | The number of currently healthy pipelines.
    pipelinesRunningCount :: Core.Maybe Core.Int,
    -- | The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    roleArn :: Core.Maybe Core.Text,
    state :: Core.Maybe Types.ChannelState,
    -- | A collection of key-value pairs.
    tags :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StopChannelResponse' value with any optional fields omitted.
mkStopChannelResponse ::
  -- | 'responseStatus'
  Core.Int ->
  StopChannelResponse
mkStopChannelResponse responseStatus =
  StopChannelResponse'
    { arn = Core.Nothing,
      cdiInputSpecification = Core.Nothing,
      channelClass = Core.Nothing,
      destinations = Core.Nothing,
      egressEndpoints = Core.Nothing,
      encoderSettings = Core.Nothing,
      id = Core.Nothing,
      inputAttachments = Core.Nothing,
      inputSpecification = Core.Nothing,
      logLevel = Core.Nothing,
      name = Core.Nothing,
      pipelineDetails = Core.Nothing,
      pipelinesRunningCount = Core.Nothing,
      roleArn = Core.Nothing,
      state = Core.Nothing,
      tags = Core.Nothing,
      responseStatus
    }

-- | The unique arn of the channel.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsArn :: Lens.Lens' StopChannelResponse (Core.Maybe Core.Text)
srsArn = Lens.field @"arn"
{-# DEPRECATED srsArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | Specification of CDI inputs for this channel
--
-- /Note:/ Consider using 'cdiInputSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsCdiInputSpecification :: Lens.Lens' StopChannelResponse (Core.Maybe Types.CdiInputSpecification)
srsCdiInputSpecification = Lens.field @"cdiInputSpecification"
{-# DEPRECATED srsCdiInputSpecification "Use generic-lens or generic-optics with 'cdiInputSpecification' instead." #-}

-- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
--
-- /Note:/ Consider using 'channelClass' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsChannelClass :: Lens.Lens' StopChannelResponse (Core.Maybe Types.ChannelClass)
srsChannelClass = Lens.field @"channelClass"
{-# DEPRECATED srsChannelClass "Use generic-lens or generic-optics with 'channelClass' instead." #-}

-- | A list of destinations of the channel. For UDP outputs, there is one
--
-- destination per output. For other types (HLS, for example), there is
-- one destination per packager.
--
-- /Note:/ Consider using 'destinations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsDestinations :: Lens.Lens' StopChannelResponse (Core.Maybe [Types.OutputDestination])
srsDestinations = Lens.field @"destinations"
{-# DEPRECATED srsDestinations "Use generic-lens or generic-optics with 'destinations' instead." #-}

-- | The endpoints where outgoing connections initiate from
--
-- /Note:/ Consider using 'egressEndpoints' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsEgressEndpoints :: Lens.Lens' StopChannelResponse (Core.Maybe [Types.ChannelEgressEndpoint])
srsEgressEndpoints = Lens.field @"egressEndpoints"
{-# DEPRECATED srsEgressEndpoints "Use generic-lens or generic-optics with 'egressEndpoints' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'encoderSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsEncoderSettings :: Lens.Lens' StopChannelResponse (Core.Maybe Types.EncoderSettings)
srsEncoderSettings = Lens.field @"encoderSettings"
{-# DEPRECATED srsEncoderSettings "Use generic-lens or generic-optics with 'encoderSettings' instead." #-}

-- | The unique id of the channel.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsId :: Lens.Lens' StopChannelResponse (Core.Maybe Core.Text)
srsId = Lens.field @"id"
{-# DEPRECATED srsId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | List of input attachments for channel.
--
-- /Note:/ Consider using 'inputAttachments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsInputAttachments :: Lens.Lens' StopChannelResponse (Core.Maybe [Types.InputAttachment])
srsInputAttachments = Lens.field @"inputAttachments"
{-# DEPRECATED srsInputAttachments "Use generic-lens or generic-optics with 'inputAttachments' instead." #-}

-- | Specification of network and file inputs for this channel
--
-- /Note:/ Consider using 'inputSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsInputSpecification :: Lens.Lens' StopChannelResponse (Core.Maybe Types.InputSpecification)
srsInputSpecification = Lens.field @"inputSpecification"
{-# DEPRECATED srsInputSpecification "Use generic-lens or generic-optics with 'inputSpecification' instead." #-}

-- | The log level being written to CloudWatch Logs.
--
-- /Note:/ Consider using 'logLevel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsLogLevel :: Lens.Lens' StopChannelResponse (Core.Maybe Types.LogLevel)
srsLogLevel = Lens.field @"logLevel"
{-# DEPRECATED srsLogLevel "Use generic-lens or generic-optics with 'logLevel' instead." #-}

-- | The name of the channel. (user-mutable)
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsName :: Lens.Lens' StopChannelResponse (Core.Maybe Core.Text)
srsName = Lens.field @"name"
{-# DEPRECATED srsName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | Runtime details for the pipelines of a running channel.
--
-- /Note:/ Consider using 'pipelineDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsPipelineDetails :: Lens.Lens' StopChannelResponse (Core.Maybe [Types.PipelineDetail])
srsPipelineDetails = Lens.field @"pipelineDetails"
{-# DEPRECATED srsPipelineDetails "Use generic-lens or generic-optics with 'pipelineDetails' instead." #-}

-- | The number of currently healthy pipelines.
--
-- /Note:/ Consider using 'pipelinesRunningCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsPipelinesRunningCount :: Lens.Lens' StopChannelResponse (Core.Maybe Core.Int)
srsPipelinesRunningCount = Lens.field @"pipelinesRunningCount"
{-# DEPRECATED srsPipelinesRunningCount "Use generic-lens or generic-optics with 'pipelinesRunningCount' instead." #-}

-- | The Amazon Resource Name (ARN) of the role assumed when running the Channel.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsRoleArn :: Lens.Lens' StopChannelResponse (Core.Maybe Core.Text)
srsRoleArn = Lens.field @"roleArn"
{-# DEPRECATED srsRoleArn "Use generic-lens or generic-optics with 'roleArn' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsState :: Lens.Lens' StopChannelResponse (Core.Maybe Types.ChannelState)
srsState = Lens.field @"state"
{-# DEPRECATED srsState "Use generic-lens or generic-optics with 'state' instead." #-}

-- | A collection of key-value pairs.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsTags :: Lens.Lens' StopChannelResponse (Core.Maybe (Core.HashMap Core.Text Core.Text))
srsTags = Lens.field @"tags"
{-# DEPRECATED srsTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsResponseStatus :: Lens.Lens' StopChannelResponse Core.Int
srsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED srsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}