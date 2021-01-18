{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.UpdateFunctionConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the version-specific settings of a Lambda function.
--
-- When you update a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute. During this time, you can't modify the function, but you can still invoke it. The @LastUpdateStatus@ , @LastUpdateStatusReason@ , and @LastUpdateStatusReasonCode@ fields in the response from 'GetFunctionConfiguration' indicate when the update is complete and the function is processing events with the new configuration. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html Function States> .
-- These settings can vary between versions of a function and are locked when you publish a version. You can't modify the configuration of a published version, only the unpublished version.
-- To configure function concurrency, use 'PutFunctionConcurrency' . To grant invoke permissions to an account or AWS service, use 'AddPermission' .
module Network.AWS.Lambda.UpdateFunctionConfiguration
  ( -- * Creating a request
    UpdateFunctionConfiguration (..),
    mkUpdateFunctionConfiguration,

    -- ** Request lenses
    ufcFunctionName,
    ufcDeadLetterConfig,
    ufcDescription,
    ufcEnvironment,
    ufcFileSystemConfigs,
    ufcHandler,
    ufcKMSKeyArn,
    ufcLayers,
    ufcMemorySize,
    ufcRevisionId,
    ufcRole,
    ufcRuntime,
    ufcTimeout,
    ufcTracingConfig,
    ufcVpcConfig,

    -- * Destructuring the response
    Types.FunctionConfiguration (..),
    Types.mkFunctionConfiguration,

    -- ** Response lenses
    Types.fcCodeSha256,
    Types.fcCodeSize,
    Types.fcDeadLetterConfig,
    Types.fcDescription,
    Types.fcEnvironment,
    Types.fcFileSystemConfigs,
    Types.fcFunctionArn,
    Types.fcFunctionName,
    Types.fcHandler,
    Types.fcKMSKeyArn,
    Types.fcLastModified,
    Types.fcLastUpdateStatus,
    Types.fcLastUpdateStatusReason,
    Types.fcLastUpdateStatusReasonCode,
    Types.fcLayers,
    Types.fcMasterArn,
    Types.fcMemorySize,
    Types.fcRevisionId,
    Types.fcRole,
    Types.fcRuntime,
    Types.fcSigningJobArn,
    Types.fcSigningProfileVersionArn,
    Types.fcState,
    Types.fcStateReason,
    Types.fcStateReasonCode,
    Types.fcTimeout,
    Types.fcTracingConfig,
    Types.fcVersion,
    Types.fcVpcConfig,
  )
where

import qualified Network.AWS.Lambda.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateFunctionConfiguration' smart constructor.
data UpdateFunctionConfiguration = UpdateFunctionConfiguration'
  { -- | The name of the Lambda function.
    --
    -- __Name formats__
    --
    --     * __Function name__ - @my-function@ .
    --
    --
    --     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .
    --
    --
    --     * __Partial ARN__ - @123456789012:function:my-function@ .
    --
    --
    -- The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
    functionName :: Types.FunctionName,
    -- | A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq Dead Letter Queues> .
    deadLetterConfig :: Core.Maybe Types.DeadLetterConfig,
    -- | A description of the function.
    description :: Core.Maybe Types.Description,
    -- | Environment variables that are accessible from function code during execution.
    environment :: Core.Maybe Types.Environment,
    -- | Connection settings for an Amazon EFS file system.
    fileSystemConfigs :: Core.Maybe [Types.FileSystemConfig],
    -- | The name of the method within your code that Lambda calls to execute your function. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html Programming Model> .
    handler :: Core.Maybe Types.Handler,
    -- | The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment variables. If it's not provided, AWS Lambda uses a default service key.
    kMSKeyArn :: Core.Maybe Types.KMSKeyArn,
    -- | A list of <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html function layers> to add to the function's execution environment. Specify each layer by its ARN, including the version.
    layers :: Core.Maybe [Types.LayerVersionArn],
    -- | The amount of memory that your function has access to. Increasing the function's memory also increases its CPU allocation. The default value is 128 MB. The value must be a multiple of 64 MB.
    memorySize :: Core.Maybe Core.Natural,
    -- | Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.
    revisionId :: Core.Maybe Types.String,
    -- | The Amazon Resource Name (ARN) of the function's execution role.
    role' :: Core.Maybe Types.Role,
    -- | The identifier of the function's <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html runtime> .
    runtime :: Core.Maybe Types.Runtime,
    -- | The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds.
    timeout :: Core.Maybe Core.Natural,
    -- | Set @Mode@ to @Active@ to sample and trace a subset of incoming requests with AWS X-Ray.
    tracingConfig :: Core.Maybe Types.TracingConfig,
    -- | For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html VPC Settings> .
    vpcConfig :: Core.Maybe Types.VpcConfig
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateFunctionConfiguration' value with any optional fields omitted.
mkUpdateFunctionConfiguration ::
  -- | 'functionName'
  Types.FunctionName ->
  UpdateFunctionConfiguration
mkUpdateFunctionConfiguration functionName =
  UpdateFunctionConfiguration'
    { functionName,
      deadLetterConfig = Core.Nothing,
      description = Core.Nothing,
      environment = Core.Nothing,
      fileSystemConfigs = Core.Nothing,
      handler = Core.Nothing,
      kMSKeyArn = Core.Nothing,
      layers = Core.Nothing,
      memorySize = Core.Nothing,
      revisionId = Core.Nothing,
      role' = Core.Nothing,
      runtime = Core.Nothing,
      timeout = Core.Nothing,
      tracingConfig = Core.Nothing,
      vpcConfig = Core.Nothing
    }

-- | The name of the Lambda function.
--
-- __Name formats__
--
--     * __Function name__ - @my-function@ .
--
--
--     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .
--
--
--     * __Partial ARN__ - @123456789012:function:my-function@ .
--
--
-- The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
--
-- /Note:/ Consider using 'functionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcFunctionName :: Lens.Lens' UpdateFunctionConfiguration Types.FunctionName
ufcFunctionName = Lens.field @"functionName"
{-# DEPRECATED ufcFunctionName "Use generic-lens or generic-optics with 'functionName' instead." #-}

-- | A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq Dead Letter Queues> .
--
-- /Note:/ Consider using 'deadLetterConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcDeadLetterConfig :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.DeadLetterConfig)
ufcDeadLetterConfig = Lens.field @"deadLetterConfig"
{-# DEPRECATED ufcDeadLetterConfig "Use generic-lens or generic-optics with 'deadLetterConfig' instead." #-}

-- | A description of the function.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcDescription :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.Description)
ufcDescription = Lens.field @"description"
{-# DEPRECATED ufcDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Environment variables that are accessible from function code during execution.
--
-- /Note:/ Consider using 'environment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcEnvironment :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.Environment)
ufcEnvironment = Lens.field @"environment"
{-# DEPRECATED ufcEnvironment "Use generic-lens or generic-optics with 'environment' instead." #-}

-- | Connection settings for an Amazon EFS file system.
--
-- /Note:/ Consider using 'fileSystemConfigs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcFileSystemConfigs :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe [Types.FileSystemConfig])
ufcFileSystemConfigs = Lens.field @"fileSystemConfigs"
{-# DEPRECATED ufcFileSystemConfigs "Use generic-lens or generic-optics with 'fileSystemConfigs' instead." #-}

-- | The name of the method within your code that Lambda calls to execute your function. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html Programming Model> .
--
-- /Note:/ Consider using 'handler' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcHandler :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.Handler)
ufcHandler = Lens.field @"handler"
{-# DEPRECATED ufcHandler "Use generic-lens or generic-optics with 'handler' instead." #-}

-- | The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment variables. If it's not provided, AWS Lambda uses a default service key.
--
-- /Note:/ Consider using 'kMSKeyArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcKMSKeyArn :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.KMSKeyArn)
ufcKMSKeyArn = Lens.field @"kMSKeyArn"
{-# DEPRECATED ufcKMSKeyArn "Use generic-lens or generic-optics with 'kMSKeyArn' instead." #-}

-- | A list of <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html function layers> to add to the function's execution environment. Specify each layer by its ARN, including the version.
--
-- /Note:/ Consider using 'layers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcLayers :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe [Types.LayerVersionArn])
ufcLayers = Lens.field @"layers"
{-# DEPRECATED ufcLayers "Use generic-lens or generic-optics with 'layers' instead." #-}

-- | The amount of memory that your function has access to. Increasing the function's memory also increases its CPU allocation. The default value is 128 MB. The value must be a multiple of 64 MB.
--
-- /Note:/ Consider using 'memorySize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcMemorySize :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Core.Natural)
ufcMemorySize = Lens.field @"memorySize"
{-# DEPRECATED ufcMemorySize "Use generic-lens or generic-optics with 'memorySize' instead." #-}

-- | Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.
--
-- /Note:/ Consider using 'revisionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcRevisionId :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.String)
ufcRevisionId = Lens.field @"revisionId"
{-# DEPRECATED ufcRevisionId "Use generic-lens or generic-optics with 'revisionId' instead." #-}

-- | The Amazon Resource Name (ARN) of the function's execution role.
--
-- /Note:/ Consider using 'role'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcRole :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.Role)
ufcRole = Lens.field @"role'"
{-# DEPRECATED ufcRole "Use generic-lens or generic-optics with 'role'' instead." #-}

-- | The identifier of the function's <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html runtime> .
--
-- /Note:/ Consider using 'runtime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcRuntime :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.Runtime)
ufcRuntime = Lens.field @"runtime"
{-# DEPRECATED ufcRuntime "Use generic-lens or generic-optics with 'runtime' instead." #-}

-- | The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds.
--
-- /Note:/ Consider using 'timeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcTimeout :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Core.Natural)
ufcTimeout = Lens.field @"timeout"
{-# DEPRECATED ufcTimeout "Use generic-lens or generic-optics with 'timeout' instead." #-}

-- | Set @Mode@ to @Active@ to sample and trace a subset of incoming requests with AWS X-Ray.
--
-- /Note:/ Consider using 'tracingConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcTracingConfig :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.TracingConfig)
ufcTracingConfig = Lens.field @"tracingConfig"
{-# DEPRECATED ufcTracingConfig "Use generic-lens or generic-optics with 'tracingConfig' instead." #-}

-- | For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html VPC Settings> .
--
-- /Note:/ Consider using 'vpcConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ufcVpcConfig :: Lens.Lens' UpdateFunctionConfiguration (Core.Maybe Types.VpcConfig)
ufcVpcConfig = Lens.field @"vpcConfig"
{-# DEPRECATED ufcVpcConfig "Use generic-lens or generic-optics with 'vpcConfig' instead." #-}

instance Core.FromJSON UpdateFunctionConfiguration where
  toJSON UpdateFunctionConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("DeadLetterConfig" Core..=) Core.<$> deadLetterConfig,
            ("Description" Core..=) Core.<$> description,
            ("Environment" Core..=) Core.<$> environment,
            ("FileSystemConfigs" Core..=) Core.<$> fileSystemConfigs,
            ("Handler" Core..=) Core.<$> handler,
            ("KMSKeyArn" Core..=) Core.<$> kMSKeyArn,
            ("Layers" Core..=) Core.<$> layers,
            ("MemorySize" Core..=) Core.<$> memorySize,
            ("RevisionId" Core..=) Core.<$> revisionId,
            ("Role" Core..=) Core.<$> role',
            ("Runtime" Core..=) Core.<$> runtime,
            ("Timeout" Core..=) Core.<$> timeout,
            ("TracingConfig" Core..=) Core.<$> tracingConfig,
            ("VpcConfig" Core..=) Core.<$> vpcConfig
          ]
      )

instance Core.AWSRequest UpdateFunctionConfiguration where
  type Rs UpdateFunctionConfiguration = Types.FunctionConfiguration
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.PUT,
        Core._rqPath =
          Core.rawPath
            ( "/2015-03-31/functions/" Core.<> (Core.toText functionName)
                Core.<> ("/configuration")
            ),
        Core._rqQuery = Core.mempty,
        Core._rqHeaders = Core.mempty,
        Core._rqBody = Core.toJSONBody x
      }
  response = Response.receiveJSON (\s h x -> Core.eitherParseJSON x)