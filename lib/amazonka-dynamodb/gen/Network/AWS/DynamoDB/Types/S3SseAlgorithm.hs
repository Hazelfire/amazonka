{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.S3SseAlgorithm
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.S3SseAlgorithm
  ( S3SseAlgorithm
      ( S3SseAlgorithm',
        S3SseAlgorithmAES256,
        S3SseAlgorithmKms,
        fromS3SseAlgorithm
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype S3SseAlgorithm = S3SseAlgorithm'
  { fromS3SseAlgorithm ::
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

pattern S3SseAlgorithmAES256 :: S3SseAlgorithm
pattern S3SseAlgorithmAES256 = S3SseAlgorithm' "AES256"

pattern S3SseAlgorithmKms :: S3SseAlgorithm
pattern S3SseAlgorithmKms = S3SseAlgorithm' "KMS"

{-# COMPLETE
  S3SseAlgorithmAES256,
  S3SseAlgorithmKms,
  S3SseAlgorithm'
  #-}