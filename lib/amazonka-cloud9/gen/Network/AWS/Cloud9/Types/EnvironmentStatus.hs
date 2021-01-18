{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Cloud9.Types.EnvironmentStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.EnvironmentStatus
  ( EnvironmentStatus
      ( EnvironmentStatus',
        EnvironmentStatusError,
        EnvironmentStatusCreating,
        EnvironmentStatusConnecting,
        EnvironmentStatusReady,
        EnvironmentStatusStopping,
        EnvironmentStatusStopped,
        EnvironmentStatusDeleting,
        fromEnvironmentStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype EnvironmentStatus = EnvironmentStatus'
  { fromEnvironmentStatus ::
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

pattern EnvironmentStatusError :: EnvironmentStatus
pattern EnvironmentStatusError = EnvironmentStatus' "error"

pattern EnvironmentStatusCreating :: EnvironmentStatus
pattern EnvironmentStatusCreating = EnvironmentStatus' "creating"

pattern EnvironmentStatusConnecting :: EnvironmentStatus
pattern EnvironmentStatusConnecting = EnvironmentStatus' "connecting"

pattern EnvironmentStatusReady :: EnvironmentStatus
pattern EnvironmentStatusReady = EnvironmentStatus' "ready"

pattern EnvironmentStatusStopping :: EnvironmentStatus
pattern EnvironmentStatusStopping = EnvironmentStatus' "stopping"

pattern EnvironmentStatusStopped :: EnvironmentStatus
pattern EnvironmentStatusStopped = EnvironmentStatus' "stopped"

pattern EnvironmentStatusDeleting :: EnvironmentStatus
pattern EnvironmentStatusDeleting = EnvironmentStatus' "deleting"

{-# COMPLETE
  EnvironmentStatusError,
  EnvironmentStatusCreating,
  EnvironmentStatusConnecting,
  EnvironmentStatusReady,
  EnvironmentStatusStopping,
  EnvironmentStatusStopped,
  EnvironmentStatusDeleting,
  EnvironmentStatus'
  #-}