{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.ESWarmPartitionInstanceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ESWarmPartitionInstanceType
  ( ESWarmPartitionInstanceType
      ( ESWarmPartitionInstanceType',
        ESWarmPartitionInstanceTypeULTRAWARM1_Medium_Elasticsearch,
        ESWarmPartitionInstanceTypeULTRAWARM1_Large_Elasticsearch,
        fromESWarmPartitionInstanceType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype ESWarmPartitionInstanceType = ESWarmPartitionInstanceType'
  { fromESWarmPartitionInstanceType ::
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

pattern ESWarmPartitionInstanceTypeULTRAWARM1_Medium_Elasticsearch :: ESWarmPartitionInstanceType
pattern ESWarmPartitionInstanceTypeULTRAWARM1_Medium_Elasticsearch = ESWarmPartitionInstanceType' "ultrawarm1.medium.elasticsearch"

pattern ESWarmPartitionInstanceTypeULTRAWARM1_Large_Elasticsearch :: ESWarmPartitionInstanceType
pattern ESWarmPartitionInstanceTypeULTRAWARM1_Large_Elasticsearch = ESWarmPartitionInstanceType' "ultrawarm1.large.elasticsearch"

{-# COMPLETE
  ESWarmPartitionInstanceTypeULTRAWARM1_Medium_Elasticsearch,
  ESWarmPartitionInstanceTypeULTRAWARM1_Large_Elasticsearch,
  ESWarmPartitionInstanceType'
  #-}