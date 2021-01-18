{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AppNetworkAccessType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppNetworkAccessType
  ( AppNetworkAccessType
      ( AppNetworkAccessType',
        AppNetworkAccessTypePublicInternetOnly,
        AppNetworkAccessTypeVpcOnly,
        fromAppNetworkAccessType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype AppNetworkAccessType = AppNetworkAccessType'
  { fromAppNetworkAccessType ::
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

pattern AppNetworkAccessTypePublicInternetOnly :: AppNetworkAccessType
pattern AppNetworkAccessTypePublicInternetOnly = AppNetworkAccessType' "PublicInternetOnly"

pattern AppNetworkAccessTypeVpcOnly :: AppNetworkAccessType
pattern AppNetworkAccessTypeVpcOnly = AppNetworkAccessType' "VpcOnly"

{-# COMPLETE
  AppNetworkAccessTypePublicInternetOnly,
  AppNetworkAccessTypeVpcOnly,
  AppNetworkAccessType'
  #-}