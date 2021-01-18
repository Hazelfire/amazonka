{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.DeleteEventSourceMapping
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an <https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html event source mapping> . You can get the identifier of a mapping from the output of 'ListEventSourceMappings' .
--
-- When you delete an event source mapping, it enters a @Deleting@ state and might not be completely deleted for several seconds.
module Network.AWS.Lambda.DeleteEventSourceMapping
  ( -- * Creating a request
    DeleteEventSourceMapping (..),
    mkDeleteEventSourceMapping,

    -- ** Request lenses
    desmUUID,

    -- * Destructuring the response
    Types.EventSourceMappingConfiguration (..),
    Types.mkEventSourceMappingConfiguration,

    -- ** Response lenses
    Types.esmcBatchSize,
    Types.esmcBisectBatchOnFunctionError,
    Types.esmcDestinationConfig,
    Types.esmcEventSourceArn,
    Types.esmcFunctionArn,
    Types.esmcLastModified,
    Types.esmcLastProcessingResult,
    Types.esmcMaximumBatchingWindowInSeconds,
    Types.esmcMaximumRecordAgeInSeconds,
    Types.esmcMaximumRetryAttempts,
    Types.esmcParallelizationFactor,
    Types.esmcQueues,
    Types.esmcSourceAccessConfigurations,
    Types.esmcStartingPosition,
    Types.esmcStartingPositionTimestamp,
    Types.esmcState,
    Types.esmcStateTransitionReason,
    Types.esmcTopics,
    Types.esmcUUID,
  )
where

import qualified Network.AWS.Lambda.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteEventSourceMapping' smart constructor.
newtype DeleteEventSourceMapping = DeleteEventSourceMapping'
  { -- | The identifier of the event source mapping.
    uuid :: Types.String
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteEventSourceMapping' value with any optional fields omitted.
mkDeleteEventSourceMapping ::
  -- | 'uuid'
  Types.String ->
  DeleteEventSourceMapping
mkDeleteEventSourceMapping uuid = DeleteEventSourceMapping' {uuid}

-- | The identifier of the event source mapping.
--
-- /Note:/ Consider using 'uuid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
desmUUID :: Lens.Lens' DeleteEventSourceMapping Types.String
desmUUID = Lens.field @"uuid"
{-# DEPRECATED desmUUID "Use generic-lens or generic-optics with 'uuid' instead." #-}

instance Core.AWSRequest DeleteEventSourceMapping where
  type
    Rs DeleteEventSourceMapping =
      Types.EventSourceMappingConfiguration
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.DELETE,
        Core._rqPath =
          Core.rawPath
            ("/2015-03-31/event-source-mappings/" Core.<> (Core.toText uuid)),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response = Response.receiveJSON (\s h x -> Core.eitherParseJSON x)