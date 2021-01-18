{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Waiters
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Waiters
  ( -- * ObjectNotExists
    mkObjectNotExists,

    -- * BucketExists
    mkBucketExists,

    -- * ObjectExists
    mkObjectExists,

    -- * BucketNotExists
    mkBucketNotExists,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import Network.AWS.S3.HeadBucket
import Network.AWS.S3.HeadObject
import qualified Network.AWS.S3.Types as Types
import qualified Network.AWS.Waiter as Waiter

-- | Polls 'Network.AWS.S3.HeadObject' every 5 seconds until a successful state is reached. An error is returned after 20 failed checks.
mkObjectNotExists :: Waiter.Wait HeadObject
mkObjectNotExists =
  Waiter.Wait
    { Waiter._waitName = "ObjectNotExists",
      Waiter._waitAttempts = 20,
      Waiter._waitDelay = 5,
      Waiter._waitAcceptors =
        [Waiter.matchStatus 404 Waiter.AcceptSuccess]
    }

-- | Polls 'Network.AWS.S3.HeadBucket' every 5 seconds until a successful state is reached. An error is returned after 20 failed checks.
mkBucketExists :: Waiter.Wait HeadBucket
mkBucketExists =
  Waiter.Wait
    { Waiter._waitName = "BucketExists",
      Waiter._waitAttempts = 20,
      Waiter._waitDelay = 5,
      Waiter._waitAcceptors =
        [ Waiter.matchStatus 200 Waiter.AcceptSuccess,
          Waiter.matchStatus 301 Waiter.AcceptSuccess,
          Waiter.matchStatus 403 Waiter.AcceptSuccess,
          Waiter.matchStatus 404 Waiter.AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.S3.HeadObject' every 5 seconds until a successful state is reached. An error is returned after 20 failed checks.
mkObjectExists :: Waiter.Wait HeadObject
mkObjectExists =
  Waiter.Wait
    { Waiter._waitName = "ObjectExists",
      Waiter._waitAttempts = 20,
      Waiter._waitDelay = 5,
      Waiter._waitAcceptors =
        [ Waiter.matchStatus 200 Waiter.AcceptSuccess,
          Waiter.matchStatus 404 Waiter.AcceptRetry
        ]
    }

-- | Polls 'Network.AWS.S3.HeadBucket' every 5 seconds until a successful state is reached. An error is returned after 20 failed checks.
mkBucketNotExists :: Waiter.Wait HeadBucket
mkBucketNotExists =
  Waiter.Wait
    { Waiter._waitName = "BucketNotExists",
      Waiter._waitAttempts = 20,
      Waiter._waitDelay = 5,
      Waiter._waitAcceptors =
        [Waiter.matchStatus 404 Waiter.AcceptSuccess]
    }