{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.SSEStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.SSEStatus
  ( SSEStatus
      ( SSEStatus',
        SSEStatusEnabling,
        SSEStatusEnabled,
        SSEStatusDisabling,
        SSEStatusDisabled,
        SSEStatusUpdating,
        fromSSEStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype SSEStatus = SSEStatus' {fromSSEStatus :: Core.Text}
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

pattern SSEStatusEnabling :: SSEStatus
pattern SSEStatusEnabling = SSEStatus' "ENABLING"

pattern SSEStatusEnabled :: SSEStatus
pattern SSEStatusEnabled = SSEStatus' "ENABLED"

pattern SSEStatusDisabling :: SSEStatus
pattern SSEStatusDisabling = SSEStatus' "DISABLING"

pattern SSEStatusDisabled :: SSEStatus
pattern SSEStatusDisabled = SSEStatus' "DISABLED"

pattern SSEStatusUpdating :: SSEStatus
pattern SSEStatusUpdating = SSEStatus' "UPDATING"

{-# COMPLETE
  SSEStatusEnabling,
  SSEStatusEnabled,
  SSEStatusDisabling,
  SSEStatusDisabled,
  SSEStatusUpdating,
  SSEStatus'
  #-}