{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Project
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Project
  ( Project (..),

    -- * Smart constructor
    mkProject,

    -- * Lenses
    pArn,
    pCreated,
    pDefaultJobTimeoutMinutes,
    pName,
  )
where

import qualified Network.AWS.DeviceFarm.Types.Arn as Types
import qualified Network.AWS.DeviceFarm.Types.Name as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents an operating-system neutral workspace for running and managing tests.
--
-- /See:/ 'mkProject' smart constructor.
data Project = Project'
  { -- | The project's ARN.
    arn :: Core.Maybe Types.Arn,
    -- | When the project was created.
    created :: Core.Maybe Core.NominalDiffTime,
    -- | The default number of minutes (at the project level) a test run executes before it times out. The default value is 150 minutes.
    defaultJobTimeoutMinutes :: Core.Maybe Core.Int,
    -- | The project's name.
    name :: Core.Maybe Types.Name
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'Project' value with any optional fields omitted.
mkProject ::
  Project
mkProject =
  Project'
    { arn = Core.Nothing,
      created = Core.Nothing,
      defaultJobTimeoutMinutes = Core.Nothing,
      name = Core.Nothing
    }

-- | The project's ARN.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pArn :: Lens.Lens' Project (Core.Maybe Types.Arn)
pArn = Lens.field @"arn"
{-# DEPRECATED pArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | When the project was created.
--
-- /Note:/ Consider using 'created' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pCreated :: Lens.Lens' Project (Core.Maybe Core.NominalDiffTime)
pCreated = Lens.field @"created"
{-# DEPRECATED pCreated "Use generic-lens or generic-optics with 'created' instead." #-}

-- | The default number of minutes (at the project level) a test run executes before it times out. The default value is 150 minutes.
--
-- /Note:/ Consider using 'defaultJobTimeoutMinutes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pDefaultJobTimeoutMinutes :: Lens.Lens' Project (Core.Maybe Core.Int)
pDefaultJobTimeoutMinutes = Lens.field @"defaultJobTimeoutMinutes"
{-# DEPRECATED pDefaultJobTimeoutMinutes "Use generic-lens or generic-optics with 'defaultJobTimeoutMinutes' instead." #-}

-- | The project's name.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pName :: Lens.Lens' Project (Core.Maybe Types.Name)
pName = Lens.field @"name"
{-# DEPRECATED pName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Core.FromJSON Project where
  parseJSON =
    Core.withObject "Project" Core.$
      \x ->
        Project'
          Core.<$> (x Core..:? "arn")
          Core.<*> (x Core..:? "created")
          Core.<*> (x Core..:? "defaultJobTimeoutMinutes")
          Core.<*> (x Core..:? "name")