{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.DeleteAlarms
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified alarms. You can delete up to 100 alarms in one operation. However, this total can include no more than one composite alarm. For example, you could delete 99 metric alarms and one composite alarms with one operation, but you can't delete two composite alarms with one operation.
--
-- In the event of an error, no alarms are deleted.
module Network.AWS.CloudWatch.DeleteAlarms
  ( -- * Creating a request
    DeleteAlarms (..),
    mkDeleteAlarms,

    -- ** Request lenses
    dAlarmNames,

    -- * Destructuring the response
    DeleteAlarmsResponse (..),
    mkDeleteAlarmsResponse,
  )
where

import qualified Network.AWS.CloudWatch.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteAlarms' smart constructor.
newtype DeleteAlarms = DeleteAlarms'
  { -- | The alarms to be deleted.
    alarmNames :: [Types.AlarmName]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAlarms' value with any optional fields omitted.
mkDeleteAlarms ::
  DeleteAlarms
mkDeleteAlarms = DeleteAlarms' {alarmNames = Core.mempty}

-- | The alarms to be deleted.
--
-- /Note:/ Consider using 'alarmNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dAlarmNames :: Lens.Lens' DeleteAlarms [Types.AlarmName]
dAlarmNames = Lens.field @"alarmNames"
{-# DEPRECATED dAlarmNames "Use generic-lens or generic-optics with 'alarmNames' instead." #-}

instance Core.AWSRequest DeleteAlarms where
  type Rs DeleteAlarms = DeleteAlarmsResponse
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
            ( Core.pure ("Action", "DeleteAlarms")
                Core.<> (Core.pure ("Version", "2010-08-01"))
                Core.<> ( Core.toQueryValue
                            "AlarmNames"
                            (Core.toQueryList "member" alarmNames)
                        )
            )
      }
  response = Response.receiveNull DeleteAlarmsResponse'

-- | /See:/ 'mkDeleteAlarmsResponse' smart constructor.
data DeleteAlarmsResponse = DeleteAlarmsResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteAlarmsResponse' value with any optional fields omitted.
mkDeleteAlarmsResponse ::
  DeleteAlarmsResponse
mkDeleteAlarmsResponse = DeleteAlarmsResponse'