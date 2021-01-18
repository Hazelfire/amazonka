{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.LabelingJobStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.LabelingJobStatus
  ( LabelingJobStatus
      ( LabelingJobStatus',
        LabelingJobStatusInitializing,
        LabelingJobStatusInProgress,
        LabelingJobStatusCompleted,
        LabelingJobStatusFailed,
        LabelingJobStatusStopping,
        LabelingJobStatusStopped,
        fromLabelingJobStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype LabelingJobStatus = LabelingJobStatus'
  { fromLabelingJobStatus ::
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

pattern LabelingJobStatusInitializing :: LabelingJobStatus
pattern LabelingJobStatusInitializing = LabelingJobStatus' "Initializing"

pattern LabelingJobStatusInProgress :: LabelingJobStatus
pattern LabelingJobStatusInProgress = LabelingJobStatus' "InProgress"

pattern LabelingJobStatusCompleted :: LabelingJobStatus
pattern LabelingJobStatusCompleted = LabelingJobStatus' "Completed"

pattern LabelingJobStatusFailed :: LabelingJobStatus
pattern LabelingJobStatusFailed = LabelingJobStatus' "Failed"

pattern LabelingJobStatusStopping :: LabelingJobStatus
pattern LabelingJobStatusStopping = LabelingJobStatus' "Stopping"

pattern LabelingJobStatusStopped :: LabelingJobStatus
pattern LabelingJobStatusStopped = LabelingJobStatus' "Stopped"

{-# COMPLETE
  LabelingJobStatusInitializing,
  LabelingJobStatusInProgress,
  LabelingJobStatusCompleted,
  LabelingJobStatusFailed,
  LabelingJobStatusStopping,
  LabelingJobStatusStopped,
  LabelingJobStatus'
  #-}