{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.AvailabilityMonitorTestStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.AvailabilityMonitorTestStatus
  ( AvailabilityMonitorTestStatus
      ( AvailabilityMonitorTestStatus',
        AvailabilityMonitorTestStatusComplete,
        AvailabilityMonitorTestStatusFailed,
        AvailabilityMonitorTestStatusPending,
        fromAvailabilityMonitorTestStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype AvailabilityMonitorTestStatus = AvailabilityMonitorTestStatus'
  { fromAvailabilityMonitorTestStatus ::
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

pattern AvailabilityMonitorTestStatusComplete :: AvailabilityMonitorTestStatus
pattern AvailabilityMonitorTestStatusComplete = AvailabilityMonitorTestStatus' "COMPLETE"

pattern AvailabilityMonitorTestStatusFailed :: AvailabilityMonitorTestStatus
pattern AvailabilityMonitorTestStatusFailed = AvailabilityMonitorTestStatus' "FAILED"

pattern AvailabilityMonitorTestStatusPending :: AvailabilityMonitorTestStatus
pattern AvailabilityMonitorTestStatusPending = AvailabilityMonitorTestStatus' "PENDING"

{-# COMPLETE
  AvailabilityMonitorTestStatusComplete,
  AvailabilityMonitorTestStatusFailed,
  AvailabilityMonitorTestStatusPending,
  AvailabilityMonitorTestStatus'
  #-}