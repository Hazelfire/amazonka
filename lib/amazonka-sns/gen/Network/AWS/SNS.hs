{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SNS
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Simple Notification Service__
--
-- Amazon Simple Notification Service (Amazon SNS) is a web service that enables you to build distributed web-enabled applications. Applications can use Amazon SNS to easily push real-time notification messages to interested subscribers over multiple delivery protocols. For more information about this product see <http://aws.amazon.com/sns/ https://aws.amazon.com/sns> . For detailed information about Amazon SNS features and their associated API calls, see the <https://docs.aws.amazon.com/sns/latest/dg/ Amazon SNS Developer Guide> .
-- For information on the permissions you need to use this API, see <https://docs.aws.amazon.com/sns/latest/dg/sns-authentication-and-access-control.html Identity and access management in Amazon SNS> in the /Amazon SNS Developer Guide./
-- We also provide SDKs that enable you to access Amazon SNS from your preferred programming language. The SDKs contain functionality that automatically takes care of tasks such as: cryptographically signing your service requests, retrying requests, and handling error responses. For a list of available SDKs, go to <http://aws.amazon.com/tools/ Tools for Amazon Web Services> .
module Network.AWS.SNS
  ( -- * Service configuration
    mkServiceConfig,

    -- * Errors
    -- $errors

    -- ** KMSInvalidStateException
    _KMSInvalidStateException,

    -- ** EndpointDisabledException
    _EndpointDisabledException,

    -- ** AuthorizationErrorException
    _AuthorizationErrorException,

    -- ** KMSThrottlingException
    _KMSThrottlingException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** SubscriptionLimitExceededException
    _SubscriptionLimitExceededException,

    -- ** PlatformApplicationDisabledException
    _PlatformApplicationDisabledException,

    -- ** KMSOptInRequired
    _KMSOptInRequired,

    -- ** InternalErrorException
    _InternalErrorException,

    -- ** ThrottledException
    _ThrottledException,

    -- ** KMSNotFoundException
    _KMSNotFoundException,

    -- ** InvalidParameterValueException
    _InvalidParameterValueException,

    -- ** NotFoundException
    _NotFoundException,

    -- ** StaleTagException
    _StaleTagException,

    -- ** KMSDisabledException
    _KMSDisabledException,

    -- ** TagPolicyException
    _TagPolicyException,

    -- ** InvalidSecurityException
    _InvalidSecurityException,

    -- ** TopicLimitExceededException
    _TopicLimitExceededException,

    -- ** ConcurrentAccessException
    _ConcurrentAccessException,

    -- ** TagLimitExceededException
    _TagLimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** FilterPolicyLimitExceededException
    _FilterPolicyLimitExceededException,

    -- ** KMSAccessDeniedException
    _KMSAccessDeniedException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListPhoneNumbersOptedOut (Paginated)
    module Network.AWS.SNS.ListPhoneNumbersOptedOut,

    -- ** DeleteEndpoint
    module Network.AWS.SNS.DeleteEndpoint,

    -- ** ListTagsForResource
    module Network.AWS.SNS.ListTagsForResource,

    -- ** RemovePermission
    module Network.AWS.SNS.RemovePermission,

    -- ** DeleteTopic
    module Network.AWS.SNS.DeleteTopic,

    -- ** SetSMSAttributes
    module Network.AWS.SNS.SetSMSAttributes,

    -- ** ListTopics (Paginated)
    module Network.AWS.SNS.ListTopics,

    -- ** CreatePlatformEndpoint
    module Network.AWS.SNS.CreatePlatformEndpoint,

    -- ** SetPlatformApplicationAttributes
    module Network.AWS.SNS.SetPlatformApplicationAttributes,

    -- ** ListSubscriptionsByTopic (Paginated)
    module Network.AWS.SNS.ListSubscriptionsByTopic,

    -- ** GetTopicAttributes
    module Network.AWS.SNS.GetTopicAttributes,

    -- ** OptInPhoneNumber
    module Network.AWS.SNS.OptInPhoneNumber,

    -- ** CreatePlatformApplication
    module Network.AWS.SNS.CreatePlatformApplication,

    -- ** GetPlatformApplicationAttributes
    module Network.AWS.SNS.GetPlatformApplicationAttributes,

    -- ** ListEndpointsByPlatformApplication (Paginated)
    module Network.AWS.SNS.ListEndpointsByPlatformApplication,

    -- ** SetTopicAttributes
    module Network.AWS.SNS.SetTopicAttributes,

    -- ** DeletePlatformApplication
    module Network.AWS.SNS.DeletePlatformApplication,

    -- ** GetSMSAttributes
    module Network.AWS.SNS.GetSMSAttributes,

    -- ** ListPlatformApplications (Paginated)
    module Network.AWS.SNS.ListPlatformApplications,

    -- ** AddPermission
    module Network.AWS.SNS.AddPermission,

    -- ** GetEndpointAttributes
    module Network.AWS.SNS.GetEndpointAttributes,

    -- ** ListSubscriptions (Paginated)
    module Network.AWS.SNS.ListSubscriptions,

    -- ** GetSubscriptionAttributes
    module Network.AWS.SNS.GetSubscriptionAttributes,

    -- ** CreateTopic
    module Network.AWS.SNS.CreateTopic,

    -- ** CheckIfPhoneNumberIsOptedOut
    module Network.AWS.SNS.CheckIfPhoneNumberIsOptedOut,

    -- ** TagResource
    module Network.AWS.SNS.TagResource,

    -- ** Subscribe
    module Network.AWS.SNS.Subscribe,

    -- ** UntagResource
    module Network.AWS.SNS.UntagResource,

    -- ** Unsubscribe
    module Network.AWS.SNS.Unsubscribe,

    -- ** SetEndpointAttributes
    module Network.AWS.SNS.SetEndpointAttributes,

    -- ** SetSubscriptionAttributes
    module Network.AWS.SNS.SetSubscriptionAttributes,

    -- ** ConfirmSubscription
    module Network.AWS.SNS.ConfirmSubscription,

    -- ** Publish
    module Network.AWS.SNS.Publish,

    -- * Types

    -- ** Subject
    Subject (..),

    -- ** Delegate
    Delegate (..),

    -- ** AttributeValue
    AttributeValue (..),

    -- ** Tag
    Tag (..),
    mkTag,
    tKey,
    tValue,

    -- ** String
    String (..),

    -- ** String
    String (..),

    -- ** Token
    Token (..),

    -- ** TopicName
    TopicName (..),

    -- ** Action
    Action (..),

    -- ** Protocol
    Protocol (..),

    -- ** Account
    Account (..),

    -- ** Topic
    Topic (..),
    mkTopic,
    tTopicArn,

    -- ** MessageAttributeValue
    MessageAttributeValue (..),
    mkMessageAttributeValue,
    mavDataType,
    mavBinaryValue,
    mavStringValue,

    -- ** TopicARN
    TopicARN (..),

    -- ** NextToken
    NextToken (..),

    -- ** PhoneNumber
    PhoneNumber (..),

    -- ** PlatformApplication
    PlatformApplication (..),
    mkPlatformApplication,
    paAttributes,
    paPlatformApplicationArn,

    -- ** TagKey
    TagKey (..),

    -- ** Endpoint
    Endpoint (..),

    -- ** Subscription
    Subscription (..),
    mkSubscription,
    sEndpoint,
    sOwner,
    sProtocol,
    sSubscriptionArn,
    sTopicArn,

    -- ** AttributeName
    AttributeName (..),

    -- ** AmazonResourceName
    AmazonResourceName (..),

    -- ** Endpoint
    Endpoint (..),
    mkEndpoint,
    eAttributes,
    eEndpointArn,

    -- ** NextToken
    NextToken (..),

    -- ** Message
    Message (..),

    -- ** SubscriptionArn
    SubscriptionArn (..),

    -- ** TopicArn
    TopicArn (..),

    -- ** Label
    Label (..),

    -- ** EndpointArn
    EndpointArn (..),

    -- ** Name
    Name (..),

    -- ** Platform
    Platform (..),

    -- ** PlatformApplicationArn
    PlatformApplicationArn (..),

    -- ** Key
    Key (..),

    -- ** Value
    Value (..),

    -- ** AttributeName
    AttributeName (..),

    -- ** ResourceArn
    ResourceArn (..),

    -- ** AuthenticateOnUnsubscribe
    AuthenticateOnUnsubscribe (..),

    -- ** MessageStructure
    MessageStructure (..),

    -- ** MessageId
    MessageId (..),

    -- * Serialization types
    Lude.Base64 (..),
    Lude._Base64,
    Lude.Sensitive (..),
    Lude._Sensitive,
    Lude.UTCTime,
    Lude.NominalDiffTime,
  )
where

import qualified Network.AWS.Prelude as Lude
import Network.AWS.SNS.AddPermission
import Network.AWS.SNS.CheckIfPhoneNumberIsOptedOut
import Network.AWS.SNS.ConfirmSubscription
import Network.AWS.SNS.CreatePlatformApplication
import Network.AWS.SNS.CreatePlatformEndpoint
import Network.AWS.SNS.CreateTopic
import Network.AWS.SNS.DeleteEndpoint
import Network.AWS.SNS.DeletePlatformApplication
import Network.AWS.SNS.DeleteTopic
import Network.AWS.SNS.GetEndpointAttributes
import Network.AWS.SNS.GetPlatformApplicationAttributes
import Network.AWS.SNS.GetSMSAttributes
import Network.AWS.SNS.GetSubscriptionAttributes
import Network.AWS.SNS.GetTopicAttributes
import Network.AWS.SNS.ListEndpointsByPlatformApplication
import Network.AWS.SNS.ListPhoneNumbersOptedOut
import Network.AWS.SNS.ListPlatformApplications
import Network.AWS.SNS.ListSubscriptions
import Network.AWS.SNS.ListSubscriptionsByTopic
import Network.AWS.SNS.ListTagsForResource
import Network.AWS.SNS.ListTopics
import Network.AWS.SNS.OptInPhoneNumber
import Network.AWS.SNS.Publish
import Network.AWS.SNS.RemovePermission
import Network.AWS.SNS.SetEndpointAttributes
import Network.AWS.SNS.SetPlatformApplicationAttributes
import Network.AWS.SNS.SetSMSAttributes
import Network.AWS.SNS.SetSubscriptionAttributes
import Network.AWS.SNS.SetTopicAttributes
import Network.AWS.SNS.Subscribe
import Network.AWS.SNS.TagResource
import Network.AWS.SNS.Types
import Network.AWS.SNS.Unsubscribe
import Network.AWS.SNS.UntagResource
import Network.AWS.SNS.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'SNS'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.