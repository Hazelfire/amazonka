{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.ListMFADevices
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this operation lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request for this API.
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListMFADevices
  ( -- * Creating a request
    ListMFADevices (..),
    mkListMFADevices,

    -- ** Request lenses
    lmfadMarker,
    lmfadMaxItems,
    lmfadUserName,

    -- * Destructuring the response
    ListMFADevicesResponse (..),
    mkListMFADevicesResponse,

    -- ** Response lenses
    lmfadrrsMFADevices,
    lmfadrrsIsTruncated,
    lmfadrrsMarker,
    lmfadrrsResponseStatus,
  )
where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListMFADevices' smart constructor.
data ListMFADevices = ListMFADevices'
  { -- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
    marker :: Core.Maybe Types.MarkerType,
    -- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ .
    --
    -- If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
    maxItems :: Core.Maybe Core.Natural,
    -- | The name of the user whose MFA devices you want to list.
    --
    -- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
    userName :: Core.Maybe Types.UserName
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListMFADevices' value with any optional fields omitted.
mkListMFADevices ::
  ListMFADevices
mkListMFADevices =
  ListMFADevices'
    { marker = Core.Nothing,
      maxItems = Core.Nothing,
      userName = Core.Nothing
    }

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmfadMarker :: Lens.Lens' ListMFADevices (Core.Maybe Types.MarkerType)
lmfadMarker = Lens.field @"marker"
{-# DEPRECATED lmfadMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ .
--
-- If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmfadMaxItems :: Lens.Lens' ListMFADevices (Core.Maybe Core.Natural)
lmfadMaxItems = Lens.field @"maxItems"
{-# DEPRECATED lmfadMaxItems "Use generic-lens or generic-optics with 'maxItems' instead." #-}

-- | The name of the user whose MFA devices you want to list.
--
-- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- /Note:/ Consider using 'userName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmfadUserName :: Lens.Lens' ListMFADevices (Core.Maybe Types.UserName)
lmfadUserName = Lens.field @"userName"
{-# DEPRECATED lmfadUserName "Use generic-lens or generic-optics with 'userName' instead." #-}

instance Core.AWSRequest ListMFADevices where
  type Rs ListMFADevices = ListMFADevicesResponse
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
            ( Core.pure ("Action", "ListMFADevices")
                Core.<> (Core.pure ("Version", "2010-05-08"))
                Core.<> (Core.toQueryValue "Marker" Core.<$> marker)
                Core.<> (Core.toQueryValue "MaxItems" Core.<$> maxItems)
                Core.<> (Core.toQueryValue "UserName" Core.<$> userName)
            )
      }
  response =
    Response.receiveXMLWrapper
      "ListMFADevicesResult"
      ( \s h x ->
          ListMFADevicesResponse'
            Core.<$> ( x Core..@? "MFADevices" Core..@! Core.mempty
                         Core..<@> Core.parseXMLList "member"
                     )
            Core.<*> (x Core..@? "IsTruncated")
            Core.<*> (x Core..@? "Marker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Pager.AWSPager ListMFADevices where
  page rq rs
    | Pager.stop (rs Lens.^. Lens.field @"isTruncated") = Core.Nothing
    | Core.isNothing (rs Lens.^. Lens.field @"marker") = Core.Nothing
    | Core.otherwise =
      Core.Just
        ( rq
            Core.& Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"marker"
        )

-- | Contains the response to a successful 'ListMFADevices' request.
--
-- /See:/ 'mkListMFADevicesResponse' smart constructor.
data ListMFADevicesResponse = ListMFADevicesResponse'
  { -- | A list of MFA devices.
    mFADevices :: [Types.MFADevice],
    -- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
    isTruncated :: Core.Maybe Core.Bool,
    -- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
    marker :: Core.Maybe Types.ResponseMarkerType,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ListMFADevicesResponse' value with any optional fields omitted.
mkListMFADevicesResponse ::
  -- | 'responseStatus'
  Core.Int ->
  ListMFADevicesResponse
mkListMFADevicesResponse responseStatus =
  ListMFADevicesResponse'
    { mFADevices = Core.mempty,
      isTruncated = Core.Nothing,
      marker = Core.Nothing,
      responseStatus
    }

-- | A list of MFA devices.
--
-- /Note:/ Consider using 'mFADevices' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmfadrrsMFADevices :: Lens.Lens' ListMFADevicesResponse [Types.MFADevice]
lmfadrrsMFADevices = Lens.field @"mFADevices"
{-# DEPRECATED lmfadrrsMFADevices "Use generic-lens or generic-optics with 'mFADevices' instead." #-}

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- /Note:/ Consider using 'isTruncated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmfadrrsIsTruncated :: Lens.Lens' ListMFADevicesResponse (Core.Maybe Core.Bool)
lmfadrrsIsTruncated = Lens.field @"isTruncated"
{-# DEPRECATED lmfadrrsIsTruncated "Use generic-lens or generic-optics with 'isTruncated' instead." #-}

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmfadrrsMarker :: Lens.Lens' ListMFADevicesResponse (Core.Maybe Types.ResponseMarkerType)
lmfadrrsMarker = Lens.field @"marker"
{-# DEPRECATED lmfadrrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lmfadrrsResponseStatus :: Lens.Lens' ListMFADevicesResponse Core.Int
lmfadrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED lmfadrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}