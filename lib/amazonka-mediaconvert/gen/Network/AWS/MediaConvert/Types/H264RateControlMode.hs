{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264RateControlMode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264RateControlMode
  ( H264RateControlMode
      ( H264RateControlMode',
        H264RateControlModeVbr,
        H264RateControlModeCbr,
        H264RateControlModeQvbr,
        fromH264RateControlMode
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
newtype H264RateControlMode = H264RateControlMode'
  { fromH264RateControlMode ::
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

pattern H264RateControlModeVbr :: H264RateControlMode
pattern H264RateControlModeVbr = H264RateControlMode' "VBR"

pattern H264RateControlModeCbr :: H264RateControlMode
pattern H264RateControlModeCbr = H264RateControlMode' "CBR"

pattern H264RateControlModeQvbr :: H264RateControlMode
pattern H264RateControlModeQvbr = H264RateControlMode' "QVBR"

{-# COMPLETE
  H264RateControlModeVbr,
  H264RateControlModeCbr,
  H264RateControlModeQvbr,
  H264RateControlMode'
  #-}