{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.GetContextKeysForCustomPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use 'GetContextKeysForPrincipalPolicy' .
--
-- Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value specified in an IAM policy. Use @GetContextKeysForCustomPolicy@ to understand what key names and values you must supply when you call 'SimulateCustomPolicy' . Note that all parameters are shown in unencoded form here for clarity but must be URL encoded to be included as a part of a real HTML request.
module Network.AWS.IAM.GetContextKeysForCustomPolicy
  ( -- * Creating a request
    GetContextKeysForCustomPolicy (..),
    mkGetContextKeysForCustomPolicy,

    -- ** Request lenses
    gckfcpPolicyInputList,

    -- * Destructuring the response
    Types.GetContextKeysForPolicyResponse (..),
    Types.mkGetContextKeysForPolicyResponse,

    -- ** Response lenses
    Types.gckfprContextKeyNames,
  )
where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetContextKeysForCustomPolicy' smart constructor.
newtype GetContextKeysForCustomPolicy = GetContextKeysForCustomPolicy'
  { -- | A list of policies for which you want the list of context keys referenced in those policies. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.
    --
    -- The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:
    --
    --     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range
    --
    --
    --     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )
    --
    --
    --     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
    policyInputList :: [Types.PolicyDocumentType]
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetContextKeysForCustomPolicy' value with any optional fields omitted.
mkGetContextKeysForCustomPolicy ::
  GetContextKeysForCustomPolicy
mkGetContextKeysForCustomPolicy =
  GetContextKeysForCustomPolicy' {policyInputList = Core.mempty}

-- | A list of policies for which you want the list of context keys referenced in those policies. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:
--
--     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range
--
--
--     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )
--
--
--     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
--
--
--
-- /Note:/ Consider using 'policyInputList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gckfcpPolicyInputList :: Lens.Lens' GetContextKeysForCustomPolicy [Types.PolicyDocumentType]
gckfcpPolicyInputList = Lens.field @"policyInputList"
{-# DEPRECATED gckfcpPolicyInputList "Use generic-lens or generic-optics with 'policyInputList' instead." #-}

instance Core.AWSRequest GetContextKeysForCustomPolicy where
  type
    Rs GetContextKeysForCustomPolicy =
      Types.GetContextKeysForPolicyResponse
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
            ( Core.pure ("Action", "GetContextKeysForCustomPolicy")
                Core.<> (Core.pure ("Version", "2010-05-08"))
                Core.<> ( Core.toQueryValue
                            "PolicyInputList"
                            (Core.toQueryList "member" policyInputList)
                        )
            )
      }
  response =
    Response.receiveXMLWrapper
      "GetContextKeysForCustomPolicyResult"
      (\s h x -> Core.parseXML x)