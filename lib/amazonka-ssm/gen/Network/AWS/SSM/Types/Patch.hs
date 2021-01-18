{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.Patch
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.Patch
  ( Patch (..),

    -- * Smart constructor
    mkPatch,

    -- * Lenses
    pAdvisoryIds,
    pArch,
    pBugzillaIds,
    pCVEIds,
    pClassification,
    pContentUrl,
    pDescription,
    pEpoch,
    pId,
    pKbNumber,
    pLanguage,
    pMsrcNumber,
    pMsrcSeverity,
    pName,
    pProduct,
    pProductFamily,
    pRelease,
    pReleaseDate,
    pRepository,
    pSeverity,
    pTitle,
    pVendor,
    pVersion,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SSM.Types.Arch as Types
import qualified Network.AWS.SSM.Types.Description as Types
import qualified Network.AWS.SSM.Types.MsrcSeverity as Types
import qualified Network.AWS.SSM.Types.Name as Types
import qualified Network.AWS.SSM.Types.PatchAdvisoryId as Types
import qualified Network.AWS.SSM.Types.PatchBugzillaId as Types
import qualified Network.AWS.SSM.Types.PatchCVEId as Types
import qualified Network.AWS.SSM.Types.PatchClassification as Types
import qualified Network.AWS.SSM.Types.PatchContentUrl as Types
import qualified Network.AWS.SSM.Types.PatchId as Types
import qualified Network.AWS.SSM.Types.PatchKbNumber as Types
import qualified Network.AWS.SSM.Types.PatchLanguage as Types
import qualified Network.AWS.SSM.Types.PatchMsrcNumber as Types
import qualified Network.AWS.SSM.Types.PatchProduct as Types
import qualified Network.AWS.SSM.Types.PatchVersion as Types
import qualified Network.AWS.SSM.Types.ProductFamily as Types
import qualified Network.AWS.SSM.Types.Release as Types
import qualified Network.AWS.SSM.Types.Repository as Types
import qualified Network.AWS.SSM.Types.Severity as Types
import qualified Network.AWS.SSM.Types.Title as Types
import qualified Network.AWS.SSM.Types.Vendor as Types

-- | Represents metadata about a patch.
--
-- /See:/ 'mkPatch' smart constructor.
data Patch = Patch'
  { -- | The Advisory ID of the patch. For example, @RHSA-2020:3779@ . Applies to Linux-based instances only.
    advisoryIds :: Core.Maybe [Types.PatchAdvisoryId],
    -- | The architecture of the patch. For example, in @example-pkg-0.710.10-2.7.abcd.x86_64@ , the architecture is indicated by @x86_64@ . Applies to Linux-based instances only.
    arch :: Core.Maybe Types.Arch,
    -- | The Bugzilla ID of the patch. For example, @1600646@ . Applies to Linux-based instances only.
    bugzillaIds :: Core.Maybe [Types.PatchBugzillaId],
    -- | The Common Vulnerabilities and Exposures (CVE) ID of the patch. For example, @CVE-1999-0067@ . Applies to Linux-based instances only.
    cVEIds :: Core.Maybe [Types.PatchCVEId],
    -- | The classification of the patch. For example, @SecurityUpdates@ , @Updates@ , or @CriticalUpdates@ .
    classification :: Core.Maybe Types.PatchClassification,
    -- | The URL where more information can be obtained about the patch.
    contentUrl :: Core.Maybe Types.PatchContentUrl,
    -- | The description of the patch.
    description :: Core.Maybe Types.Description,
    -- | The epoch of the patch. For example in @pkg-example-EE-20180914-2.2.amzn1.noarch@ , the epoch value is @20180914-2@ . Applies to Linux-based instances only.
    epoch :: Core.Maybe Core.Int,
    -- | The ID of the patch. Applies to Windows patches only.
    id :: Core.Maybe Types.PatchId,
    -- | The Microsoft Knowledge Base ID of the patch. Applies to Windows patches only.
    kbNumber :: Core.Maybe Types.PatchKbNumber,
    -- | The language of the patch if it's language-specific.
    language :: Core.Maybe Types.PatchLanguage,
    -- | The ID of the Microsoft Security Response Center (MSRC) bulletin the patch is related to. For example, @MS14-045@ . Applies to Windows patches only.
    msrcNumber :: Core.Maybe Types.PatchMsrcNumber,
    -- | The severity of the patch, such as @Critical@ , @Important@ , or @Moderate@ . Applies to Windows patches only.
    msrcSeverity :: Core.Maybe Types.MsrcSeverity,
    -- | The name of the patch. Applies to Linux-based instances only.
    name :: Core.Maybe Types.Name,
    -- | The specific product the patch is applicable for. For example, @WindowsServer2016@ or @AmazonLinux2018.03@ .
    product :: Core.Maybe Types.PatchProduct,
    -- | The product family the patch is applicable for. For example, @Windows@ or @Amazon Linux 2@ .
    productFamily :: Core.Maybe Types.ProductFamily,
    -- | The particular release of a patch. For example, in @pkg-example-EE-20180914-2.2.amzn1.noarch@ , the release is @2.amaz1@ . Applies to Linux-based instances only.
    release :: Core.Maybe Types.Release,
    -- | The date the patch was released.
    releaseDate :: Core.Maybe Core.NominalDiffTime,
    -- | The source patch repository for the operating system and version, such as @trusty-security@ for Ubuntu Server 14.04 LTE and @focal-security@ for Ubuntu Server 20.04 LTE. Applies to Linux-based instances only.
    repository :: Core.Maybe Types.Repository,
    -- | The severity level of the patch. For example, @CRITICAL@ or @MODERATE@ .
    severity :: Core.Maybe Types.Severity,
    -- | The title of the patch.
    title :: Core.Maybe Types.Title,
    -- | The name of the vendor providing the patch.
    vendor :: Core.Maybe Types.Vendor,
    -- | The version number of the patch. For example, in @example-pkg-1.710.10-2.7.abcd.x86_64@ , the version number is indicated by @-1@ . Applies to Linux-based instances only.
    version :: Core.Maybe Types.PatchVersion
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'Patch' value with any optional fields omitted.
mkPatch ::
  Patch
mkPatch =
  Patch'
    { advisoryIds = Core.Nothing,
      arch = Core.Nothing,
      bugzillaIds = Core.Nothing,
      cVEIds = Core.Nothing,
      classification = Core.Nothing,
      contentUrl = Core.Nothing,
      description = Core.Nothing,
      epoch = Core.Nothing,
      id = Core.Nothing,
      kbNumber = Core.Nothing,
      language = Core.Nothing,
      msrcNumber = Core.Nothing,
      msrcSeverity = Core.Nothing,
      name = Core.Nothing,
      product = Core.Nothing,
      productFamily = Core.Nothing,
      release = Core.Nothing,
      releaseDate = Core.Nothing,
      repository = Core.Nothing,
      severity = Core.Nothing,
      title = Core.Nothing,
      vendor = Core.Nothing,
      version = Core.Nothing
    }

-- | The Advisory ID of the patch. For example, @RHSA-2020:3779@ . Applies to Linux-based instances only.
--
-- /Note:/ Consider using 'advisoryIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pAdvisoryIds :: Lens.Lens' Patch (Core.Maybe [Types.PatchAdvisoryId])
pAdvisoryIds = Lens.field @"advisoryIds"
{-# DEPRECATED pAdvisoryIds "Use generic-lens or generic-optics with 'advisoryIds' instead." #-}

-- | The architecture of the patch. For example, in @example-pkg-0.710.10-2.7.abcd.x86_64@ , the architecture is indicated by @x86_64@ . Applies to Linux-based instances only.
--
-- /Note:/ Consider using 'arch' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pArch :: Lens.Lens' Patch (Core.Maybe Types.Arch)
pArch = Lens.field @"arch"
{-# DEPRECATED pArch "Use generic-lens or generic-optics with 'arch' instead." #-}

-- | The Bugzilla ID of the patch. For example, @1600646@ . Applies to Linux-based instances only.
--
-- /Note:/ Consider using 'bugzillaIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pBugzillaIds :: Lens.Lens' Patch (Core.Maybe [Types.PatchBugzillaId])
pBugzillaIds = Lens.field @"bugzillaIds"
{-# DEPRECATED pBugzillaIds "Use generic-lens or generic-optics with 'bugzillaIds' instead." #-}

-- | The Common Vulnerabilities and Exposures (CVE) ID of the patch. For example, @CVE-1999-0067@ . Applies to Linux-based instances only.
--
-- /Note:/ Consider using 'cVEIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pCVEIds :: Lens.Lens' Patch (Core.Maybe [Types.PatchCVEId])
pCVEIds = Lens.field @"cVEIds"
{-# DEPRECATED pCVEIds "Use generic-lens or generic-optics with 'cVEIds' instead." #-}

-- | The classification of the patch. For example, @SecurityUpdates@ , @Updates@ , or @CriticalUpdates@ .
--
-- /Note:/ Consider using 'classification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pClassification :: Lens.Lens' Patch (Core.Maybe Types.PatchClassification)
pClassification = Lens.field @"classification"
{-# DEPRECATED pClassification "Use generic-lens or generic-optics with 'classification' instead." #-}

-- | The URL where more information can be obtained about the patch.
--
-- /Note:/ Consider using 'contentUrl' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pContentUrl :: Lens.Lens' Patch (Core.Maybe Types.PatchContentUrl)
pContentUrl = Lens.field @"contentUrl"
{-# DEPRECATED pContentUrl "Use generic-lens or generic-optics with 'contentUrl' instead." #-}

-- | The description of the patch.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pDescription :: Lens.Lens' Patch (Core.Maybe Types.Description)
pDescription = Lens.field @"description"
{-# DEPRECATED pDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The epoch of the patch. For example in @pkg-example-EE-20180914-2.2.amzn1.noarch@ , the epoch value is @20180914-2@ . Applies to Linux-based instances only.
--
-- /Note:/ Consider using 'epoch' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pEpoch :: Lens.Lens' Patch (Core.Maybe Core.Int)
pEpoch = Lens.field @"epoch"
{-# DEPRECATED pEpoch "Use generic-lens or generic-optics with 'epoch' instead." #-}

-- | The ID of the patch. Applies to Windows patches only.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pId :: Lens.Lens' Patch (Core.Maybe Types.PatchId)
pId = Lens.field @"id"
{-# DEPRECATED pId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The Microsoft Knowledge Base ID of the patch. Applies to Windows patches only.
--
-- /Note:/ Consider using 'kbNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pKbNumber :: Lens.Lens' Patch (Core.Maybe Types.PatchKbNumber)
pKbNumber = Lens.field @"kbNumber"
{-# DEPRECATED pKbNumber "Use generic-lens or generic-optics with 'kbNumber' instead." #-}

-- | The language of the patch if it's language-specific.
--
-- /Note:/ Consider using 'language' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pLanguage :: Lens.Lens' Patch (Core.Maybe Types.PatchLanguage)
pLanguage = Lens.field @"language"
{-# DEPRECATED pLanguage "Use generic-lens or generic-optics with 'language' instead." #-}

-- | The ID of the Microsoft Security Response Center (MSRC) bulletin the patch is related to. For example, @MS14-045@ . Applies to Windows patches only.
--
-- /Note:/ Consider using 'msrcNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pMsrcNumber :: Lens.Lens' Patch (Core.Maybe Types.PatchMsrcNumber)
pMsrcNumber = Lens.field @"msrcNumber"
{-# DEPRECATED pMsrcNumber "Use generic-lens or generic-optics with 'msrcNumber' instead." #-}

-- | The severity of the patch, such as @Critical@ , @Important@ , or @Moderate@ . Applies to Windows patches only.
--
-- /Note:/ Consider using 'msrcSeverity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pMsrcSeverity :: Lens.Lens' Patch (Core.Maybe Types.MsrcSeverity)
pMsrcSeverity = Lens.field @"msrcSeverity"
{-# DEPRECATED pMsrcSeverity "Use generic-lens or generic-optics with 'msrcSeverity' instead." #-}

-- | The name of the patch. Applies to Linux-based instances only.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pName :: Lens.Lens' Patch (Core.Maybe Types.Name)
pName = Lens.field @"name"
{-# DEPRECATED pName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The specific product the patch is applicable for. For example, @WindowsServer2016@ or @AmazonLinux2018.03@ .
--
-- /Note:/ Consider using 'product' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pProduct :: Lens.Lens' Patch (Core.Maybe Types.PatchProduct)
pProduct = Lens.field @"product"
{-# DEPRECATED pProduct "Use generic-lens or generic-optics with 'product' instead." #-}

-- | The product family the patch is applicable for. For example, @Windows@ or @Amazon Linux 2@ .
--
-- /Note:/ Consider using 'productFamily' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pProductFamily :: Lens.Lens' Patch (Core.Maybe Types.ProductFamily)
pProductFamily = Lens.field @"productFamily"
{-# DEPRECATED pProductFamily "Use generic-lens or generic-optics with 'productFamily' instead." #-}

-- | The particular release of a patch. For example, in @pkg-example-EE-20180914-2.2.amzn1.noarch@ , the release is @2.amaz1@ . Applies to Linux-based instances only.
--
-- /Note:/ Consider using 'release' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pRelease :: Lens.Lens' Patch (Core.Maybe Types.Release)
pRelease = Lens.field @"release"
{-# DEPRECATED pRelease "Use generic-lens or generic-optics with 'release' instead." #-}

-- | The date the patch was released.
--
-- /Note:/ Consider using 'releaseDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pReleaseDate :: Lens.Lens' Patch (Core.Maybe Core.NominalDiffTime)
pReleaseDate = Lens.field @"releaseDate"
{-# DEPRECATED pReleaseDate "Use generic-lens or generic-optics with 'releaseDate' instead." #-}

-- | The source patch repository for the operating system and version, such as @trusty-security@ for Ubuntu Server 14.04 LTE and @focal-security@ for Ubuntu Server 20.04 LTE. Applies to Linux-based instances only.
--
-- /Note:/ Consider using 'repository' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pRepository :: Lens.Lens' Patch (Core.Maybe Types.Repository)
pRepository = Lens.field @"repository"
{-# DEPRECATED pRepository "Use generic-lens or generic-optics with 'repository' instead." #-}

-- | The severity level of the patch. For example, @CRITICAL@ or @MODERATE@ .
--
-- /Note:/ Consider using 'severity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pSeverity :: Lens.Lens' Patch (Core.Maybe Types.Severity)
pSeverity = Lens.field @"severity"
{-# DEPRECATED pSeverity "Use generic-lens or generic-optics with 'severity' instead." #-}

-- | The title of the patch.
--
-- /Note:/ Consider using 'title' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pTitle :: Lens.Lens' Patch (Core.Maybe Types.Title)
pTitle = Lens.field @"title"
{-# DEPRECATED pTitle "Use generic-lens or generic-optics with 'title' instead." #-}

-- | The name of the vendor providing the patch.
--
-- /Note:/ Consider using 'vendor' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pVendor :: Lens.Lens' Patch (Core.Maybe Types.Vendor)
pVendor = Lens.field @"vendor"
{-# DEPRECATED pVendor "Use generic-lens or generic-optics with 'vendor' instead." #-}

-- | The version number of the patch. For example, in @example-pkg-1.710.10-2.7.abcd.x86_64@ , the version number is indicated by @-1@ . Applies to Linux-based instances only.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pVersion :: Lens.Lens' Patch (Core.Maybe Types.PatchVersion)
pVersion = Lens.field @"version"
{-# DEPRECATED pVersion "Use generic-lens or generic-optics with 'version' instead." #-}

instance Core.FromJSON Patch where
  parseJSON =
    Core.withObject "Patch" Core.$
      \x ->
        Patch'
          Core.<$> (x Core..:? "AdvisoryIds")
          Core.<*> (x Core..:? "Arch")
          Core.<*> (x Core..:? "BugzillaIds")
          Core.<*> (x Core..:? "CVEIds")
          Core.<*> (x Core..:? "Classification")
          Core.<*> (x Core..:? "ContentUrl")
          Core.<*> (x Core..:? "Description")
          Core.<*> (x Core..:? "Epoch")
          Core.<*> (x Core..:? "Id")
          Core.<*> (x Core..:? "KbNumber")
          Core.<*> (x Core..:? "Language")
          Core.<*> (x Core..:? "MsrcNumber")
          Core.<*> (x Core..:? "MsrcSeverity")
          Core.<*> (x Core..:? "Name")
          Core.<*> (x Core..:? "Product")
          Core.<*> (x Core..:? "ProductFamily")
          Core.<*> (x Core..:? "Release")
          Core.<*> (x Core..:? "ReleaseDate")
          Core.<*> (x Core..:? "Repository")
          Core.<*> (x Core..:? "Severity")
          Core.<*> (x Core..:? "Title")
          Core.<*> (x Core..:? "Vendor")
          Core.<*> (x Core..:? "Version")