{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.CreateKeyGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a key group that you can use with <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html CloudFront signed URLs and signed cookies> .
--
-- To create a key group, you must specify at least one public key for the key group. After you create a key group, you can reference it from one or more cache behaviors. When you reference a key group in a cache behavior, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with a private key whose corresponding public key is in the key group. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving private content> in the /Amazon CloudFront Developer Guide/ .
module Network.AWS.CloudFront.CreateKeyGroup
  ( -- * Creating a request
    CreateKeyGroup (..),
    mkCreateKeyGroup,

    -- ** Request lenses
    ckgKeyGroupConfig,

    -- * Destructuring the response
    CreateKeyGroupResponse (..),
    mkCreateKeyGroupResponse,

    -- ** Response lenses
    ckgrrsETag,
    ckgrrsKeyGroup,
    ckgrrsLocation,
    ckgrrsResponseStatus,
  )
where

import qualified Network.AWS.CloudFront.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateKeyGroup' smart constructor.
newtype CreateKeyGroup = CreateKeyGroup'
  { -- | A key group configuration.
    keyGroupConfig :: Types.KeyGroupConfig
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'CreateKeyGroup' value with any optional fields omitted.
mkCreateKeyGroup ::
  -- | 'keyGroupConfig'
  Types.KeyGroupConfig ->
  CreateKeyGroup
mkCreateKeyGroup keyGroupConfig = CreateKeyGroup' {keyGroupConfig}

-- | A key group configuration.
--
-- /Note:/ Consider using 'keyGroupConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckgKeyGroupConfig :: Lens.Lens' CreateKeyGroup Types.KeyGroupConfig
ckgKeyGroupConfig = Lens.field @"keyGroupConfig"
{-# DEPRECATED ckgKeyGroupConfig "Use generic-lens or generic-optics with 'keyGroupConfig' instead." #-}

instance Core.AWSRequest CreateKeyGroup where
  type Rs CreateKeyGroup = CreateKeyGroupResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/2020-05-31/key-group",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = Core.toXMLBody x
      }
  response =
    Response.receiveXML
      ( \s h x ->
          CreateKeyGroupResponse'
            Core.<$> (Core.parseHeaderMaybe "ETag" h)
            Core.<*> (Core.parseXML x)
            Core.<*> (Core.parseHeaderMaybe "Location" h)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkCreateKeyGroupResponse' smart constructor.
data CreateKeyGroupResponse = CreateKeyGroupResponse'
  { -- | The identifier for this version of the key group.
    eTag :: Core.Maybe Types.String,
    -- | The key group that was just created.
    keyGroup :: Core.Maybe Types.KeyGroup,
    -- | The URL of the key group.
    location :: Core.Maybe Types.String,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CreateKeyGroupResponse' value with any optional fields omitted.
mkCreateKeyGroupResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateKeyGroupResponse
mkCreateKeyGroupResponse responseStatus =
  CreateKeyGroupResponse'
    { eTag = Core.Nothing,
      keyGroup = Core.Nothing,
      location = Core.Nothing,
      responseStatus
    }

-- | The identifier for this version of the key group.
--
-- /Note:/ Consider using 'eTag' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckgrrsETag :: Lens.Lens' CreateKeyGroupResponse (Core.Maybe Types.String)
ckgrrsETag = Lens.field @"eTag"
{-# DEPRECATED ckgrrsETag "Use generic-lens or generic-optics with 'eTag' instead." #-}

-- | The key group that was just created.
--
-- /Note:/ Consider using 'keyGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckgrrsKeyGroup :: Lens.Lens' CreateKeyGroupResponse (Core.Maybe Types.KeyGroup)
ckgrrsKeyGroup = Lens.field @"keyGroup"
{-# DEPRECATED ckgrrsKeyGroup "Use generic-lens or generic-optics with 'keyGroup' instead." #-}

-- | The URL of the key group.
--
-- /Note:/ Consider using 'location' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckgrrsLocation :: Lens.Lens' CreateKeyGroupResponse (Core.Maybe Types.String)
ckgrrsLocation = Lens.field @"location"
{-# DEPRECATED ckgrrsLocation "Use generic-lens or generic-optics with 'location' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckgrrsResponseStatus :: Lens.Lens' CreateKeyGroupResponse Core.Int
ckgrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ckgrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}