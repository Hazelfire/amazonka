{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.RedactionOutput
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.RedactionOutput
  ( RedactionOutput
      ( RedactionOutput',
        RedactionOutputRedacted,
        RedactionOutputRedactedAndUnredacted,
        fromRedactionOutput
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype RedactionOutput = RedactionOutput'
  { fromRedactionOutput ::
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

pattern RedactionOutputRedacted :: RedactionOutput
pattern RedactionOutputRedacted = RedactionOutput' "redacted"

pattern RedactionOutputRedactedAndUnredacted :: RedactionOutput
pattern RedactionOutputRedactedAndUnredacted = RedactionOutput' "redacted_and_unredacted"

{-# COMPLETE
  RedactionOutputRedacted,
  RedactionOutputRedactedAndUnredacted,
  RedactionOutput'
  #-}