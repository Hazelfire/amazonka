{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.SegmentType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.SegmentType
  ( SegmentType
      ( SegmentType',
        SegmentTypeTechnicalCue,
        SegmentTypeShot,
        fromSegmentType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype SegmentType = SegmentType' {fromSegmentType :: Core.Text}
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

pattern SegmentTypeTechnicalCue :: SegmentType
pattern SegmentTypeTechnicalCue = SegmentType' "TECHNICAL_CUE"

pattern SegmentTypeShot :: SegmentType
pattern SegmentTypeShot = SegmentType' "SHOT"

{-# COMPLETE
  SegmentTypeTechnicalCue,
  SegmentTypeShot,
  SegmentType'
  #-}