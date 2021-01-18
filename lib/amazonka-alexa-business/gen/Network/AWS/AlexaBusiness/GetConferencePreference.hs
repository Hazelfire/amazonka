{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.GetConferencePreference
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the existing conference preferences.
module Network.AWS.AlexaBusiness.GetConferencePreference
  ( -- * Creating a request
    GetConferencePreference (..),
    mkGetConferencePreference,

    -- * Destructuring the response
    GetConferencePreferenceResponse (..),
    mkGetConferencePreferenceResponse,

    -- ** Response lenses
    gcprrsPreference,
    gcprrsResponseStatus,
  )
where

import qualified Network.AWS.AlexaBusiness.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetConferencePreference' smart constructor.
data GetConferencePreference = GetConferencePreference'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetConferencePreference' value with any optional fields omitted.
mkGetConferencePreference ::
  GetConferencePreference
mkGetConferencePreference = GetConferencePreference'

instance Core.FromJSON GetConferencePreference where
  toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest GetConferencePreference where
  type Rs GetConferencePreference = GetConferencePreferenceResponse
  request x@_ =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AlexaForBusiness.GetConferencePreference")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetConferencePreferenceResponse'
            Core.<$> (x Core..:? "Preference") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetConferencePreferenceResponse' smart constructor.
data GetConferencePreferenceResponse = GetConferencePreferenceResponse'
  { -- | The conference preference.
    preference :: Core.Maybe Types.ConferencePreference,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetConferencePreferenceResponse' value with any optional fields omitted.
mkGetConferencePreferenceResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetConferencePreferenceResponse
mkGetConferencePreferenceResponse responseStatus =
  GetConferencePreferenceResponse'
    { preference = Core.Nothing,
      responseStatus
    }

-- | The conference preference.
--
-- /Note:/ Consider using 'preference' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcprrsPreference :: Lens.Lens' GetConferencePreferenceResponse (Core.Maybe Types.ConferencePreference)
gcprrsPreference = Lens.field @"preference"
{-# DEPRECATED gcprrsPreference "Use generic-lens or generic-optics with 'preference' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcprrsResponseStatus :: Lens.Lens' GetConferencePreferenceResponse Core.Int
gcprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gcprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}