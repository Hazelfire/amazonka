{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.GetLinkAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves attributes that are associated with a typed link.
module Network.AWS.CloudDirectory.GetLinkAttributes
  ( -- * Creating a request
    GetLinkAttributes (..),
    mkGetLinkAttributes,

    -- ** Request lenses
    glaDirectoryArn,
    glaTypedLinkSpecifier,
    glaAttributeNames,
    glaConsistencyLevel,

    -- * Destructuring the response
    GetLinkAttributesResponse (..),
    mkGetLinkAttributesResponse,

    -- ** Response lenses
    glarrsAttributes,
    glarrsResponseStatus,
  )
where

import qualified Network.AWS.CloudDirectory.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetLinkAttributes' smart constructor.
data GetLinkAttributes = GetLinkAttributes'
  { -- | The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see 'arns' or <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
    directoryArn :: Types.Arn,
    -- | Allows a typed link specifier to be accepted as input.
    typedLinkSpecifier :: Types.TypedLinkSpecifier,
    -- | A list of attribute names whose values will be retrieved.
    attributeNames :: [Types.AttributeName],
    -- | The consistency level at which to retrieve the attributes on a typed link.
    consistencyLevel :: Core.Maybe Types.ConsistencyLevel
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetLinkAttributes' value with any optional fields omitted.
mkGetLinkAttributes ::
  -- | 'directoryArn'
  Types.Arn ->
  -- | 'typedLinkSpecifier'
  Types.TypedLinkSpecifier ->
  GetLinkAttributes
mkGetLinkAttributes directoryArn typedLinkSpecifier =
  GetLinkAttributes'
    { directoryArn,
      typedLinkSpecifier,
      attributeNames = Core.mempty,
      consistencyLevel = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see 'arns' or <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
--
-- /Note:/ Consider using 'directoryArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glaDirectoryArn :: Lens.Lens' GetLinkAttributes Types.Arn
glaDirectoryArn = Lens.field @"directoryArn"
{-# DEPRECATED glaDirectoryArn "Use generic-lens or generic-optics with 'directoryArn' instead." #-}

-- | Allows a typed link specifier to be accepted as input.
--
-- /Note:/ Consider using 'typedLinkSpecifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glaTypedLinkSpecifier :: Lens.Lens' GetLinkAttributes Types.TypedLinkSpecifier
glaTypedLinkSpecifier = Lens.field @"typedLinkSpecifier"
{-# DEPRECATED glaTypedLinkSpecifier "Use generic-lens or generic-optics with 'typedLinkSpecifier' instead." #-}

-- | A list of attribute names whose values will be retrieved.
--
-- /Note:/ Consider using 'attributeNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glaAttributeNames :: Lens.Lens' GetLinkAttributes [Types.AttributeName]
glaAttributeNames = Lens.field @"attributeNames"
{-# DEPRECATED glaAttributeNames "Use generic-lens or generic-optics with 'attributeNames' instead." #-}

-- | The consistency level at which to retrieve the attributes on a typed link.
--
-- /Note:/ Consider using 'consistencyLevel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glaConsistencyLevel :: Lens.Lens' GetLinkAttributes (Core.Maybe Types.ConsistencyLevel)
glaConsistencyLevel = Lens.field @"consistencyLevel"
{-# DEPRECATED glaConsistencyLevel "Use generic-lens or generic-optics with 'consistencyLevel' instead." #-}

instance Core.FromJSON GetLinkAttributes where
  toJSON GetLinkAttributes {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("TypedLinkSpecifier" Core..= typedLinkSpecifier),
            Core.Just ("AttributeNames" Core..= attributeNames),
            ("ConsistencyLevel" Core..=) Core.<$> consistencyLevel
          ]
      )

instance Core.AWSRequest GetLinkAttributes where
  type Rs GetLinkAttributes = GetLinkAttributesResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath =
          Core.rawPath
            "/amazonclouddirectory/2017-01-11/typedlink/attributes/get",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.toHeaders "x-amz-data-partition" directoryArn,
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetLinkAttributesResponse'
            Core.<$> (x Core..:? "Attributes") Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetLinkAttributesResponse' smart constructor.
data GetLinkAttributesResponse = GetLinkAttributesResponse'
  { -- | The attributes that are associated with the typed link.
    attributes :: Core.Maybe [Types.AttributeKeyAndValue],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetLinkAttributesResponse' value with any optional fields omitted.
mkGetLinkAttributesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetLinkAttributesResponse
mkGetLinkAttributesResponse responseStatus =
  GetLinkAttributesResponse'
    { attributes = Core.Nothing,
      responseStatus
    }

-- | The attributes that are associated with the typed link.
--
-- /Note:/ Consider using 'attributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glarrsAttributes :: Lens.Lens' GetLinkAttributesResponse (Core.Maybe [Types.AttributeKeyAndValue])
glarrsAttributes = Lens.field @"attributes"
{-# DEPRECATED glarrsAttributes "Use generic-lens or generic-optics with 'attributes' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glarrsResponseStatus :: Lens.Lens' GetLinkAttributesResponse Core.Int
glarrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED glarrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}