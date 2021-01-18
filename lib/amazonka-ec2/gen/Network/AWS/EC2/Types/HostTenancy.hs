{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.HostTenancy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HostTenancy
  ( HostTenancy
      ( HostTenancy',
        HostTenancyDedicated,
        HostTenancyHost,
        fromHostTenancy
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype HostTenancy = HostTenancy' {fromHostTenancy :: Core.Text}
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

pattern HostTenancyDedicated :: HostTenancy
pattern HostTenancyDedicated = HostTenancy' "dedicated"

pattern HostTenancyHost :: HostTenancy
pattern HostTenancyHost = HostTenancy' "host"

{-# COMPLETE
  HostTenancyDedicated,
  HostTenancyHost,
  HostTenancy'
  #-}