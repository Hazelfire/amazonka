{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.Types.ScalingActivityStatusCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.ScalingActivityStatusCode
  ( ScalingActivityStatusCode
      ( ScalingActivityStatusCode',
        ScalingActivityStatusCodePending,
        ScalingActivityStatusCodeInProgress,
        ScalingActivityStatusCodeSuccessful,
        ScalingActivityStatusCodeOverridden,
        ScalingActivityStatusCodeUnfulfilled,
        ScalingActivityStatusCodeFailed,
        fromScalingActivityStatusCode
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype ScalingActivityStatusCode = ScalingActivityStatusCode'
  { fromScalingActivityStatusCode ::
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

pattern ScalingActivityStatusCodePending :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodePending = ScalingActivityStatusCode' "Pending"

pattern ScalingActivityStatusCodeInProgress :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeInProgress = ScalingActivityStatusCode' "InProgress"

pattern ScalingActivityStatusCodeSuccessful :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeSuccessful = ScalingActivityStatusCode' "Successful"

pattern ScalingActivityStatusCodeOverridden :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeOverridden = ScalingActivityStatusCode' "Overridden"

pattern ScalingActivityStatusCodeUnfulfilled :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeUnfulfilled = ScalingActivityStatusCode' "Unfulfilled"

pattern ScalingActivityStatusCodeFailed :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeFailed = ScalingActivityStatusCode' "Failed"

{-# COMPLETE
  ScalingActivityStatusCodePending,
  ScalingActivityStatusCodeInProgress,
  ScalingActivityStatusCodeSuccessful,
  ScalingActivityStatusCodeOverridden,
  ScalingActivityStatusCodeUnfulfilled,
  ScalingActivityStatusCodeFailed,
  ScalingActivityStatusCode'
  #-}