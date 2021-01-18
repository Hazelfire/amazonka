{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionConfigurationPropertyType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionConfigurationPropertyType
  ( ActionConfigurationPropertyType
      ( ActionConfigurationPropertyType',
        ActionConfigurationPropertyTypeString,
        ActionConfigurationPropertyTypeNumber,
        ActionConfigurationPropertyTypeBoolean,
        fromActionConfigurationPropertyType
      ),
  )
where

import qualified Network.AWS.Prelude as Core

newtype ActionConfigurationPropertyType = ActionConfigurationPropertyType'
  { fromActionConfigurationPropertyType ::
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

pattern ActionConfigurationPropertyTypeString :: ActionConfigurationPropertyType
pattern ActionConfigurationPropertyTypeString = ActionConfigurationPropertyType' "String"

pattern ActionConfigurationPropertyTypeNumber :: ActionConfigurationPropertyType
pattern ActionConfigurationPropertyTypeNumber = ActionConfigurationPropertyType' "Number"

pattern ActionConfigurationPropertyTypeBoolean :: ActionConfigurationPropertyType
pattern ActionConfigurationPropertyTypeBoolean = ActionConfigurationPropertyType' "Boolean"

{-# COMPLETE
  ActionConfigurationPropertyTypeString,
  ActionConfigurationPropertyTypeNumber,
  ActionConfigurationPropertyTypeBoolean,
  ActionConfigurationPropertyType'
  #-}