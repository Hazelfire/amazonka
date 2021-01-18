{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.RedshiftSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.RedshiftSettings
  ( RedshiftSettings (..),

    -- * Smart constructor
    mkRedshiftSettings,

    -- * Lenses
    rsAcceptAnyDate,
    rsAfterConnectScript,
    rsBucketFolder,
    rsBucketName,
    rsCaseSensitiveNames,
    rsCompUpdate,
    rsConnectionTimeout,
    rsDatabaseName,
    rsDateFormat,
    rsEmptyAsNull,
    rsEncryptionMode,
    rsExplicitIds,
    rsFileTransferUploadStreams,
    rsLoadTimeout,
    rsMaxFileSize,
    rsPassword,
    rsPort,
    rsRemoveQuotes,
    rsReplaceChars,
    rsReplaceInvalidChars,
    rsServerName,
    rsServerSideEncryptionKmsKeyId,
    rsServiceAccessRoleArn,
    rsTimeFormat,
    rsTrimBlanks,
    rsTruncateColumns,
    rsUsername,
    rsWriteBufferSize,
  )
where

import qualified Network.AWS.DMS.Types.EncryptionModeValue as Types
import qualified Network.AWS.DMS.Types.Password as Types
import qualified Network.AWS.DMS.Types.String as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Provides information that defines an Amazon Redshift endpoint.
--
-- /See:/ 'mkRedshiftSettings' smart constructor.
data RedshiftSettings = RedshiftSettings'
  { -- | A value that indicates to allow any date format, including invalid formats such as 00/00/00 00:00:00, to be loaded without generating an error. You can choose @true@ or @false@ (the default).
    --
    -- This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT specification, Amazon Redshift inserts a NULL value into that field.
    acceptAnyDate :: Core.Maybe Core.Bool,
    -- | Code to run after connecting. This parameter should contain the code itself, not the name of a file containing the code.
    afterConnectScript :: Core.Maybe Types.String,
    -- | An S3 folder where the comma-separated-value (.csv) files are stored before being uploaded to the target Redshift cluster.
    --
    -- For full load mode, AWS DMS converts source records into .csv files and loads them to the /BucketFolder\/TableID/ path. AWS DMS uses the Redshift @COPY@ command to upload the .csv files to the target table. The files are deleted once the @COPY@ operation has finished. For more information, see <https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html Amazon Redshift Database Developer Guide>
    -- For change-data-capture (CDC) mode, AWS DMS creates a /NetChanges/ table, and loads the .csv files to this /BucketFolder\/NetChangesTableID/ path.
    bucketFolder :: Core.Maybe Types.String,
    -- | The name of the intermediate S3 bucket used to store .csv files before uploading data to Redshift.
    bucketName :: Core.Maybe Types.String,
    -- | If Amazon Redshift is configured to support case sensitive schema names, set @CaseSensitiveNames@ to @true@ . The default is @false@ .
    caseSensitiveNames :: Core.Maybe Core.Bool,
    -- | If you set @CompUpdate@ to @true@ Amazon Redshift applies automatic compression if the table is empty. This applies even if the table columns already have encodings other than @RAW@ . If you set @CompUpdate@ to @false@ , automatic compression is disabled and existing column encodings aren't changed. The default is @true@ .
    compUpdate :: Core.Maybe Core.Bool,
    -- | A value that sets the amount of time to wait (in milliseconds) before timing out, beginning from when you initially establish a connection.
    connectionTimeout :: Core.Maybe Core.Int,
    -- | The name of the Amazon Redshift data warehouse (service) that you are working with.
    databaseName :: Core.Maybe Types.String,
    -- | The date format that you are using. Valid values are @auto@ (case-sensitive), your date format string enclosed in quotes, or NULL. If this parameter is left unset (NULL), it defaults to a format of 'YYYY-MM-DD'. Using @auto@ recognizes most strings, even some that aren't supported when you use a date format string.
    --
    -- If your date and time values use formats different from each other, set this to @auto@ .
    dateFormat :: Core.Maybe Types.String,
    -- | A value that specifies whether AWS DMS should migrate empty CHAR and VARCHAR fields as NULL. A value of @true@ sets empty CHAR and VARCHAR fields to null. The default is @false@ .
    emptyAsNull :: Core.Maybe Core.Bool,
    -- | The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ .
    --
    -- To use @SSE_S3@ , create an AWS Identity and Access Management (IAM) role with a policy that allows @"arn:aws:s3:::*"@ to use the following actions: @"s3:PutObject", "s3:ListBucket"@
    encryptionMode :: Core.Maybe Types.EncryptionModeValue,
    -- | This setting is only valid for a full-load migration task. Set @ExplicitIds@ to @true@ to have tables with @IDENTITY@ columns override their auto-generated values with explicit values loaded from the source data files used to populate the tables. The default is @false@ .
    explicitIds :: Core.Maybe Core.Bool,
    -- | The number of threads used to upload a single file. This parameter accepts a value from 1 through 64. It defaults to 10.
    --
    -- The number of parallel streams used to upload a single .csv file to an S3 bucket using S3 Multipart Upload. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html Multipart upload overview> .
    -- @FileTransferUploadStreams@ accepts a value from 1 through 64. It defaults to 10.
    fileTransferUploadStreams :: Core.Maybe Core.Int,
    -- | The amount of time to wait (in milliseconds) before timing out of operations performed by AWS DMS on a Redshift cluster, such as Redshift COPY, INSERT, DELETE, and UPDATE.
    loadTimeout :: Core.Maybe Core.Int,
    -- | The maximum size (in KB) of any .csv file used to load data on an S3 bucket and transfer data to Amazon Redshift. It defaults to 1048576KB (1 GB).
    maxFileSize :: Core.Maybe Core.Int,
    -- | The password for the user named in the @username@ property.
    password :: Core.Maybe Types.Password,
    -- | The port number for Amazon Redshift. The default value is 5439.
    port :: Core.Maybe Core.Int,
    -- | A value that specifies to remove surrounding quotation marks from strings in the incoming data. All characters within the quotation marks, including delimiters, are retained. Choose @true@ to remove quotation marks. The default is @false@ .
    removeQuotes :: Core.Maybe Core.Bool,
    -- | A value that specifies to replaces the invalid characters specified in @ReplaceInvalidChars@ , substituting the specified characters instead. The default is @"?"@ .
    replaceChars :: Core.Maybe Types.String,
    -- | A list of characters that you want to replace. Use with @ReplaceChars@ .
    replaceInvalidChars :: Core.Maybe Types.String,
    -- | The name of the Amazon Redshift cluster you are using.
    serverName :: Core.Maybe Types.String,
    -- | The AWS KMS key ID. If you are using @SSE_KMS@ for the @EncryptionMode@ , provide this key ID. The key that you use needs an attached policy that enables IAM user permissions and allows use of the key.
    serverSideEncryptionKmsKeyId :: Core.Maybe Types.String,
    -- | The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift service.
    serviceAccessRoleArn :: Core.Maybe Types.String,
    -- | The time format that you want to use. Valid values are @auto@ (case-sensitive), @'timeformat_string'@ , @'epochsecs'@ , or @'epochmillisecs'@ . It defaults to 10. Using @auto@ recognizes most strings, even some that aren't supported when you use a time format string.
    --
    -- If your date and time values use formats different from each other, set this parameter to @auto@ .
    timeFormat :: Core.Maybe Types.String,
    -- | A value that specifies to remove the trailing white space characters from a VARCHAR string. This parameter applies only to columns with a VARCHAR data type. Choose @true@ to remove unneeded white space. The default is @false@ .
    trimBlanks :: Core.Maybe Core.Bool,
    -- | A value that specifies to truncate data in columns to the appropriate number of characters, so that the data fits in the column. This parameter applies only to columns with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose @true@ to truncate data. The default is @false@ .
    truncateColumns :: Core.Maybe Core.Bool,
    -- | An Amazon Redshift user name for a registered user.
    username :: Core.Maybe Types.String,
    -- | The size (in KB) of the in-memory file write buffer used when generating .csv files on the local disk at the DMS replication instance. The default value is 1000 (buffer size is 1000KB).
    writeBufferSize :: Core.Maybe Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RedshiftSettings' value with any optional fields omitted.
mkRedshiftSettings ::
  RedshiftSettings
mkRedshiftSettings =
  RedshiftSettings'
    { acceptAnyDate = Core.Nothing,
      afterConnectScript = Core.Nothing,
      bucketFolder = Core.Nothing,
      bucketName = Core.Nothing,
      caseSensitiveNames = Core.Nothing,
      compUpdate = Core.Nothing,
      connectionTimeout = Core.Nothing,
      databaseName = Core.Nothing,
      dateFormat = Core.Nothing,
      emptyAsNull = Core.Nothing,
      encryptionMode = Core.Nothing,
      explicitIds = Core.Nothing,
      fileTransferUploadStreams = Core.Nothing,
      loadTimeout = Core.Nothing,
      maxFileSize = Core.Nothing,
      password = Core.Nothing,
      port = Core.Nothing,
      removeQuotes = Core.Nothing,
      replaceChars = Core.Nothing,
      replaceInvalidChars = Core.Nothing,
      serverName = Core.Nothing,
      serverSideEncryptionKmsKeyId = Core.Nothing,
      serviceAccessRoleArn = Core.Nothing,
      timeFormat = Core.Nothing,
      trimBlanks = Core.Nothing,
      truncateColumns = Core.Nothing,
      username = Core.Nothing,
      writeBufferSize = Core.Nothing
    }

-- | A value that indicates to allow any date format, including invalid formats such as 00/00/00 00:00:00, to be loaded without generating an error. You can choose @true@ or @false@ (the default).
--
-- This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT specification, Amazon Redshift inserts a NULL value into that field.
--
-- /Note:/ Consider using 'acceptAnyDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsAcceptAnyDate :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Bool)
rsAcceptAnyDate = Lens.field @"acceptAnyDate"
{-# DEPRECATED rsAcceptAnyDate "Use generic-lens or generic-optics with 'acceptAnyDate' instead." #-}

-- | Code to run after connecting. This parameter should contain the code itself, not the name of a file containing the code.
--
-- /Note:/ Consider using 'afterConnectScript' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsAfterConnectScript :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsAfterConnectScript = Lens.field @"afterConnectScript"
{-# DEPRECATED rsAfterConnectScript "Use generic-lens or generic-optics with 'afterConnectScript' instead." #-}

-- | An S3 folder where the comma-separated-value (.csv) files are stored before being uploaded to the target Redshift cluster.
--
-- For full load mode, AWS DMS converts source records into .csv files and loads them to the /BucketFolder\/TableID/ path. AWS DMS uses the Redshift @COPY@ command to upload the .csv files to the target table. The files are deleted once the @COPY@ operation has finished. For more information, see <https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html Amazon Redshift Database Developer Guide>
-- For change-data-capture (CDC) mode, AWS DMS creates a /NetChanges/ table, and loads the .csv files to this /BucketFolder\/NetChangesTableID/ path.
--
-- /Note:/ Consider using 'bucketFolder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsBucketFolder :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsBucketFolder = Lens.field @"bucketFolder"
{-# DEPRECATED rsBucketFolder "Use generic-lens or generic-optics with 'bucketFolder' instead." #-}

-- | The name of the intermediate S3 bucket used to store .csv files before uploading data to Redshift.
--
-- /Note:/ Consider using 'bucketName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsBucketName :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsBucketName = Lens.field @"bucketName"
{-# DEPRECATED rsBucketName "Use generic-lens or generic-optics with 'bucketName' instead." #-}

-- | If Amazon Redshift is configured to support case sensitive schema names, set @CaseSensitiveNames@ to @true@ . The default is @false@ .
--
-- /Note:/ Consider using 'caseSensitiveNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsCaseSensitiveNames :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Bool)
rsCaseSensitiveNames = Lens.field @"caseSensitiveNames"
{-# DEPRECATED rsCaseSensitiveNames "Use generic-lens or generic-optics with 'caseSensitiveNames' instead." #-}

-- | If you set @CompUpdate@ to @true@ Amazon Redshift applies automatic compression if the table is empty. This applies even if the table columns already have encodings other than @RAW@ . If you set @CompUpdate@ to @false@ , automatic compression is disabled and existing column encodings aren't changed. The default is @true@ .
--
-- /Note:/ Consider using 'compUpdate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsCompUpdate :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Bool)
rsCompUpdate = Lens.field @"compUpdate"
{-# DEPRECATED rsCompUpdate "Use generic-lens or generic-optics with 'compUpdate' instead." #-}

-- | A value that sets the amount of time to wait (in milliseconds) before timing out, beginning from when you initially establish a connection.
--
-- /Note:/ Consider using 'connectionTimeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsConnectionTimeout :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Int)
rsConnectionTimeout = Lens.field @"connectionTimeout"
{-# DEPRECATED rsConnectionTimeout "Use generic-lens or generic-optics with 'connectionTimeout' instead." #-}

-- | The name of the Amazon Redshift data warehouse (service) that you are working with.
--
-- /Note:/ Consider using 'databaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsDatabaseName :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsDatabaseName = Lens.field @"databaseName"
{-# DEPRECATED rsDatabaseName "Use generic-lens or generic-optics with 'databaseName' instead." #-}

-- | The date format that you are using. Valid values are @auto@ (case-sensitive), your date format string enclosed in quotes, or NULL. If this parameter is left unset (NULL), it defaults to a format of 'YYYY-MM-DD'. Using @auto@ recognizes most strings, even some that aren't supported when you use a date format string.
--
-- If your date and time values use formats different from each other, set this to @auto@ .
--
-- /Note:/ Consider using 'dateFormat' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsDateFormat :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsDateFormat = Lens.field @"dateFormat"
{-# DEPRECATED rsDateFormat "Use generic-lens or generic-optics with 'dateFormat' instead." #-}

-- | A value that specifies whether AWS DMS should migrate empty CHAR and VARCHAR fields as NULL. A value of @true@ sets empty CHAR and VARCHAR fields to null. The default is @false@ .
--
-- /Note:/ Consider using 'emptyAsNull' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsEmptyAsNull :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Bool)
rsEmptyAsNull = Lens.field @"emptyAsNull"
{-# DEPRECATED rsEmptyAsNull "Use generic-lens or generic-optics with 'emptyAsNull' instead." #-}

-- | The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either @SSE_S3@ (the default) or @SSE_KMS@ .
--
-- To use @SSE_S3@ , create an AWS Identity and Access Management (IAM) role with a policy that allows @"arn:aws:s3:::*"@ to use the following actions: @"s3:PutObject", "s3:ListBucket"@
--
-- /Note:/ Consider using 'encryptionMode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsEncryptionMode :: Lens.Lens' RedshiftSettings (Core.Maybe Types.EncryptionModeValue)
rsEncryptionMode = Lens.field @"encryptionMode"
{-# DEPRECATED rsEncryptionMode "Use generic-lens or generic-optics with 'encryptionMode' instead." #-}

-- | This setting is only valid for a full-load migration task. Set @ExplicitIds@ to @true@ to have tables with @IDENTITY@ columns override their auto-generated values with explicit values loaded from the source data files used to populate the tables. The default is @false@ .
--
-- /Note:/ Consider using 'explicitIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsExplicitIds :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Bool)
rsExplicitIds = Lens.field @"explicitIds"
{-# DEPRECATED rsExplicitIds "Use generic-lens or generic-optics with 'explicitIds' instead." #-}

-- | The number of threads used to upload a single file. This parameter accepts a value from 1 through 64. It defaults to 10.
--
-- The number of parallel streams used to upload a single .csv file to an S3 bucket using S3 Multipart Upload. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html Multipart upload overview> .
-- @FileTransferUploadStreams@ accepts a value from 1 through 64. It defaults to 10.
--
-- /Note:/ Consider using 'fileTransferUploadStreams' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsFileTransferUploadStreams :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Int)
rsFileTransferUploadStreams = Lens.field @"fileTransferUploadStreams"
{-# DEPRECATED rsFileTransferUploadStreams "Use generic-lens or generic-optics with 'fileTransferUploadStreams' instead." #-}

-- | The amount of time to wait (in milliseconds) before timing out of operations performed by AWS DMS on a Redshift cluster, such as Redshift COPY, INSERT, DELETE, and UPDATE.
--
-- /Note:/ Consider using 'loadTimeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsLoadTimeout :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Int)
rsLoadTimeout = Lens.field @"loadTimeout"
{-# DEPRECATED rsLoadTimeout "Use generic-lens or generic-optics with 'loadTimeout' instead." #-}

-- | The maximum size (in KB) of any .csv file used to load data on an S3 bucket and transfer data to Amazon Redshift. It defaults to 1048576KB (1 GB).
--
-- /Note:/ Consider using 'maxFileSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsMaxFileSize :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Int)
rsMaxFileSize = Lens.field @"maxFileSize"
{-# DEPRECATED rsMaxFileSize "Use generic-lens or generic-optics with 'maxFileSize' instead." #-}

-- | The password for the user named in the @username@ property.
--
-- /Note:/ Consider using 'password' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsPassword :: Lens.Lens' RedshiftSettings (Core.Maybe Types.Password)
rsPassword = Lens.field @"password"
{-# DEPRECATED rsPassword "Use generic-lens or generic-optics with 'password' instead." #-}

-- | The port number for Amazon Redshift. The default value is 5439.
--
-- /Note:/ Consider using 'port' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsPort :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Int)
rsPort = Lens.field @"port"
{-# DEPRECATED rsPort "Use generic-lens or generic-optics with 'port' instead." #-}

-- | A value that specifies to remove surrounding quotation marks from strings in the incoming data. All characters within the quotation marks, including delimiters, are retained. Choose @true@ to remove quotation marks. The default is @false@ .
--
-- /Note:/ Consider using 'removeQuotes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsRemoveQuotes :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Bool)
rsRemoveQuotes = Lens.field @"removeQuotes"
{-# DEPRECATED rsRemoveQuotes "Use generic-lens or generic-optics with 'removeQuotes' instead." #-}

-- | A value that specifies to replaces the invalid characters specified in @ReplaceInvalidChars@ , substituting the specified characters instead. The default is @"?"@ .
--
-- /Note:/ Consider using 'replaceChars' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsReplaceChars :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsReplaceChars = Lens.field @"replaceChars"
{-# DEPRECATED rsReplaceChars "Use generic-lens or generic-optics with 'replaceChars' instead." #-}

-- | A list of characters that you want to replace. Use with @ReplaceChars@ .
--
-- /Note:/ Consider using 'replaceInvalidChars' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsReplaceInvalidChars :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsReplaceInvalidChars = Lens.field @"replaceInvalidChars"
{-# DEPRECATED rsReplaceInvalidChars "Use generic-lens or generic-optics with 'replaceInvalidChars' instead." #-}

-- | The name of the Amazon Redshift cluster you are using.
--
-- /Note:/ Consider using 'serverName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsServerName :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsServerName = Lens.field @"serverName"
{-# DEPRECATED rsServerName "Use generic-lens or generic-optics with 'serverName' instead." #-}

-- | The AWS KMS key ID. If you are using @SSE_KMS@ for the @EncryptionMode@ , provide this key ID. The key that you use needs an attached policy that enables IAM user permissions and allows use of the key.
--
-- /Note:/ Consider using 'serverSideEncryptionKmsKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsServerSideEncryptionKmsKeyId :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsServerSideEncryptionKmsKeyId = Lens.field @"serverSideEncryptionKmsKeyId"
{-# DEPRECATED rsServerSideEncryptionKmsKeyId "Use generic-lens or generic-optics with 'serverSideEncryptionKmsKeyId' instead." #-}

-- | The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift service.
--
-- /Note:/ Consider using 'serviceAccessRoleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsServiceAccessRoleArn :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsServiceAccessRoleArn = Lens.field @"serviceAccessRoleArn"
{-# DEPRECATED rsServiceAccessRoleArn "Use generic-lens or generic-optics with 'serviceAccessRoleArn' instead." #-}

-- | The time format that you want to use. Valid values are @auto@ (case-sensitive), @'timeformat_string'@ , @'epochsecs'@ , or @'epochmillisecs'@ . It defaults to 10. Using @auto@ recognizes most strings, even some that aren't supported when you use a time format string.
--
-- If your date and time values use formats different from each other, set this parameter to @auto@ .
--
-- /Note:/ Consider using 'timeFormat' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsTimeFormat :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsTimeFormat = Lens.field @"timeFormat"
{-# DEPRECATED rsTimeFormat "Use generic-lens or generic-optics with 'timeFormat' instead." #-}

-- | A value that specifies to remove the trailing white space characters from a VARCHAR string. This parameter applies only to columns with a VARCHAR data type. Choose @true@ to remove unneeded white space. The default is @false@ .
--
-- /Note:/ Consider using 'trimBlanks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsTrimBlanks :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Bool)
rsTrimBlanks = Lens.field @"trimBlanks"
{-# DEPRECATED rsTrimBlanks "Use generic-lens or generic-optics with 'trimBlanks' instead." #-}

-- | A value that specifies to truncate data in columns to the appropriate number of characters, so that the data fits in the column. This parameter applies only to columns with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose @true@ to truncate data. The default is @false@ .
--
-- /Note:/ Consider using 'truncateColumns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsTruncateColumns :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Bool)
rsTruncateColumns = Lens.field @"truncateColumns"
{-# DEPRECATED rsTruncateColumns "Use generic-lens or generic-optics with 'truncateColumns' instead." #-}

-- | An Amazon Redshift user name for a registered user.
--
-- /Note:/ Consider using 'username' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsUsername :: Lens.Lens' RedshiftSettings (Core.Maybe Types.String)
rsUsername = Lens.field @"username"
{-# DEPRECATED rsUsername "Use generic-lens or generic-optics with 'username' instead." #-}

-- | The size (in KB) of the in-memory file write buffer used when generating .csv files on the local disk at the DMS replication instance. The default value is 1000 (buffer size is 1000KB).
--
-- /Note:/ Consider using 'writeBufferSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsWriteBufferSize :: Lens.Lens' RedshiftSettings (Core.Maybe Core.Int)
rsWriteBufferSize = Lens.field @"writeBufferSize"
{-# DEPRECATED rsWriteBufferSize "Use generic-lens or generic-optics with 'writeBufferSize' instead." #-}

instance Core.FromJSON RedshiftSettings where
  toJSON RedshiftSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("AcceptAnyDate" Core..=) Core.<$> acceptAnyDate,
            ("AfterConnectScript" Core..=) Core.<$> afterConnectScript,
            ("BucketFolder" Core..=) Core.<$> bucketFolder,
            ("BucketName" Core..=) Core.<$> bucketName,
            ("CaseSensitiveNames" Core..=) Core.<$> caseSensitiveNames,
            ("CompUpdate" Core..=) Core.<$> compUpdate,
            ("ConnectionTimeout" Core..=) Core.<$> connectionTimeout,
            ("DatabaseName" Core..=) Core.<$> databaseName,
            ("DateFormat" Core..=) Core.<$> dateFormat,
            ("EmptyAsNull" Core..=) Core.<$> emptyAsNull,
            ("EncryptionMode" Core..=) Core.<$> encryptionMode,
            ("ExplicitIds" Core..=) Core.<$> explicitIds,
            ("FileTransferUploadStreams" Core..=)
              Core.<$> fileTransferUploadStreams,
            ("LoadTimeout" Core..=) Core.<$> loadTimeout,
            ("MaxFileSize" Core..=) Core.<$> maxFileSize,
            ("Password" Core..=) Core.<$> password,
            ("Port" Core..=) Core.<$> port,
            ("RemoveQuotes" Core..=) Core.<$> removeQuotes,
            ("ReplaceChars" Core..=) Core.<$> replaceChars,
            ("ReplaceInvalidChars" Core..=) Core.<$> replaceInvalidChars,
            ("ServerName" Core..=) Core.<$> serverName,
            ("ServerSideEncryptionKmsKeyId" Core..=)
              Core.<$> serverSideEncryptionKmsKeyId,
            ("ServiceAccessRoleArn" Core..=) Core.<$> serviceAccessRoleArn,
            ("TimeFormat" Core..=) Core.<$> timeFormat,
            ("TrimBlanks" Core..=) Core.<$> trimBlanks,
            ("TruncateColumns" Core..=) Core.<$> truncateColumns,
            ("Username" Core..=) Core.<$> username,
            ("WriteBufferSize" Core..=) Core.<$> writeBufferSize
          ]
      )

instance Core.FromJSON RedshiftSettings where
  parseJSON =
    Core.withObject "RedshiftSettings" Core.$
      \x ->
        RedshiftSettings'
          Core.<$> (x Core..:? "AcceptAnyDate")
          Core.<*> (x Core..:? "AfterConnectScript")
          Core.<*> (x Core..:? "BucketFolder")
          Core.<*> (x Core..:? "BucketName")
          Core.<*> (x Core..:? "CaseSensitiveNames")
          Core.<*> (x Core..:? "CompUpdate")
          Core.<*> (x Core..:? "ConnectionTimeout")
          Core.<*> (x Core..:? "DatabaseName")
          Core.<*> (x Core..:? "DateFormat")
          Core.<*> (x Core..:? "EmptyAsNull")
          Core.<*> (x Core..:? "EncryptionMode")
          Core.<*> (x Core..:? "ExplicitIds")
          Core.<*> (x Core..:? "FileTransferUploadStreams")
          Core.<*> (x Core..:? "LoadTimeout")
          Core.<*> (x Core..:? "MaxFileSize")
          Core.<*> (x Core..:? "Password")
          Core.<*> (x Core..:? "Port")
          Core.<*> (x Core..:? "RemoveQuotes")
          Core.<*> (x Core..:? "ReplaceChars")
          Core.<*> (x Core..:? "ReplaceInvalidChars")
          Core.<*> (x Core..:? "ServerName")
          Core.<*> (x Core..:? "ServerSideEncryptionKmsKeyId")
          Core.<*> (x Core..:? "ServiceAccessRoleArn")
          Core.<*> (x Core..:? "TimeFormat")
          Core.<*> (x Core..:? "TrimBlanks")
          Core.<*> (x Core..:? "TruncateColumns")
          Core.<*> (x Core..:? "Username")
          Core.<*> (x Core..:? "WriteBufferSize")