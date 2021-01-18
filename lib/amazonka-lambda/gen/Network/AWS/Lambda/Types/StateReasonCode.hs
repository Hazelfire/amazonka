{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.StateReasonCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.StateReasonCode
  ( StateReasonCode
      ( StateReasonCode',
        StateReasonCodeIdle,
        StateReasonCodeCreating,
        StateReasonCodeRestoring,
        StateReasonCodeEniLimitExceeded,
        StateReasonCodeInsufficientRolePermissions,
        StateReasonCodeInvalidConfiguration,
        StateReasonCodeInternalError,
        StateReasonCodeSubnetOutOfIPAddresses,
        StateReasonCodeInvalidSubnet,
        StateReasonCodeInvalidSecurityGroup,
        fromStateReasonCode
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype StateReasonCode = StateReasonCode'
  { fromStateReasonCode ::
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

pattern StateReasonCodeIdle :: StateReasonCode
pattern StateReasonCodeIdle = StateReasonCode' "Idle"

pattern StateReasonCodeCreating :: StateReasonCode
pattern StateReasonCodeCreating = StateReasonCode' "Creating"

pattern StateReasonCodeRestoring :: StateReasonCode
pattern StateReasonCodeRestoring = StateReasonCode' "Restoring"

pattern StateReasonCodeEniLimitExceeded :: StateReasonCode
pattern StateReasonCodeEniLimitExceeded = StateReasonCode' "EniLimitExceeded"

pattern StateReasonCodeInsufficientRolePermissions :: StateReasonCode
pattern StateReasonCodeInsufficientRolePermissions = StateReasonCode' "InsufficientRolePermissions"

pattern StateReasonCodeInvalidConfiguration :: StateReasonCode
pattern StateReasonCodeInvalidConfiguration = StateReasonCode' "InvalidConfiguration"

pattern StateReasonCodeInternalError :: StateReasonCode
pattern StateReasonCodeInternalError = StateReasonCode' "InternalError"

pattern StateReasonCodeSubnetOutOfIPAddresses :: StateReasonCode
pattern StateReasonCodeSubnetOutOfIPAddresses = StateReasonCode' "SubnetOutOfIPAddresses"

pattern StateReasonCodeInvalidSubnet :: StateReasonCode
pattern StateReasonCodeInvalidSubnet = StateReasonCode' "InvalidSubnet"

pattern StateReasonCodeInvalidSecurityGroup :: StateReasonCode
pattern StateReasonCodeInvalidSecurityGroup = StateReasonCode' "InvalidSecurityGroup"

{-# COMPLETE
  StateReasonCodeIdle,
  StateReasonCodeCreating,
  StateReasonCodeRestoring,
  StateReasonCodeEniLimitExceeded,
  StateReasonCodeInsufficientRolePermissions,
  StateReasonCodeInvalidConfiguration,
  StateReasonCodeInternalError,
  StateReasonCodeSubnetOutOfIPAddresses,
  StateReasonCodeInvalidSubnet,
  StateReasonCodeInvalidSecurityGroup,
  StateReasonCode'
  #-}