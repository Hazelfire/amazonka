{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.ElasticsearchDomainStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ElasticsearchDomainStatus
  ( ElasticsearchDomainStatus (..),

    -- * Smart constructor
    mkElasticsearchDomainStatus,

    -- * Lenses
    edsDomainId,
    edsDomainName,
    edsARN,
    edsElasticsearchClusterConfig,
    edsAccessPolicies,
    edsAdvancedOptions,
    edsAdvancedSecurityOptions,
    edsCognitoOptions,
    edsCreated,
    edsDeleted,
    edsDomainEndpointOptions,
    edsEBSOptions,
    edsElasticsearchVersion,
    edsEncryptionAtRestOptions,
    edsEndpoint,
    edsEndpoints,
    edsLogPublishingOptions,
    edsNodeToNodeEncryptionOptions,
    edsProcessing,
    edsServiceSoftwareOptions,
    edsSnapshotOptions,
    edsUpgradeProcessing,
    edsVPCOptions,
  )
where

import qualified Network.AWS.ElasticSearch.Types.ARN as Types
import qualified Network.AWS.ElasticSearch.Types.AdvancedSecurityOptions as Types
import qualified Network.AWS.ElasticSearch.Types.CognitoOptions as Types
import qualified Network.AWS.ElasticSearch.Types.DomainEndpointOptions as Types
import qualified Network.AWS.ElasticSearch.Types.DomainId as Types
import qualified Network.AWS.ElasticSearch.Types.DomainName as Types
import qualified Network.AWS.ElasticSearch.Types.EBSOptions as Types
import qualified Network.AWS.ElasticSearch.Types.ElasticsearchClusterConfig as Types
import qualified Network.AWS.ElasticSearch.Types.ElasticsearchVersionString as Types
import qualified Network.AWS.ElasticSearch.Types.EncryptionAtRestOptions as Types
import qualified Network.AWS.ElasticSearch.Types.LogPublishingOption as Types
import qualified Network.AWS.ElasticSearch.Types.LogType as Types
import qualified Network.AWS.ElasticSearch.Types.NodeToNodeEncryptionOptions as Types
import qualified Network.AWS.ElasticSearch.Types.PolicyDocument as Types
import qualified Network.AWS.ElasticSearch.Types.ServiceSoftwareOptions as Types
import qualified Network.AWS.ElasticSearch.Types.ServiceUrl as Types
import qualified Network.AWS.ElasticSearch.Types.SnapshotOptions as Types
import qualified Network.AWS.ElasticSearch.Types.String as Types
import qualified Network.AWS.ElasticSearch.Types.VPCDerivedInfo as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The current status of an Elasticsearch domain.
--
-- /See:/ 'mkElasticsearchDomainStatus' smart constructor.
data ElasticsearchDomainStatus = ElasticsearchDomainStatus'
  { -- | The unique identifier for the specified Elasticsearch domain.
    domainId :: Types.DomainId,
    -- | The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
    domainName :: Types.DomainName,
    -- | The Amazon resource name (ARN) of an Elasticsearch domain. See <http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html Identifiers for IAM Entities> in /Using AWS Identity and Access Management/ for more information.
    arn :: Types.ARN,
    -- | The type and number of instances in the domain cluster.
    elasticsearchClusterConfig :: Types.ElasticsearchClusterConfig,
    -- | IAM access policy as a JSON-formatted string.
    accessPolicies :: Core.Maybe Types.PolicyDocument,
    -- | Specifies the status of the @AdvancedOptions@
    advancedOptions :: Core.Maybe (Core.HashMap Types.String Types.String),
    -- | The current status of the Elasticsearch domain's advanced security options.
    advancedSecurityOptions :: Core.Maybe Types.AdvancedSecurityOptions,
    -- | The @CognitoOptions@ for the specified domain. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana> .
    cognitoOptions :: Core.Maybe Types.CognitoOptions,
    -- | The domain creation status. @True@ if the creation of an Elasticsearch domain is complete. @False@ if domain creation is still in progress.
    created :: Core.Maybe Core.Bool,
    -- | The domain deletion status. @True@ if a delete request has been received for the domain but resource cleanup is still in progress. @False@ if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.
    deleted :: Core.Maybe Core.Bool,
    -- | The current status of the Elasticsearch domain's endpoint options.
    domainEndpointOptions :: Core.Maybe Types.DomainEndpointOptions,
    -- | The @EBSOptions@ for the specified domain. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs Configuring EBS-based Storage> for more information.
    eBSOptions :: Core.Maybe Types.EBSOptions,
    elasticsearchVersion :: Core.Maybe Types.ElasticsearchVersionString,
    -- | Specifies the status of the @EncryptionAtRestOptions@ .
    encryptionAtRestOptions :: Core.Maybe Types.EncryptionAtRestOptions,
    -- | The Elasticsearch domain endpoint that you use to submit index and search requests.
    endpoint :: Core.Maybe Types.ServiceUrl,
    -- | Map containing the Elasticsearch domain endpoints used to submit index and search requests. Example @key, value@ : @'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'@ .
    endpoints :: Core.Maybe (Core.HashMap Types.String Types.ServiceUrl),
    -- | Log publishing options for the given domain.
    logPublishingOptions :: Core.Maybe (Core.HashMap Types.LogType Types.LogPublishingOption),
    -- | Specifies the status of the @NodeToNodeEncryptionOptions@ .
    nodeToNodeEncryptionOptions :: Core.Maybe Types.NodeToNodeEncryptionOptions,
    -- | The status of the Elasticsearch domain configuration. @True@ if Amazon Elasticsearch Service is processing configuration changes. @False@ if the configuration is active.
    processing :: Core.Maybe Core.Bool,
    -- | The current status of the Elasticsearch domain's service software.
    serviceSoftwareOptions :: Core.Maybe Types.ServiceSoftwareOptions,
    -- | Specifies the status of the @SnapshotOptions@
    snapshotOptions :: Core.Maybe Types.SnapshotOptions,
    -- | The status of an Elasticsearch domain version upgrade. @True@ if Amazon Elasticsearch Service is undergoing a version upgrade. @False@ if the configuration is active.
    upgradeProcessing :: Core.Maybe Core.Bool,
    -- | The @VPCOptions@ for the specified domain. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html VPC Endpoints for Amazon Elasticsearch Service Domains> .
    vPCOptions :: Core.Maybe Types.VPCDerivedInfo
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'ElasticsearchDomainStatus' value with any optional fields omitted.
mkElasticsearchDomainStatus ::
  -- | 'domainId'
  Types.DomainId ->
  -- | 'domainName'
  Types.DomainName ->
  -- | 'arn'
  Types.ARN ->
  -- | 'elasticsearchClusterConfig'
  Types.ElasticsearchClusterConfig ->
  ElasticsearchDomainStatus
mkElasticsearchDomainStatus
  domainId
  domainName
  arn
  elasticsearchClusterConfig =
    ElasticsearchDomainStatus'
      { domainId,
        domainName,
        arn,
        elasticsearchClusterConfig,
        accessPolicies = Core.Nothing,
        advancedOptions = Core.Nothing,
        advancedSecurityOptions = Core.Nothing,
        cognitoOptions = Core.Nothing,
        created = Core.Nothing,
        deleted = Core.Nothing,
        domainEndpointOptions = Core.Nothing,
        eBSOptions = Core.Nothing,
        elasticsearchVersion = Core.Nothing,
        encryptionAtRestOptions = Core.Nothing,
        endpoint = Core.Nothing,
        endpoints = Core.Nothing,
        logPublishingOptions = Core.Nothing,
        nodeToNodeEncryptionOptions = Core.Nothing,
        processing = Core.Nothing,
        serviceSoftwareOptions = Core.Nothing,
        snapshotOptions = Core.Nothing,
        upgradeProcessing = Core.Nothing,
        vPCOptions = Core.Nothing
      }

-- | The unique identifier for the specified Elasticsearch domain.
--
-- /Note:/ Consider using 'domainId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsDomainId :: Lens.Lens' ElasticsearchDomainStatus Types.DomainId
edsDomainId = Lens.field @"domainId"
{-# DEPRECATED edsDomainId "Use generic-lens or generic-optics with 'domainId' instead." #-}

-- | The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsDomainName :: Lens.Lens' ElasticsearchDomainStatus Types.DomainName
edsDomainName = Lens.field @"domainName"
{-# DEPRECATED edsDomainName "Use generic-lens or generic-optics with 'domainName' instead." #-}

-- | The Amazon resource name (ARN) of an Elasticsearch domain. See <http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html Identifiers for IAM Entities> in /Using AWS Identity and Access Management/ for more information.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsARN :: Lens.Lens' ElasticsearchDomainStatus Types.ARN
edsARN = Lens.field @"arn"
{-# DEPRECATED edsARN "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The type and number of instances in the domain cluster.
--
-- /Note:/ Consider using 'elasticsearchClusterConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsElasticsearchClusterConfig :: Lens.Lens' ElasticsearchDomainStatus Types.ElasticsearchClusterConfig
edsElasticsearchClusterConfig = Lens.field @"elasticsearchClusterConfig"
{-# DEPRECATED edsElasticsearchClusterConfig "Use generic-lens or generic-optics with 'elasticsearchClusterConfig' instead." #-}

-- | IAM access policy as a JSON-formatted string.
--
-- /Note:/ Consider using 'accessPolicies' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsAccessPolicies :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.PolicyDocument)
edsAccessPolicies = Lens.field @"accessPolicies"
{-# DEPRECATED edsAccessPolicies "Use generic-lens or generic-optics with 'accessPolicies' instead." #-}

-- | Specifies the status of the @AdvancedOptions@
--
-- /Note:/ Consider using 'advancedOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsAdvancedOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe (Core.HashMap Types.String Types.String))
edsAdvancedOptions = Lens.field @"advancedOptions"
{-# DEPRECATED edsAdvancedOptions "Use generic-lens or generic-optics with 'advancedOptions' instead." #-}

-- | The current status of the Elasticsearch domain's advanced security options.
--
-- /Note:/ Consider using 'advancedSecurityOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsAdvancedSecurityOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.AdvancedSecurityOptions)
edsAdvancedSecurityOptions = Lens.field @"advancedSecurityOptions"
{-# DEPRECATED edsAdvancedSecurityOptions "Use generic-lens or generic-optics with 'advancedSecurityOptions' instead." #-}

-- | The @CognitoOptions@ for the specified domain. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html Amazon Cognito Authentication for Kibana> .
--
-- /Note:/ Consider using 'cognitoOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsCognitoOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.CognitoOptions)
edsCognitoOptions = Lens.field @"cognitoOptions"
{-# DEPRECATED edsCognitoOptions "Use generic-lens or generic-optics with 'cognitoOptions' instead." #-}

-- | The domain creation status. @True@ if the creation of an Elasticsearch domain is complete. @False@ if domain creation is still in progress.
--
-- /Note:/ Consider using 'created' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsCreated :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Core.Bool)
edsCreated = Lens.field @"created"
{-# DEPRECATED edsCreated "Use generic-lens or generic-optics with 'created' instead." #-}

-- | The domain deletion status. @True@ if a delete request has been received for the domain but resource cleanup is still in progress. @False@ if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.
--
-- /Note:/ Consider using 'deleted' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsDeleted :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Core.Bool)
edsDeleted = Lens.field @"deleted"
{-# DEPRECATED edsDeleted "Use generic-lens or generic-optics with 'deleted' instead." #-}

-- | The current status of the Elasticsearch domain's endpoint options.
--
-- /Note:/ Consider using 'domainEndpointOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsDomainEndpointOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.DomainEndpointOptions)
edsDomainEndpointOptions = Lens.field @"domainEndpointOptions"
{-# DEPRECATED edsDomainEndpointOptions "Use generic-lens or generic-optics with 'domainEndpointOptions' instead." #-}

-- | The @EBSOptions@ for the specified domain. See <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs Configuring EBS-based Storage> for more information.
--
-- /Note:/ Consider using 'eBSOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsEBSOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.EBSOptions)
edsEBSOptions = Lens.field @"eBSOptions"
{-# DEPRECATED edsEBSOptions "Use generic-lens or generic-optics with 'eBSOptions' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'elasticsearchVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsElasticsearchVersion :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.ElasticsearchVersionString)
edsElasticsearchVersion = Lens.field @"elasticsearchVersion"
{-# DEPRECATED edsElasticsearchVersion "Use generic-lens or generic-optics with 'elasticsearchVersion' instead." #-}

-- | Specifies the status of the @EncryptionAtRestOptions@ .
--
-- /Note:/ Consider using 'encryptionAtRestOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsEncryptionAtRestOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.EncryptionAtRestOptions)
edsEncryptionAtRestOptions = Lens.field @"encryptionAtRestOptions"
{-# DEPRECATED edsEncryptionAtRestOptions "Use generic-lens or generic-optics with 'encryptionAtRestOptions' instead." #-}

-- | The Elasticsearch domain endpoint that you use to submit index and search requests.
--
-- /Note:/ Consider using 'endpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsEndpoint :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.ServiceUrl)
edsEndpoint = Lens.field @"endpoint"
{-# DEPRECATED edsEndpoint "Use generic-lens or generic-optics with 'endpoint' instead." #-}

-- | Map containing the Elasticsearch domain endpoints used to submit index and search requests. Example @key, value@ : @'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'@ .
--
-- /Note:/ Consider using 'endpoints' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsEndpoints :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe (Core.HashMap Types.String Types.ServiceUrl))
edsEndpoints = Lens.field @"endpoints"
{-# DEPRECATED edsEndpoints "Use generic-lens or generic-optics with 'endpoints' instead." #-}

-- | Log publishing options for the given domain.
--
-- /Note:/ Consider using 'logPublishingOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsLogPublishingOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe (Core.HashMap Types.LogType Types.LogPublishingOption))
edsLogPublishingOptions = Lens.field @"logPublishingOptions"
{-# DEPRECATED edsLogPublishingOptions "Use generic-lens or generic-optics with 'logPublishingOptions' instead." #-}

-- | Specifies the status of the @NodeToNodeEncryptionOptions@ .
--
-- /Note:/ Consider using 'nodeToNodeEncryptionOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsNodeToNodeEncryptionOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.NodeToNodeEncryptionOptions)
edsNodeToNodeEncryptionOptions = Lens.field @"nodeToNodeEncryptionOptions"
{-# DEPRECATED edsNodeToNodeEncryptionOptions "Use generic-lens or generic-optics with 'nodeToNodeEncryptionOptions' instead." #-}

-- | The status of the Elasticsearch domain configuration. @True@ if Amazon Elasticsearch Service is processing configuration changes. @False@ if the configuration is active.
--
-- /Note:/ Consider using 'processing' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsProcessing :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Core.Bool)
edsProcessing = Lens.field @"processing"
{-# DEPRECATED edsProcessing "Use generic-lens or generic-optics with 'processing' instead." #-}

-- | The current status of the Elasticsearch domain's service software.
--
-- /Note:/ Consider using 'serviceSoftwareOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsServiceSoftwareOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.ServiceSoftwareOptions)
edsServiceSoftwareOptions = Lens.field @"serviceSoftwareOptions"
{-# DEPRECATED edsServiceSoftwareOptions "Use generic-lens or generic-optics with 'serviceSoftwareOptions' instead." #-}

-- | Specifies the status of the @SnapshotOptions@
--
-- /Note:/ Consider using 'snapshotOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsSnapshotOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.SnapshotOptions)
edsSnapshotOptions = Lens.field @"snapshotOptions"
{-# DEPRECATED edsSnapshotOptions "Use generic-lens or generic-optics with 'snapshotOptions' instead." #-}

-- | The status of an Elasticsearch domain version upgrade. @True@ if Amazon Elasticsearch Service is undergoing a version upgrade. @False@ if the configuration is active.
--
-- /Note:/ Consider using 'upgradeProcessing' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsUpgradeProcessing :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Core.Bool)
edsUpgradeProcessing = Lens.field @"upgradeProcessing"
{-# DEPRECATED edsUpgradeProcessing "Use generic-lens or generic-optics with 'upgradeProcessing' instead." #-}

-- | The @VPCOptions@ for the specified domain. For more information, see <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html VPC Endpoints for Amazon Elasticsearch Service Domains> .
--
-- /Note:/ Consider using 'vPCOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
edsVPCOptions :: Lens.Lens' ElasticsearchDomainStatus (Core.Maybe Types.VPCDerivedInfo)
edsVPCOptions = Lens.field @"vPCOptions"
{-# DEPRECATED edsVPCOptions "Use generic-lens or generic-optics with 'vPCOptions' instead." #-}

instance Core.FromJSON ElasticsearchDomainStatus where
  parseJSON =
    Core.withObject "ElasticsearchDomainStatus" Core.$
      \x ->
        ElasticsearchDomainStatus'
          Core.<$> (x Core..: "DomainId")
          Core.<*> (x Core..: "DomainName")
          Core.<*> (x Core..: "ARN")
          Core.<*> (x Core..: "ElasticsearchClusterConfig")
          Core.<*> (x Core..:? "AccessPolicies")
          Core.<*> (x Core..:? "AdvancedOptions")
          Core.<*> (x Core..:? "AdvancedSecurityOptions")
          Core.<*> (x Core..:? "CognitoOptions")
          Core.<*> (x Core..:? "Created")
          Core.<*> (x Core..:? "Deleted")
          Core.<*> (x Core..:? "DomainEndpointOptions")
          Core.<*> (x Core..:? "EBSOptions")
          Core.<*> (x Core..:? "ElasticsearchVersion")
          Core.<*> (x Core..:? "EncryptionAtRestOptions")
          Core.<*> (x Core..:? "Endpoint")
          Core.<*> (x Core..:? "Endpoints")
          Core.<*> (x Core..:? "LogPublishingOptions")
          Core.<*> (x Core..:? "NodeToNodeEncryptionOptions")
          Core.<*> (x Core..:? "Processing")
          Core.<*> (x Core..:? "ServiceSoftwareOptions")
          Core.<*> (x Core..:? "SnapshotOptions")
          Core.<*> (x Core..:? "UpgradeProcessing")
          Core.<*> (x Core..:? "VPCOptions")