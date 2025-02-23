// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Connect is an easy-to-use omnichannel cloud contact center service that enables companies of any size to deliver superior customer service at a lower cost. Amazon Connect communications capabilities make it easy for companies to deliver personalized interactions across communication channels, including chat. Use the Amazon Connect Participant Service to manage participants (for example, agents, customers, and managers listening in), and to send messages and events within a chat contact. The APIs in the service enable the following: sending chat messages, attachment sharing, managing a participant's connection state and message events, and retrieving chat transcripts.
public protocol ConnectParticipantClientProtocol {
    /// Allows you to confirm that the attachment has been uploaded using the pre-signed URL provided in StartAttachmentUpload API. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    ///
    /// - Parameter CompleteAttachmentUploadInput : [no documentation found]
    ///
    /// - Returns: `CompleteAttachmentUploadOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : An attachment with that identifier is already being uploaded.
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Amazon Connect service.
    /// - `ServiceQuotaExceededException` : The number of attachments per contact exceeds the quota.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Amazon Connect.
    func completeAttachmentUpload(input: CompleteAttachmentUploadInput) async throws -> CompleteAttachmentUploadOutputResponse
    /// Creates the participant's connection. ParticipantToken is used for invoking this API instead of ConnectionToken. The participant token is valid for the lifetime of the participant – until they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic. For chat, you need to publish the following on the established websocket connection: {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}} Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before. Message streaming support: This API can also be used together with the [StartContactStreaming](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html) API to create a participant connection for chat contacts that are not using a websocket. For more information about message streaming, [Enable real-time chat message streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html) in the Amazon Connect Administrator Guide. Feature specifications: For information about feature specifications, such as the allowed number of open websocket connections per participant, see [Feature specifications](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits) in the Amazon Connect Administrator Guide. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    ///
    /// - Parameter CreateParticipantConnectionInput : [no documentation found]
    ///
    /// - Returns: `CreateParticipantConnectionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Amazon Connect service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Amazon Connect.
    func createParticipantConnection(input: CreateParticipantConnectionInput) async throws -> CreateParticipantConnectionOutputResponse
    /// Retrieves the view for the specified view token.
    ///
    /// - Parameter DescribeViewInput : [no documentation found]
    ///
    /// - Returns: `DescribeViewOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Amazon Connect service.
    /// - `ResourceNotFoundException` : The resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Amazon Connect.
    func describeView(input: DescribeViewInput) async throws -> DescribeViewOutputResponse
    /// Disconnects a participant. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    ///
    /// - Parameter DisconnectParticipantInput : [no documentation found]
    ///
    /// - Returns: `DisconnectParticipantOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Amazon Connect service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Amazon Connect.
    func disconnectParticipant(input: DisconnectParticipantInput) async throws -> DisconnectParticipantOutputResponse
    /// Provides a pre-signed URL for download of a completed attachment. This is an asynchronous API for use with active contacts. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    ///
    /// - Parameter GetAttachmentInput : [no documentation found]
    ///
    /// - Returns: `GetAttachmentOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Amazon Connect service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Amazon Connect.
    func getAttachment(input: GetAttachmentInput) async throws -> GetAttachmentOutputResponse
    /// Retrieves a transcript of the session, including details about any attachments. For information about accessing past chat contact transcripts for a persistent chat, see [Enable persistent chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html). ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    ///
    /// - Parameter GetTranscriptInput : [no documentation found]
    ///
    /// - Returns: `GetTranscriptOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Amazon Connect service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Amazon Connect.
    func getTranscript(input: GetTranscriptInput) async throws -> GetTranscriptOutputResponse
    /// Sends an event. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    ///
    /// - Parameter SendEventInput : [no documentation found]
    ///
    /// - Returns: `SendEventOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Amazon Connect service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Amazon Connect.
    func sendEvent(input: SendEventInput) async throws -> SendEventOutputResponse
    /// Sends a message. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    ///
    /// - Parameter SendMessageInput : [no documentation found]
    ///
    /// - Returns: `SendMessageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Amazon Connect service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Amazon Connect.
    func sendMessage(input: SendMessageInput) async throws -> SendMessageOutputResponse
    /// Provides a pre-signed Amazon S3 URL in response for uploading the file directly to S3. ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
    ///
    /// - Parameter StartAttachmentUploadInput : [no documentation found]
    ///
    /// - Returns: `StartAttachmentUploadOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : This exception occurs when there is an internal failure in the Amazon Connect service.
    /// - `ServiceQuotaExceededException` : The number of attachments per contact exceeds the quota.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by Amazon Connect.
    func startAttachmentUpload(input: StartAttachmentUploadInput) async throws -> StartAttachmentUploadOutputResponse
}

public enum ConnectParticipantClientTypes {}
