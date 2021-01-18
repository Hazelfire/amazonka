{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.CreateSAMLProvider
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2.0.
--
-- The SAML provider resource that you create with this operation can be used as a principal in an IAM role's trust policy. Such a policy can enable federated users who sign in using the SAML IdP to assume the role. You can create an IAM role that supports Web-based single sign-on (SSO) to the AWS Management Console or one that supports API access to AWS.
-- When you create the SAML provider resource, you upload a SAML metadata document that you get from your IdP. That document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that the IdP sends. You must generate the metadata document using the identity management software that is used as your organization's IdP.
-- For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html Enabling SAML 2.0 Federated Users to Access the AWS Management Console> and <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html About SAML 2.0-based Federation> in the /IAM User Guide/ .
module Network.AWS.IAM.CreateSAMLProvider
  ( -- * Creating a request
    CreateSAMLProvider (..),
    mkCreateSAMLProvider,

    -- ** Request lenses
    csamlpSAMLMetadataDocument,
    csamlpName,

    -- * Destructuring the response
    CreateSAMLProviderResponse (..),
    mkCreateSAMLProviderResponse,

    -- ** Response lenses
    csamlprrsSAMLProviderArn,
    csamlprrsResponseStatus,
  )
where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateSAMLProvider' smart constructor.
data CreateSAMLProvider = CreateSAMLProvider'
  { -- | An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.
    --
    -- For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html About SAML 2.0-based Federation> in the /IAM User Guide/
    sAMLMetadataDocument :: Types.SAMLMetadataDocument,
    -- | The name of the provider to create.
    --
    -- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
    name :: Types.Name
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateSAMLProvider' value with any optional fields omitted.
mkCreateSAMLProvider ::
  -- | 'sAMLMetadataDocument'
  Types.SAMLMetadataDocument ->
  -- | 'name'
  Types.Name ->
  CreateSAMLProvider
mkCreateSAMLProvider sAMLMetadataDocument name =
  CreateSAMLProvider' {sAMLMetadataDocument, name}

-- | An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.
--
-- For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html About SAML 2.0-based Federation> in the /IAM User Guide/
--
-- /Note:/ Consider using 'sAMLMetadataDocument' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csamlpSAMLMetadataDocument :: Lens.Lens' CreateSAMLProvider Types.SAMLMetadataDocument
csamlpSAMLMetadataDocument = Lens.field @"sAMLMetadataDocument"
{-# DEPRECATED csamlpSAMLMetadataDocument "Use generic-lens or generic-optics with 'sAMLMetadataDocument' instead." #-}

-- | The name of the provider to create.
--
-- This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csamlpName :: Lens.Lens' CreateSAMLProvider Types.Name
csamlpName = Lens.field @"name"
{-# DEPRECATED csamlpName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Core.AWSRequest CreateSAMLProvider where
  type Rs CreateSAMLProvider = CreateSAMLProviderResponse
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
            ( Core.pure ("Action", "CreateSAMLProvider")
                Core.<> (Core.pure ("Version", "2010-05-08"))
                Core.<> (Core.toQueryValue "SAMLMetadataDocument" sAMLMetadataDocument)
                Core.<> (Core.toQueryValue "Name" name)
            )
      }
  response =
    Response.receiveXMLWrapper
      "CreateSAMLProviderResult"
      ( \s h x ->
          CreateSAMLProviderResponse'
            Core.<$> (x Core..@? "SAMLProviderArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Contains the response to a successful 'CreateSAMLProvider' request.
--
-- /See:/ 'mkCreateSAMLProviderResponse' smart constructor.
data CreateSAMLProviderResponse = CreateSAMLProviderResponse'
  { -- | The Amazon Resource Name (ARN) of the new SAML provider resource in IAM.
    sAMLProviderArn :: Core.Maybe Types.SAMLProviderArn,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateSAMLProviderResponse' value with any optional fields omitted.
mkCreateSAMLProviderResponse ::
  -- | 'responseStatus'
  Core.Int ->
  CreateSAMLProviderResponse
mkCreateSAMLProviderResponse responseStatus =
  CreateSAMLProviderResponse'
    { sAMLProviderArn = Core.Nothing,
      responseStatus
    }

-- | The Amazon Resource Name (ARN) of the new SAML provider resource in IAM.
--
-- /Note:/ Consider using 'sAMLProviderArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csamlprrsSAMLProviderArn :: Lens.Lens' CreateSAMLProviderResponse (Core.Maybe Types.SAMLProviderArn)
csamlprrsSAMLProviderArn = Lens.field @"sAMLProviderArn"
{-# DEPRECATED csamlprrsSAMLProviderArn "Use generic-lens or generic-optics with 'sAMLProviderArn' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csamlprrsResponseStatus :: Lens.Lens' CreateSAMLProviderResponse Core.Int
csamlprrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED csamlprrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}