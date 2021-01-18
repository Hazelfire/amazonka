{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.DeactivateMFADevice
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.
--
-- For more information about creating and working with virtual MFA devices, go to <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html Enabling a Virtual Multi-factor Authentication (MFA) Device> in the /IAM User Guide/ .
module Network.AWS.IAM.DeactivateMFADevice
  ( -- * Creating a request
    DeactivateMFADevice (..),
    mkDeactivateMFADevice,

    -- ** Request lenses
    dmfadUserName,
    dmfadSerialNumber,

    -- * Destructuring the response
    DeactivateMFADeviceResponse (..),
    mkDeactivateMFADeviceResponse,
  )
where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeactivateMFADevice' smart constructor.
data DeactivateMFADevice = DeactivateMFADevice'
  { -- | The name of the user whose MFA device you want to deactivate.
    --
    -- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
    userName :: Types.ExistingUserNameType,
    -- | The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.
    --
    -- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-
    serialNumber :: Types.SerialNumberType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeactivateMFADevice' value with any optional fields omitted.
mkDeactivateMFADevice ::
  -- | 'userName'
  Types.ExistingUserNameType ->
  -- | 'serialNumber'
  Types.SerialNumberType ->
  DeactivateMFADevice
mkDeactivateMFADevice userName serialNumber =
  DeactivateMFADevice' {userName, serialNumber}

-- | The name of the user whose MFA device you want to deactivate.
--
-- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- /Note:/ Consider using 'userName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmfadUserName :: Lens.Lens' DeactivateMFADevice Types.ExistingUserNameType
dmfadUserName = Lens.field @"userName"
{-# DEPRECATED dmfadUserName "Use generic-lens or generic-optics with 'userName' instead." #-}

-- | The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.
--
-- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-
--
-- /Note:/ Consider using 'serialNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmfadSerialNumber :: Lens.Lens' DeactivateMFADevice Types.SerialNumberType
dmfadSerialNumber = Lens.field @"serialNumber"
{-# DEPRECATED dmfadSerialNumber "Use generic-lens or generic-optics with 'serialNumber' instead." #-}

instance Core.AWSRequest DeactivateMFADevice where
  type Rs DeactivateMFADevice = DeactivateMFADeviceResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "DeactivateMFADevice")
                Core.<> (Core.pure ("Version", "2010-05-08"))
                Core.<> (Core.toQueryValue "UserName" userName)
                Core.<> (Core.toQueryValue "SerialNumber" serialNumber)
            )
      }
  response = Response.receiveNull DeactivateMFADeviceResponse'

-- | /See:/ 'mkDeactivateMFADeviceResponse' smart constructor.
data DeactivateMFADeviceResponse = DeactivateMFADeviceResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeactivateMFADeviceResponse' value with any optional fields omitted.
mkDeactivateMFADeviceResponse ::
  DeactivateMFADeviceResponse
mkDeactivateMFADeviceResponse = DeactivateMFADeviceResponse'