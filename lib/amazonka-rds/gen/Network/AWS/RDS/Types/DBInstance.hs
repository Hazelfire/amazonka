{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBInstance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBInstance
  ( DBInstance (..),

    -- * Smart constructor
    mkDBInstance,

    -- * Lenses
    dbiAllocatedStorage,
    dbiAssociatedRoles,
    dbiAutoMinorVersionUpgrade,
    dbiAvailabilityZone,
    dbiBackupRetentionPeriod,
    dbiCACertificateIdentifier,
    dbiCharacterSetName,
    dbiCopyTagsToSnapshot,
    dbiDBClusterIdentifier,
    dbiDBInstanceArn,
    dbiDBInstanceClass,
    dbiDBInstanceIdentifier,
    dbiDBInstanceStatus,
    dbiDBName,
    dbiDBParameterGroups,
    dbiDBSecurityGroups,
    dbiDBSubnetGroup,
    dbiDbInstancePort,
    dbiDbiResourceId,
    dbiDeletionProtection,
    dbiDomainMemberships,
    dbiEnabledCloudwatchLogsExports,
    dbiEndpoint,
    dbiEngine,
    dbiEngineVersion,
    dbiEnhancedMonitoringResourceArn,
    dbiIAMDatabaseAuthenticationEnabled,
    dbiInstanceCreateTime,
    dbiIops,
    dbiKmsKeyId,
    dbiLatestRestorableTime,
    dbiLicenseModel,
    dbiListenerEndpoint,
    dbiMasterUsername,
    dbiMaxAllocatedStorage,
    dbiMonitoringInterval,
    dbiMonitoringRoleArn,
    dbiMultiAZ,
    dbiNcharCharacterSetName,
    dbiOptionGroupMemberships,
    dbiPendingModifiedValues,
    dbiPerformanceInsightsEnabled,
    dbiPerformanceInsightsKMSKeyId,
    dbiPerformanceInsightsRetentionPeriod,
    dbiPreferredBackupWindow,
    dbiPreferredMaintenanceWindow,
    dbiProcessorFeatures,
    dbiPromotionTier,
    dbiPubliclyAccessible,
    dbiReadReplicaDBClusterIdentifiers,
    dbiReadReplicaDBInstanceIdentifiers,
    dbiReadReplicaSourceDBInstanceIdentifier,
    dbiReplicaMode,
    dbiSecondaryAvailabilityZone,
    dbiStatusInfos,
    dbiStorageEncrypted,
    dbiStorageType,
    dbiTagList,
    dbiTdeCredentialArn,
    dbiTimezone,
    dbiVpcSecurityGroups,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.RDS.Types.DBInstanceRole as Types
import qualified Network.AWS.RDS.Types.DBInstanceStatusInfo as Types
import qualified Network.AWS.RDS.Types.DBParameterGroupStatus as Types
import qualified Network.AWS.RDS.Types.DBSecurityGroupMembership as Types
import qualified Network.AWS.RDS.Types.DBSubnetGroup as Types
import qualified Network.AWS.RDS.Types.DomainMembership as Types
import qualified Network.AWS.RDS.Types.Endpoint as Types
import qualified Network.AWS.RDS.Types.OptionGroupMembership as Types
import qualified Network.AWS.RDS.Types.PendingModifiedValues as Types
import qualified Network.AWS.RDS.Types.ProcessorFeature as Types
import qualified Network.AWS.RDS.Types.ReplicaMode as Types
import qualified Network.AWS.RDS.Types.String as Types
import qualified Network.AWS.RDS.Types.Tag as Types
import qualified Network.AWS.RDS.Types.VpcSecurityGroupMembership as Types

-- | Contains the details of an Amazon RDS DB instance.
--
-- This data type is used as a response element in the @DescribeDBInstances@ action.
--
-- /See:/ 'mkDBInstance' smart constructor.
data DBInstance = DBInstance'
  { -- | Specifies the allocated storage size specified in gibibytes.
    allocatedStorage :: Core.Maybe Core.Int,
    -- | The AWS Identity and Access Management (IAM) roles associated with the DB instance.
    associatedRoles :: Core.Maybe [Types.DBInstanceRole],
    -- | Indicates that minor version patches are applied automatically.
    autoMinorVersionUpgrade :: Core.Maybe Core.Bool,
    -- | Specifies the name of the Availability Zone the DB instance is located in.
    availabilityZone :: Core.Maybe Types.String,
    -- | Specifies the number of days for which automatic DB snapshots are retained.
    backupRetentionPeriod :: Core.Maybe Core.Int,
    -- | The identifier of the CA certificate for this DB instance.
    cACertificateIdentifier :: Core.Maybe Types.String,
    -- | If present, specifies the name of the character set that this instance is associated with.
    characterSetName :: Core.Maybe Types.String,
    -- | Specifies whether tags are copied from the DB instance to snapshots of the DB instance.
    --
    -- __Amazon Aurora__
    -- Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this value for an Aurora DB instance has no effect on the DB cluster setting. For more information, see @DBCluster@ .
    copyTagsToSnapshot :: Core.Maybe Core.Bool,
    -- | If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.
    dBClusterIdentifier :: Core.Maybe Types.String,
    -- | The Amazon Resource Name (ARN) for the DB instance.
    dBInstanceArn :: Core.Maybe Types.String,
    -- | Contains the name of the compute and memory capacity class of the DB instance.
    dBInstanceClass :: Core.Maybe Types.String,
    -- | Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.
    dBInstanceIdentifier :: Core.Maybe Types.String,
    -- | Specifies the current state of this database.
    --
    -- For information about DB instance statuses, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html DB Instance Status> in the /Amazon RDS User Guide./
    dBInstanceStatus :: Core.Maybe Types.String,
    -- | The meaning of this parameter differs according to the database engine you use.
    --
    -- __MySQL, MariaDB, SQL Server, PostgreSQL__
    -- Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.
    -- Type: String
    -- __Oracle__
    -- Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.
    dBName :: Core.Maybe Types.String,
    -- | Provides the list of DB parameter groups applied to this DB instance.
    dBParameterGroups :: Core.Maybe [Types.DBParameterGroupStatus],
    -- | A list of DB security group elements containing @DBSecurityGroup.Name@ and @DBSecurityGroup.Status@ subelements.
    dBSecurityGroups :: Core.Maybe [Types.DBSecurityGroupMembership],
    -- | Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.
    dBSubnetGroup :: Core.Maybe Types.DBSubnetGroup,
    -- | Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.
    dbInstancePort :: Core.Maybe Core.Int,
    -- | The AWS Region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB instance is accessed.
    dbiResourceId :: Core.Maybe Types.String,
    -- | Indicates if the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance> .
    deletionProtection :: Core.Maybe Core.Bool,
    -- | The Active Directory Domain membership records associated with the DB instance.
    domainMemberships :: Core.Maybe [Types.DomainMembership],
    -- | A list of log types that this DB instance is configured to export to CloudWatch Logs.
    --
    -- Log types vary by DB engine. For information about the log types for each DB engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html Amazon RDS Database Log Files> in the /Amazon RDS User Guide./
    enabledCloudwatchLogsExports :: Core.Maybe [Types.String],
    -- | Specifies the connection endpoint.
    endpoint :: Core.Maybe Types.Endpoint,
    -- | The name of the database engine to be used for this DB instance.
    engine :: Core.Maybe Types.String,
    -- | Indicates the database engine version.
    engineVersion :: Core.Maybe Types.String,
    -- | The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.
    enhancedMonitoringResourceArn :: Core.Maybe Types.String,
    -- | True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.
    --
    -- IAM database authentication can be enabled for the following database engines
    --
    --     * For MySQL 5.6, minor version 5.6.34 or higher
    --
    --
    --     * For MySQL 5.7, minor version 5.7.16 or higher
    --
    --
    --     * Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.
    iAMDatabaseAuthenticationEnabled :: Core.Maybe Core.Bool,
    -- | Provides the date and time the DB instance was created.
    instanceCreateTime :: Core.Maybe Core.UTCTime,
    -- | Specifies the Provisioned IOPS (I/O operations per second) value.
    iops :: Core.Maybe Core.Int,
    -- | If @StorageEncrypted@ is true, the AWS KMS key identifier for the encrypted DB instance.
    kmsKeyId :: Core.Maybe Types.String,
    -- | Specifies the latest time to which a database can be restored with point-in-time restore.
    latestRestorableTime :: Core.Maybe Core.UTCTime,
    -- | License model information for this DB instance.
    licenseModel :: Core.Maybe Types.String,
    -- | Specifies the listener connection endpoint for SQL Server Always On.
    listenerEndpoint :: Core.Maybe Types.Endpoint,
    -- | Contains the master username for the DB instance.
    masterUsername :: Core.Maybe Types.String,
    -- | The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.
    maxAllocatedStorage :: Core.Maybe Core.Int,
    -- | The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.
    monitoringInterval :: Core.Maybe Core.Int,
    -- | The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.
    monitoringRoleArn :: Core.Maybe Types.String,
    -- | Specifies if the DB instance is a Multi-AZ deployment.
    multiAZ :: Core.Maybe Core.Bool,
    -- | The name of the NCHAR character set for the Oracle DB instance. This character set specifies the Unicode encoding for data stored in table columns of type NCHAR, NCLOB, or NVARCHAR2.
    ncharCharacterSetName :: Core.Maybe Types.String,
    -- | Provides the list of option group memberships for this DB instance.
    optionGroupMemberships :: Core.Maybe [Types.OptionGroupMembership],
    -- | Specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.
    pendingModifiedValues :: Core.Maybe Types.PendingModifiedValues,
    -- | True if Performance Insights is enabled for the DB instance, and otherwise false.
    performanceInsightsEnabled :: Core.Maybe Core.Bool,
    -- | The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.
    performanceInsightsKMSKeyId :: Core.Maybe Types.String,
    -- | The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).
    performanceInsightsRetentionPeriod :: Core.Maybe Core.Int,
    -- | Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the @BackupRetentionPeriod@ .
    preferredBackupWindow :: Core.Maybe Types.String,
    -- | Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
    preferredMaintenanceWindow :: Core.Maybe Types.String,
    -- | The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
    processorFeatures :: Core.Maybe [Types.ProcessorFeature],
    -- | A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster> in the /Amazon Aurora User Guide/ .
    promotionTier :: Core.Maybe Core.Int,
    -- | Specifies the accessibility options for the DB instance.
    --
    -- When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.
    -- When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.
    -- For more information, see 'CreateDBInstance' .
    publiclyAccessible :: Core.Maybe Core.Bool,
    -- | Contains one or more identifiers of Aurora DB clusters to which the RDS DB instance is replicated as a read replica. For example, when you create an Aurora read replica of an RDS MySQL DB instance, the Aurora MySQL DB cluster for the Aurora read replica is shown. This output does not contain information about cross region Aurora read replicas.
    readReplicaDBClusterIdentifiers :: Core.Maybe [Types.String],
    -- | Contains one or more identifiers of the read replicas associated with this DB instance.
    readReplicaDBInstanceIdentifiers :: Core.Maybe [Types.String],
    -- | Contains the identifier of the source DB instance if this DB instance is a read replica.
    readReplicaSourceDBInstanceIdentifier :: Core.Maybe Types.String,
    -- | The open mode of an Oracle read replica. The default is @open-read-only@ . For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html Working with Oracle Read Replicas for Amazon RDS> in the /Amazon RDS User Guide/ .
    replicaMode :: Core.Maybe Types.ReplicaMode,
    -- | If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.
    secondaryAvailabilityZone :: Core.Maybe Types.String,
    -- | The status of a read replica. If the instance isn't a read replica, this is blank.
    statusInfos :: Core.Maybe [Types.DBInstanceStatusInfo],
    -- | Specifies whether the DB instance is encrypted.
    storageEncrypted :: Core.Maybe Core.Bool,
    -- | Specifies the storage type associated with DB instance.
    storageType :: Core.Maybe Types.String,
    tagList :: Core.Maybe [Types.Tag],
    -- | The ARN from the key store with which the instance is associated for TDE encryption.
    tdeCredentialArn :: Core.Maybe Types.String,
    -- | The time zone of the DB instance. In most cases, the @Timezone@ element is empty. @Timezone@ content appears only for Microsoft SQL Server DB instances that were created with a time zone specified.
    timezone :: Core.Maybe Types.String,
    -- | Provides a list of VPC security group elements that the DB instance belongs to.
    vpcSecurityGroups :: Core.Maybe [Types.VpcSecurityGroupMembership]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'DBInstance' value with any optional fields omitted.
mkDBInstance ::
  DBInstance
mkDBInstance =
  DBInstance'
    { allocatedStorage = Core.Nothing,
      associatedRoles = Core.Nothing,
      autoMinorVersionUpgrade = Core.Nothing,
      availabilityZone = Core.Nothing,
      backupRetentionPeriod = Core.Nothing,
      cACertificateIdentifier = Core.Nothing,
      characterSetName = Core.Nothing,
      copyTagsToSnapshot = Core.Nothing,
      dBClusterIdentifier = Core.Nothing,
      dBInstanceArn = Core.Nothing,
      dBInstanceClass = Core.Nothing,
      dBInstanceIdentifier = Core.Nothing,
      dBInstanceStatus = Core.Nothing,
      dBName = Core.Nothing,
      dBParameterGroups = Core.Nothing,
      dBSecurityGroups = Core.Nothing,
      dBSubnetGroup = Core.Nothing,
      dbInstancePort = Core.Nothing,
      dbiResourceId = Core.Nothing,
      deletionProtection = Core.Nothing,
      domainMemberships = Core.Nothing,
      enabledCloudwatchLogsExports = Core.Nothing,
      endpoint = Core.Nothing,
      engine = Core.Nothing,
      engineVersion = Core.Nothing,
      enhancedMonitoringResourceArn = Core.Nothing,
      iAMDatabaseAuthenticationEnabled = Core.Nothing,
      instanceCreateTime = Core.Nothing,
      iops = Core.Nothing,
      kmsKeyId = Core.Nothing,
      latestRestorableTime = Core.Nothing,
      licenseModel = Core.Nothing,
      listenerEndpoint = Core.Nothing,
      masterUsername = Core.Nothing,
      maxAllocatedStorage = Core.Nothing,
      monitoringInterval = Core.Nothing,
      monitoringRoleArn = Core.Nothing,
      multiAZ = Core.Nothing,
      ncharCharacterSetName = Core.Nothing,
      optionGroupMemberships = Core.Nothing,
      pendingModifiedValues = Core.Nothing,
      performanceInsightsEnabled = Core.Nothing,
      performanceInsightsKMSKeyId = Core.Nothing,
      performanceInsightsRetentionPeriod = Core.Nothing,
      preferredBackupWindow = Core.Nothing,
      preferredMaintenanceWindow = Core.Nothing,
      processorFeatures = Core.Nothing,
      promotionTier = Core.Nothing,
      publiclyAccessible = Core.Nothing,
      readReplicaDBClusterIdentifiers = Core.Nothing,
      readReplicaDBInstanceIdentifiers = Core.Nothing,
      readReplicaSourceDBInstanceIdentifier = Core.Nothing,
      replicaMode = Core.Nothing,
      secondaryAvailabilityZone = Core.Nothing,
      statusInfos = Core.Nothing,
      storageEncrypted = Core.Nothing,
      storageType = Core.Nothing,
      tagList = Core.Nothing,
      tdeCredentialArn = Core.Nothing,
      timezone = Core.Nothing,
      vpcSecurityGroups = Core.Nothing
    }

-- | Specifies the allocated storage size specified in gibibytes.
--
-- /Note:/ Consider using 'allocatedStorage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiAllocatedStorage :: Lens.Lens' DBInstance (Core.Maybe Core.Int)
dbiAllocatedStorage = Lens.field @"allocatedStorage"
{-# DEPRECATED dbiAllocatedStorage "Use generic-lens or generic-optics with 'allocatedStorage' instead." #-}

-- | The AWS Identity and Access Management (IAM) roles associated with the DB instance.
--
-- /Note:/ Consider using 'associatedRoles' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiAssociatedRoles :: Lens.Lens' DBInstance (Core.Maybe [Types.DBInstanceRole])
dbiAssociatedRoles = Lens.field @"associatedRoles"
{-# DEPRECATED dbiAssociatedRoles "Use generic-lens or generic-optics with 'associatedRoles' instead." #-}

-- | Indicates that minor version patches are applied automatically.
--
-- /Note:/ Consider using 'autoMinorVersionUpgrade' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiAutoMinorVersionUpgrade :: Lens.Lens' DBInstance (Core.Maybe Core.Bool)
dbiAutoMinorVersionUpgrade = Lens.field @"autoMinorVersionUpgrade"
{-# DEPRECATED dbiAutoMinorVersionUpgrade "Use generic-lens or generic-optics with 'autoMinorVersionUpgrade' instead." #-}

-- | Specifies the name of the Availability Zone the DB instance is located in.
--
-- /Note:/ Consider using 'availabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiAvailabilityZone :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiAvailabilityZone = Lens.field @"availabilityZone"
{-# DEPRECATED dbiAvailabilityZone "Use generic-lens or generic-optics with 'availabilityZone' instead." #-}

-- | Specifies the number of days for which automatic DB snapshots are retained.
--
-- /Note:/ Consider using 'backupRetentionPeriod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiBackupRetentionPeriod :: Lens.Lens' DBInstance (Core.Maybe Core.Int)
dbiBackupRetentionPeriod = Lens.field @"backupRetentionPeriod"
{-# DEPRECATED dbiBackupRetentionPeriod "Use generic-lens or generic-optics with 'backupRetentionPeriod' instead." #-}

-- | The identifier of the CA certificate for this DB instance.
--
-- /Note:/ Consider using 'cACertificateIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiCACertificateIdentifier :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiCACertificateIdentifier = Lens.field @"cACertificateIdentifier"
{-# DEPRECATED dbiCACertificateIdentifier "Use generic-lens or generic-optics with 'cACertificateIdentifier' instead." #-}

-- | If present, specifies the name of the character set that this instance is associated with.
--
-- /Note:/ Consider using 'characterSetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiCharacterSetName :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiCharacterSetName = Lens.field @"characterSetName"
{-# DEPRECATED dbiCharacterSetName "Use generic-lens or generic-optics with 'characterSetName' instead." #-}

-- | Specifies whether tags are copied from the DB instance to snapshots of the DB instance.
--
-- __Amazon Aurora__
-- Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this value for an Aurora DB instance has no effect on the DB cluster setting. For more information, see @DBCluster@ .
--
-- /Note:/ Consider using 'copyTagsToSnapshot' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiCopyTagsToSnapshot :: Lens.Lens' DBInstance (Core.Maybe Core.Bool)
dbiCopyTagsToSnapshot = Lens.field @"copyTagsToSnapshot"
{-# DEPRECATED dbiCopyTagsToSnapshot "Use generic-lens or generic-optics with 'copyTagsToSnapshot' instead." #-}

-- | If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.
--
-- /Note:/ Consider using 'dBClusterIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDBClusterIdentifier :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiDBClusterIdentifier = Lens.field @"dBClusterIdentifier"
{-# DEPRECATED dbiDBClusterIdentifier "Use generic-lens or generic-optics with 'dBClusterIdentifier' instead." #-}

-- | The Amazon Resource Name (ARN) for the DB instance.
--
-- /Note:/ Consider using 'dBInstanceArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDBInstanceArn :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiDBInstanceArn = Lens.field @"dBInstanceArn"
{-# DEPRECATED dbiDBInstanceArn "Use generic-lens or generic-optics with 'dBInstanceArn' instead." #-}

-- | Contains the name of the compute and memory capacity class of the DB instance.
--
-- /Note:/ Consider using 'dBInstanceClass' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDBInstanceClass :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiDBInstanceClass = Lens.field @"dBInstanceClass"
{-# DEPRECATED dbiDBInstanceClass "Use generic-lens or generic-optics with 'dBInstanceClass' instead." #-}

-- | Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.
--
-- /Note:/ Consider using 'dBInstanceIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDBInstanceIdentifier :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiDBInstanceIdentifier = Lens.field @"dBInstanceIdentifier"
{-# DEPRECATED dbiDBInstanceIdentifier "Use generic-lens or generic-optics with 'dBInstanceIdentifier' instead." #-}

-- | Specifies the current state of this database.
--
-- For information about DB instance statuses, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html DB Instance Status> in the /Amazon RDS User Guide./
--
-- /Note:/ Consider using 'dBInstanceStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDBInstanceStatus :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiDBInstanceStatus = Lens.field @"dBInstanceStatus"
{-# DEPRECATED dbiDBInstanceStatus "Use generic-lens or generic-optics with 'dBInstanceStatus' instead." #-}

-- | The meaning of this parameter differs according to the database engine you use.
--
-- __MySQL, MariaDB, SQL Server, PostgreSQL__
-- Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.
-- Type: String
-- __Oracle__
-- Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.
--
-- /Note:/ Consider using 'dBName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDBName :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiDBName = Lens.field @"dBName"
{-# DEPRECATED dbiDBName "Use generic-lens or generic-optics with 'dBName' instead." #-}

-- | Provides the list of DB parameter groups applied to this DB instance.
--
-- /Note:/ Consider using 'dBParameterGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDBParameterGroups :: Lens.Lens' DBInstance (Core.Maybe [Types.DBParameterGroupStatus])
dbiDBParameterGroups = Lens.field @"dBParameterGroups"
{-# DEPRECATED dbiDBParameterGroups "Use generic-lens or generic-optics with 'dBParameterGroups' instead." #-}

-- | A list of DB security group elements containing @DBSecurityGroup.Name@ and @DBSecurityGroup.Status@ subelements.
--
-- /Note:/ Consider using 'dBSecurityGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDBSecurityGroups :: Lens.Lens' DBInstance (Core.Maybe [Types.DBSecurityGroupMembership])
dbiDBSecurityGroups = Lens.field @"dBSecurityGroups"
{-# DEPRECATED dbiDBSecurityGroups "Use generic-lens or generic-optics with 'dBSecurityGroups' instead." #-}

-- | Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.
--
-- /Note:/ Consider using 'dBSubnetGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDBSubnetGroup :: Lens.Lens' DBInstance (Core.Maybe Types.DBSubnetGroup)
dbiDBSubnetGroup = Lens.field @"dBSubnetGroup"
{-# DEPRECATED dbiDBSubnetGroup "Use generic-lens or generic-optics with 'dBSubnetGroup' instead." #-}

-- | Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.
--
-- /Note:/ Consider using 'dbInstancePort' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDbInstancePort :: Lens.Lens' DBInstance (Core.Maybe Core.Int)
dbiDbInstancePort = Lens.field @"dbInstancePort"
{-# DEPRECATED dbiDbInstancePort "Use generic-lens or generic-optics with 'dbInstancePort' instead." #-}

-- | The AWS Region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB instance is accessed.
--
-- /Note:/ Consider using 'dbiResourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDbiResourceId :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiDbiResourceId = Lens.field @"dbiResourceId"
{-# DEPRECATED dbiDbiResourceId "Use generic-lens or generic-optics with 'dbiResourceId' instead." #-}

-- | Indicates if the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance> .
--
-- /Note:/ Consider using 'deletionProtection' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDeletionProtection :: Lens.Lens' DBInstance (Core.Maybe Core.Bool)
dbiDeletionProtection = Lens.field @"deletionProtection"
{-# DEPRECATED dbiDeletionProtection "Use generic-lens or generic-optics with 'deletionProtection' instead." #-}

-- | The Active Directory Domain membership records associated with the DB instance.
--
-- /Note:/ Consider using 'domainMemberships' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiDomainMemberships :: Lens.Lens' DBInstance (Core.Maybe [Types.DomainMembership])
dbiDomainMemberships = Lens.field @"domainMemberships"
{-# DEPRECATED dbiDomainMemberships "Use generic-lens or generic-optics with 'domainMemberships' instead." #-}

-- | A list of log types that this DB instance is configured to export to CloudWatch Logs.
--
-- Log types vary by DB engine. For information about the log types for each DB engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html Amazon RDS Database Log Files> in the /Amazon RDS User Guide./
--
-- /Note:/ Consider using 'enabledCloudwatchLogsExports' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiEnabledCloudwatchLogsExports :: Lens.Lens' DBInstance (Core.Maybe [Types.String])
dbiEnabledCloudwatchLogsExports = Lens.field @"enabledCloudwatchLogsExports"
{-# DEPRECATED dbiEnabledCloudwatchLogsExports "Use generic-lens or generic-optics with 'enabledCloudwatchLogsExports' instead." #-}

-- | Specifies the connection endpoint.
--
-- /Note:/ Consider using 'endpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiEndpoint :: Lens.Lens' DBInstance (Core.Maybe Types.Endpoint)
dbiEndpoint = Lens.field @"endpoint"
{-# DEPRECATED dbiEndpoint "Use generic-lens or generic-optics with 'endpoint' instead." #-}

-- | The name of the database engine to be used for this DB instance.
--
-- /Note:/ Consider using 'engine' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiEngine :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiEngine = Lens.field @"engine"
{-# DEPRECATED dbiEngine "Use generic-lens or generic-optics with 'engine' instead." #-}

-- | Indicates the database engine version.
--
-- /Note:/ Consider using 'engineVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiEngineVersion :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiEngineVersion = Lens.field @"engineVersion"
{-# DEPRECATED dbiEngineVersion "Use generic-lens or generic-optics with 'engineVersion' instead." #-}

-- | The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.
--
-- /Note:/ Consider using 'enhancedMonitoringResourceArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiEnhancedMonitoringResourceArn :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiEnhancedMonitoringResourceArn = Lens.field @"enhancedMonitoringResourceArn"
{-# DEPRECATED dbiEnhancedMonitoringResourceArn "Use generic-lens or generic-optics with 'enhancedMonitoringResourceArn' instead." #-}

-- | True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.
--
-- IAM database authentication can be enabled for the following database engines
--
--     * For MySQL 5.6, minor version 5.6.34 or higher
--
--
--     * For MySQL 5.7, minor version 5.7.16 or higher
--
--
--     * Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.
--
--
--
-- /Note:/ Consider using 'iAMDatabaseAuthenticationEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiIAMDatabaseAuthenticationEnabled :: Lens.Lens' DBInstance (Core.Maybe Core.Bool)
dbiIAMDatabaseAuthenticationEnabled = Lens.field @"iAMDatabaseAuthenticationEnabled"
{-# DEPRECATED dbiIAMDatabaseAuthenticationEnabled "Use generic-lens or generic-optics with 'iAMDatabaseAuthenticationEnabled' instead." #-}

-- | Provides the date and time the DB instance was created.
--
-- /Note:/ Consider using 'instanceCreateTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiInstanceCreateTime :: Lens.Lens' DBInstance (Core.Maybe Core.UTCTime)
dbiInstanceCreateTime = Lens.field @"instanceCreateTime"
{-# DEPRECATED dbiInstanceCreateTime "Use generic-lens or generic-optics with 'instanceCreateTime' instead." #-}

-- | Specifies the Provisioned IOPS (I/O operations per second) value.
--
-- /Note:/ Consider using 'iops' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiIops :: Lens.Lens' DBInstance (Core.Maybe Core.Int)
dbiIops = Lens.field @"iops"
{-# DEPRECATED dbiIops "Use generic-lens or generic-optics with 'iops' instead." #-}

-- | If @StorageEncrypted@ is true, the AWS KMS key identifier for the encrypted DB instance.
--
-- /Note:/ Consider using 'kmsKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiKmsKeyId :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiKmsKeyId = Lens.field @"kmsKeyId"
{-# DEPRECATED dbiKmsKeyId "Use generic-lens or generic-optics with 'kmsKeyId' instead." #-}

-- | Specifies the latest time to which a database can be restored with point-in-time restore.
--
-- /Note:/ Consider using 'latestRestorableTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiLatestRestorableTime :: Lens.Lens' DBInstance (Core.Maybe Core.UTCTime)
dbiLatestRestorableTime = Lens.field @"latestRestorableTime"
{-# DEPRECATED dbiLatestRestorableTime "Use generic-lens or generic-optics with 'latestRestorableTime' instead." #-}

-- | License model information for this DB instance.
--
-- /Note:/ Consider using 'licenseModel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiLicenseModel :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiLicenseModel = Lens.field @"licenseModel"
{-# DEPRECATED dbiLicenseModel "Use generic-lens or generic-optics with 'licenseModel' instead." #-}

-- | Specifies the listener connection endpoint for SQL Server Always On.
--
-- /Note:/ Consider using 'listenerEndpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiListenerEndpoint :: Lens.Lens' DBInstance (Core.Maybe Types.Endpoint)
dbiListenerEndpoint = Lens.field @"listenerEndpoint"
{-# DEPRECATED dbiListenerEndpoint "Use generic-lens or generic-optics with 'listenerEndpoint' instead." #-}

-- | Contains the master username for the DB instance.
--
-- /Note:/ Consider using 'masterUsername' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiMasterUsername :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiMasterUsername = Lens.field @"masterUsername"
{-# DEPRECATED dbiMasterUsername "Use generic-lens or generic-optics with 'masterUsername' instead." #-}

-- | The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.
--
-- /Note:/ Consider using 'maxAllocatedStorage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiMaxAllocatedStorage :: Lens.Lens' DBInstance (Core.Maybe Core.Int)
dbiMaxAllocatedStorage = Lens.field @"maxAllocatedStorage"
{-# DEPRECATED dbiMaxAllocatedStorage "Use generic-lens or generic-optics with 'maxAllocatedStorage' instead." #-}

-- | The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.
--
-- /Note:/ Consider using 'monitoringInterval' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiMonitoringInterval :: Lens.Lens' DBInstance (Core.Maybe Core.Int)
dbiMonitoringInterval = Lens.field @"monitoringInterval"
{-# DEPRECATED dbiMonitoringInterval "Use generic-lens or generic-optics with 'monitoringInterval' instead." #-}

-- | The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.
--
-- /Note:/ Consider using 'monitoringRoleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiMonitoringRoleArn :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiMonitoringRoleArn = Lens.field @"monitoringRoleArn"
{-# DEPRECATED dbiMonitoringRoleArn "Use generic-lens or generic-optics with 'monitoringRoleArn' instead." #-}

-- | Specifies if the DB instance is a Multi-AZ deployment.
--
-- /Note:/ Consider using 'multiAZ' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiMultiAZ :: Lens.Lens' DBInstance (Core.Maybe Core.Bool)
dbiMultiAZ = Lens.field @"multiAZ"
{-# DEPRECATED dbiMultiAZ "Use generic-lens or generic-optics with 'multiAZ' instead." #-}

-- | The name of the NCHAR character set for the Oracle DB instance. This character set specifies the Unicode encoding for data stored in table columns of type NCHAR, NCLOB, or NVARCHAR2.
--
-- /Note:/ Consider using 'ncharCharacterSetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiNcharCharacterSetName :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiNcharCharacterSetName = Lens.field @"ncharCharacterSetName"
{-# DEPRECATED dbiNcharCharacterSetName "Use generic-lens or generic-optics with 'ncharCharacterSetName' instead." #-}

-- | Provides the list of option group memberships for this DB instance.
--
-- /Note:/ Consider using 'optionGroupMemberships' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiOptionGroupMemberships :: Lens.Lens' DBInstance (Core.Maybe [Types.OptionGroupMembership])
dbiOptionGroupMemberships = Lens.field @"optionGroupMemberships"
{-# DEPRECATED dbiOptionGroupMemberships "Use generic-lens or generic-optics with 'optionGroupMemberships' instead." #-}

-- | Specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.
--
-- /Note:/ Consider using 'pendingModifiedValues' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiPendingModifiedValues :: Lens.Lens' DBInstance (Core.Maybe Types.PendingModifiedValues)
dbiPendingModifiedValues = Lens.field @"pendingModifiedValues"
{-# DEPRECATED dbiPendingModifiedValues "Use generic-lens or generic-optics with 'pendingModifiedValues' instead." #-}

-- | True if Performance Insights is enabled for the DB instance, and otherwise false.
--
-- /Note:/ Consider using 'performanceInsightsEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiPerformanceInsightsEnabled :: Lens.Lens' DBInstance (Core.Maybe Core.Bool)
dbiPerformanceInsightsEnabled = Lens.field @"performanceInsightsEnabled"
{-# DEPRECATED dbiPerformanceInsightsEnabled "Use generic-lens or generic-optics with 'performanceInsightsEnabled' instead." #-}

-- | The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.
--
-- /Note:/ Consider using 'performanceInsightsKMSKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiPerformanceInsightsKMSKeyId :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiPerformanceInsightsKMSKeyId = Lens.field @"performanceInsightsKMSKeyId"
{-# DEPRECATED dbiPerformanceInsightsKMSKeyId "Use generic-lens or generic-optics with 'performanceInsightsKMSKeyId' instead." #-}

-- | The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).
--
-- /Note:/ Consider using 'performanceInsightsRetentionPeriod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiPerformanceInsightsRetentionPeriod :: Lens.Lens' DBInstance (Core.Maybe Core.Int)
dbiPerformanceInsightsRetentionPeriod = Lens.field @"performanceInsightsRetentionPeriod"
{-# DEPRECATED dbiPerformanceInsightsRetentionPeriod "Use generic-lens or generic-optics with 'performanceInsightsRetentionPeriod' instead." #-}

-- | Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the @BackupRetentionPeriod@ .
--
-- /Note:/ Consider using 'preferredBackupWindow' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiPreferredBackupWindow :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiPreferredBackupWindow = Lens.field @"preferredBackupWindow"
{-# DEPRECATED dbiPreferredBackupWindow "Use generic-lens or generic-optics with 'preferredBackupWindow' instead." #-}

-- | Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
--
-- /Note:/ Consider using 'preferredMaintenanceWindow' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiPreferredMaintenanceWindow :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiPreferredMaintenanceWindow = Lens.field @"preferredMaintenanceWindow"
{-# DEPRECATED dbiPreferredMaintenanceWindow "Use generic-lens or generic-optics with 'preferredMaintenanceWindow' instead." #-}

-- | The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
--
-- /Note:/ Consider using 'processorFeatures' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiProcessorFeatures :: Lens.Lens' DBInstance (Core.Maybe [Types.ProcessorFeature])
dbiProcessorFeatures = Lens.field @"processorFeatures"
{-# DEPRECATED dbiProcessorFeatures "Use generic-lens or generic-optics with 'processorFeatures' instead." #-}

-- | A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster> in the /Amazon Aurora User Guide/ .
--
-- /Note:/ Consider using 'promotionTier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiPromotionTier :: Lens.Lens' DBInstance (Core.Maybe Core.Int)
dbiPromotionTier = Lens.field @"promotionTier"
{-# DEPRECATED dbiPromotionTier "Use generic-lens or generic-optics with 'promotionTier' instead." #-}

-- | Specifies the accessibility options for the DB instance.
--
-- When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.
-- When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.
-- For more information, see 'CreateDBInstance' .
--
-- /Note:/ Consider using 'publiclyAccessible' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiPubliclyAccessible :: Lens.Lens' DBInstance (Core.Maybe Core.Bool)
dbiPubliclyAccessible = Lens.field @"publiclyAccessible"
{-# DEPRECATED dbiPubliclyAccessible "Use generic-lens or generic-optics with 'publiclyAccessible' instead." #-}

-- | Contains one or more identifiers of Aurora DB clusters to which the RDS DB instance is replicated as a read replica. For example, when you create an Aurora read replica of an RDS MySQL DB instance, the Aurora MySQL DB cluster for the Aurora read replica is shown. This output does not contain information about cross region Aurora read replicas.
--
-- /Note:/ Consider using 'readReplicaDBClusterIdentifiers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiReadReplicaDBClusterIdentifiers :: Lens.Lens' DBInstance (Core.Maybe [Types.String])
dbiReadReplicaDBClusterIdentifiers = Lens.field @"readReplicaDBClusterIdentifiers"
{-# DEPRECATED dbiReadReplicaDBClusterIdentifiers "Use generic-lens or generic-optics with 'readReplicaDBClusterIdentifiers' instead." #-}

-- | Contains one or more identifiers of the read replicas associated with this DB instance.
--
-- /Note:/ Consider using 'readReplicaDBInstanceIdentifiers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiReadReplicaDBInstanceIdentifiers :: Lens.Lens' DBInstance (Core.Maybe [Types.String])
dbiReadReplicaDBInstanceIdentifiers = Lens.field @"readReplicaDBInstanceIdentifiers"
{-# DEPRECATED dbiReadReplicaDBInstanceIdentifiers "Use generic-lens or generic-optics with 'readReplicaDBInstanceIdentifiers' instead." #-}

-- | Contains the identifier of the source DB instance if this DB instance is a read replica.
--
-- /Note:/ Consider using 'readReplicaSourceDBInstanceIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiReadReplicaSourceDBInstanceIdentifier :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiReadReplicaSourceDBInstanceIdentifier = Lens.field @"readReplicaSourceDBInstanceIdentifier"
{-# DEPRECATED dbiReadReplicaSourceDBInstanceIdentifier "Use generic-lens or generic-optics with 'readReplicaSourceDBInstanceIdentifier' instead." #-}

-- | The open mode of an Oracle read replica. The default is @open-read-only@ . For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html Working with Oracle Read Replicas for Amazon RDS> in the /Amazon RDS User Guide/ .
--
-- /Note:/ Consider using 'replicaMode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiReplicaMode :: Lens.Lens' DBInstance (Core.Maybe Types.ReplicaMode)
dbiReplicaMode = Lens.field @"replicaMode"
{-# DEPRECATED dbiReplicaMode "Use generic-lens or generic-optics with 'replicaMode' instead." #-}

-- | If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.
--
-- /Note:/ Consider using 'secondaryAvailabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiSecondaryAvailabilityZone :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiSecondaryAvailabilityZone = Lens.field @"secondaryAvailabilityZone"
{-# DEPRECATED dbiSecondaryAvailabilityZone "Use generic-lens or generic-optics with 'secondaryAvailabilityZone' instead." #-}

-- | The status of a read replica. If the instance isn't a read replica, this is blank.
--
-- /Note:/ Consider using 'statusInfos' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiStatusInfos :: Lens.Lens' DBInstance (Core.Maybe [Types.DBInstanceStatusInfo])
dbiStatusInfos = Lens.field @"statusInfos"
{-# DEPRECATED dbiStatusInfos "Use generic-lens or generic-optics with 'statusInfos' instead." #-}

-- | Specifies whether the DB instance is encrypted.
--
-- /Note:/ Consider using 'storageEncrypted' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiStorageEncrypted :: Lens.Lens' DBInstance (Core.Maybe Core.Bool)
dbiStorageEncrypted = Lens.field @"storageEncrypted"
{-# DEPRECATED dbiStorageEncrypted "Use generic-lens or generic-optics with 'storageEncrypted' instead." #-}

-- | Specifies the storage type associated with DB instance.
--
-- /Note:/ Consider using 'storageType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiStorageType :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiStorageType = Lens.field @"storageType"
{-# DEPRECATED dbiStorageType "Use generic-lens or generic-optics with 'storageType' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'tagList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiTagList :: Lens.Lens' DBInstance (Core.Maybe [Types.Tag])
dbiTagList = Lens.field @"tagList"
{-# DEPRECATED dbiTagList "Use generic-lens or generic-optics with 'tagList' instead." #-}

-- | The ARN from the key store with which the instance is associated for TDE encryption.
--
-- /Note:/ Consider using 'tdeCredentialArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiTdeCredentialArn :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiTdeCredentialArn = Lens.field @"tdeCredentialArn"
{-# DEPRECATED dbiTdeCredentialArn "Use generic-lens or generic-optics with 'tdeCredentialArn' instead." #-}

-- | The time zone of the DB instance. In most cases, the @Timezone@ element is empty. @Timezone@ content appears only for Microsoft SQL Server DB instances that were created with a time zone specified.
--
-- /Note:/ Consider using 'timezone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiTimezone :: Lens.Lens' DBInstance (Core.Maybe Types.String)
dbiTimezone = Lens.field @"timezone"
{-# DEPRECATED dbiTimezone "Use generic-lens or generic-optics with 'timezone' instead." #-}

-- | Provides a list of VPC security group elements that the DB instance belongs to.
--
-- /Note:/ Consider using 'vpcSecurityGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbiVpcSecurityGroups :: Lens.Lens' DBInstance (Core.Maybe [Types.VpcSecurityGroupMembership])
dbiVpcSecurityGroups = Lens.field @"vpcSecurityGroups"
{-# DEPRECATED dbiVpcSecurityGroups "Use generic-lens or generic-optics with 'vpcSecurityGroups' instead." #-}

instance Core.FromXML DBInstance where
  parseXML x =
    DBInstance'
      Core.<$> (x Core..@? "AllocatedStorage")
      Core.<*> ( x Core..@? "AssociatedRoles"
                   Core..<@> Core.parseXMLList "DBInstanceRole"
               )
      Core.<*> (x Core..@? "AutoMinorVersionUpgrade")
      Core.<*> (x Core..@? "AvailabilityZone")
      Core.<*> (x Core..@? "BackupRetentionPeriod")
      Core.<*> (x Core..@? "CACertificateIdentifier")
      Core.<*> (x Core..@? "CharacterSetName")
      Core.<*> (x Core..@? "CopyTagsToSnapshot")
      Core.<*> (x Core..@? "DBClusterIdentifier")
      Core.<*> (x Core..@? "DBInstanceArn")
      Core.<*> (x Core..@? "DBInstanceClass")
      Core.<*> (x Core..@? "DBInstanceIdentifier")
      Core.<*> (x Core..@? "DBInstanceStatus")
      Core.<*> (x Core..@? "DBName")
      Core.<*> ( x Core..@? "DBParameterGroups"
                   Core..<@> Core.parseXMLList "DBParameterGroup"
               )
      Core.<*> ( x Core..@? "DBSecurityGroups"
                   Core..<@> Core.parseXMLList "DBSecurityGroup"
               )
      Core.<*> (x Core..@? "DBSubnetGroup")
      Core.<*> (x Core..@? "DbInstancePort")
      Core.<*> (x Core..@? "DbiResourceId")
      Core.<*> (x Core..@? "DeletionProtection")
      Core.<*> ( x Core..@? "DomainMemberships"
                   Core..<@> Core.parseXMLList "DomainMembership"
               )
      Core.<*> ( x Core..@? "EnabledCloudwatchLogsExports"
                   Core..<@> Core.parseXMLList "member"
               )
      Core.<*> (x Core..@? "Endpoint")
      Core.<*> (x Core..@? "Engine")
      Core.<*> (x Core..@? "EngineVersion")
      Core.<*> (x Core..@? "EnhancedMonitoringResourceArn")
      Core.<*> (x Core..@? "IAMDatabaseAuthenticationEnabled")
      Core.<*> (x Core..@? "InstanceCreateTime")
      Core.<*> (x Core..@? "Iops")
      Core.<*> (x Core..@? "KmsKeyId")
      Core.<*> (x Core..@? "LatestRestorableTime")
      Core.<*> (x Core..@? "LicenseModel")
      Core.<*> (x Core..@? "ListenerEndpoint")
      Core.<*> (x Core..@? "MasterUsername")
      Core.<*> (x Core..@? "MaxAllocatedStorage")
      Core.<*> (x Core..@? "MonitoringInterval")
      Core.<*> (x Core..@? "MonitoringRoleArn")
      Core.<*> (x Core..@? "MultiAZ")
      Core.<*> (x Core..@? "NcharCharacterSetName")
      Core.<*> ( x Core..@? "OptionGroupMemberships"
                   Core..<@> Core.parseXMLList "OptionGroupMembership"
               )
      Core.<*> (x Core..@? "PendingModifiedValues")
      Core.<*> (x Core..@? "PerformanceInsightsEnabled")
      Core.<*> (x Core..@? "PerformanceInsightsKMSKeyId")
      Core.<*> (x Core..@? "PerformanceInsightsRetentionPeriod")
      Core.<*> (x Core..@? "PreferredBackupWindow")
      Core.<*> (x Core..@? "PreferredMaintenanceWindow")
      Core.<*> ( x Core..@? "ProcessorFeatures"
                   Core..<@> Core.parseXMLList "ProcessorFeature"
               )
      Core.<*> (x Core..@? "PromotionTier")
      Core.<*> (x Core..@? "PubliclyAccessible")
      Core.<*> ( x Core..@? "ReadReplicaDBClusterIdentifiers"
                   Core..<@> Core.parseXMLList "ReadReplicaDBClusterIdentifier"
               )
      Core.<*> ( x Core..@? "ReadReplicaDBInstanceIdentifiers"
                   Core..<@> Core.parseXMLList "ReadReplicaDBInstanceIdentifier"
               )
      Core.<*> (x Core..@? "ReadReplicaSourceDBInstanceIdentifier")
      Core.<*> (x Core..@? "ReplicaMode")
      Core.<*> (x Core..@? "SecondaryAvailabilityZone")
      Core.<*> ( x Core..@? "StatusInfos"
                   Core..<@> Core.parseXMLList "DBInstanceStatusInfo"
               )
      Core.<*> (x Core..@? "StorageEncrypted")
      Core.<*> (x Core..@? "StorageType")
      Core.<*> (x Core..@? "TagList" Core..<@> Core.parseXMLList "Tag")
      Core.<*> (x Core..@? "TdeCredentialArn")
      Core.<*> (x Core..@? "Timezone")
      Core.<*> ( x Core..@? "VpcSecurityGroups"
                   Core..<@> Core.parseXMLList "VpcSecurityGroupMembership"
               )