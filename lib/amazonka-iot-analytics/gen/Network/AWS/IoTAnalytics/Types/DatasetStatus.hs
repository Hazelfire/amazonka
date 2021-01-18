{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatasetStatus
  ( DatasetStatus
      ( DatasetStatus',
        DatasetStatusCreating,
        DatasetStatusActive,
        DatasetStatusDeleting,
        fromDatasetStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype DatasetStatus = DatasetStatus'
  { fromDatasetStatus ::
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

pattern DatasetStatusCreating :: DatasetStatus
pattern DatasetStatusCreating = DatasetStatus' "CREATING"

pattern DatasetStatusActive :: DatasetStatus
pattern DatasetStatusActive = DatasetStatus' "ACTIVE"

pattern DatasetStatusDeleting :: DatasetStatus
pattern DatasetStatusDeleting = DatasetStatus' "DELETING"

{-# COMPLETE
  DatasetStatusCreating,
  DatasetStatusActive,
  DatasetStatusDeleting,
  DatasetStatus'
  #-}