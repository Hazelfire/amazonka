{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.Listener
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.Listener
  ( Listener (..),

    -- * Smart constructor
    mkListener,

    -- * Lenses
    lPort,
    lProtocol,
  )
where

import qualified Network.AWS.ElasticBeanstalk.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes the properties of a Listener for the LoadBalancer.
--
-- /See:/ 'mkListener' smart constructor.
data Listener = Listener'
  { -- | The port that is used by the Listener.
    port :: Core.Maybe Core.Int,
    -- | The protocol that is used by the Listener.
    protocol :: Core.Maybe Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Listener' value with any optional fields omitted.
mkListener ::
  Listener
mkListener =
  Listener' {port = Core.Nothing, protocol = Core.Nothing}

-- | The port that is used by the Listener.
--
-- /Note:/ Consider using 'port' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lPort :: Lens.Lens' Listener (Core.Maybe Core.Int)
lPort = Lens.field @"port"
{-# DEPRECATED lPort "Use generic-lens or generic-optics with 'port' instead." #-}

-- | The protocol that is used by the Listener.
--
-- /Note:/ Consider using 'protocol' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lProtocol :: Lens.Lens' Listener (Core.Maybe Types.String)
lProtocol = Lens.field @"protocol"
{-# DEPRECATED lProtocol "Use generic-lens or generic-optics with 'protocol' instead." #-}

instance Core.FromXML Listener where
  parseXML x =
    Listener'
      Core.<$> (x Core..@? "Port") Core.<*> (x Core..@? "Protocol")