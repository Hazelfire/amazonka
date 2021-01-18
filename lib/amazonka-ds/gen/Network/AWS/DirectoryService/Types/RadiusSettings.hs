{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.RadiusSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RadiusSettings
  ( RadiusSettings (..),

    -- * Smart constructor
    mkRadiusSettings,

    -- * Lenses
    rsAuthenticationProtocol,
    rsDisplayLabel,
    rsRadiusPort,
    rsRadiusRetries,
    rsRadiusServers,
    rsRadiusTimeout,
    rsSharedSecret,
    rsUseSameUsername,
  )
where

import qualified Network.AWS.DirectoryService.Types.RadiusAuthenticationProtocol as Types
import qualified Network.AWS.DirectoryService.Types.RadiusDisplayLabel as Types
import qualified Network.AWS.DirectoryService.Types.Server as Types
import qualified Network.AWS.DirectoryService.Types.SharedSecret as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains information about a Remote Authentication Dial In User Service (RADIUS) server.
--
-- /See:/ 'mkRadiusSettings' smart constructor.
data RadiusSettings = RadiusSettings'
  { -- | The protocol specified for your RADIUS endpoints.
    authenticationProtocol :: Core.Maybe Types.RadiusAuthenticationProtocol,
    -- | Not currently used.
    displayLabel :: Core.Maybe Types.RadiusDisplayLabel,
    -- | The port that your RADIUS server is using for communications. Your on-premises network must allow inbound traffic over this port from the AWS Directory Service servers.
    radiusPort :: Core.Maybe Core.Natural,
    -- | The maximum number of times that communication with the RADIUS server is attempted.
    radiusRetries :: Core.Maybe Core.Natural,
    -- | An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
    radiusServers :: Core.Maybe [Types.Server],
    -- | The amount of time, in seconds, to wait for the RADIUS server to respond.
    radiusTimeout :: Core.Maybe Core.Natural,
    -- | Required for enabling RADIUS on the directory.
    sharedSecret :: Core.Maybe Types.SharedSecret,
    -- | Not currently used.
    useSameUsername :: Core.Maybe Core.Bool
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RadiusSettings' value with any optional fields omitted.
mkRadiusSettings ::
  RadiusSettings
mkRadiusSettings =
  RadiusSettings'
    { authenticationProtocol = Core.Nothing,
      displayLabel = Core.Nothing,
      radiusPort = Core.Nothing,
      radiusRetries = Core.Nothing,
      radiusServers = Core.Nothing,
      radiusTimeout = Core.Nothing,
      sharedSecret = Core.Nothing,
      useSameUsername = Core.Nothing
    }

-- | The protocol specified for your RADIUS endpoints.
--
-- /Note:/ Consider using 'authenticationProtocol' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsAuthenticationProtocol :: Lens.Lens' RadiusSettings (Core.Maybe Types.RadiusAuthenticationProtocol)
rsAuthenticationProtocol = Lens.field @"authenticationProtocol"
{-# DEPRECATED rsAuthenticationProtocol "Use generic-lens or generic-optics with 'authenticationProtocol' instead." #-}

-- | Not currently used.
--
-- /Note:/ Consider using 'displayLabel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsDisplayLabel :: Lens.Lens' RadiusSettings (Core.Maybe Types.RadiusDisplayLabel)
rsDisplayLabel = Lens.field @"displayLabel"
{-# DEPRECATED rsDisplayLabel "Use generic-lens or generic-optics with 'displayLabel' instead." #-}

-- | The port that your RADIUS server is using for communications. Your on-premises network must allow inbound traffic over this port from the AWS Directory Service servers.
--
-- /Note:/ Consider using 'radiusPort' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsRadiusPort :: Lens.Lens' RadiusSettings (Core.Maybe Core.Natural)
rsRadiusPort = Lens.field @"radiusPort"
{-# DEPRECATED rsRadiusPort "Use generic-lens or generic-optics with 'radiusPort' instead." #-}

-- | The maximum number of times that communication with the RADIUS server is attempted.
--
-- /Note:/ Consider using 'radiusRetries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsRadiusRetries :: Lens.Lens' RadiusSettings (Core.Maybe Core.Natural)
rsRadiusRetries = Lens.field @"radiusRetries"
{-# DEPRECATED rsRadiusRetries "Use generic-lens or generic-optics with 'radiusRetries' instead." #-}

-- | An array of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
--
-- /Note:/ Consider using 'radiusServers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsRadiusServers :: Lens.Lens' RadiusSettings (Core.Maybe [Types.Server])
rsRadiusServers = Lens.field @"radiusServers"
{-# DEPRECATED rsRadiusServers "Use generic-lens or generic-optics with 'radiusServers' instead." #-}

-- | The amount of time, in seconds, to wait for the RADIUS server to respond.
--
-- /Note:/ Consider using 'radiusTimeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsRadiusTimeout :: Lens.Lens' RadiusSettings (Core.Maybe Core.Natural)
rsRadiusTimeout = Lens.field @"radiusTimeout"
{-# DEPRECATED rsRadiusTimeout "Use generic-lens or generic-optics with 'radiusTimeout' instead." #-}

-- | Required for enabling RADIUS on the directory.
--
-- /Note:/ Consider using 'sharedSecret' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsSharedSecret :: Lens.Lens' RadiusSettings (Core.Maybe Types.SharedSecret)
rsSharedSecret = Lens.field @"sharedSecret"
{-# DEPRECATED rsSharedSecret "Use generic-lens or generic-optics with 'sharedSecret' instead." #-}

-- | Not currently used.
--
-- /Note:/ Consider using 'useSameUsername' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsUseSameUsername :: Lens.Lens' RadiusSettings (Core.Maybe Core.Bool)
rsUseSameUsername = Lens.field @"useSameUsername"
{-# DEPRECATED rsUseSameUsername "Use generic-lens or generic-optics with 'useSameUsername' instead." #-}

instance Core.FromJSON RadiusSettings where
  toJSON RadiusSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("AuthenticationProtocol" Core..=)
              Core.<$> authenticationProtocol,
            ("DisplayLabel" Core..=) Core.<$> displayLabel,
            ("RadiusPort" Core..=) Core.<$> radiusPort,
            ("RadiusRetries" Core..=) Core.<$> radiusRetries,
            ("RadiusServers" Core..=) Core.<$> radiusServers,
            ("RadiusTimeout" Core..=) Core.<$> radiusTimeout,
            ("SharedSecret" Core..=) Core.<$> sharedSecret,
            ("UseSameUsername" Core..=) Core.<$> useSameUsername
          ]
      )

instance Core.FromJSON RadiusSettings where
  parseJSON =
    Core.withObject "RadiusSettings" Core.$
      \x ->
        RadiusSettings'
          Core.<$> (x Core..:? "AuthenticationProtocol")
          Core.<*> (x Core..:? "DisplayLabel")
          Core.<*> (x Core..:? "RadiusPort")
          Core.<*> (x Core..:? "RadiusRetries")
          Core.<*> (x Core..:? "RadiusServers")
          Core.<*> (x Core..:? "RadiusTimeout")
          Core.<*> (x Core..:? "SharedSecret")
          Core.<*> (x Core..:? "UseSameUsername")