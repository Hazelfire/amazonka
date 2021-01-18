{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.DevicePoolType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DevicePoolType
  ( DevicePoolType
      ( DevicePoolType',
        DevicePoolTypeCurated,
        DevicePoolTypePrivate,
        fromDevicePoolType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype DevicePoolType = DevicePoolType'
  { fromDevicePoolType ::
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

pattern DevicePoolTypeCurated :: DevicePoolType
pattern DevicePoolTypeCurated = DevicePoolType' "CURATED"

pattern DevicePoolTypePrivate :: DevicePoolType
pattern DevicePoolTypePrivate = DevicePoolType' "PRIVATE"

{-# COMPLETE
  DevicePoolTypeCurated,
  DevicePoolTypePrivate,
  DevicePoolType'
  #-}