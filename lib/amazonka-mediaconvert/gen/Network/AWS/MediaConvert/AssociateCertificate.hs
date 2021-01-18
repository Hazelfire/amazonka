{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.AssociateCertificate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert.
module Network.AWS.MediaConvert.AssociateCertificate
  ( -- * Creating a request
    AssociateCertificate (..),
    mkAssociateCertificate,

    -- ** Request lenses
    acArn,

    -- * Destructuring the response
    AssociateCertificateResponse (..),
    mkAssociateCertificateResponse,

    -- ** Response lenses
    acrrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaConvert.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkAssociateCertificate' smart constructor.
newtype AssociateCertificate = AssociateCertificate'
  { -- | The ARN of the ACM certificate that you want to associate with your MediaConvert resource.
    arn :: Core.Text
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'AssociateCertificate' value with any optional fields omitted.
mkAssociateCertificate ::
  -- | 'arn'
  Core.Text ->
  AssociateCertificate
mkAssociateCertificate arn = AssociateCertificate' {arn}

-- | The ARN of the ACM certificate that you want to associate with your MediaConvert resource.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acArn :: Lens.Lens' AssociateCertificate Core.Text
acArn = Lens.field @"arn"
{-# DEPRECATED acArn "Use generic-lens or generic-optics with 'arn' instead." #-}

instance Core.FromJSON AssociateCertificate where
  toJSON AssociateCertificate {..} =
    Core.object (Core.catMaybes [Core.Just ("arn" Core..= arn)])

instance Core.AWSRequest AssociateCertificate where
  type Rs AssociateCertificate = AssociateCertificateResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/2017-08-29/certificates",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("Content-Type", "application/x-amz-json-1.1"),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          AssociateCertificateResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkAssociateCertificateResponse' smart constructor.
newtype AssociateCertificateResponse = AssociateCertificateResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'AssociateCertificateResponse' value with any optional fields omitted.
mkAssociateCertificateResponse ::
  -- | 'responseStatus'
  Core.Int ->
  AssociateCertificateResponse
mkAssociateCertificateResponse responseStatus =
  AssociateCertificateResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrrsResponseStatus :: Lens.Lens' AssociateCertificateResponse Core.Int
acrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED acrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}