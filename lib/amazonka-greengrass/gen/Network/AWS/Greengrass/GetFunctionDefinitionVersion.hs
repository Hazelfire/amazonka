{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.GetFunctionDefinitionVersion
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.
module Network.AWS.Greengrass.GetFunctionDefinitionVersion
  ( -- * Creating a request
    GetFunctionDefinitionVersion (..),
    mkGetFunctionDefinitionVersion,

    -- ** Request lenses
    gfdvFunctionDefinitionId,
    gfdvFunctionDefinitionVersionId,
    gfdvNextToken,

    -- * Destructuring the response
    GetFunctionDefinitionVersionResponse (..),
    mkGetFunctionDefinitionVersionResponse,

    -- ** Response lenses
    gfdvrrsArn,
    gfdvrrsCreationTimestamp,
    gfdvrrsDefinition,
    gfdvrrsId,
    gfdvrrsNextToken,
    gfdvrrsVersion,
    gfdvrrsResponseStatus,
  )
where

import qualified Network.AWS.Greengrass.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetFunctionDefinitionVersion' smart constructor.
data GetFunctionDefinitionVersion = GetFunctionDefinitionVersion'
  { -- | The ID of the Lambda function definition.
    functionDefinitionId :: Core.Text,
    -- | The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    functionDefinitionVersionId :: Core.Text,
    -- | The token for the next set of results, or ''null'' if there are no additional results.
    nextToken :: Core.Maybe Core.Text
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetFunctionDefinitionVersion' value with any optional fields omitted.
mkGetFunctionDefinitionVersion ::
  -- | 'functionDefinitionId'
  Core.Text ->
  -- | 'functionDefinitionVersionId'
  Core.Text ->
  GetFunctionDefinitionVersion
mkGetFunctionDefinitionVersion
  functionDefinitionId
  functionDefinitionVersionId =
    GetFunctionDefinitionVersion'
      { functionDefinitionId,
        functionDefinitionVersionId,
        nextToken = Core.Nothing
      }

-- | The ID of the Lambda function definition.
--
-- /Note:/ Consider using 'functionDefinitionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvFunctionDefinitionId :: Lens.Lens' GetFunctionDefinitionVersion Core.Text
gfdvFunctionDefinitionId = Lens.field @"functionDefinitionId"
{-# DEPRECATED gfdvFunctionDefinitionId "Use generic-lens or generic-optics with 'functionDefinitionId' instead." #-}

-- | The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
--
-- /Note:/ Consider using 'functionDefinitionVersionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvFunctionDefinitionVersionId :: Lens.Lens' GetFunctionDefinitionVersion Core.Text
gfdvFunctionDefinitionVersionId = Lens.field @"functionDefinitionVersionId"
{-# DEPRECATED gfdvFunctionDefinitionVersionId "Use generic-lens or generic-optics with 'functionDefinitionVersionId' instead." #-}

-- | The token for the next set of results, or ''null'' if there are no additional results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvNextToken :: Lens.Lens' GetFunctionDefinitionVersion (Core.Maybe Core.Text)
gfdvNextToken = Lens.field @"nextToken"
{-# DEPRECATED gfdvNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Core.AWSRequest GetFunctionDefinitionVersion where
  type
    Rs GetFunctionDefinitionVersion =
      GetFunctionDefinitionVersionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.GET,
        Core._rqPath =
          Core.rawPath
            ( "/greengrass/definition/functions/"
                Core.<> (Core.toText functionDefinitionId)
                Core.<> ("/versions/")
                Core.<> (Core.toText functionDefinitionVersionId)
            ),
        Core._rqQuery = Core.toQueryValue "NextToken" Core.<$> nextToken,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = ""
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFunctionDefinitionVersionResponse'
            Core.<$> (x Core..:? "Arn")
            Core.<*> (x Core..:? "CreationTimestamp")
            Core.<*> (x Core..:? "Definition")
            Core.<*> (x Core..:? "Id")
            Core.<*> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "Version")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkGetFunctionDefinitionVersionResponse' smart constructor.
data GetFunctionDefinitionVersionResponse = GetFunctionDefinitionVersionResponse'
  { -- | The ARN of the function definition version.
    arn :: Core.Maybe Core.Text,
    -- | The time, in milliseconds since the epoch, when the function definition version was created.
    creationTimestamp :: Core.Maybe Core.Text,
    -- | Information on the definition.
    definition :: Core.Maybe Types.FunctionDefinitionVersion,
    -- | The ID of the function definition version.
    id :: Core.Maybe Core.Text,
    -- | The token for the next set of results, or ''null'' if there are no additional results.
    nextToken :: Core.Maybe Core.Text,
    -- | The version of the function definition version.
    version :: Core.Maybe Core.Text,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetFunctionDefinitionVersionResponse' value with any optional fields omitted.
mkGetFunctionDefinitionVersionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetFunctionDefinitionVersionResponse
mkGetFunctionDefinitionVersionResponse responseStatus =
  GetFunctionDefinitionVersionResponse'
    { arn = Core.Nothing,
      creationTimestamp = Core.Nothing,
      definition = Core.Nothing,
      id = Core.Nothing,
      nextToken = Core.Nothing,
      version = Core.Nothing,
      responseStatus
    }

-- | The ARN of the function definition version.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvrrsArn :: Lens.Lens' GetFunctionDefinitionVersionResponse (Core.Maybe Core.Text)
gfdvrrsArn = Lens.field @"arn"
{-# DEPRECATED gfdvrrsArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The time, in milliseconds since the epoch, when the function definition version was created.
--
-- /Note:/ Consider using 'creationTimestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvrrsCreationTimestamp :: Lens.Lens' GetFunctionDefinitionVersionResponse (Core.Maybe Core.Text)
gfdvrrsCreationTimestamp = Lens.field @"creationTimestamp"
{-# DEPRECATED gfdvrrsCreationTimestamp "Use generic-lens or generic-optics with 'creationTimestamp' instead." #-}

-- | Information on the definition.
--
-- /Note:/ Consider using 'definition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvrrsDefinition :: Lens.Lens' GetFunctionDefinitionVersionResponse (Core.Maybe Types.FunctionDefinitionVersion)
gfdvrrsDefinition = Lens.field @"definition"
{-# DEPRECATED gfdvrrsDefinition "Use generic-lens or generic-optics with 'definition' instead." #-}

-- | The ID of the function definition version.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvrrsId :: Lens.Lens' GetFunctionDefinitionVersionResponse (Core.Maybe Core.Text)
gfdvrrsId = Lens.field @"id"
{-# DEPRECATED gfdvrrsId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The token for the next set of results, or ''null'' if there are no additional results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvrrsNextToken :: Lens.Lens' GetFunctionDefinitionVersionResponse (Core.Maybe Core.Text)
gfdvrrsNextToken = Lens.field @"nextToken"
{-# DEPRECATED gfdvrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The version of the function definition version.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvrrsVersion :: Lens.Lens' GetFunctionDefinitionVersionResponse (Core.Maybe Core.Text)
gfdvrrsVersion = Lens.field @"version"
{-# DEPRECATED gfdvrrsVersion "Use generic-lens or generic-optics with 'version' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdvrrsResponseStatus :: Lens.Lens' GetFunctionDefinitionVersionResponse Core.Int
gfdvrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED gfdvrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}