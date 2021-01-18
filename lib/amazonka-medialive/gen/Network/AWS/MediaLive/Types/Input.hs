{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Input
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Input
  ( Input (..),

    -- * Smart constructor
    mkInput,

    -- * Lenses
    iArn,
    iAttachedChannels,
    iDestinations,
    iId,
    iInputClass,
    iInputDevices,
    iInputSourceType,
    iMediaConnectFlows,
    iName,
    iRoleArn,
    iSecurityGroups,
    iSources,
    iState,
    iTags,
    iType,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaLive.Types.InputClass as Types
import qualified Network.AWS.MediaLive.Types.InputDestination as Types
import qualified Network.AWS.MediaLive.Types.InputDeviceSettings as Types
import qualified Network.AWS.MediaLive.Types.InputSource as Types
import qualified Network.AWS.MediaLive.Types.InputSourceType as Types
import qualified Network.AWS.MediaLive.Types.InputState as Types
import qualified Network.AWS.MediaLive.Types.InputType as Types
import qualified Network.AWS.MediaLive.Types.MediaConnectFlow as Types
import qualified Network.AWS.Prelude as Core

-- | Placeholder documentation for Input
--
-- /See:/ 'mkInput' smart constructor.
data Input = Input'
  { -- | The Unique ARN of the input (generated, immutable).
    arn :: Core.Maybe Core.Text,
    -- | A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
    attachedChannels :: Core.Maybe [Core.Text],
    -- | A list of the destinations of the input (PUSH-type).
    destinations :: Core.Maybe [Types.InputDestination],
    -- | The generated ID of the input (unique for user account, immutable).
    id :: Core.Maybe Core.Text,
    -- | STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails.
    --
    -- SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
    inputClass :: Core.Maybe Types.InputClass,
    -- | Settings for the input devices.
    inputDevices :: Core.Maybe [Types.InputDeviceSettings],
    -- | Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes
    --
    -- during input switch actions. Presently, this functionality only works with MP4_FILE inputs.
    inputSourceType :: Core.Maybe Types.InputSourceType,
    -- | A list of MediaConnect Flows for this input.
    mediaConnectFlows :: Core.Maybe [Types.MediaConnectFlow],
    -- | The user-assigned name (This is a mutable value).
    name :: Core.Maybe Core.Text,
    -- | The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    roleArn :: Core.Maybe Core.Text,
    -- | A list of IDs for all the Input Security Groups attached to the input.
    securityGroups :: Core.Maybe [Core.Text],
    -- | A list of the sources of the input (PULL-type).
    sources :: Core.Maybe [Types.InputSource],
    state :: Core.Maybe Types.InputState,
    -- | A collection of key-value pairs.
    tags :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    type' :: Core.Maybe Types.InputType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Input' value with any optional fields omitted.
mkInput ::
  Input
mkInput =
  Input'
    { arn = Core.Nothing,
      attachedChannels = Core.Nothing,
      destinations = Core.Nothing,
      id = Core.Nothing,
      inputClass = Core.Nothing,
      inputDevices = Core.Nothing,
      inputSourceType = Core.Nothing,
      mediaConnectFlows = Core.Nothing,
      name = Core.Nothing,
      roleArn = Core.Nothing,
      securityGroups = Core.Nothing,
      sources = Core.Nothing,
      state = Core.Nothing,
      tags = Core.Nothing,
      type' = Core.Nothing
    }

-- | The Unique ARN of the input (generated, immutable).
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iArn :: Lens.Lens' Input (Core.Maybe Core.Text)
iArn = Lens.field @"arn"
{-# DEPRECATED iArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
--
-- /Note:/ Consider using 'attachedChannels' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iAttachedChannels :: Lens.Lens' Input (Core.Maybe [Core.Text])
iAttachedChannels = Lens.field @"attachedChannels"
{-# DEPRECATED iAttachedChannels "Use generic-lens or generic-optics with 'attachedChannels' instead." #-}

-- | A list of the destinations of the input (PUSH-type).
--
-- /Note:/ Consider using 'destinations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iDestinations :: Lens.Lens' Input (Core.Maybe [Types.InputDestination])
iDestinations = Lens.field @"destinations"
{-# DEPRECATED iDestinations "Use generic-lens or generic-optics with 'destinations' instead." #-}

-- | The generated ID of the input (unique for user account, immutable).
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iId :: Lens.Lens' Input (Core.Maybe Core.Text)
iId = Lens.field @"id"
{-# DEPRECATED iId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | STANDARD - MediaLive expects two sources to be connected to this input. If the channel is also STANDARD, both sources will be ingested. If the channel is SINGLE_PIPELINE, only the first source will be ingested; the second source will always be ignored, even if the first source fails.
--
-- SINGLE_PIPELINE - You can connect only one source to this input. If the ChannelClass is also  SINGLE_PIPELINE, this value is valid. If the ChannelClass is STANDARD, this value is not valid because the channel requires two sources in the input.
--
-- /Note:/ Consider using 'inputClass' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iInputClass :: Lens.Lens' Input (Core.Maybe Types.InputClass)
iInputClass = Lens.field @"inputClass"
{-# DEPRECATED iInputClass "Use generic-lens or generic-optics with 'inputClass' instead." #-}

-- | Settings for the input devices.
--
-- /Note:/ Consider using 'inputDevices' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iInputDevices :: Lens.Lens' Input (Core.Maybe [Types.InputDeviceSettings])
iInputDevices = Lens.field @"inputDevices"
{-# DEPRECATED iInputDevices "Use generic-lens or generic-optics with 'inputDevices' instead." #-}

-- | Certain pull input sources can be dynamic, meaning that they can have their URL's dynamically changes
--
-- during input switch actions. Presently, this functionality only works with MP4_FILE inputs.
--
-- /Note:/ Consider using 'inputSourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iInputSourceType :: Lens.Lens' Input (Core.Maybe Types.InputSourceType)
iInputSourceType = Lens.field @"inputSourceType"
{-# DEPRECATED iInputSourceType "Use generic-lens or generic-optics with 'inputSourceType' instead." #-}

-- | A list of MediaConnect Flows for this input.
--
-- /Note:/ Consider using 'mediaConnectFlows' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iMediaConnectFlows :: Lens.Lens' Input (Core.Maybe [Types.MediaConnectFlow])
iMediaConnectFlows = Lens.field @"mediaConnectFlows"
{-# DEPRECATED iMediaConnectFlows "Use generic-lens or generic-optics with 'mediaConnectFlows' instead." #-}

-- | The user-assigned name (This is a mutable value).
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iName :: Lens.Lens' Input (Core.Maybe Core.Text)
iName = Lens.field @"name"
{-# DEPRECATED iName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iRoleArn :: Lens.Lens' Input (Core.Maybe Core.Text)
iRoleArn = Lens.field @"roleArn"
{-# DEPRECATED iRoleArn "Use generic-lens or generic-optics with 'roleArn' instead." #-}

-- | A list of IDs for all the Input Security Groups attached to the input.
--
-- /Note:/ Consider using 'securityGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iSecurityGroups :: Lens.Lens' Input (Core.Maybe [Core.Text])
iSecurityGroups = Lens.field @"securityGroups"
{-# DEPRECATED iSecurityGroups "Use generic-lens or generic-optics with 'securityGroups' instead." #-}

-- | A list of the sources of the input (PULL-type).
--
-- /Note:/ Consider using 'sources' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iSources :: Lens.Lens' Input (Core.Maybe [Types.InputSource])
iSources = Lens.field @"sources"
{-# DEPRECATED iSources "Use generic-lens or generic-optics with 'sources' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iState :: Lens.Lens' Input (Core.Maybe Types.InputState)
iState = Lens.field @"state"
{-# DEPRECATED iState "Use generic-lens or generic-optics with 'state' instead." #-}

-- | A collection of key-value pairs.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iTags :: Lens.Lens' Input (Core.Maybe (Core.HashMap Core.Text Core.Text))
iTags = Lens.field @"tags"
{-# DEPRECATED iTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iType :: Lens.Lens' Input (Core.Maybe Types.InputType)
iType = Lens.field @"type'"
{-# DEPRECATED iType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.FromJSON Input where
  parseJSON =
    Core.withObject "Input" Core.$
      \x ->
        Input'
          Core.<$> (x Core..:? "arn")
          Core.<*> (x Core..:? "attachedChannels")
          Core.<*> (x Core..:? "destinations")
          Core.<*> (x Core..:? "id")
          Core.<*> (x Core..:? "inputClass")
          Core.<*> (x Core..:? "inputDevices")
          Core.<*> (x Core..:? "inputSourceType")
          Core.<*> (x Core..:? "mediaConnectFlows")
          Core.<*> (x Core..:? "name")
          Core.<*> (x Core..:? "roleArn")
          Core.<*> (x Core..:? "securityGroups")
          Core.<*> (x Core..:? "sources")
          Core.<*> (x Core..:? "state")
          Core.<*> (x Core..:? "tags")
          Core.<*> (x Core..:? "type")