{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.QueueListBy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.QueueListBy
  ( QueueListBy
      ( QueueListBy',
        QueueListByName,
        QueueListByCreationDate,
        fromQueueListBy
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.
newtype QueueListBy = QueueListBy' {fromQueueListBy :: Core.Text}
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

pattern QueueListByName :: QueueListBy
pattern QueueListByName = QueueListBy' "NAME"

pattern QueueListByCreationDate :: QueueListBy
pattern QueueListByCreationDate = QueueListBy' "CREATION_DATE"

{-# COMPLETE
  QueueListByName,
  QueueListByCreationDate,
  QueueListBy'
  #-}