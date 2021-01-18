{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.SortKeyType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.SortKeyType
  ( SortKeyType
      ( SortKeyType',
        SortKeyTypeServiceNamespaceAscending,
        SortKeyTypeServiceNamespaceDescending,
        SortKeyTypeLastAuthenticatedTimeAscending,
        SortKeyTypeLastAuthenticatedTimeDescending,
        fromSortKeyType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype SortKeyType = SortKeyType' {fromSortKeyType :: Core.Text}
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

pattern SortKeyTypeServiceNamespaceAscending :: SortKeyType
pattern SortKeyTypeServiceNamespaceAscending = SortKeyType' "SERVICE_NAMESPACE_ASCENDING"

pattern SortKeyTypeServiceNamespaceDescending :: SortKeyType
pattern SortKeyTypeServiceNamespaceDescending = SortKeyType' "SERVICE_NAMESPACE_DESCENDING"

pattern SortKeyTypeLastAuthenticatedTimeAscending :: SortKeyType
pattern SortKeyTypeLastAuthenticatedTimeAscending = SortKeyType' "LAST_AUTHENTICATED_TIME_ASCENDING"

pattern SortKeyTypeLastAuthenticatedTimeDescending :: SortKeyType
pattern SortKeyTypeLastAuthenticatedTimeDescending = SortKeyType' "LAST_AUTHENTICATED_TIME_DESCENDING"

{-# COMPLETE
  SortKeyTypeServiceNamespaceAscending,
  SortKeyTypeServiceNamespaceDescending,
  SortKeyTypeLastAuthenticatedTimeAscending,
  SortKeyTypeLastAuthenticatedTimeDescending,
  SortKeyType'
  #-}