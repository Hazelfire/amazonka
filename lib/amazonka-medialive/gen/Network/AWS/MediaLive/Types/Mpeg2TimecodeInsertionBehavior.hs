{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mpeg2TimecodeInsertionBehavior
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2TimecodeInsertionBehavior
  ( Mpeg2TimecodeInsertionBehavior
      ( Mpeg2TimecodeInsertionBehavior',
        Mpeg2TimecodeInsertionBehaviorDisabled,
        Mpeg2TimecodeInsertionBehaviorGopTimecode,
        fromMpeg2TimecodeInsertionBehavior
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | Mpeg2 Timecode Insertion Behavior
newtype Mpeg2TimecodeInsertionBehavior = Mpeg2TimecodeInsertionBehavior'
  { fromMpeg2TimecodeInsertionBehavior ::
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

pattern Mpeg2TimecodeInsertionBehaviorDisabled :: Mpeg2TimecodeInsertionBehavior
pattern Mpeg2TimecodeInsertionBehaviorDisabled = Mpeg2TimecodeInsertionBehavior' "DISABLED"

pattern Mpeg2TimecodeInsertionBehaviorGopTimecode :: Mpeg2TimecodeInsertionBehavior
pattern Mpeg2TimecodeInsertionBehaviorGopTimecode = Mpeg2TimecodeInsertionBehavior' "GOP_TIMECODE"

{-# COMPLETE
  Mpeg2TimecodeInsertionBehaviorDisabled,
  Mpeg2TimecodeInsertionBehaviorGopTimecode,
  Mpeg2TimecodeInsertionBehavior'
  #-}