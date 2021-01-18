{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.Destination
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.Destination
  ( Destination
      ( Destination',
        DestinationCloudwatchLogs,
        DestinationS3,
        fromDestination
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype Destination = Destination' {fromDestination :: Core.Text}
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

pattern DestinationCloudwatchLogs :: Destination
pattern DestinationCloudwatchLogs = Destination' "CLOUDWATCH_LOGS"

pattern DestinationS3 :: Destination
pattern DestinationS3 = Destination' "S3"

{-# COMPLETE
  DestinationCloudwatchLogs,
  DestinationS3,
  Destination'
  #-}