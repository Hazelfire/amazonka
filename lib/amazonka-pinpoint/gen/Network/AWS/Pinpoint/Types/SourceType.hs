{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SourceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SourceType
  ( SourceType
      ( SourceType',
        SourceTypeAll,
        SourceTypeAny,
        SourceTypeNone,
        fromSourceType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype SourceType = SourceType' {fromSourceType :: Core.Text}
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

pattern SourceTypeAll :: SourceType
pattern SourceTypeAll = SourceType' "ALL"

pattern SourceTypeAny :: SourceType
pattern SourceTypeAny = SourceType' "ANY"

pattern SourceTypeNone :: SourceType
pattern SourceTypeNone = SourceType' "NONE"

{-# COMPLETE
  SourceTypeAll,
  SourceTypeAny,
  SourceTypeNone,
  SourceType'
  #-}