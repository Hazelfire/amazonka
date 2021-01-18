{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.StatementType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.StatementType
  ( StatementType
      ( StatementType',
        StatementTypeDdl,
        StatementTypeDml,
        StatementTypeUtility,
        fromStatementType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype StatementType = StatementType'
  { fromStatementType ::
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

pattern StatementTypeDdl :: StatementType
pattern StatementTypeDdl = StatementType' "DDL"

pattern StatementTypeDml :: StatementType
pattern StatementTypeDml = StatementType' "DML"

pattern StatementTypeUtility :: StatementType
pattern StatementTypeUtility = StatementType' "UTILITY"

{-# COMPLETE
  StatementTypeDdl,
  StatementTypeDml,
  StatementTypeUtility,
  StatementType'
  #-}