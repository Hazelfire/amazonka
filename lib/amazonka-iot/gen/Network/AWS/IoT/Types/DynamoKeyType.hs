{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DynamoKeyType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DynamoKeyType
  ( DynamoKeyType
      ( DynamoKeyType',
        DynamoKeyTypeString,
        DynamoKeyTypeNumber,
        fromDynamoKeyType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype DynamoKeyType = DynamoKeyType'
  { fromDynamoKeyType ::
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

pattern DynamoKeyTypeString :: DynamoKeyType
pattern DynamoKeyTypeString = DynamoKeyType' "STRING"

pattern DynamoKeyTypeNumber :: DynamoKeyType
pattern DynamoKeyTypeNumber = DynamoKeyType' "NUMBER"

{-# COMPLETE
  DynamoKeyTypeString,
  DynamoKeyTypeNumber,
  DynamoKeyType'
  #-}