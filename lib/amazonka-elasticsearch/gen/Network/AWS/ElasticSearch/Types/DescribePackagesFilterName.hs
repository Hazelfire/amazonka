{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.DescribePackagesFilterName
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.DescribePackagesFilterName
  ( DescribePackagesFilterName
      ( DescribePackagesFilterName',
        DescribePackagesFilterNamePackageID,
        DescribePackagesFilterNamePackageName,
        DescribePackagesFilterNamePackageStatus,
        fromDescribePackagesFilterName
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype DescribePackagesFilterName = DescribePackagesFilterName'
  { fromDescribePackagesFilterName ::
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

pattern DescribePackagesFilterNamePackageID :: DescribePackagesFilterName
pattern DescribePackagesFilterNamePackageID = DescribePackagesFilterName' "PackageID"

pattern DescribePackagesFilterNamePackageName :: DescribePackagesFilterName
pattern DescribePackagesFilterNamePackageName = DescribePackagesFilterName' "PackageName"

pattern DescribePackagesFilterNamePackageStatus :: DescribePackagesFilterName
pattern DescribePackagesFilterNamePackageStatus = DescribePackagesFilterName' "PackageStatus"

{-# COMPLETE
  DescribePackagesFilterNamePackageID,
  DescribePackagesFilterNamePackageName,
  DescribePackagesFilterNamePackageStatus,
  DescribePackagesFilterName'
  #-}