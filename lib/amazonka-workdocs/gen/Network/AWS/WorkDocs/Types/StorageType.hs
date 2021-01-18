{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.StorageType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.StorageType
  ( StorageType
      ( StorageType',
        StorageTypeUnlimited,
        StorageTypeQuota,
        fromStorageType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype StorageType = StorageType' {fromStorageType :: Core.Text}
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

pattern StorageTypeUnlimited :: StorageType
pattern StorageTypeUnlimited = StorageType' "UNLIMITED"

pattern StorageTypeQuota :: StorageType
pattern StorageTypeQuota = StorageType' "QUOTA"

{-# COMPLETE
  StorageTypeUnlimited,
  StorageTypeQuota,
  StorageType'
  #-}