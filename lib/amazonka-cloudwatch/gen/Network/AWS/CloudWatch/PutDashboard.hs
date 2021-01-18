{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.PutDashboard
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a dashboard if it does not already exist, or updates an existing dashboard. If you update a dashboard, the entire contents are replaced with what you specify here.
--
-- All dashboards in your account are global, not region-specific.
-- A simple way to create a dashboard using @PutDashboard@ is to copy an existing dashboard. To copy an existing dashboard using the console, you can load the dashboard and then use the View/edit source command in the Actions menu to display the JSON block for that dashboard. Another way to copy a dashboard is to use @GetDashboard@ , and then use the data returned within @DashboardBody@ as the template for the new dashboard when you call @PutDashboard@ .
-- When you create a dashboard with @PutDashboard@ , a good practice is to add a text widget at the top of the dashboard with a message that the dashboard was created by script and should not be changed in the console. This message could also point console users to the location of the @DashboardBody@ script or the CloudFormation template used to create the dashboard.
module Network.AWS.CloudWatch.PutDashboard
  ( -- * Creating a request
    PutDashboard (..),
    mkPutDashboard,

    -- ** Request lenses
    pdDashboardName,
    pdDashboardBody,

    -- * Destructuring the response
    PutDashboardResponse (..),
    mkPutDashboardResponse,

    -- ** Response lenses
    pdrrsDashboardValidationMessages,
    pdrrsResponseStatus,
  )
where

import qualified Network.AWS.CloudWatch.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutDashboard' smart constructor.
data PutDashboard = PutDashboard'
  { -- | The name of the dashboard. If a dashboard with this name already exists, this call modifies that dashboard, replacing its current contents. Otherwise, a new dashboard is created. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, "-", and "_". This parameter is required.
    dashboardName :: Types.DashboardName,
    -- | The detailed information about the dashboard in JSON format, including the widgets to include and their location on the dashboard. This parameter is required.
    --
    -- For more information about the syntax, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html Dashboard Body Structure and Syntax> .
    dashboardBody :: Types.DashboardBody
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutDashboard' value with any optional fields omitted.
mkPutDashboard ::
  -- | 'dashboardName'
  Types.DashboardName ->
  -- | 'dashboardBody'
  Types.DashboardBody ->
  PutDashboard
mkPutDashboard dashboardName dashboardBody =
  PutDashboard' {dashboardName, dashboardBody}

-- | The name of the dashboard. If a dashboard with this name already exists, this call modifies that dashboard, replacing its current contents. Otherwise, a new dashboard is created. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, "-", and "_". This parameter is required.
--
-- /Note:/ Consider using 'dashboardName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdDashboardName :: Lens.Lens' PutDashboard Types.DashboardName
pdDashboardName = Lens.field @"dashboardName"
{-# DEPRECATED pdDashboardName "Use generic-lens or generic-optics with 'dashboardName' instead." #-}

-- | The detailed information about the dashboard in JSON format, including the widgets to include and their location on the dashboard. This parameter is required.
--
-- For more information about the syntax, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html Dashboard Body Structure and Syntax> .
--
-- /Note:/ Consider using 'dashboardBody' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdDashboardBody :: Lens.Lens' PutDashboard Types.DashboardBody
pdDashboardBody = Lens.field @"dashboardBody"
{-# DEPRECATED pdDashboardBody "Use generic-lens or generic-optics with 'dashboardBody' instead." #-}

instance Core.AWSRequest PutDashboard where
  type Rs PutDashboard = PutDashboardResponse
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
            ( Core.pure ("Action", "PutDashboard")
                Core.<> (Core.pure ("Version", "2010-08-01"))
                Core.<> (Core.toQueryValue "DashboardName" dashboardName)
                Core.<> (Core.toQueryValue "DashboardBody" dashboardBody)
            )
      }
  response =
    Response.receiveXMLWrapper
      "PutDashboardResult"
      ( \s h x ->
          PutDashboardResponse'
            Core.<$> ( x Core..@? "DashboardValidationMessages"
                         Core..<@> Core.parseXMLList "member"
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkPutDashboardResponse' smart constructor.
data PutDashboardResponse = PutDashboardResponse'
  { -- | If the input for @PutDashboard@ was correct and the dashboard was successfully created or modified, this result is empty.
    --
    -- If this result includes only warning messages, then the input was valid enough for the dashboard to be created or modified, but some elements of the dashboard might not render.
    -- If this result includes error messages, the input was not valid and the operation failed.
    dashboardValidationMessages :: Core.Maybe [Types.DashboardValidationMessage],
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutDashboardResponse' value with any optional fields omitted.
mkPutDashboardResponse ::
  -- | 'responseStatus'
  Core.Int ->
  PutDashboardResponse
mkPutDashboardResponse responseStatus =
  PutDashboardResponse'
    { dashboardValidationMessages = Core.Nothing,
      responseStatus
    }

-- | If the input for @PutDashboard@ was correct and the dashboard was successfully created or modified, this result is empty.
--
-- If this result includes only warning messages, then the input was valid enough for the dashboard to be created or modified, but some elements of the dashboard might not render.
-- If this result includes error messages, the input was not valid and the operation failed.
--
-- /Note:/ Consider using 'dashboardValidationMessages' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdrrsDashboardValidationMessages :: Lens.Lens' PutDashboardResponse (Core.Maybe [Types.DashboardValidationMessage])
pdrrsDashboardValidationMessages = Lens.field @"dashboardValidationMessages"
{-# DEPRECATED pdrrsDashboardValidationMessages "Use generic-lens or generic-optics with 'dashboardValidationMessages' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdrrsResponseStatus :: Lens.Lens' PutDashboardResponse Core.Int
pdrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED pdrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}