{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AppDetails
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppDetails
  ( AppDetails (..),

    -- * Smart constructor
    mkAppDetails,

    -- * Lenses
    adAppName,
    adAppType,
    adCreationTime,
    adDomainId,
    adStatus,
    adUserProfileName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SageMaker.Types.AppName as Types
import qualified Network.AWS.SageMaker.Types.AppStatus as Types
import qualified Network.AWS.SageMaker.Types.AppType as Types
import qualified Network.AWS.SageMaker.Types.DomainId as Types
import qualified Network.AWS.SageMaker.Types.UserProfileName as Types

-- | Details about an Amazon SageMaker app.
--
-- /See:/ 'mkAppDetails' smart constructor.
data AppDetails = AppDetails'
  { -- | The name of the app.
    appName :: Core.Maybe Types.AppName,
    -- | The type of app.
    appType :: Core.Maybe Types.AppType,
    -- | The creation time.
    creationTime :: Core.Maybe Core.NominalDiffTime,
    -- | The domain ID.
    domainId :: Core.Maybe Types.DomainId,
    -- | The status.
    status :: Core.Maybe Types.AppStatus,
    -- | The user profile name.
    userProfileName :: Core.Maybe Types.UserProfileName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'AppDetails' value with any optional fields omitted.
mkAppDetails ::
  AppDetails
mkAppDetails =
  AppDetails'
    { appName = Core.Nothing,
      appType = Core.Nothing,
      creationTime = Core.Nothing,
      domainId = Core.Nothing,
      status = Core.Nothing,
      userProfileName = Core.Nothing
    }

-- | The name of the app.
--
-- /Note:/ Consider using 'appName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adAppName :: Lens.Lens' AppDetails (Core.Maybe Types.AppName)
adAppName = Lens.field @"appName"
{-# DEPRECATED adAppName "Use generic-lens or generic-optics with 'appName' instead." #-}

-- | The type of app.
--
-- /Note:/ Consider using 'appType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adAppType :: Lens.Lens' AppDetails (Core.Maybe Types.AppType)
adAppType = Lens.field @"appType"
{-# DEPRECATED adAppType "Use generic-lens or generic-optics with 'appType' instead." #-}

-- | The creation time.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adCreationTime :: Lens.Lens' AppDetails (Core.Maybe Core.NominalDiffTime)
adCreationTime = Lens.field @"creationTime"
{-# DEPRECATED adCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

-- | The domain ID.
--
-- /Note:/ Consider using 'domainId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adDomainId :: Lens.Lens' AppDetails (Core.Maybe Types.DomainId)
adDomainId = Lens.field @"domainId"
{-# DEPRECATED adDomainId "Use generic-lens or generic-optics with 'domainId' instead." #-}

-- | The status.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adStatus :: Lens.Lens' AppDetails (Core.Maybe Types.AppStatus)
adStatus = Lens.field @"status"
{-# DEPRECATED adStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The user profile name.
--
-- /Note:/ Consider using 'userProfileName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adUserProfileName :: Lens.Lens' AppDetails (Core.Maybe Types.UserProfileName)
adUserProfileName = Lens.field @"userProfileName"
{-# DEPRECATED adUserProfileName "Use generic-lens or generic-optics with 'userProfileName' instead." #-}

instance Core.FromJSON AppDetails where
  parseJSON =
    Core.withObject "AppDetails" Core.$
      \x ->
        AppDetails'
          Core.<$> (x Core..:? "AppName")
          Core.<*> (x Core..:? "AppType")
          Core.<*> (x Core..:? "CreationTime")
          Core.<*> (x Core..:? "DomainId")
          Core.<*> (x Core..:? "Status")
          Core.<*> (x Core..:? "UserProfileName")