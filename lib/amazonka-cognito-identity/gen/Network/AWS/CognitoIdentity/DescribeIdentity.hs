{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.DescribeIdentity
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata related to the given identity, including when the identity was created and any associated linked logins.
--
-- You must use AWS Developer credentials to call this API.
module Network.AWS.CognitoIdentity.DescribeIdentity
  ( -- * Creating a request
    DescribeIdentity (..),
    mkDescribeIdentity,

    -- ** Request lenses
    diIdentityId,

    -- * Destructuring the response
    Types.IdentityDescription (..),
    Types.mkIdentityDescription,

    -- ** Response lenses
    Types.idCreationDate,
    Types.idIdentityId,
    Types.idLastModifiedDate,
    Types.idLogins,
  )
where

import qualified Network.AWS.CognitoIdentity.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Input to the @DescribeIdentity@ action.
--
-- /See:/ 'mkDescribeIdentity' smart constructor.
newtype DescribeIdentity = DescribeIdentity'
  { -- | A unique identifier in the format REGION:GUID.
    identityId :: Types.IdentityId
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeIdentity' value with any optional fields omitted.
mkDescribeIdentity ::
  -- | 'identityId'
  Types.IdentityId ->
  DescribeIdentity
mkDescribeIdentity identityId = DescribeIdentity' {identityId}

-- | A unique identifier in the format REGION:GUID.
--
-- /Note:/ Consider using 'identityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diIdentityId :: Lens.Lens' DescribeIdentity Types.IdentityId
diIdentityId = Lens.field @"identityId"
{-# DEPRECATED diIdentityId "Use generic-lens or generic-optics with 'identityId' instead." #-}

instance Core.FromJSON DescribeIdentity where
  toJSON DescribeIdentity {..} =
    Core.object
      (Core.catMaybes [Core.Just ("IdentityId" Core..= identityId)])

instance Core.AWSRequest DescribeIdentity where
  type Rs DescribeIdentity = Types.IdentityDescription
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure
            ("X-Amz-Target", "AWSCognitoIdentityService.DescribeIdentity")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveJSON (\s h x -> Core.eitherParseJSON x)