{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.RevocationReason
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.RevocationReason
  ( RevocationReason
      ( RevocationReason',
        RevocationReasonUnspecified,
        RevocationReasonKeyCompromise,
        RevocationReasonCertificateAuthorityCompromise,
        RevocationReasonAffiliationChanged,
        RevocationReasonSuperseded,
        RevocationReasonCessationOfOperation,
        RevocationReasonPrivilegeWithdrawn,
        RevocationReasonAACompromise,
        fromRevocationReason
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype RevocationReason = RevocationReason'
  { fromRevocationReason ::
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

pattern RevocationReasonUnspecified :: RevocationReason
pattern RevocationReasonUnspecified = RevocationReason' "UNSPECIFIED"

pattern RevocationReasonKeyCompromise :: RevocationReason
pattern RevocationReasonKeyCompromise = RevocationReason' "KEY_COMPROMISE"

pattern RevocationReasonCertificateAuthorityCompromise :: RevocationReason
pattern RevocationReasonCertificateAuthorityCompromise = RevocationReason' "CERTIFICATE_AUTHORITY_COMPROMISE"

pattern RevocationReasonAffiliationChanged :: RevocationReason
pattern RevocationReasonAffiliationChanged = RevocationReason' "AFFILIATION_CHANGED"

pattern RevocationReasonSuperseded :: RevocationReason
pattern RevocationReasonSuperseded = RevocationReason' "SUPERSEDED"

pattern RevocationReasonCessationOfOperation :: RevocationReason
pattern RevocationReasonCessationOfOperation = RevocationReason' "CESSATION_OF_OPERATION"

pattern RevocationReasonPrivilegeWithdrawn :: RevocationReason
pattern RevocationReasonPrivilegeWithdrawn = RevocationReason' "PRIVILEGE_WITHDRAWN"

pattern RevocationReasonAACompromise :: RevocationReason
pattern RevocationReasonAACompromise = RevocationReason' "A_A_COMPROMISE"

{-# COMPLETE
  RevocationReasonUnspecified,
  RevocationReasonKeyCompromise,
  RevocationReasonCertificateAuthorityCompromise,
  RevocationReasonAffiliationChanged,
  RevocationReasonSuperseded,
  RevocationReasonCessationOfOperation,
  RevocationReasonPrivilegeWithdrawn,
  RevocationReasonAACompromise,
  RevocationReason'
  #-}