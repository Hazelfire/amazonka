{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.Types.Status
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.Status
  ( Status
      ( Status',
        StatusEnabled,
        StatusEnabling,
        StatusDisabled,
        StatusDisabling,
        fromStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype Status = Status' {fromStatus :: Core.Text}
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

pattern StatusEnabled :: Status
pattern StatusEnabled = Status' "ENABLED"

pattern StatusEnabling :: Status
pattern StatusEnabling = Status' "ENABLING"

pattern StatusDisabled :: Status
pattern StatusDisabled = Status' "DISABLED"

pattern StatusDisabling :: Status
pattern StatusDisabling = Status' "DISABLING"

{-# COMPLETE
  StatusEnabled,
  StatusEnabling,
  StatusDisabled,
  StatusDisabling,
  Status'
  #-}