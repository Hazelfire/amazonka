{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.DestinationStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.DestinationStatus
  ( DestinationStatus
      ( DestinationStatus',
        DestinationStatusEnabling,
        DestinationStatusActive,
        DestinationStatusDisabling,
        DestinationStatusDisabled,
        DestinationStatusEnableFailed,
        fromDestinationStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype DestinationStatus = DestinationStatus'
  { fromDestinationStatus ::
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

pattern DestinationStatusEnabling :: DestinationStatus
pattern DestinationStatusEnabling = DestinationStatus' "ENABLING"

pattern DestinationStatusActive :: DestinationStatus
pattern DestinationStatusActive = DestinationStatus' "ACTIVE"

pattern DestinationStatusDisabling :: DestinationStatus
pattern DestinationStatusDisabling = DestinationStatus' "DISABLING"

pattern DestinationStatusDisabled :: DestinationStatus
pattern DestinationStatusDisabled = DestinationStatus' "DISABLED"

pattern DestinationStatusEnableFailed :: DestinationStatus
pattern DestinationStatusEnableFailed = DestinationStatus' "ENABLE_FAILED"

{-# COMPLETE
  DestinationStatusEnabling,
  DestinationStatusActive,
  DestinationStatusDisabling,
  DestinationStatusDisabled,
  DestinationStatusEnableFailed,
  DestinationStatus'
  #-}