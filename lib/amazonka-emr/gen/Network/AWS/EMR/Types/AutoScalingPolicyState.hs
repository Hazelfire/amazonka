{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.AutoScalingPolicyState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.AutoScalingPolicyState
  ( AutoScalingPolicyState
      ( AutoScalingPolicyState',
        AutoScalingPolicyStatePending,
        AutoScalingPolicyStateAttaching,
        AutoScalingPolicyStateAttached,
        AutoScalingPolicyStateDetaching,
        AutoScalingPolicyStateDetached,
        AutoScalingPolicyStateFailed,
        fromAutoScalingPolicyState
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype AutoScalingPolicyState = AutoScalingPolicyState'
  { fromAutoScalingPolicyState ::
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

pattern AutoScalingPolicyStatePending :: AutoScalingPolicyState
pattern AutoScalingPolicyStatePending = AutoScalingPolicyState' "PENDING"

pattern AutoScalingPolicyStateAttaching :: AutoScalingPolicyState
pattern AutoScalingPolicyStateAttaching = AutoScalingPolicyState' "ATTACHING"

pattern AutoScalingPolicyStateAttached :: AutoScalingPolicyState
pattern AutoScalingPolicyStateAttached = AutoScalingPolicyState' "ATTACHED"

pattern AutoScalingPolicyStateDetaching :: AutoScalingPolicyState
pattern AutoScalingPolicyStateDetaching = AutoScalingPolicyState' "DETACHING"

pattern AutoScalingPolicyStateDetached :: AutoScalingPolicyState
pattern AutoScalingPolicyStateDetached = AutoScalingPolicyState' "DETACHED"

pattern AutoScalingPolicyStateFailed :: AutoScalingPolicyState
pattern AutoScalingPolicyStateFailed = AutoScalingPolicyState' "FAILED"

{-# COMPLETE
  AutoScalingPolicyStatePending,
  AutoScalingPolicyStateAttaching,
  AutoScalingPolicyStateAttached,
  AutoScalingPolicyStateDetaching,
  AutoScalingPolicyStateDetached,
  AutoScalingPolicyStateFailed,
  AutoScalingPolicyState'
  #-}