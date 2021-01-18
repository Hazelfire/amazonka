{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentDescription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentDescription
  ( EnvironmentDescription (..),

    -- * Smart constructor
    mkEnvironmentDescription,

    -- * Lenses
    eAbortableOperationInProgress,
    eApplicationName,
    eCNAME,
    eDateCreated,
    eDateUpdated,
    eDescription,
    eEndpointURL,
    eEnvironmentArn,
    eEnvironmentId,
    eEnvironmentLinks,
    eEnvironmentName,
    eHealth,
    eHealthStatus,
    eOperationsRole,
    ePlatformArn,
    eResources,
    eSolutionStackName,
    eStatus,
    eTemplateName,
    eTier,
    eVersionLabel,
  )
where

import qualified Network.AWS.ElasticBeanstalk.Types.ApplicationName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.ConfigurationTemplateName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.DNSCname as Types
import qualified Network.AWS.ElasticBeanstalk.Types.Description as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EndpointURL as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EnvironmentArn as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EnvironmentHealth as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthStatus as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EnvironmentId as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EnvironmentLink as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EnvironmentName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EnvironmentResourcesDescription as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EnvironmentStatus as Types
import qualified Network.AWS.ElasticBeanstalk.Types.EnvironmentTier as Types
import qualified Network.AWS.ElasticBeanstalk.Types.OperationsRole as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformArn as Types
import qualified Network.AWS.ElasticBeanstalk.Types.SolutionStackName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.VersionLabel as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes the properties of an environment.
--
-- /See:/ 'mkEnvironmentDescription' smart constructor.
data EnvironmentDescription = EnvironmentDescription'
  { -- | Indicates if there is an in-progress environment configuration update or application version deployment that you can cancel.
    --
    -- @true:@ There is an update in progress.
    -- @false:@ There are no updates currently in progress.
    abortableOperationInProgress :: Core.Maybe Core.Bool,
    -- | The name of the application associated with this environment.
    applicationName :: Core.Maybe Types.ApplicationName,
    -- | The URL to the CNAME for this environment.
    cname :: Core.Maybe Types.DNSCname,
    -- | The creation date for this environment.
    dateCreated :: Core.Maybe Core.UTCTime,
    -- | The last modified date for this environment.
    dateUpdated :: Core.Maybe Core.UTCTime,
    -- | Describes this environment.
    description :: Core.Maybe Types.Description,
    -- | For load-balanced, autoscaling environments, the URL to the LoadBalancer. For single-instance environments, the IP address of the instance.
    endpointURL :: Core.Maybe Types.EndpointURL,
    -- | The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.
    environmentArn :: Core.Maybe Types.EnvironmentArn,
    -- | The ID of this environment.
    environmentId :: Core.Maybe Types.EnvironmentId,
    -- | A list of links to other environments in the same group.
    environmentLinks :: Core.Maybe [Types.EnvironmentLink],
    -- | The name of this environment.
    environmentName :: Core.Maybe Types.EnvironmentName,
    -- | Describes the health status of the environment. AWS Elastic Beanstalk indicates the failure levels for a running environment:
    --
    --
    --     * @Red@ : Indicates the environment is not responsive. Occurs when three or more consecutive failures occur for an environment.
    --
    --
    --     * @Yellow@ : Indicates that something is wrong. Occurs when two consecutive failures occur for an environment.
    --
    --
    --     * @Green@ : Indicates the environment is healthy and fully functional.
    --
    --
    --     * @Grey@ : Default health for a new environment. The environment is not fully launched and health checks have not started or health checks are suspended during an @UpdateEnvironment@ or @RestartEnvironment@ request.
    --
    --
    -- Default: @Grey@
    health :: Core.Maybe Types.EnvironmentHealth,
    -- | Returns the health status of the application running in your environment. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html Health Colors and Statuses> .
    healthStatus :: Core.Maybe Types.EnvironmentHealthStatus,
    -- | The Amazon Resource Name (ARN) of the environment's operations role. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html Operations roles> in the /AWS Elastic Beanstalk Developer Guide/ .
    operationsRole :: Core.Maybe Types.OperationsRole,
    -- | The ARN of the platform version.
    platformArn :: Core.Maybe Types.PlatformArn,
    -- | The description of the AWS resources used by this environment.
    resources :: Core.Maybe Types.EnvironmentResourcesDescription,
    -- | The name of the @SolutionStack@ deployed with this environment.
    solutionStackName :: Core.Maybe Types.SolutionStackName,
    -- | The current operational status of the environment:
    --
    --
    --     * @Launching@ : Environment is in the process of initial deployment.
    --
    --
    --     * @Updating@ : Environment is in the process of updating its configuration settings or application version.
    --
    --
    --     * @Ready@ : Environment is available to have an action performed on it, such as update or terminate.
    --
    --
    --     * @Terminating@ : Environment is in the shut-down process.
    --
    --
    --     * @Terminated@ : Environment is not running.
    status :: Core.Maybe Types.EnvironmentStatus,
    -- | The name of the configuration template used to originally launch this environment.
    templateName :: Core.Maybe Types.ConfigurationTemplateName,
    -- | Describes the current tier of this environment.
    tier :: Core.Maybe Types.EnvironmentTier,
    -- | The application version deployed in this environment.
    versionLabel :: Core.Maybe Types.VersionLabel
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'EnvironmentDescription' value with any optional fields omitted.
mkEnvironmentDescription ::
  EnvironmentDescription
mkEnvironmentDescription =
  EnvironmentDescription'
    { abortableOperationInProgress =
        Core.Nothing,
      applicationName = Core.Nothing,
      cname = Core.Nothing,
      dateCreated = Core.Nothing,
      dateUpdated = Core.Nothing,
      description = Core.Nothing,
      endpointURL = Core.Nothing,
      environmentArn = Core.Nothing,
      environmentId = Core.Nothing,
      environmentLinks = Core.Nothing,
      environmentName = Core.Nothing,
      health = Core.Nothing,
      healthStatus = Core.Nothing,
      operationsRole = Core.Nothing,
      platformArn = Core.Nothing,
      resources = Core.Nothing,
      solutionStackName = Core.Nothing,
      status = Core.Nothing,
      templateName = Core.Nothing,
      tier = Core.Nothing,
      versionLabel = Core.Nothing
    }

-- | Indicates if there is an in-progress environment configuration update or application version deployment that you can cancel.
--
-- @true:@ There is an update in progress.
-- @false:@ There are no updates currently in progress.
--
-- /Note:/ Consider using 'abortableOperationInProgress' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eAbortableOperationInProgress :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Bool)
eAbortableOperationInProgress = Lens.field @"abortableOperationInProgress"
{-# DEPRECATED eAbortableOperationInProgress "Use generic-lens or generic-optics with 'abortableOperationInProgress' instead." #-}

-- | The name of the application associated with this environment.
--
-- /Note:/ Consider using 'applicationName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eApplicationName :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.ApplicationName)
eApplicationName = Lens.field @"applicationName"
{-# DEPRECATED eApplicationName "Use generic-lens or generic-optics with 'applicationName' instead." #-}

-- | The URL to the CNAME for this environment.
--
-- /Note:/ Consider using 'cname' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eCNAME :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.DNSCname)
eCNAME = Lens.field @"cname"
{-# DEPRECATED eCNAME "Use generic-lens or generic-optics with 'cname' instead." #-}

-- | The creation date for this environment.
--
-- /Note:/ Consider using 'dateCreated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eDateCreated :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.UTCTime)
eDateCreated = Lens.field @"dateCreated"
{-# DEPRECATED eDateCreated "Use generic-lens or generic-optics with 'dateCreated' instead." #-}

-- | The last modified date for this environment.
--
-- /Note:/ Consider using 'dateUpdated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eDateUpdated :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.UTCTime)
eDateUpdated = Lens.field @"dateUpdated"
{-# DEPRECATED eDateUpdated "Use generic-lens or generic-optics with 'dateUpdated' instead." #-}

-- | Describes this environment.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eDescription :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.Description)
eDescription = Lens.field @"description"
{-# DEPRECATED eDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | For load-balanced, autoscaling environments, the URL to the LoadBalancer. For single-instance environments, the IP address of the instance.
--
-- /Note:/ Consider using 'endpointURL' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eEndpointURL :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.EndpointURL)
eEndpointURL = Lens.field @"endpointURL"
{-# DEPRECATED eEndpointURL "Use generic-lens or generic-optics with 'endpointURL' instead." #-}

-- | The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.
--
-- /Note:/ Consider using 'environmentArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eEnvironmentArn :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.EnvironmentArn)
eEnvironmentArn = Lens.field @"environmentArn"
{-# DEPRECATED eEnvironmentArn "Use generic-lens or generic-optics with 'environmentArn' instead." #-}

-- | The ID of this environment.
--
-- /Note:/ Consider using 'environmentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eEnvironmentId :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.EnvironmentId)
eEnvironmentId = Lens.field @"environmentId"
{-# DEPRECATED eEnvironmentId "Use generic-lens or generic-optics with 'environmentId' instead." #-}

-- | A list of links to other environments in the same group.
--
-- /Note:/ Consider using 'environmentLinks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eEnvironmentLinks :: Lens.Lens' EnvironmentDescription (Core.Maybe [Types.EnvironmentLink])
eEnvironmentLinks = Lens.field @"environmentLinks"
{-# DEPRECATED eEnvironmentLinks "Use generic-lens or generic-optics with 'environmentLinks' instead." #-}

-- | The name of this environment.
--
-- /Note:/ Consider using 'environmentName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eEnvironmentName :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.EnvironmentName)
eEnvironmentName = Lens.field @"environmentName"
{-# DEPRECATED eEnvironmentName "Use generic-lens or generic-optics with 'environmentName' instead." #-}

-- | Describes the health status of the environment. AWS Elastic Beanstalk indicates the failure levels for a running environment:
--
--
--     * @Red@ : Indicates the environment is not responsive. Occurs when three or more consecutive failures occur for an environment.
--
--
--     * @Yellow@ : Indicates that something is wrong. Occurs when two consecutive failures occur for an environment.
--
--
--     * @Green@ : Indicates the environment is healthy and fully functional.
--
--
--     * @Grey@ : Default health for a new environment. The environment is not fully launched and health checks have not started or health checks are suspended during an @UpdateEnvironment@ or @RestartEnvironment@ request.
--
--
-- Default: @Grey@
--
-- /Note:/ Consider using 'health' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eHealth :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.EnvironmentHealth)
eHealth = Lens.field @"health"
{-# DEPRECATED eHealth "Use generic-lens or generic-optics with 'health' instead." #-}

-- | Returns the health status of the application running in your environment. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html Health Colors and Statuses> .
--
-- /Note:/ Consider using 'healthStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eHealthStatus :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.EnvironmentHealthStatus)
eHealthStatus = Lens.field @"healthStatus"
{-# DEPRECATED eHealthStatus "Use generic-lens or generic-optics with 'healthStatus' instead." #-}

-- | The Amazon Resource Name (ARN) of the environment's operations role. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html Operations roles> in the /AWS Elastic Beanstalk Developer Guide/ .
--
-- /Note:/ Consider using 'operationsRole' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eOperationsRole :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.OperationsRole)
eOperationsRole = Lens.field @"operationsRole"
{-# DEPRECATED eOperationsRole "Use generic-lens or generic-optics with 'operationsRole' instead." #-}

-- | The ARN of the platform version.
--
-- /Note:/ Consider using 'platformArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ePlatformArn :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.PlatformArn)
ePlatformArn = Lens.field @"platformArn"
{-# DEPRECATED ePlatformArn "Use generic-lens or generic-optics with 'platformArn' instead." #-}

-- | The description of the AWS resources used by this environment.
--
-- /Note:/ Consider using 'resources' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eResources :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.EnvironmentResourcesDescription)
eResources = Lens.field @"resources"
{-# DEPRECATED eResources "Use generic-lens or generic-optics with 'resources' instead." #-}

-- | The name of the @SolutionStack@ deployed with this environment.
--
-- /Note:/ Consider using 'solutionStackName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eSolutionStackName :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.SolutionStackName)
eSolutionStackName = Lens.field @"solutionStackName"
{-# DEPRECATED eSolutionStackName "Use generic-lens or generic-optics with 'solutionStackName' instead." #-}

-- | The current operational status of the environment:
--
--
--     * @Launching@ : Environment is in the process of initial deployment.
--
--
--     * @Updating@ : Environment is in the process of updating its configuration settings or application version.
--
--
--     * @Ready@ : Environment is available to have an action performed on it, such as update or terminate.
--
--
--     * @Terminating@ : Environment is in the shut-down process.
--
--
--     * @Terminated@ : Environment is not running.
--
--
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eStatus :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.EnvironmentStatus)
eStatus = Lens.field @"status"
{-# DEPRECATED eStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The name of the configuration template used to originally launch this environment.
--
-- /Note:/ Consider using 'templateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eTemplateName :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.ConfigurationTemplateName)
eTemplateName = Lens.field @"templateName"
{-# DEPRECATED eTemplateName "Use generic-lens or generic-optics with 'templateName' instead." #-}

-- | Describes the current tier of this environment.
--
-- /Note:/ Consider using 'tier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eTier :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.EnvironmentTier)
eTier = Lens.field @"tier"
{-# DEPRECATED eTier "Use generic-lens or generic-optics with 'tier' instead." #-}

-- | The application version deployed in this environment.
--
-- /Note:/ Consider using 'versionLabel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eVersionLabel :: Lens.Lens' EnvironmentDescription (Core.Maybe Types.VersionLabel)
eVersionLabel = Lens.field @"versionLabel"
{-# DEPRECATED eVersionLabel "Use generic-lens or generic-optics with 'versionLabel' instead." #-}

instance Core.FromXML EnvironmentDescription where
  parseXML x =
    EnvironmentDescription'
      Core.<$> (x Core..@? "AbortableOperationInProgress")
      Core.<*> (x Core..@? "ApplicationName")
      Core.<*> (x Core..@? "CNAME")
      Core.<*> (x Core..@? "DateCreated")
      Core.<*> (x Core..@? "DateUpdated")
      Core.<*> (x Core..@? "Description")
      Core.<*> (x Core..@? "EndpointURL")
      Core.<*> (x Core..@? "EnvironmentArn")
      Core.<*> (x Core..@? "EnvironmentId")
      Core.<*> ( x Core..@? "EnvironmentLinks"
                   Core..<@> Core.parseXMLList "member"
               )
      Core.<*> (x Core..@? "EnvironmentName")
      Core.<*> (x Core..@? "Health")
      Core.<*> (x Core..@? "HealthStatus")
      Core.<*> (x Core..@? "OperationsRole")
      Core.<*> (x Core..@? "PlatformArn")
      Core.<*> (x Core..@? "Resources")
      Core.<*> (x Core..@? "SolutionStackName")
      Core.<*> (x Core..@? "Status")
      Core.<*> (x Core..@? "TemplateName")
      Core.<*> (x Core..@? "Tier")
      Core.<*> (x Core..@? "VersionLabel")