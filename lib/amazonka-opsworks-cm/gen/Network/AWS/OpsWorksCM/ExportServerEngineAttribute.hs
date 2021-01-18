{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.ExportServerEngineAttribute
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a specified server engine attribute as a base64-encoded string. For example, you can export user data that you can use in EC2 to associate nodes with a server.
--
-- This operation is synchronous.
-- A @ValidationException@ is raised when parameters of the request are not valid. A @ResourceNotFoundException@ is thrown when the server does not exist. An @InvalidStateException@ is thrown when the server is in any of the following states: CREATING, TERMINATED, FAILED or DELETING.
module Network.AWS.OpsWorksCM.ExportServerEngineAttribute
  ( -- * Creating a request
    ExportServerEngineAttribute (..),
    mkExportServerEngineAttribute,

    -- ** Request lenses
    eseaExportAttributeName,
    eseaServerName,
    eseaInputAttributes,

    -- * Destructuring the response
    ExportServerEngineAttributeResponse (..),
    mkExportServerEngineAttributeResponse,

    -- ** Response lenses
    esearrsEngineAttribute,
    esearrsServerName,
    esearrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.OpsWorksCM.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkExportServerEngineAttribute' smart constructor.
data ExportServerEngineAttribute = ExportServerEngineAttribute'
  { -- | The name of the export attribute. Currently, the supported export attribute is @Userdata@ . This exports a user data script that includes parameters and values provided in the @InputAttributes@ list.
    exportAttributeName :: Types.String,
    -- | The name of the server from which you are exporting the attribute.
    serverName :: Types.ServerName,
    -- | The list of engine attributes. The list type is @EngineAttribute@ . An @EngineAttribute@ list item is a pair that includes an attribute name and its value. For the @Userdata@ ExportAttributeName, the following are supported engine attribute names.
    --
    --
    --     * __RunList__ In Chef, a list of roles or recipes that are run in the specified order. In Puppet, this parameter is ignored.
    --
    --
    --     * __OrganizationName__ In Chef, an organization name. AWS OpsWorks for Chef Automate always creates the organization @default@ . In Puppet, this parameter is ignored.
    --
    --
    --     * __NodeEnvironment__ In Chef, a node environment (for example, development, staging, or one-box). In Puppet, this parameter is ignored.
    --
    --
    --     * __NodeClientVersion__ In Chef, the version of the Chef engine (three numbers separated by dots, such as 13.8.5). If this attribute is empty, OpsWorks for Chef Automate uses the most current version. In Puppet, this parameter is ignored.
    inputAttributes :: Core.Maybe [Types.EngineAttribute]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ExportServerEngineAttribute' value with any optional fields omitted.
mkExportServerEngineAttribute ::
  -- | 'exportAttributeName'
  Types.String ->
  -- | 'serverName'
  Types.ServerName ->
  ExportServerEngineAttribute
mkExportServerEngineAttribute exportAttributeName serverName =
  ExportServerEngineAttribute'
    { exportAttributeName,
      serverName,
      inputAttributes = Core.Nothing
    }

-- | The name of the export attribute. Currently, the supported export attribute is @Userdata@ . This exports a user data script that includes parameters and values provided in the @InputAttributes@ list.
--
-- /Note:/ Consider using 'exportAttributeName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eseaExportAttributeName :: Lens.Lens' ExportServerEngineAttribute Types.String
eseaExportAttributeName = Lens.field @"exportAttributeName"
{-# DEPRECATED eseaExportAttributeName "Use generic-lens or generic-optics with 'exportAttributeName' instead." #-}

-- | The name of the server from which you are exporting the attribute.
--
-- /Note:/ Consider using 'serverName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eseaServerName :: Lens.Lens' ExportServerEngineAttribute Types.ServerName
eseaServerName = Lens.field @"serverName"
{-# DEPRECATED eseaServerName "Use generic-lens or generic-optics with 'serverName' instead." #-}

-- | The list of engine attributes. The list type is @EngineAttribute@ . An @EngineAttribute@ list item is a pair that includes an attribute name and its value. For the @Userdata@ ExportAttributeName, the following are supported engine attribute names.
--
--
--     * __RunList__ In Chef, a list of roles or recipes that are run in the specified order. In Puppet, this parameter is ignored.
--
--
--     * __OrganizationName__ In Chef, an organization name. AWS OpsWorks for Chef Automate always creates the organization @default@ . In Puppet, this parameter is ignored.
--
--
--     * __NodeEnvironment__ In Chef, a node environment (for example, development, staging, or one-box). In Puppet, this parameter is ignored.
--
--
--     * __NodeClientVersion__ In Chef, the version of the Chef engine (three numbers separated by dots, such as 13.8.5). If this attribute is empty, OpsWorks for Chef Automate uses the most current version. In Puppet, this parameter is ignored.
--
--
--
-- /Note:/ Consider using 'inputAttributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eseaInputAttributes :: Lens.Lens' ExportServerEngineAttribute (Core.Maybe [Types.EngineAttribute])
eseaInputAttributes = Lens.field @"inputAttributes"
{-# DEPRECATED eseaInputAttributes "Use generic-lens or generic-optics with 'inputAttributes' instead." #-}

instance Core.FromJSON ExportServerEngineAttribute where
  toJSON ExportServerEngineAttribute {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ExportAttributeName" Core..= exportAttributeName),
            Core.Just ("ServerName" Core..= serverName),
            ("InputAttributes" Core..=) Core.<$> inputAttributes
          ]
      )

instance Core.AWSRequest ExportServerEngineAttribute where
  type
    Rs ExportServerEngineAttribute =
      ExportServerEngineAttributeResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ( "X-Amz-Target",
              "OpsWorksCM_V2016_11_01.ExportServerEngineAttribute"
            )
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          ExportServerEngineAttributeResponse'
            Core.<$> (x Core..:? "EngineAttribute")
            Core.<*> (x Core..:? "ServerName")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkExportServerEngineAttributeResponse' smart constructor.
data ExportServerEngineAttributeResponse = ExportServerEngineAttributeResponse'
  { -- | The requested engine attribute pair with attribute name and value.
    engineAttribute :: Core.Maybe Types.EngineAttribute,
    -- | The server name used in the request.
    serverName :: Core.Maybe Types.ServerName,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ExportServerEngineAttributeResponse' value with any optional fields omitted.
mkExportServerEngineAttributeResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ExportServerEngineAttributeResponse
mkExportServerEngineAttributeResponse responseStatus =
  ExportServerEngineAttributeResponse'
    { engineAttribute =
        Core.Nothing,
      serverName = Core.Nothing,
      responseStatus
    }

-- | The requested engine attribute pair with attribute name and value.
--
-- /Note:/ Consider using 'engineAttribute' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esearrsEngineAttribute :: Lens.Lens' ExportServerEngineAttributeResponse (Core.Maybe Types.EngineAttribute)
esearrsEngineAttribute = Lens.field @"engineAttribute"
{-# DEPRECATED esearrsEngineAttribute "Use generic-lens or generic-optics with 'engineAttribute' instead." #-}

-- | The server name used in the request.
--
-- /Note:/ Consider using 'serverName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esearrsServerName :: Lens.Lens' ExportServerEngineAttributeResponse (Core.Maybe Types.ServerName)
esearrsServerName = Lens.field @"serverName"
{-# DEPRECATED esearrsServerName "Use generic-lens or generic-optics with 'serverName' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esearrsResponseStatus :: Lens.Lens' ExportServerEngineAttributeResponse Core.Int
esearrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED esearrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}