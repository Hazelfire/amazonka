{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.EnvironmentType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.EnvironmentType
  ( EnvironmentType
      ( EnvironmentType',
        EnvironmentTypeWindowsContainer,
        EnvironmentTypeLinuxContainer,
        EnvironmentTypeLinuxGpuContainer,
        EnvironmentTypeArmContainer,
        EnvironmentTypeWindowsServer2019Container,
        fromEnvironmentType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype EnvironmentType = EnvironmentType'
  { fromEnvironmentType ::
      Core.Text
  }
  deriving stock
    ( Core.Eq,
      Core.Ord,
      Core.Read,
      Core.Show,
      Core.Generic
    )
  deriving newtype
    ( Core.IsString,
      Core.Hashable,
      Core.NFData,
      Core.ToJSONKey,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.FromJSON,
      Core.ToXML,
      Core.FromXML,
      Core.ToText,
      Core.FromText,
      Core.ToByteString,
      Core.ToQuery,
      Core.ToHeader
    )

pattern EnvironmentTypeWindowsContainer :: EnvironmentType
pattern EnvironmentTypeWindowsContainer = EnvironmentType' "WINDOWS_CONTAINER"

pattern EnvironmentTypeLinuxContainer :: EnvironmentType
pattern EnvironmentTypeLinuxContainer = EnvironmentType' "LINUX_CONTAINER"

pattern EnvironmentTypeLinuxGpuContainer :: EnvironmentType
pattern EnvironmentTypeLinuxGpuContainer = EnvironmentType' "LINUX_GPU_CONTAINER"

pattern EnvironmentTypeArmContainer :: EnvironmentType
pattern EnvironmentTypeArmContainer = EnvironmentType' "ARM_CONTAINER"

pattern EnvironmentTypeWindowsServer2019Container :: EnvironmentType
pattern EnvironmentTypeWindowsServer2019Container = EnvironmentType' "WINDOWS_SERVER_2019_CONTAINER"

{-# COMPLETE
  EnvironmentTypeWindowsContainer,
  EnvironmentTypeLinuxContainer,
  EnvironmentTypeLinuxGpuContainer,
  EnvironmentTypeArmContainer,
  EnvironmentTypeWindowsServer2019Container,
  EnvironmentType'
  #-}