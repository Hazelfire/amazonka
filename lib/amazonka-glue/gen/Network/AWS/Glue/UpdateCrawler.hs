{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.UpdateCrawler
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a crawler. If a crawler is running, you must stop it using @StopCrawler@ before updating it.
module Network.AWS.Glue.UpdateCrawler
  ( -- * Creating a request
    UpdateCrawler (..),
    mkUpdateCrawler,

    -- ** Request lenses
    uName,
    uClassifiers,
    uConfiguration,
    uCrawlerSecurityConfiguration,
    uDatabaseName,
    uDescription,
    uLineageConfiguration,
    uRecrawlPolicy,
    uRole,
    uSchedule,
    uSchemaChangePolicy,
    uTablePrefix,
    uTargets,

    -- * Destructuring the response
    UpdateCrawlerResponse (..),
    mkUpdateCrawlerResponse,

    -- ** Response lenses
    ucrfrsResponseStatus,
  )
where

import qualified Network.AWS.Glue.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateCrawler' smart constructor.
data UpdateCrawler = UpdateCrawler'
  { -- | Name of the new crawler.
    name :: Types.Name,
    -- | A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
    classifiers :: Core.Maybe [Types.NameString],
    -- | Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html Configuring a Crawler> .
    configuration :: Core.Maybe Types.Configuration,
    -- | The name of the @SecurityConfiguration@ structure to be used by this crawler.
    crawlerSecurityConfiguration :: Core.Maybe Types.CrawlerSecurityConfiguration,
    -- | The AWS Glue database where results are stored, such as: @arn:aws:daylight:us-east-1::database/sometable/*@ .
    databaseName :: Core.Maybe Types.DatabaseName,
    -- | A description of the new crawler.
    description :: Core.Maybe Types.Description,
    -- | Specifies data lineage configuration settings for the crawler.
    lineageConfiguration :: Core.Maybe Types.LineageConfiguration,
    -- | A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.
    recrawlPolicy :: Core.Maybe Types.RecrawlPolicy,
    -- | The IAM role or Amazon Resource Name (ARN) of an IAM role that is used by the new crawler to access customer resources.
    role' :: Core.Maybe Types.Role,
    -- | A @cron@ expression used to specify the schedule (see <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers> . For example, to run something every day at 12:15 UTC, you would specify: @cron(15 12 * * ? *)@ .
    schedule :: Core.Maybe Types.CronExpression,
    -- | The policy for the crawler's update and deletion behavior.
    schemaChangePolicy :: Core.Maybe Types.SchemaChangePolicy,
    -- | The table prefix used for catalog tables that are created.
    tablePrefix :: Core.Maybe Types.TablePrefix,
    -- | A list of targets to crawl.
    targets :: Core.Maybe Types.CrawlerTargets
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateCrawler' value with any optional fields omitted.
mkUpdateCrawler ::
  -- | 'name'
  Types.Name ->
  UpdateCrawler
mkUpdateCrawler name =
  UpdateCrawler'
    { name,
      classifiers = Core.Nothing,
      configuration = Core.Nothing,
      crawlerSecurityConfiguration = Core.Nothing,
      databaseName = Core.Nothing,
      description = Core.Nothing,
      lineageConfiguration = Core.Nothing,
      recrawlPolicy = Core.Nothing,
      role' = Core.Nothing,
      schedule = Core.Nothing,
      schemaChangePolicy = Core.Nothing,
      tablePrefix = Core.Nothing,
      targets = Core.Nothing
    }

-- | Name of the new crawler.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uName :: Lens.Lens' UpdateCrawler Types.Name
uName = Lens.field @"name"
{-# DEPRECATED uName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
--
-- /Note:/ Consider using 'classifiers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uClassifiers :: Lens.Lens' UpdateCrawler (Core.Maybe [Types.NameString])
uClassifiers = Lens.field @"classifiers"
{-# DEPRECATED uClassifiers "Use generic-lens or generic-optics with 'classifiers' instead." #-}

-- | Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html Configuring a Crawler> .
--
-- /Note:/ Consider using 'configuration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uConfiguration :: Lens.Lens' UpdateCrawler (Core.Maybe Types.Configuration)
uConfiguration = Lens.field @"configuration"
{-# DEPRECATED uConfiguration "Use generic-lens or generic-optics with 'configuration' instead." #-}

-- | The name of the @SecurityConfiguration@ structure to be used by this crawler.
--
-- /Note:/ Consider using 'crawlerSecurityConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uCrawlerSecurityConfiguration :: Lens.Lens' UpdateCrawler (Core.Maybe Types.CrawlerSecurityConfiguration)
uCrawlerSecurityConfiguration = Lens.field @"crawlerSecurityConfiguration"
{-# DEPRECATED uCrawlerSecurityConfiguration "Use generic-lens or generic-optics with 'crawlerSecurityConfiguration' instead." #-}

-- | The AWS Glue database where results are stored, such as: @arn:aws:daylight:us-east-1::database/sometable/*@ .
--
-- /Note:/ Consider using 'databaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uDatabaseName :: Lens.Lens' UpdateCrawler (Core.Maybe Types.DatabaseName)
uDatabaseName = Lens.field @"databaseName"
{-# DEPRECATED uDatabaseName "Use generic-lens or generic-optics with 'databaseName' instead." #-}

-- | A description of the new crawler.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uDescription :: Lens.Lens' UpdateCrawler (Core.Maybe Types.Description)
uDescription = Lens.field @"description"
{-# DEPRECATED uDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Specifies data lineage configuration settings for the crawler.
--
-- /Note:/ Consider using 'lineageConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uLineageConfiguration :: Lens.Lens' UpdateCrawler (Core.Maybe Types.LineageConfiguration)
uLineageConfiguration = Lens.field @"lineageConfiguration"
{-# DEPRECATED uLineageConfiguration "Use generic-lens or generic-optics with 'lineageConfiguration' instead." #-}

-- | A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.
--
-- /Note:/ Consider using 'recrawlPolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uRecrawlPolicy :: Lens.Lens' UpdateCrawler (Core.Maybe Types.RecrawlPolicy)
uRecrawlPolicy = Lens.field @"recrawlPolicy"
{-# DEPRECATED uRecrawlPolicy "Use generic-lens or generic-optics with 'recrawlPolicy' instead." #-}

-- | The IAM role or Amazon Resource Name (ARN) of an IAM role that is used by the new crawler to access customer resources.
--
-- /Note:/ Consider using 'role'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uRole :: Lens.Lens' UpdateCrawler (Core.Maybe Types.Role)
uRole = Lens.field @"role'"
{-# DEPRECATED uRole "Use generic-lens or generic-optics with 'role'' instead." #-}

-- | A @cron@ expression used to specify the schedule (see <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers> . For example, to run something every day at 12:15 UTC, you would specify: @cron(15 12 * * ? *)@ .
--
-- /Note:/ Consider using 'schedule' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uSchedule :: Lens.Lens' UpdateCrawler (Core.Maybe Types.CronExpression)
uSchedule = Lens.field @"schedule"
{-# DEPRECATED uSchedule "Use generic-lens or generic-optics with 'schedule' instead." #-}

-- | The policy for the crawler's update and deletion behavior.
--
-- /Note:/ Consider using 'schemaChangePolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uSchemaChangePolicy :: Lens.Lens' UpdateCrawler (Core.Maybe Types.SchemaChangePolicy)
uSchemaChangePolicy = Lens.field @"schemaChangePolicy"
{-# DEPRECATED uSchemaChangePolicy "Use generic-lens or generic-optics with 'schemaChangePolicy' instead." #-}

-- | The table prefix used for catalog tables that are created.
--
-- /Note:/ Consider using 'tablePrefix' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uTablePrefix :: Lens.Lens' UpdateCrawler (Core.Maybe Types.TablePrefix)
uTablePrefix = Lens.field @"tablePrefix"
{-# DEPRECATED uTablePrefix "Use generic-lens or generic-optics with 'tablePrefix' instead." #-}

-- | A list of targets to crawl.
--
-- /Note:/ Consider using 'targets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uTargets :: Lens.Lens' UpdateCrawler (Core.Maybe Types.CrawlerTargets)
uTargets = Lens.field @"targets"
{-# DEPRECATED uTargets "Use generic-lens or generic-optics with 'targets' instead." #-}

instance Core.FromJSON UpdateCrawler where
  toJSON UpdateCrawler {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Name" Core..= name),
            ("Classifiers" Core..=) Core.<$> classifiers,
            ("Configuration" Core..=) Core.<$> configuration,
            ("CrawlerSecurityConfiguration" Core..=)
              Core.<$> crawlerSecurityConfiguration,
            ("DatabaseName" Core..=) Core.<$> databaseName,
            ("Description" Core..=) Core.<$> description,
            ("LineageConfiguration" Core..=) Core.<$> lineageConfiguration,
            ("RecrawlPolicy" Core..=) Core.<$> recrawlPolicy,
            ("Role" Core..=) Core.<$> role',
            ("Schedule" Core..=) Core.<$> schedule,
            ("SchemaChangePolicy" Core..=) Core.<$> schemaChangePolicy,
            ("TablePrefix" Core..=) Core.<$> tablePrefix,
            ("Targets" Core..=) Core.<$> targets
          ]
      )

instance Core.AWSRequest UpdateCrawler where
  type Rs UpdateCrawler = UpdateCrawlerResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "AWSGlue.UpdateCrawler")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateCrawlerResponse' Core.<$> (Core.pure (Core.fromEnum s))
      )

-- | /See:/ 'mkUpdateCrawlerResponse' smart constructor.
newtype UpdateCrawlerResponse = UpdateCrawlerResponse'
  { -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateCrawlerResponse' value with any optional fields omitted.
mkUpdateCrawlerResponse ::
  -- | 'responseStatus'
  Core.Int ->
  UpdateCrawlerResponse
mkUpdateCrawlerResponse responseStatus =
  UpdateCrawlerResponse' {responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucrfrsResponseStatus :: Lens.Lens' UpdateCrawlerResponse Core.Int
ucrfrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED ucrfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}