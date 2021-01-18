{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.TLSSecurityPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.TLSSecurityPolicy
  ( TLSSecurityPolicy
      ( TLSSecurityPolicy',
        TLSSecurityPolicyPolicyMinTls10201907,
        TLSSecurityPolicyPolicyMinTls12201907,
        fromTLSSecurityPolicy
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | The minimum required TLS version.
newtype TLSSecurityPolicy = TLSSecurityPolicy'
  { fromTLSSecurityPolicy ::
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

pattern TLSSecurityPolicyPolicyMinTls10201907 :: TLSSecurityPolicy
pattern TLSSecurityPolicyPolicyMinTls10201907 = TLSSecurityPolicy' "Policy-Min-TLS-1-0-2019-07"

pattern TLSSecurityPolicyPolicyMinTls12201907 :: TLSSecurityPolicy
pattern TLSSecurityPolicyPolicyMinTls12201907 = TLSSecurityPolicy' "Policy-Min-TLS-1-2-2019-07"

{-# COMPLETE
  TLSSecurityPolicyPolicyMinTls10201907,
  TLSSecurityPolicyPolicyMinTls12201907,
  TLSSecurityPolicy'
  #-}