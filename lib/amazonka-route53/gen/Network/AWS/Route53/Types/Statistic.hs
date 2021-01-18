{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.Statistic
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.Statistic
  ( Statistic
      ( Statistic',
        StatisticAverage,
        StatisticSum,
        StatisticSampleCount,
        StatisticMaximum,
        StatisticMinimum,
        fromStatistic
      ),
  )
where

import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Route53.Internal as Types

newtype Statistic = Statistic' {fromStatistic :: Core.Text}
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

pattern StatisticAverage :: Statistic
pattern StatisticAverage = Statistic' "Average"

pattern StatisticSum :: Statistic
pattern StatisticSum = Statistic' "Sum"

pattern StatisticSampleCount :: Statistic
pattern StatisticSampleCount = Statistic' "SampleCount"

pattern StatisticMaximum :: Statistic
pattern StatisticMaximum = Statistic' "Maximum"

pattern StatisticMinimum :: Statistic
pattern StatisticMinimum = Statistic' "Minimum"

{-# COMPLETE
  StatisticAverage,
  StatisticSum,
  StatisticSampleCount,
  StatisticMaximum,
  StatisticMinimum,
  Statistic'
  #-}