{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.StartContactRecording
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API starts recording the contact when the agent joins the call. StartContactRecording is a one-time action. For example, if you use StopContactRecording to stop recording an ongoing call, you can't use StartContactRecording to restart it. For scenarios where the recording has started and you want to suspend and resume it, such as when collecting sensitive information (for example, a credit card number), use SuspendContactRecording and ResumeContactRecording.
--
-- You can use this API to override the recording behavior configured in the <https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html Set recording behavior> block.
-- Only voice recordings are supported at this time.
module Network.AWS.Connect.StartContactRecording
  ( -- * Creating a request
    StartContactRecording (..),
    mkStartContactRecording,

    -- ** Request lenses
    scrInstanceId,
    scrContactId,
    scrInitialContactId,
    scrVoiceRecordingConfiguration,

    -- * Destructuring the response
    StartContactRecordingResponse (..),
    mkStartContactRecordingResponse,

    -- ** Response lenses
    scrrfrsResponseStatus,
  )
where

import qualified Network.AWS.Connect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStartContactRecording' smart constructor.
data StartContactRecording = StartContactRecording'
  { -- | The identifier of the Amazon Connect instance.
    instanceId :: Types.InstanceId,
    -- | The identifier of the contact.
    contactId :: Types.ContactId,
    -- | The identifier of the contact. This is the identifier of the contact associated with the first interaction with the contact center.
    initialContactId :: Types.InitialContactId,
    -- | Who is being recorded.
    voiceRecordingConfiguration :: Types.VoiceRecordingConfiguration
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartContactRecording' value with any optional fields omitted.
mkStartContactRecording ::
  -- | 'instanceId'
  Types.InstanceId ->
  -- | 'contactId'
  Types.ContactId ->
  -- | 'initialContactId'
  Types.InitialContactId ->
  -- | 'voiceRecordingConfiguration'
  Types.VoiceRecordingConfiguration ->
  StartContactRecording
mkStartContactRecording
  instanceId
  contactId
  initialContactId
  voiceRecordingConfiguration =
    StartContactRecording'
      { instanceId,
        contactId,
        initialContactId,
        voiceRecordingConfiguration
      }

-- | The identifier of the Amazon Connect instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrInstanceId :: Lens.Lens' StartContactRecording Types.InstanceId
scrInstanceId = Lens.field @"instanceId"
{-# DEPRECATED scrInstanceId "Use generic-lens or generic-optics with 'instanceId' instead." #-}

-- | The identifier of the contact.
--
-- /Note:/ Consider using 'contactId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrContactId :: Lens.Lens' StartContactRecording Types.ContactId
scrContactId = Lens.field @"contactId"
{-# DEPRECATED scrContactId "Use generic-lens or generic-optics with 'contactId' instead." #-}

-- | The identifier of the contact. This is the identifier of the contact associated with the first interaction with the contact center.
--
-- /Note:/ Consider using 'initialContactId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrInitialContactId :: Lens.Lens' StartContactRecording Types.InitialContactId
scrInitialContactId = Lens.field @"initialContactId"
{-# DEPRECATED scrInitialContactId "Use generic-lens or generic-optics with 'initialContactId' instead." #-}

-- | Who is being recorded.
--
-- /Note:/ Consider using 'voiceRecordingConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrVoiceRecordingConfiguration :: Lens.Lens' StartContactRecording Types.VoiceRecordingConfiguration
scrVoiceRecordingConfiguration = Lens.field @"voiceRecordingConfiguration"
{-# DEPRECATED scrVoiceRecordingConfiguration "Use generic-lens or generic-optics with 'voiceRecordingConfiguration' instead." #-}

instance Core.FromJSON StartContactRecording where
  toJSON StartContactRecording {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("InstanceId" Core..= instanceId),
            Core.Just ("ContactId" Core..= contactId),
            Core.Just ("InitialContactId" Core..= initialContactId),
            Core.Just
              ( "VoiceRecordingConfiguration"
                  Core..= voiceRecordingConfiguration
              )
          ]
      )

instance Core.AWSRequest StartContactRecording where
  type Rs StartContactRecording = StartContactRecordingResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/contact/start-recording",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          StartContactRecordingResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkStartContactRecordingResponse' smart constructor.
newtype StartContactRecordingResponse = StartContactRecordingResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StartContactRecordingResponse' value with any optional fields omitted.
mkStartContactRecordingResponse ::
  -- | 'responseStatus'
  Core.Int ->
  StartContactRecordingResponse
mkStartContactRecordingResponse responseStatus =
  StartContactRecordingResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrrfrsResponseStatus :: Lens.Lens' StartContactRecordingResponse Core.Int
scrrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED scrrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}