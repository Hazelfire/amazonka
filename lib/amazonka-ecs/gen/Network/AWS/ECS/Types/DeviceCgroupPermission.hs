{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.DeviceCgroupPermission
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.DeviceCgroupPermission
  ( DeviceCgroupPermission
      ( DeviceCgroupPermission',
        DeviceCgroupPermissionRead,
        DeviceCgroupPermissionWrite,
        DeviceCgroupPermissionMknod,
        fromDeviceCgroupPermission
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype DeviceCgroupPermission = DeviceCgroupPermission'
  { fromDeviceCgroupPermission ::
      Core.Text
  }
  deriving stock
    ( Core.Eq,
      Core.Ord,
      Core.Read,
      Core.Show,
      Core.Generic
    )
  deriving newtype
    ( Core.IsString,
      Core.Hashable,
      Core.NFData,
      Core.ToJSONKey,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.FromJSON,
      Core.ToXML,
      Core.FromXML,
      Core.ToText,
      Core.FromText,
      Core.ToByteString,
      Core.ToQuery,
      Core.ToHeader
    )

pattern DeviceCgroupPermissionRead :: DeviceCgroupPermission
pattern DeviceCgroupPermissionRead = DeviceCgroupPermission' "read"

pattern DeviceCgroupPermissionWrite :: DeviceCgroupPermission
pattern DeviceCgroupPermissionWrite = DeviceCgroupPermission' "write"

pattern DeviceCgroupPermissionMknod :: DeviceCgroupPermission
pattern DeviceCgroupPermissionMknod = DeviceCgroupPermission' "mknod"

{-# COMPLETE
  DeviceCgroupPermissionRead,
  DeviceCgroupPermissionWrite,
  DeviceCgroupPermissionMknod,
  DeviceCgroupPermission'
  #-}