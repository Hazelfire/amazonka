{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.StateMachineListItem
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.StateMachineListItem
  ( StateMachineListItem (..),

    -- * Smart constructor
    mkStateMachineListItem,

    -- * Lenses
    smliStateMachineArn,
    smliName,
    smliType,
    smliCreationDate,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.StepFunctions.Types.Arn as Types
import qualified Network.AWS.StepFunctions.Types.Name as Types
import qualified Network.AWS.StepFunctions.Types.StateMachineType as Types

-- | Contains details about the state machine.
--
-- /See:/ 'mkStateMachineListItem' smart constructor.
data StateMachineListItem = StateMachineListItem'
  { -- | The Amazon Resource Name (ARN) that identifies the state machine.
    stateMachineArn :: Types.Arn,
    -- | The name of the state machine.
    --
    -- A name must /not/ contain:
    --
    --     * white space
    --
    --
    --     * brackets @< > { } [ ]@
    --
    --
    --     * wildcard characters @? *@
    --
    --
    --     * special characters @" # % \ ^ | ~ ` $ & , ; : /@
    --
    --
    --     * control characters (@U+0000-001F@ , @U+007F-009F@ )
    --
    --
    -- To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
    name :: Types.Name,
    -- |
    type' :: Types.StateMachineType,
    -- | The date the state machine is created.
    creationDate :: Core.NominalDiffTime
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'StateMachineListItem' value with any optional fields omitted.
mkStateMachineListItem ::
  -- | 'stateMachineArn'
  Types.Arn ->
  -- | 'name'
  Types.Name ->
  -- | 'type\''
  Types.StateMachineType ->
  -- | 'creationDate'
  Core.NominalDiffTime ->
  StateMachineListItem
mkStateMachineListItem stateMachineArn name type' creationDate =
  StateMachineListItem' {stateMachineArn, name, type', creationDate}

-- | The Amazon Resource Name (ARN) that identifies the state machine.
--
-- /Note:/ Consider using 'stateMachineArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smliStateMachineArn :: Lens.Lens' StateMachineListItem Types.Arn
smliStateMachineArn = Lens.field @"stateMachineArn"
{-# DEPRECATED smliStateMachineArn "Use generic-lens or generic-optics with 'stateMachineArn' instead." #-}

-- | The name of the state machine.
--
-- A name must /not/ contain:
--
--     * white space
--
--
--     * brackets @< > { } [ ]@
--
--
--     * wildcard characters @? *@
--
--
--     * special characters @" # % \ ^ | ~ ` $ & , ; : /@
--
--
--     * control characters (@U+0000-001F@ , @U+007F-009F@ )
--
--
-- To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smliName :: Lens.Lens' StateMachineListItem Types.Name
smliName = Lens.field @"name"
{-# DEPRECATED smliName "Use generic-lens or generic-optics with 'name' instead." #-}

-- |
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smliType :: Lens.Lens' StateMachineListItem Types.StateMachineType
smliType = Lens.field @"type'"
{-# DEPRECATED smliType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | The date the state machine is created.
--
-- /Note:/ Consider using 'creationDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smliCreationDate :: Lens.Lens' StateMachineListItem Core.NominalDiffTime
smliCreationDate = Lens.field @"creationDate"
{-# DEPRECATED smliCreationDate "Use generic-lens or generic-optics with 'creationDate' instead." #-}

instance Core.FromJSON StateMachineListItem where
  parseJSON =
    Core.withObject "StateMachineListItem" Core.$
      \x ->
        StateMachineListItem'
          Core.<$> (x Core..: "stateMachineArn")
          Core.<*> (x Core..: "name")
          Core.<*> (x Core..: "type")
          Core.<*> (x Core..: "creationDate")