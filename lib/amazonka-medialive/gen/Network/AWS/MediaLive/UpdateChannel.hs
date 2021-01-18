{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.UpdateChannel
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a channel.
module Network.AWS.MediaLive.UpdateChannel
  ( -- * Creating a request
    UpdateChannel (..),
    mkUpdateChannel,

    -- ** Request lenses
    ucChannelId,
    ucCdiInputSpecification,
    ucDestinations,
    ucEncoderSettings,
    ucInputAttachments,
    ucInputSpecification,
    ucLogLevel,
    ucName,
    ucRoleArn,

    -- * Destructuring the response
    UpdateChannelResponse (..),
    mkUpdateChannelResponse,

    -- ** Response lenses
    ucrrsChannel,
    ucrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaLive.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to update a channel.
--
-- /See:/ 'mkUpdateChannel' smart constructor.
data UpdateChannel = UpdateChannel'
  { -- | channel ID
    channelId :: Core.Text,
    -- | Specification of CDI inputs for this channel
    cdiInputSpecification :: Core.Maybe Types.CdiInputSpecification,
    -- | A list of output destinations for this channel.
    destinations :: Core.Maybe [Types.OutputDestination],
    -- | The encoder settings for this channel.
    encoderSettings :: Core.Maybe Types.EncoderSettings,
    inputAttachments :: Core.Maybe [Types.InputAttachment],
    -- | Specification of network and file inputs for this channel
    inputSpecification :: Core.Maybe Types.InputSpecification,
    -- | The log level to write to CloudWatch Logs.
    logLevel :: Core.Maybe Types.LogLevel,
    -- | The name of the channel.
    name :: Core.Maybe Core.Text,
    -- | An optional Amazon Resource Name (ARN) of the role to assume when running the Channel. If you do not specify this on an update call but the role was previously set that role will be removed.
    roleArn :: Core.Maybe Core.Text
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateChannel' value with any optional fields omitted.
mkUpdateChannel ::
  -- | 'channelId'
  Core.Text ->
  UpdateChannel
mkUpdateChannel channelId =
  UpdateChannel'
    { channelId,
      cdiInputSpecification = Core.Nothing,
      destinations = Core.Nothing,
      encoderSettings = Core.Nothing,
      inputAttachments = Core.Nothing,
      inputSpecification = Core.Nothing,
      logLevel = Core.Nothing,
      name = Core.Nothing,
      roleArn = Core.Nothing
    }

-- | channel ID
--
-- /Note:/ Consider using 'channelId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucChannelId :: Lens.Lens' UpdateChannel Core.Text
ucChannelId = Lens.field @"channelId"
{-# DEPRECATED ucChannelId "Use generic-lens or generic-optics with 'channelId' instead." #-}

-- | Specification of CDI inputs for this channel
--
-- /Note:/ Consider using 'cdiInputSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucCdiInputSpecification :: Lens.Lens' UpdateChannel (Core.Maybe Types.CdiInputSpecification)
ucCdiInputSpecification = Lens.field @"cdiInputSpecification"
{-# DEPRECATED ucCdiInputSpecification "Use generic-lens or generic-optics with 'cdiInputSpecification' instead." #-}

-- | A list of output destinations for this channel.
--
-- /Note:/ Consider using 'destinations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucDestinations :: Lens.Lens' UpdateChannel (Core.Maybe [Types.OutputDestination])
ucDestinations = Lens.field @"destinations"
{-# DEPRECATED ucDestinations "Use generic-lens or generic-optics with 'destinations' instead." #-}

-- | The encoder settings for this channel.
--
-- /Note:/ Consider using 'encoderSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucEncoderSettings :: Lens.Lens' UpdateChannel (Core.Maybe Types.EncoderSettings)
ucEncoderSettings = Lens.field @"encoderSettings"
{-# DEPRECATED ucEncoderSettings "Use generic-lens or generic-optics with 'encoderSettings' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'inputAttachments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucInputAttachments :: Lens.Lens' UpdateChannel (Core.Maybe [Types.InputAttachment])
ucInputAttachments = Lens.field @"inputAttachments"
{-# DEPRECATED ucInputAttachments "Use generic-lens or generic-optics with 'inputAttachments' instead." #-}

-- | Specification of network and file inputs for this channel
--
-- /Note:/ Consider using 'inputSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucInputSpecification :: Lens.Lens' UpdateChannel (Core.Maybe Types.InputSpecification)
ucInputSpecification = Lens.field @"inputSpecification"
{-# DEPRECATED ucInputSpecification "Use generic-lens or generic-optics with 'inputSpecification' instead." #-}

-- | The log level to write to CloudWatch Logs.
--
-- /Note:/ Consider using 'logLevel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucLogLevel :: Lens.Lens' UpdateChannel (Core.Maybe Types.LogLevel)
ucLogLevel = Lens.field @"logLevel"
{-# DEPRECATED ucLogLevel "Use generic-lens or generic-optics with 'logLevel' instead." #-}

-- | The name of the channel.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucName :: Lens.Lens' UpdateChannel (Core.Maybe Core.Text)
ucName = Lens.field @"name"
{-# DEPRECATED ucName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | An optional Amazon Resource Name (ARN) of the role to assume when running the Channel. If you do not specify this on an update call but the role was previously set that role will be removed.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucRoleArn :: Lens.Lens' UpdateChannel (Core.Maybe Core.Text)
ucRoleArn = Lens.field @"roleArn"
{-# DEPRECATED ucRoleArn "Use generic-lens or generic-optics with 'roleArn' instead." #-}

instance Core.FromJSON UpdateChannel where
  toJSON UpdateChannel {..} =
    Core.object
      ( Core.catMaybes
          [ ("cdiInputSpecification" Core..=) Core.<$> cdiInputSpecification,
            ("destinations" Core..=) Core.<$> destinations,
            ("encoderSettings" Core..=) Core.<$> encoderSettings,
            ("inputAttachments" Core..=) Core.<$> inputAttachments,
            ("inputSpecification" Core..=) Core.<$> inputSpecification,
            ("logLevel" Core..=) Core.<$> logLevel,
            ("name" Core..=) Core.<$> name,
            ("roleArn" Core..=) Core.<$> roleArn
          ]
      )

instance Core.AWSRequest UpdateChannel where
  type Rs UpdateChannel = UpdateChannelResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.PUT,
        Core._rqPath =
          Core.rawPath ("/prod/channels/" Core.<> (Core.toText channelId)),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateChannelResponse'
            Core.<$> (x Core..:? "channel") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Placeholder documentation for UpdateChannelResponse
--
-- /See:/ 'mkUpdateChannelResponse' smart constructor.
data UpdateChannelResponse = UpdateChannelResponse'
  { channel :: Core.Maybe Types.Channel,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateChannelResponse' value with any optional fields omitted.
mkUpdateChannelResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateChannelResponse
mkUpdateChannelResponse responseStatus =
  UpdateChannelResponse' {channel = Core.Nothing, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'channel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucrrsChannel :: Lens.Lens' UpdateChannelResponse (Core.Maybe Types.Channel)
ucrrsChannel = Lens.field @"channel"
{-# DEPRECATED ucrrsChannel "Use generic-lens or generic-optics with 'channel' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucrrsResponseStatus :: Lens.Lens' UpdateChannelResponse Core.Int
ucrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ucrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}