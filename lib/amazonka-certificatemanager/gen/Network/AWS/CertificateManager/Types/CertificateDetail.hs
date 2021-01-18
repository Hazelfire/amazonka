{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.CertificateDetail
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.CertificateDetail
  ( CertificateDetail (..),

    -- * Smart constructor
    mkCertificateDetail,

    -- * Lenses
    cdCertificateArn,
    cdCertificateAuthorityArn,
    cdCreatedAt,
    cdDomainName,
    cdDomainValidationOptions,
    cdExtendedKeyUsages,
    cdFailureReason,
    cdImportedAt,
    cdInUseBy,
    cdIssuedAt,
    cdIssuer,
    cdKeyAlgorithm,
    cdKeyUsages,
    cdNotAfter,
    cdNotBefore,
    cdOptions,
    cdRenewalEligibility,
    cdRenewalSummary,
    cdRevocationReason,
    cdRevokedAt,
    cdSerial,
    cdSignatureAlgorithm,
    cdStatus,
    cdSubject,
    cdSubjectAlternativeNames,
    cdType,
  )
where

import qualified Network.AWS.CertificateManager.Types.CertificateArn as Types
import qualified Network.AWS.CertificateManager.Types.CertificateAuthorityArn as Types
import qualified Network.AWS.CertificateManager.Types.CertificateOptions as Types
import qualified Network.AWS.CertificateManager.Types.CertificateStatus as Types
import qualified Network.AWS.CertificateManager.Types.CertificateType as Types
import qualified Network.AWS.CertificateManager.Types.DomainName as Types
import qualified Network.AWS.CertificateManager.Types.DomainNameString as Types
import qualified Network.AWS.CertificateManager.Types.DomainValidation as Types
import qualified Network.AWS.CertificateManager.Types.ExtendedKeyUsage as Types
import qualified Network.AWS.CertificateManager.Types.FailureReason as Types
import qualified Network.AWS.CertificateManager.Types.Issuer as Types
import qualified Network.AWS.CertificateManager.Types.KeyAlgorithm as Types
import qualified Network.AWS.CertificateManager.Types.KeyUsage as Types
import qualified Network.AWS.CertificateManager.Types.RenewalEligibility as Types
import qualified Network.AWS.CertificateManager.Types.RenewalSummary as Types
import qualified Network.AWS.CertificateManager.Types.RevocationReason as Types
import qualified Network.AWS.CertificateManager.Types.Serial as Types
import qualified Network.AWS.CertificateManager.Types.SignatureAlgorithm as Types
import qualified Network.AWS.CertificateManager.Types.String as Types
import qualified Network.AWS.CertificateManager.Types.Subject as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains metadata about an ACM certificate. This structure is returned in the response to a 'DescribeCertificate' request.
--
-- /See:/ 'mkCertificateDetail' smart constructor.
data CertificateDetail = CertificateDetail'
  { -- | The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
    certificateArn :: Core.Maybe Types.CertificateArn,
    -- | The Amazon Resource Name (ARN) of the ACM PCA private certificate authority (CA) that issued the certificate. This has the following format:
    --
    -- @arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012@
    certificateAuthorityArn :: Core.Maybe Types.CertificateAuthorityArn,
    -- | The time at which the certificate was requested. This value exists only when the certificate type is @AMAZON_ISSUED@ .
    createdAt :: Core.Maybe Core.NominalDiffTime,
    -- | The fully qualified domain name for the certificate, such as www.example.com or example.com.
    domainName :: Core.Maybe Types.DomainName,
    -- | Contains information about the initial validation of each domain name that occurs as a result of the 'RequestCertificate' request. This field exists only when the certificate type is @AMAZON_ISSUED@ .
    domainValidationOptions :: Core.Maybe (Core.NonEmpty Types.DomainValidation),
    -- | Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID).
    extendedKeyUsages :: Core.Maybe [Types.ExtendedKeyUsage],
    -- | The reason the certificate request failed. This value exists only when the certificate status is @FAILED@ . For more information, see <https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed Certificate Request Failed> in the /AWS Certificate Manager User Guide/ .
    failureReason :: Core.Maybe Types.FailureReason,
    -- | The date and time at which the certificate was imported. This value exists only when the certificate type is @IMPORTED@ .
    importedAt :: Core.Maybe Core.NominalDiffTime,
    -- | A list of ARNs for the AWS resources that are using the certificate. A certificate can be used by multiple AWS resources.
    inUseBy :: Core.Maybe [Types.String],
    -- | The time at which the certificate was issued. This value exists only when the certificate type is @AMAZON_ISSUED@ .
    issuedAt :: Core.Maybe Core.NominalDiffTime,
    -- | The name of the certificate authority that issued and signed the certificate.
    issuer :: Core.Maybe Types.Issuer,
    -- | The algorithm that was used to generate the public-private key pair.
    keyAlgorithm :: Core.Maybe Types.KeyAlgorithm,
    -- | A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.
    keyUsages :: Core.Maybe [Types.KeyUsage],
    -- | The time after which the certificate is not valid.
    notAfter :: Core.Maybe Core.NominalDiffTime,
    -- | The time before which the certificate is not valid.
    notBefore :: Core.Maybe Core.NominalDiffTime,
    -- | Value that specifies whether to add the certificate to a transparency log. Certificate transparency makes it possible to detect SSL certificates that have been mistakenly or maliciously issued. A browser might respond to certificate that has not been logged by showing an error message. The logs are cryptographically secure.
    options :: Core.Maybe Types.CertificateOptions,
    -- | Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the 'RenewCertificate' command.
    renewalEligibility :: Core.Maybe Types.RenewalEligibility,
    -- | Contains information about the status of ACM's <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> for the certificate. This field exists only when the certificate type is @AMAZON_ISSUED@ .
    renewalSummary :: Core.Maybe Types.RenewalSummary,
    -- | The reason the certificate was revoked. This value exists only when the certificate status is @REVOKED@ .
    revocationReason :: Core.Maybe Types.RevocationReason,
    -- | The time at which the certificate was revoked. This value exists only when the certificate status is @REVOKED@ .
    revokedAt :: Core.Maybe Core.NominalDiffTime,
    -- | The serial number of the certificate.
    serial :: Core.Maybe Types.Serial,
    -- | The algorithm that was used to sign the certificate.
    signatureAlgorithm :: Core.Maybe Types.SignatureAlgorithm,
    -- | The status of the certificate.
    status :: Core.Maybe Types.CertificateStatus,
    -- | The name of the entity that is associated with the public key contained in the certificate.
    subject :: Core.Maybe Types.Subject,
    -- | One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website.
    subjectAlternativeNames :: Core.Maybe (Core.NonEmpty Types.DomainNameString),
    -- | The source of the certificate. For certificates provided by ACM, this value is @AMAZON_ISSUED@ . For certificates that you imported with 'ImportCertificate' , this value is @IMPORTED@ . ACM does not provide <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html Importing Certificates> in the /AWS Certificate Manager User Guide/ .
    type' :: Core.Maybe Types.CertificateType
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'CertificateDetail' value with any optional fields omitted.
mkCertificateDetail ::
  CertificateDetail
mkCertificateDetail =
  CertificateDetail'
    { certificateArn = Core.Nothing,
      certificateAuthorityArn = Core.Nothing,
      createdAt = Core.Nothing,
      domainName = Core.Nothing,
      domainValidationOptions = Core.Nothing,
      extendedKeyUsages = Core.Nothing,
      failureReason = Core.Nothing,
      importedAt = Core.Nothing,
      inUseBy = Core.Nothing,
      issuedAt = Core.Nothing,
      issuer = Core.Nothing,
      keyAlgorithm = Core.Nothing,
      keyUsages = Core.Nothing,
      notAfter = Core.Nothing,
      notBefore = Core.Nothing,
      options = Core.Nothing,
      renewalEligibility = Core.Nothing,
      renewalSummary = Core.Nothing,
      revocationReason = Core.Nothing,
      revokedAt = Core.Nothing,
      serial = Core.Nothing,
      signatureAlgorithm = Core.Nothing,
      status = Core.Nothing,
      subject = Core.Nothing,
      subjectAlternativeNames = Core.Nothing,
      type' = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
--
-- /Note:/ Consider using 'certificateArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdCertificateArn :: Lens.Lens' CertificateDetail (Core.Maybe Types.CertificateArn)
cdCertificateArn = Lens.field @"certificateArn"
{-# DEPRECATED cdCertificateArn "Use generic-lens or generic-optics with 'certificateArn' instead." #-}

-- | The Amazon Resource Name (ARN) of the ACM PCA private certificate authority (CA) that issued the certificate. This has the following format:
--
-- @arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012@
--
-- /Note:/ Consider using 'certificateAuthorityArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdCertificateAuthorityArn :: Lens.Lens' CertificateDetail (Core.Maybe Types.CertificateAuthorityArn)
cdCertificateAuthorityArn = Lens.field @"certificateAuthorityArn"
{-# DEPRECATED cdCertificateAuthorityArn "Use generic-lens or generic-optics with 'certificateAuthorityArn' instead." #-}

-- | The time at which the certificate was requested. This value exists only when the certificate type is @AMAZON_ISSUED@ .
--
-- /Note:/ Consider using 'createdAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdCreatedAt :: Lens.Lens' CertificateDetail (Core.Maybe Core.NominalDiffTime)
cdCreatedAt = Lens.field @"createdAt"
{-# DEPRECATED cdCreatedAt "Use generic-lens or generic-optics with 'createdAt' instead." #-}

-- | The fully qualified domain name for the certificate, such as www.example.com or example.com.
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdDomainName :: Lens.Lens' CertificateDetail (Core.Maybe Types.DomainName)
cdDomainName = Lens.field @"domainName"
{-# DEPRECATED cdDomainName "Use generic-lens or generic-optics with 'domainName' instead." #-}

-- | Contains information about the initial validation of each domain name that occurs as a result of the 'RequestCertificate' request. This field exists only when the certificate type is @AMAZON_ISSUED@ .
--
-- /Note:/ Consider using 'domainValidationOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdDomainValidationOptions :: Lens.Lens' CertificateDetail (Core.Maybe (Core.NonEmpty Types.DomainValidation))
cdDomainValidationOptions = Lens.field @"domainValidationOptions"
{-# DEPRECATED cdDomainValidationOptions "Use generic-lens or generic-optics with 'domainValidationOptions' instead." #-}

-- | Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID).
--
-- /Note:/ Consider using 'extendedKeyUsages' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdExtendedKeyUsages :: Lens.Lens' CertificateDetail (Core.Maybe [Types.ExtendedKeyUsage])
cdExtendedKeyUsages = Lens.field @"extendedKeyUsages"
{-# DEPRECATED cdExtendedKeyUsages "Use generic-lens or generic-optics with 'extendedKeyUsages' instead." #-}

-- | The reason the certificate request failed. This value exists only when the certificate status is @FAILED@ . For more information, see <https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed Certificate Request Failed> in the /AWS Certificate Manager User Guide/ .
--
-- /Note:/ Consider using 'failureReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdFailureReason :: Lens.Lens' CertificateDetail (Core.Maybe Types.FailureReason)
cdFailureReason = Lens.field @"failureReason"
{-# DEPRECATED cdFailureReason "Use generic-lens or generic-optics with 'failureReason' instead." #-}

-- | The date and time at which the certificate was imported. This value exists only when the certificate type is @IMPORTED@ .
--
-- /Note:/ Consider using 'importedAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdImportedAt :: Lens.Lens' CertificateDetail (Core.Maybe Core.NominalDiffTime)
cdImportedAt = Lens.field @"importedAt"
{-# DEPRECATED cdImportedAt "Use generic-lens or generic-optics with 'importedAt' instead." #-}

-- | A list of ARNs for the AWS resources that are using the certificate. A certificate can be used by multiple AWS resources.
--
-- /Note:/ Consider using 'inUseBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdInUseBy :: Lens.Lens' CertificateDetail (Core.Maybe [Types.String])
cdInUseBy = Lens.field @"inUseBy"
{-# DEPRECATED cdInUseBy "Use generic-lens or generic-optics with 'inUseBy' instead." #-}

-- | The time at which the certificate was issued. This value exists only when the certificate type is @AMAZON_ISSUED@ .
--
-- /Note:/ Consider using 'issuedAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdIssuedAt :: Lens.Lens' CertificateDetail (Core.Maybe Core.NominalDiffTime)
cdIssuedAt = Lens.field @"issuedAt"
{-# DEPRECATED cdIssuedAt "Use generic-lens or generic-optics with 'issuedAt' instead." #-}

-- | The name of the certificate authority that issued and signed the certificate.
--
-- /Note:/ Consider using 'issuer' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdIssuer :: Lens.Lens' CertificateDetail (Core.Maybe Types.Issuer)
cdIssuer = Lens.field @"issuer"
{-# DEPRECATED cdIssuer "Use generic-lens or generic-optics with 'issuer' instead." #-}

-- | The algorithm that was used to generate the public-private key pair.
--
-- /Note:/ Consider using 'keyAlgorithm' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdKeyAlgorithm :: Lens.Lens' CertificateDetail (Core.Maybe Types.KeyAlgorithm)
cdKeyAlgorithm = Lens.field @"keyAlgorithm"
{-# DEPRECATED cdKeyAlgorithm "Use generic-lens or generic-optics with 'keyAlgorithm' instead." #-}

-- | A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.
--
-- /Note:/ Consider using 'keyUsages' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdKeyUsages :: Lens.Lens' CertificateDetail (Core.Maybe [Types.KeyUsage])
cdKeyUsages = Lens.field @"keyUsages"
{-# DEPRECATED cdKeyUsages "Use generic-lens or generic-optics with 'keyUsages' instead." #-}

-- | The time after which the certificate is not valid.
--
-- /Note:/ Consider using 'notAfter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdNotAfter :: Lens.Lens' CertificateDetail (Core.Maybe Core.NominalDiffTime)
cdNotAfter = Lens.field @"notAfter"
{-# DEPRECATED cdNotAfter "Use generic-lens or generic-optics with 'notAfter' instead." #-}

-- | The time before which the certificate is not valid.
--
-- /Note:/ Consider using 'notBefore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdNotBefore :: Lens.Lens' CertificateDetail (Core.Maybe Core.NominalDiffTime)
cdNotBefore = Lens.field @"notBefore"
{-# DEPRECATED cdNotBefore "Use generic-lens or generic-optics with 'notBefore' instead." #-}

-- | Value that specifies whether to add the certificate to a transparency log. Certificate transparency makes it possible to detect SSL certificates that have been mistakenly or maliciously issued. A browser might respond to certificate that has not been logged by showing an error message. The logs are cryptographically secure.
--
-- /Note:/ Consider using 'options' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdOptions :: Lens.Lens' CertificateDetail (Core.Maybe Types.CertificateOptions)
cdOptions = Lens.field @"options"
{-# DEPRECATED cdOptions "Use generic-lens or generic-optics with 'options' instead." #-}

-- | Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the 'RenewCertificate' command.
--
-- /Note:/ Consider using 'renewalEligibility' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdRenewalEligibility :: Lens.Lens' CertificateDetail (Core.Maybe Types.RenewalEligibility)
cdRenewalEligibility = Lens.field @"renewalEligibility"
{-# DEPRECATED cdRenewalEligibility "Use generic-lens or generic-optics with 'renewalEligibility' instead." #-}

-- | Contains information about the status of ACM's <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> for the certificate. This field exists only when the certificate type is @AMAZON_ISSUED@ .
--
-- /Note:/ Consider using 'renewalSummary' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdRenewalSummary :: Lens.Lens' CertificateDetail (Core.Maybe Types.RenewalSummary)
cdRenewalSummary = Lens.field @"renewalSummary"
{-# DEPRECATED cdRenewalSummary "Use generic-lens or generic-optics with 'renewalSummary' instead." #-}

-- | The reason the certificate was revoked. This value exists only when the certificate status is @REVOKED@ .
--
-- /Note:/ Consider using 'revocationReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdRevocationReason :: Lens.Lens' CertificateDetail (Core.Maybe Types.RevocationReason)
cdRevocationReason = Lens.field @"revocationReason"
{-# DEPRECATED cdRevocationReason "Use generic-lens or generic-optics with 'revocationReason' instead." #-}

-- | The time at which the certificate was revoked. This value exists only when the certificate status is @REVOKED@ .
--
-- /Note:/ Consider using 'revokedAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdRevokedAt :: Lens.Lens' CertificateDetail (Core.Maybe Core.NominalDiffTime)
cdRevokedAt = Lens.field @"revokedAt"
{-# DEPRECATED cdRevokedAt "Use generic-lens or generic-optics with 'revokedAt' instead." #-}

-- | The serial number of the certificate.
--
-- /Note:/ Consider using 'serial' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdSerial :: Lens.Lens' CertificateDetail (Core.Maybe Types.Serial)
cdSerial = Lens.field @"serial"
{-# DEPRECATED cdSerial "Use generic-lens or generic-optics with 'serial' instead." #-}

-- | The algorithm that was used to sign the certificate.
--
-- /Note:/ Consider using 'signatureAlgorithm' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdSignatureAlgorithm :: Lens.Lens' CertificateDetail (Core.Maybe Types.SignatureAlgorithm)
cdSignatureAlgorithm = Lens.field @"signatureAlgorithm"
{-# DEPRECATED cdSignatureAlgorithm "Use generic-lens or generic-optics with 'signatureAlgorithm' instead." #-}

-- | The status of the certificate.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdStatus :: Lens.Lens' CertificateDetail (Core.Maybe Types.CertificateStatus)
cdStatus = Lens.field @"status"
{-# DEPRECATED cdStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The name of the entity that is associated with the public key contained in the certificate.
--
-- /Note:/ Consider using 'subject' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdSubject :: Lens.Lens' CertificateDetail (Core.Maybe Types.Subject)
cdSubject = Lens.field @"subject"
{-# DEPRECATED cdSubject "Use generic-lens or generic-optics with 'subject' instead." #-}

-- | One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website.
--
-- /Note:/ Consider using 'subjectAlternativeNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdSubjectAlternativeNames :: Lens.Lens' CertificateDetail (Core.Maybe (Core.NonEmpty Types.DomainNameString))
cdSubjectAlternativeNames = Lens.field @"subjectAlternativeNames"
{-# DEPRECATED cdSubjectAlternativeNames "Use generic-lens or generic-optics with 'subjectAlternativeNames' instead." #-}

-- | The source of the certificate. For certificates provided by ACM, this value is @AMAZON_ISSUED@ . For certificates that you imported with 'ImportCertificate' , this value is @IMPORTED@ . ACM does not provide <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html Importing Certificates> in the /AWS Certificate Manager User Guide/ .
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdType :: Lens.Lens' CertificateDetail (Core.Maybe Types.CertificateType)
cdType = Lens.field @"type'"
{-# DEPRECATED cdType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Core.FromJSON CertificateDetail where
  parseJSON =
    Core.withObject "CertificateDetail" Core.$
      \x ->
        CertificateDetail'
          Core.<$> (x Core..:? "CertificateArn")
          Core.<*> (x Core..:? "CertificateAuthorityArn")
          Core.<*> (x Core..:? "CreatedAt")
          Core.<*> (x Core..:? "DomainName")
          Core.<*> (x Core..:? "DomainValidationOptions")
          Core.<*> (x Core..:? "ExtendedKeyUsages")
          Core.<*> (x Core..:? "FailureReason")
          Core.<*> (x Core..:? "ImportedAt")
          Core.<*> (x Core..:? "InUseBy")
          Core.<*> (x Core..:? "IssuedAt")
          Core.<*> (x Core..:? "Issuer")
          Core.<*> (x Core..:? "KeyAlgorithm")
          Core.<*> (x Core..:? "KeyUsages")
          Core.<*> (x Core..:? "NotAfter")
          Core.<*> (x Core..:? "NotBefore")
          Core.<*> (x Core..:? "Options")
          Core.<*> (x Core..:? "RenewalEligibility")
          Core.<*> (x Core..:? "RenewalSummary")
          Core.<*> (x Core..:? "RevocationReason")
          Core.<*> (x Core..:? "RevokedAt")
          Core.<*> (x Core..:? "Serial")
          Core.<*> (x Core..:? "SignatureAlgorithm")
          Core.<*> (x Core..:? "Status")
          Core.<*> (x Core..:? "Subject")
          Core.<*> (x Core..:? "SubjectAlternativeNames")
          Core.<*> (x Core..:? "Type")