{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ResourceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ResourceType
  ( ResourceType
      ( ResourceType',
        ResourceTypeDeviceCertificate,
        ResourceTypeCaCertificate,
        ResourceTypeIotPolicy,
        ResourceTypeCognitoIdentityPool,
        ResourceTypeClientId,
        ResourceTypeAccountSettings,
        ResourceTypeRoleAlias,
        ResourceTypeIamRole,
        fromResourceType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype ResourceType = ResourceType' {fromResourceType :: Core.Text}
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

pattern ResourceTypeDeviceCertificate :: ResourceType
pattern ResourceTypeDeviceCertificate = ResourceType' "DEVICE_CERTIFICATE"

pattern ResourceTypeCaCertificate :: ResourceType
pattern ResourceTypeCaCertificate = ResourceType' "CA_CERTIFICATE"

pattern ResourceTypeIotPolicy :: ResourceType
pattern ResourceTypeIotPolicy = ResourceType' "IOT_POLICY"

pattern ResourceTypeCognitoIdentityPool :: ResourceType
pattern ResourceTypeCognitoIdentityPool = ResourceType' "COGNITO_IDENTITY_POOL"

pattern ResourceTypeClientId :: ResourceType
pattern ResourceTypeClientId = ResourceType' "CLIENT_ID"

pattern ResourceTypeAccountSettings :: ResourceType
pattern ResourceTypeAccountSettings = ResourceType' "ACCOUNT_SETTINGS"

pattern ResourceTypeRoleAlias :: ResourceType
pattern ResourceTypeRoleAlias = ResourceType' "ROLE_ALIAS"

pattern ResourceTypeIamRole :: ResourceType
pattern ResourceTypeIamRole = ResourceType' "IAM_ROLE"

{-# COMPLETE
  ResourceTypeDeviceCertificate,
  ResourceTypeCaCertificate,
  ResourceTypeIotPolicy,
  ResourceTypeCognitoIdentityPool,
  ResourceTypeClientId,
  ResourceTypeAccountSettings,
  ResourceTypeRoleAlias,
  ResourceTypeIamRole,
  ResourceType'
  #-}