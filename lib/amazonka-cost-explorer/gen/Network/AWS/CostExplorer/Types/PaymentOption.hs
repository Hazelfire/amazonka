{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.PaymentOption
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.PaymentOption
  ( PaymentOption
      ( PaymentOption',
        PaymentOptionNoUpfront,
        PaymentOptionPartialUpfront,
        PaymentOptionAllUpfront,
        PaymentOptionLightUtilization,
        PaymentOptionMediumUtilization,
        PaymentOptionHeavyUtilization,
        fromPaymentOption
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype PaymentOption = PaymentOption'
  { fromPaymentOption ::
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

pattern PaymentOptionNoUpfront :: PaymentOption
pattern PaymentOptionNoUpfront = PaymentOption' "NO_UPFRONT"

pattern PaymentOptionPartialUpfront :: PaymentOption
pattern PaymentOptionPartialUpfront = PaymentOption' "PARTIAL_UPFRONT"

pattern PaymentOptionAllUpfront :: PaymentOption
pattern PaymentOptionAllUpfront = PaymentOption' "ALL_UPFRONT"

pattern PaymentOptionLightUtilization :: PaymentOption
pattern PaymentOptionLightUtilization = PaymentOption' "LIGHT_UTILIZATION"

pattern PaymentOptionMediumUtilization :: PaymentOption
pattern PaymentOptionMediumUtilization = PaymentOption' "MEDIUM_UTILIZATION"

pattern PaymentOptionHeavyUtilization :: PaymentOption
pattern PaymentOptionHeavyUtilization = PaymentOption' "HEAVY_UTILIZATION"

{-# COMPLETE
  PaymentOptionNoUpfront,
  PaymentOptionPartialUpfront,
  PaymentOptionAllUpfront,
  PaymentOptionLightUtilization,
  PaymentOptionMediumUtilization,
  PaymentOptionHeavyUtilization,
  PaymentOption'
  #-}