{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.LabelParameterVersion
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A parameter label is a user-defined alias to help you manage different versions of a parameter. When you modify a parameter, Systems Manager automatically saves a new version and increments the version number by one. A label can help you remember the purpose of a parameter when there are multiple versions.
--
-- Parameter labels have the following requirements and restrictions.
--
--     * A version of a parameter can have a maximum of 10 labels.
--
--
--     * You can't attach the same label to different versions of the same parameter. For example, if version 1 has the label Production, then you can't attach Production to version 2.
--
--
--     * You can move a label from one version of a parameter to another.
--
--
--     * You can't create a label when you create a new parameter. You must attach a label to a specific version of a parameter.
--
--
--     * You can't delete a parameter label. If you no longer want to use a parameter label, then you must move it to a different version of a parameter.
--
--
--     * A label can have a maximum of 100 characters.
--
--
--     * Labels can contain letters (case sensitive), numbers, periods (.), hyphens (-), or underscores (_).
--
--
--     * Labels can't begin with a number, "aws," or "ssm" (not case sensitive). If a label fails to meet these requirements, then the label is not associated with a parameter and the system displays it in the list of InvalidLabels.
module Network.AWS.SSM.LabelParameterVersion
  ( -- * Creating a request
    LabelParameterVersion (..),
    mkLabelParameterVersion,

    -- ** Request lenses
    lpvName,
    lpvLabels,
    lpvParameterVersion,

    -- * Destructuring the response
    LabelParameterVersionResponse (..),
    mkLabelParameterVersionResponse,

    -- ** Response lenses
    lpvrrsInvalidLabels,
    lpvrrsParameterVersion,
    lpvrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkLabelParameterVersion' smart constructor.
data LabelParameterVersion = LabelParameterVersion'
  { -- | The parameter name on which you want to attach one or more labels.
    name :: Types.PSParameterName,
    -- | One or more labels to attach to the specified parameter version.
    labels :: Core.NonEmpty Types.ParameterLabel,
    -- | The specific version of the parameter on which you want to attach one or more labels. If no version is specified, the system attaches the label to the latest version.
    parameterVersion :: Core.Maybe Core.Integer
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'LabelParameterVersion' value with any optional fields omitted.
mkLabelParameterVersion ::
  -- | 'name'
  Types.PSParameterName ->
  -- | 'labels'
  Core.NonEmpty Types.ParameterLabel ->
  LabelParameterVersion
mkLabelParameterVersion name labels =
  LabelParameterVersion'
    { name,
      labels,
      parameterVersion = Core.Nothing
    }

-- | The parameter name on which you want to attach one or more labels.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpvName :: Lens.Lens' LabelParameterVersion Types.PSParameterName
lpvName = Lens.field @"name"
{-# DEPRECATED lpvName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | One or more labels to attach to the specified parameter version.
--
-- /Note:/ Consider using 'labels' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpvLabels :: Lens.Lens' LabelParameterVersion (Core.NonEmpty Types.ParameterLabel)
lpvLabels = Lens.field @"labels"
{-# DEPRECATED lpvLabels "Use generic-lens or generic-optics with 'labels' instead." #-}

-- | The specific version of the parameter on which you want to attach one or more labels. If no version is specified, the system attaches the label to the latest version.
--
-- /Note:/ Consider using 'parameterVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpvParameterVersion :: Lens.Lens' LabelParameterVersion (Core.Maybe Core.Integer)
lpvParameterVersion = Lens.field @"parameterVersion"
{-# DEPRECATED lpvParameterVersion "Use generic-lens or generic-optics with 'parameterVersion' instead." #-}

instance Core.FromJSON LabelParameterVersion where
  toJSON LabelParameterVersion {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Name" Core..= name),
            Core.Just ("Labels" Core..= labels),
            ("ParameterVersion" Core..=) Core.<$> parameterVersion
          ]
      )

instance Core.AWSRequest LabelParameterVersion where
  type Rs LabelParameterVersion = LabelParameterVersionResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AmazonSSM.LabelParameterVersion")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          LabelParameterVersionResponse'
            Core.<$> (x Core..:? "InvalidLabels")
            Core.<*> (x Core..:? "ParameterVersion")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkLabelParameterVersionResponse' smart constructor.
data LabelParameterVersionResponse = LabelParameterVersionResponse'
  { -- | The label does not meet the requirements. For information about parameter label requirements, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html Labeling parameters> in the /AWS Systems Manager User Guide/ .
    invalidLabels :: Core.Maybe (Core.NonEmpty Types.ParameterLabel),
    -- | The version of the parameter that has been labeled.
    parameterVersion :: Core.Maybe Core.Integer,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'LabelParameterVersionResponse' value with any optional fields omitted.
mkLabelParameterVersionResponse ::
  -- | 'responseStatus'
  Core.Int ->
  LabelParameterVersionResponse
mkLabelParameterVersionResponse responseStatus =
  LabelParameterVersionResponse'
    { invalidLabels = Core.Nothing,
      parameterVersion = Core.Nothing,
      responseStatus
    }

-- | The label does not meet the requirements. For information about parameter label requirements, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html Labeling parameters> in the /AWS Systems Manager User Guide/ .
--
-- /Note:/ Consider using 'invalidLabels' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpvrrsInvalidLabels :: Lens.Lens' LabelParameterVersionResponse (Core.Maybe (Core.NonEmpty Types.ParameterLabel))
lpvrrsInvalidLabels = Lens.field @"invalidLabels"
{-# DEPRECATED lpvrrsInvalidLabels "Use generic-lens or generic-optics with 'invalidLabels' instead." #-}

-- | The version of the parameter that has been labeled.
--
-- /Note:/ Consider using 'parameterVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpvrrsParameterVersion :: Lens.Lens' LabelParameterVersionResponse (Core.Maybe Core.Integer)
lpvrrsParameterVersion = Lens.field @"parameterVersion"
{-# DEPRECATED lpvrrsParameterVersion "Use generic-lens or generic-optics with 'parameterVersion' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpvrrsResponseStatus :: Lens.Lens' LabelParameterVersionResponse Core.Int
lpvrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lpvrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}