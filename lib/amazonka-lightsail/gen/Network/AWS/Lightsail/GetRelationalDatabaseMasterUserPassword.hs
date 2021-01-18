{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseMasterUserPassword
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current, previous, or pending versions of the master user password for a Lightsail database.
--
-- The @GetRelationalDatabaseMasterUserPassword@ operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName.
module Network.AWS.Lightsail.GetRelationalDatabaseMasterUserPassword
  ( -- * Creating a request
    GetRelationalDatabaseMasterUserPassword (..),
    mkGetRelationalDatabaseMasterUserPassword,

    -- ** Request lenses
    grdmupRelationalDatabaseName,
    grdmupPasswordVersion,

    -- * Destructuring the response
    GetRelationalDatabaseMasterUserPasswordResponse (..),
    mkGetRelationalDatabaseMasterUserPasswordResponse,

    -- ** Response lenses
    grdmuprrsCreatedAt,
    grdmuprrsMasterUserPassword,
    grdmuprrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetRelationalDatabaseMasterUserPassword' smart constructor.
data GetRelationalDatabaseMasterUserPassword = GetRelationalDatabaseMasterUserPassword'
  { -- | The name of your database for which to get the master user password.
    relationalDatabaseName :: Types.ResourceName,
    -- | The password version to return.
    --
    -- Specifying @CURRENT@ or @PREVIOUS@ returns the current or previous passwords respectively. Specifying @PENDING@ returns the newest version of the password that will rotate to @CURRENT@ . After the @PENDING@ password rotates to @CURRENT@ , the @PENDING@ password is no longer available.
    -- Default: @CURRENT@
    passwordVersion :: Core.Maybe Types.RelationalDatabasePasswordVersion
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetRelationalDatabaseMasterUserPassword' value with any optional fields omitted.
mkGetRelationalDatabaseMasterUserPassword ::
  -- | 'relationalDatabaseName'
  Types.ResourceName ->
  GetRelationalDatabaseMasterUserPassword
mkGetRelationalDatabaseMasterUserPassword relationalDatabaseName =
  GetRelationalDatabaseMasterUserPassword'
    { relationalDatabaseName,
      passwordVersion = Core.Nothing
    }

-- | The name of your database for which to get the master user password.
--
-- /Note:/ Consider using 'relationalDatabaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmupRelationalDatabaseName :: Lens.Lens' GetRelationalDatabaseMasterUserPassword Types.ResourceName
grdmupRelationalDatabaseName = Lens.field @"relationalDatabaseName"
{-# DEPRECATED grdmupRelationalDatabaseName "Use generic-lens or generic-optics with 'relationalDatabaseName' instead." #-}

-- | The password version to return.
--
-- Specifying @CURRENT@ or @PREVIOUS@ returns the current or previous passwords respectively. Specifying @PENDING@ returns the newest version of the password that will rotate to @CURRENT@ . After the @PENDING@ password rotates to @CURRENT@ , the @PENDING@ password is no longer available.
-- Default: @CURRENT@
--
-- /Note:/ Consider using 'passwordVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmupPasswordVersion :: Lens.Lens' GetRelationalDatabaseMasterUserPassword (Core.Maybe Types.RelationalDatabasePasswordVersion)
grdmupPasswordVersion = Lens.field @"passwordVersion"
{-# DEPRECATED grdmupPasswordVersion "Use generic-lens or generic-optics with 'passwordVersion' instead." #-}

instance Core.FromJSON GetRelationalDatabaseMasterUserPassword where
  toJSON GetRelationalDatabaseMasterUserPassword {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("relationalDatabaseName" Core..= relationalDatabaseName),
            ("passwordVersion" Core..=) Core.<$> passwordVersion
          ]
      )

instance Core.AWSRequest GetRelationalDatabaseMasterUserPassword where
  type
    Rs GetRelationalDatabaseMasterUserPassword =
      GetRelationalDatabaseMasterUserPasswordResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "Lightsail_20161128.GetRelationalDatabaseMasterUserPassword"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRelationalDatabaseMasterUserPasswordResponse'
            Core.<$> (x Core..:? "createdAt")
            Core.<*> (x Core..:? "masterUserPassword")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetRelationalDatabaseMasterUserPasswordResponse' smart constructor.
data GetRelationalDatabaseMasterUserPasswordResponse = GetRelationalDatabaseMasterUserPasswordResponse'
  { -- | The timestamp when the specified version of the master user password was created.
    createdAt :: Core.Maybe Core.NominalDiffTime,
    -- | The master user password for the @password version@ specified.
    masterUserPassword :: Core.Maybe Types.SensitiveString,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetRelationalDatabaseMasterUserPasswordResponse' value with any optional fields omitted.
mkGetRelationalDatabaseMasterUserPasswordResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetRelationalDatabaseMasterUserPasswordResponse
mkGetRelationalDatabaseMasterUserPasswordResponse responseStatus =
  GetRelationalDatabaseMasterUserPasswordResponse'
    { createdAt =
        Core.Nothing,
      masterUserPassword = Core.Nothing,
      responseStatus
    }

-- | The timestamp when the specified version of the master user password was created.
--
-- /Note:/ Consider using 'createdAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmuprrsCreatedAt :: Lens.Lens' GetRelationalDatabaseMasterUserPasswordResponse (Core.Maybe Core.NominalDiffTime)
grdmuprrsCreatedAt = Lens.field @"createdAt"
{-# DEPRECATED grdmuprrsCreatedAt "Use generic-lens or generic-optics with 'createdAt' instead." #-}

-- | The master user password for the @password version@ specified.
--
-- /Note:/ Consider using 'masterUserPassword' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmuprrsMasterUserPassword :: Lens.Lens' GetRelationalDatabaseMasterUserPasswordResponse (Core.Maybe Types.SensitiveString)
grdmuprrsMasterUserPassword = Lens.field @"masterUserPassword"
{-# DEPRECATED grdmuprrsMasterUserPassword "Use generic-lens or generic-optics with 'masterUserPassword' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmuprrsResponseStatus :: Lens.Lens' GetRelationalDatabaseMasterUserPasswordResponse Core.Int
grdmuprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED grdmuprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}