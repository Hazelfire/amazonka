{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ReplicaStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReplicaStatus
  ( ReplicaStatus
      ( ReplicaStatus',
        ReplicaStatusCreating,
        ReplicaStatusCreationFailed,
        ReplicaStatusUpdating,
        ReplicaStatusDeleting,
        ReplicaStatusActive,
        ReplicaStatusRegionDisabled,
        ReplicaStatusInaccessibleEncryptionCredentials,
        fromReplicaStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype ReplicaStatus = ReplicaStatus'
  { fromReplicaStatus ::
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

pattern ReplicaStatusCreating :: ReplicaStatus
pattern ReplicaStatusCreating = ReplicaStatus' "CREATING"

pattern ReplicaStatusCreationFailed :: ReplicaStatus
pattern ReplicaStatusCreationFailed = ReplicaStatus' "CREATION_FAILED"

pattern ReplicaStatusUpdating :: ReplicaStatus
pattern ReplicaStatusUpdating = ReplicaStatus' "UPDATING"

pattern ReplicaStatusDeleting :: ReplicaStatus
pattern ReplicaStatusDeleting = ReplicaStatus' "DELETING"

pattern ReplicaStatusActive :: ReplicaStatus
pattern ReplicaStatusActive = ReplicaStatus' "ACTIVE"

pattern ReplicaStatusRegionDisabled :: ReplicaStatus
pattern ReplicaStatusRegionDisabled = ReplicaStatus' "REGION_DISABLED"

pattern ReplicaStatusInaccessibleEncryptionCredentials :: ReplicaStatus
pattern ReplicaStatusInaccessibleEncryptionCredentials = ReplicaStatus' "INACCESSIBLE_ENCRYPTION_CREDENTIALS"

{-# COMPLETE
  ReplicaStatusCreating,
  ReplicaStatusCreationFailed,
  ReplicaStatusUpdating,
  ReplicaStatusDeleting,
  ReplicaStatusActive,
  ReplicaStatusRegionDisabled,
  ReplicaStatusInaccessibleEncryptionCredentials,
  ReplicaStatus'
  #-}