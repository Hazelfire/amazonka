{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.FulfillmentState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.FulfillmentState
  ( FulfillmentState
      ( FulfillmentState',
        FulfillmentStateFulfilled,
        FulfillmentStateFailed,
        FulfillmentStateReadyForFulfillment,
        fromFulfillmentState
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype FulfillmentState = FulfillmentState'
  { fromFulfillmentState ::
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

pattern FulfillmentStateFulfilled :: FulfillmentState
pattern FulfillmentStateFulfilled = FulfillmentState' "Fulfilled"

pattern FulfillmentStateFailed :: FulfillmentState
pattern FulfillmentStateFailed = FulfillmentState' "Failed"

pattern FulfillmentStateReadyForFulfillment :: FulfillmentState
pattern FulfillmentStateReadyForFulfillment = FulfillmentState' "ReadyForFulfillment"

{-# COMPLETE
  FulfillmentStateFulfilled,
  FulfillmentStateFailed,
  FulfillmentStateReadyForFulfillment,
  FulfillmentState'
  #-}