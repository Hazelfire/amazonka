{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.TimeToLiveStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.TimeToLiveStatus
  ( TimeToLiveStatus
      ( TimeToLiveStatus',
        TimeToLiveStatusEnabling,
        TimeToLiveStatusDisabling,
        TimeToLiveStatusEnabled,
        TimeToLiveStatusDisabled,
        fromTimeToLiveStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype TimeToLiveStatus = TimeToLiveStatus'
  { fromTimeToLiveStatus ::
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

pattern TimeToLiveStatusEnabling :: TimeToLiveStatus
pattern TimeToLiveStatusEnabling = TimeToLiveStatus' "ENABLING"

pattern TimeToLiveStatusDisabling :: TimeToLiveStatus
pattern TimeToLiveStatusDisabling = TimeToLiveStatus' "DISABLING"

pattern TimeToLiveStatusEnabled :: TimeToLiveStatus
pattern TimeToLiveStatusEnabled = TimeToLiveStatus' "ENABLED"

pattern TimeToLiveStatusDisabled :: TimeToLiveStatus
pattern TimeToLiveStatusDisabled = TimeToLiveStatus' "DISABLED"

{-# COMPLETE
  TimeToLiveStatusEnabling,
  TimeToLiveStatusDisabling,
  TimeToLiveStatusEnabled,
  TimeToLiveStatusDisabled,
  TimeToLiveStatus'
  #-}