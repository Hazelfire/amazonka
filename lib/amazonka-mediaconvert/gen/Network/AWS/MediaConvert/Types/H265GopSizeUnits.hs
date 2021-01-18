{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265GopSizeUnits
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265GopSizeUnits
  ( H265GopSizeUnits
      ( H265GopSizeUnits',
        H265GopSizeUnitsFrames,
        H265GopSizeUnitsSeconds,
        fromH265GopSizeUnits
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | Indicates if the GOP Size in H265 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
newtype H265GopSizeUnits = H265GopSizeUnits'
  { fromH265GopSizeUnits ::
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

pattern H265GopSizeUnitsFrames :: H265GopSizeUnits
pattern H265GopSizeUnitsFrames = H265GopSizeUnits' "FRAMES"

pattern H265GopSizeUnitsSeconds :: H265GopSizeUnits
pattern H265GopSizeUnitsSeconds = H265GopSizeUnits' "SECONDS"

{-# COMPLETE
  H265GopSizeUnitsFrames,
  H265GopSizeUnitsSeconds,
  H265GopSizeUnits'
  #-}