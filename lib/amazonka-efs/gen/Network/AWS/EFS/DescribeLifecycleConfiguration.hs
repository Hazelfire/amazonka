{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.DescribeLifecycleConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current @LifecycleConfiguration@ object for the specified Amazon EFS file system. EFS lifecycle management uses the @LifecycleConfiguration@ object to identify which files to move to the EFS Infrequent Access (IA) storage class. For a file system without a @LifecycleConfiguration@ object, the call returns an empty array in the response.
--
-- This operation requires permissions for the @elasticfilesystem:DescribeLifecycleConfiguration@ operation.
module Network.AWS.EFS.DescribeLifecycleConfiguration
  ( -- * Creating a request
    DescribeLifecycleConfiguration (..),
    mkDescribeLifecycleConfiguration,

    -- ** Request lenses
    dlcFileSystemId,

    -- * Destructuring the response
    Types.LifecycleConfigurationDescription (..),
    Types.mkLifecycleConfigurationDescription,

    -- ** Response lenses
    Types.lcdLifecyclePolicies,
  )
where

import qualified Network.AWS.EFS.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeLifecycleConfiguration' smart constructor.
newtype DescribeLifecycleConfiguration = DescribeLifecycleConfiguration'
  { -- | The ID of the file system whose @LifecycleConfiguration@ object you want to retrieve (String).
    fileSystemId :: Types.FileSystemId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeLifecycleConfiguration' value with any optional fields omitted.
mkDescribeLifecycleConfiguration ::
  -- | 'fileSystemId'
  Types.FileSystemId ->
  DescribeLifecycleConfiguration
mkDescribeLifecycleConfiguration fileSystemId =
  DescribeLifecycleConfiguration' {fileSystemId}

-- | The ID of the file system whose @LifecycleConfiguration@ object you want to retrieve (String).
--
-- /Note:/ Consider using 'fileSystemId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlcFileSystemId :: Lens.Lens' DescribeLifecycleConfiguration Types.FileSystemId
dlcFileSystemId = Lens.field @"fileSystemId"
{-# DEPRECATED dlcFileSystemId "Use generic-lens or generic-optics with 'fileSystemId' instead." #-}

instance Core.AWSRequest DescribeLifecycleConfiguration where
  type
    Rs DescribeLifecycleConfiguration =
      Types.LifecycleConfigurationDescription
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/2015-02-01/file-systems/" Core.<> (Core.toText fileSystemId)
                Core.<> ("/lifecycle-configuration")
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = ""
      }
  response = Response.receiveJSON (\s h x -> Core.eitherParseJSON x)