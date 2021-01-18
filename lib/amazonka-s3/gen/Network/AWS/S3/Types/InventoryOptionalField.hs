{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.InventoryOptionalField
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.InventoryOptionalField
  ( InventoryOptionalField
      ( InventoryOptionalField',
        InventoryOptionalFieldFieldSize,
        InventoryOptionalFieldFieldLastModifiedDate,
        InventoryOptionalFieldFieldStorageClass,
        InventoryOptionalFieldFieldETag,
        InventoryOptionalFieldFieldIsMultipartUploaded,
        InventoryOptionalFieldFieldReplicationStatus,
        InventoryOptionalFieldFieldEncryptionStatus,
        InventoryOptionalFieldFieldObjectLockRetainUntilDate,
        InventoryOptionalFieldFieldObjectLockMode,
        InventoryOptionalFieldFieldObjectLockLegalHoldStatus,
        InventoryOptionalFieldFieldIntelligentTieringAccessTier,
        fromInventoryOptionalField
      ),
  )
where

import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.S3.Internal as Types

newtype InventoryOptionalField = InventoryOptionalField'
  { fromInventoryOptionalField ::
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

pattern InventoryOptionalFieldFieldSize :: InventoryOptionalField
pattern InventoryOptionalFieldFieldSize = InventoryOptionalField' "Size"

pattern InventoryOptionalFieldFieldLastModifiedDate :: InventoryOptionalField
pattern InventoryOptionalFieldFieldLastModifiedDate = InventoryOptionalField' "LastModifiedDate"

pattern InventoryOptionalFieldFieldStorageClass :: InventoryOptionalField
pattern InventoryOptionalFieldFieldStorageClass = InventoryOptionalField' "StorageClass"

pattern InventoryOptionalFieldFieldETag :: InventoryOptionalField
pattern InventoryOptionalFieldFieldETag = InventoryOptionalField' "ETag"

pattern InventoryOptionalFieldFieldIsMultipartUploaded :: InventoryOptionalField
pattern InventoryOptionalFieldFieldIsMultipartUploaded = InventoryOptionalField' "IsMultipartUploaded"

pattern InventoryOptionalFieldFieldReplicationStatus :: InventoryOptionalField
pattern InventoryOptionalFieldFieldReplicationStatus = InventoryOptionalField' "ReplicationStatus"

pattern InventoryOptionalFieldFieldEncryptionStatus :: InventoryOptionalField
pattern InventoryOptionalFieldFieldEncryptionStatus = InventoryOptionalField' "EncryptionStatus"

pattern InventoryOptionalFieldFieldObjectLockRetainUntilDate :: InventoryOptionalField
pattern InventoryOptionalFieldFieldObjectLockRetainUntilDate = InventoryOptionalField' "ObjectLockRetainUntilDate"

pattern InventoryOptionalFieldFieldObjectLockMode :: InventoryOptionalField
pattern InventoryOptionalFieldFieldObjectLockMode = InventoryOptionalField' "ObjectLockMode"

pattern InventoryOptionalFieldFieldObjectLockLegalHoldStatus :: InventoryOptionalField
pattern InventoryOptionalFieldFieldObjectLockLegalHoldStatus = InventoryOptionalField' "ObjectLockLegalHoldStatus"

pattern InventoryOptionalFieldFieldIntelligentTieringAccessTier :: InventoryOptionalField
pattern InventoryOptionalFieldFieldIntelligentTieringAccessTier = InventoryOptionalField' "IntelligentTieringAccessTier"

{-# COMPLETE
  InventoryOptionalFieldFieldSize,
  InventoryOptionalFieldFieldLastModifiedDate,
  InventoryOptionalFieldFieldStorageClass,
  InventoryOptionalFieldFieldETag,
  InventoryOptionalFieldFieldIsMultipartUploaded,
  InventoryOptionalFieldFieldReplicationStatus,
  InventoryOptionalFieldFieldEncryptionStatus,
  InventoryOptionalFieldFieldObjectLockRetainUntilDate,
  InventoryOptionalFieldFieldObjectLockMode,
  InventoryOptionalFieldFieldObjectLockLegalHoldStatus,
  InventoryOptionalFieldFieldIntelligentTieringAccessTier,
  InventoryOptionalField'
  #-}