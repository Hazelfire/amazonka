{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.DetectStackResourceDrift
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about whether a resource's actual configuration differs, or has /drifted/ , from it's expected configuration, as defined in the stack template and any values specified as template parameters. This information includes actual and expected property values for resources in which AWS CloudFormation detects drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information about stack and resource drift, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html Detecting Unregulated Configuration Changes to Stacks and Resources> .
--
-- Use @DetectStackResourceDrift@ to detect drift on individual resources, or 'DetectStackDrift' to detect drift on all resources in a given stack that support drift detection.
-- Resources that do not currently support drift detection cannot be checked. For a list of resources that support drift detection, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html Resources that Support Drift Detection> .
module Network.AWS.CloudFormation.DetectStackResourceDrift
  ( -- * Creating a request
    DetectStackResourceDrift (..),
    mkDetectStackResourceDrift,

    -- ** Request lenses
    dsrdfStackName,
    dsrdfLogicalResourceId,

    -- * Destructuring the response
    DetectStackResourceDriftResponse (..),
    mkDetectStackResourceDriftResponse,

    -- ** Response lenses
    dsrdrfrsStackResourceDrift,
    dsrdrfrsResponseStatus,
  )
where

import qualified Network.AWS.CloudFormation.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDetectStackResourceDrift' smart constructor.
data DetectStackResourceDrift = DetectStackResourceDrift'
  { -- | The name of the stack to which the resource belongs.
    stackName :: Types.StackName,
    -- | The logical name of the resource for which to return drift information.
    logicalResourceId :: Types.LogicalResourceId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DetectStackResourceDrift' value with any optional fields omitted.
mkDetectStackResourceDrift ::
  -- | 'stackName'
  Types.StackName ->
  -- | 'logicalResourceId'
  Types.LogicalResourceId ->
  DetectStackResourceDrift
mkDetectStackResourceDrift stackName logicalResourceId =
  DetectStackResourceDrift' {stackName, logicalResourceId}

-- | The name of the stack to which the resource belongs.
--
-- /Note:/ Consider using 'stackName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsrdfStackName :: Lens.Lens' DetectStackResourceDrift Types.StackName
dsrdfStackName = Lens.field @"stackName"
{-# DEPRECATED dsrdfStackName "Use generic-lens or generic-optics with 'stackName' instead." #-}

-- | The logical name of the resource for which to return drift information.
--
-- /Note:/ Consider using 'logicalResourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsrdfLogicalResourceId :: Lens.Lens' DetectStackResourceDrift Types.LogicalResourceId
dsrdfLogicalResourceId = Lens.field @"logicalResourceId"
{-# DEPRECATED dsrdfLogicalResourceId "Use generic-lens or generic-optics with 'logicalResourceId' instead." #-}

instance Core.AWSRequest DetectStackResourceDrift where
  type Rs DetectStackResourceDrift = DetectStackResourceDriftResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "Content-Type",
              "application/x-www-form-urlencoded; charset=utf-8"
            ),
        Core._rqBody =
          Core.toFormBody
            ( Core.pure ("Action", "DetectStackResourceDrift")
                Core.<> (Core.pure ("Version", "2010-05-15"))
                Core.<> (Core.toQueryValue "StackName" stackName)
                Core.<> (Core.toQueryValue "LogicalResourceId" logicalResourceId)
            )
      }
  response =
    Response.receiveXMLWrapper
      "DetectStackResourceDriftResult"
      ( \s h x ->
          DetectStackResourceDriftResponse'
            Core.<$> (x Core..@ "StackResourceDrift")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkDetectStackResourceDriftResponse' smart constructor.
data DetectStackResourceDriftResponse = DetectStackResourceDriftResponse'
  { -- | Information about whether the resource's actual configuration has drifted from its expected template configuration, including actual and expected property values and any differences detected.
    stackResourceDrift :: Types.StackResourceDrift,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DetectStackResourceDriftResponse' value with any optional fields omitted.
mkDetectStackResourceDriftResponse ::
  -- | 'stackResourceDrift'
  Types.StackResourceDrift ->
  -- | 'responseStatus'
  Core.Int ->
  DetectStackResourceDriftResponse
mkDetectStackResourceDriftResponse
  stackResourceDrift
  responseStatus =
    DetectStackResourceDriftResponse'
      { stackResourceDrift,
        responseStatus
      }

-- | Information about whether the resource's actual configuration has drifted from its expected template configuration, including actual and expected property values and any differences detected.
--
-- /Note:/ Consider using 'stackResourceDrift' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsrdrfrsStackResourceDrift :: Lens.Lens' DetectStackResourceDriftResponse Types.StackResourceDrift
dsrdrfrsStackResourceDrift = Lens.field @"stackResourceDrift"
{-# DEPRECATED dsrdrfrsStackResourceDrift "Use generic-lens or generic-optics with 'stackResourceDrift' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsrdrfrsResponseStatus :: Lens.Lens' DetectStackResourceDriftResponse Core.Int
dsrdrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED dsrdrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}