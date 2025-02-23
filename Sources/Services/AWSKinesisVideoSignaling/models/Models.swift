// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension ClientLimitExceededException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ClientLimitExceededExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// Your request was throttled because you have exceeded the limit of allowed client calls. Try making the call later.
public struct ClientLimitExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ClientLimitExceededException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct ClientLimitExceededExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ClientLimitExceededExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension GetIceServerConfigInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case channelARN = "ChannelARN"
        case clientId = "ClientId"
        case service = "Service"
        case username = "Username"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let channelARN = self.channelARN {
            try encodeContainer.encode(channelARN, forKey: .channelARN)
        }
        if let clientId = self.clientId {
            try encodeContainer.encode(clientId, forKey: .clientId)
        }
        if let service = self.service {
            try encodeContainer.encode(service.rawValue, forKey: .service)
        }
        if let username = self.username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }
}

extension GetIceServerConfigInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/v1/get-ice-server-config"
    }
}

public struct GetIceServerConfigInput: Swift.Equatable {
    /// The ARN of the signaling channel to be used for the peer-to-peer connection between configured peers.
    /// This member is required.
    public var channelARN: Swift.String?
    /// Unique identifier for the viewer. Must be unique within the signaling channel.
    public var clientId: Swift.String?
    /// Specifies the desired service. Currently, TURN is the only valid value.
    public var service: KinesisVideoSignalingClientTypes.Service?
    /// An optional user ID to be associated with the credentials.
    public var username: Swift.String?

    public init(
        channelARN: Swift.String? = nil,
        clientId: Swift.String? = nil,
        service: KinesisVideoSignalingClientTypes.Service? = nil,
        username: Swift.String? = nil
    )
    {
        self.channelARN = channelARN
        self.clientId = clientId
        self.service = service
        self.username = username
    }
}

struct GetIceServerConfigInputBody: Swift.Equatable {
    let channelARN: Swift.String?
    let clientId: Swift.String?
    let service: KinesisVideoSignalingClientTypes.Service?
    let username: Swift.String?
}

extension GetIceServerConfigInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case channelARN = "ChannelARN"
        case clientId = "ClientId"
        case service = "Service"
        case username = "Username"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let channelARNDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .channelARN)
        channelARN = channelARNDecoded
        let clientIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .clientId)
        clientId = clientIdDecoded
        let serviceDecoded = try containerValues.decodeIfPresent(KinesisVideoSignalingClientTypes.Service.self, forKey: .service)
        service = serviceDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .username)
        username = usernameDecoded
    }
}

public enum GetIceServerConfigOutputError: ClientRuntime.HttpResponseErrorBinding {
    public static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "ClientLimitExceededException": return try await ClientLimitExceededException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidArgumentException": return try await InvalidArgumentException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidClientException": return try await InvalidClientException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "NotAuthorizedException": return try await NotAuthorizedException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceNotFoundException": return try await ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "SessionExpiredException": return try await SessionExpiredException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension GetIceServerConfigOutputResponse: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: GetIceServerConfigOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.iceServerList = output.iceServerList
        } else {
            self.iceServerList = nil
        }
    }
}

public struct GetIceServerConfigOutputResponse: Swift.Equatable {
    /// The list of ICE server information objects.
    public var iceServerList: [KinesisVideoSignalingClientTypes.IceServer]?

    public init(
        iceServerList: [KinesisVideoSignalingClientTypes.IceServer]? = nil
    )
    {
        self.iceServerList = iceServerList
    }
}

struct GetIceServerConfigOutputResponseBody: Swift.Equatable {
    let iceServerList: [KinesisVideoSignalingClientTypes.IceServer]?
}

extension GetIceServerConfigOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case iceServerList = "IceServerList"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let iceServerListContainer = try containerValues.decodeIfPresent([KinesisVideoSignalingClientTypes.IceServer?].self, forKey: .iceServerList)
        var iceServerListDecoded0:[KinesisVideoSignalingClientTypes.IceServer]? = nil
        if let iceServerListContainer = iceServerListContainer {
            iceServerListDecoded0 = [KinesisVideoSignalingClientTypes.IceServer]()
            for structure0 in iceServerListContainer {
                if let structure0 = structure0 {
                    iceServerListDecoded0?.append(structure0)
                }
            }
        }
        iceServerList = iceServerListDecoded0
    }
}

extension KinesisVideoSignalingClientTypes.IceServer: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case password = "Password"
        case ttl = "Ttl"
        case uris = "Uris"
        case username = "Username"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let password = self.password {
            try encodeContainer.encode(password, forKey: .password)
        }
        if ttl != 0 {
            try encodeContainer.encode(ttl, forKey: .ttl)
        }
        if let uris = uris {
            var urisContainer = encodeContainer.nestedUnkeyedContainer(forKey: .uris)
            for uri0 in uris {
                try urisContainer.encode(uri0)
            }
        }
        if let username = self.username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let urisContainer = try containerValues.decodeIfPresent([Swift.String?].self, forKey: .uris)
        var urisDecoded0:[Swift.String]? = nil
        if let urisContainer = urisContainer {
            urisDecoded0 = [Swift.String]()
            for string0 in urisContainer {
                if let string0 = string0 {
                    urisDecoded0?.append(string0)
                }
            }
        }
        uris = urisDecoded0
        let usernameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .username)
        username = usernameDecoded
        let passwordDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .password)
        password = passwordDecoded
        let ttlDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .ttl) ?? 0
        ttl = ttlDecoded
    }
}

extension KinesisVideoSignalingClientTypes {
    /// A structure for the ICE server connection data.
    public struct IceServer: Swift.Equatable {
        /// A password to login to the ICE server.
        public var password: Swift.String?
        /// The period of time, in seconds, during which the username and password are valid.
        public var ttl: Swift.Int
        /// An array of URIs, in the form specified in the [I-D.petithuguenin-behave-turn-uris](https://tools.ietf.org/html/draft-petithuguenin-behave-turn-uris-03) spec. These URIs provide the different addresses and/or protocols that can be used to reach the TURN server.
        public var uris: [Swift.String]?
        /// A username to login to the ICE server.
        public var username: Swift.String?

        public init(
            password: Swift.String? = nil,
            ttl: Swift.Int = 0,
            uris: [Swift.String]? = nil,
            username: Swift.String? = nil
        )
        {
            self.password = password
            self.ttl = ttl
            self.uris = uris
            self.username = username
        }
    }

}

extension InvalidArgumentException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidArgumentExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The value for this input parameter is invalid.
public struct InvalidArgumentException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidArgumentException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct InvalidArgumentExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidArgumentExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InvalidClientException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidClientExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The specified client is invalid.
public struct InvalidClientException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidClientException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct InvalidClientExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidClientExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension NotAuthorizedException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: NotAuthorizedExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The caller is not authorized to perform this operation.
public struct NotAuthorizedException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "NotAuthorizedException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct NotAuthorizedExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension NotAuthorizedExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ResourceNotFoundException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ResourceNotFoundExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The specified resource is not found.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceNotFoundException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct ResourceNotFoundExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ResourceNotFoundExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension SendAlexaOfferToMasterInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case channelARN = "ChannelARN"
        case messagePayload = "MessagePayload"
        case senderClientId = "SenderClientId"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let channelARN = self.channelARN {
            try encodeContainer.encode(channelARN, forKey: .channelARN)
        }
        if let messagePayload = self.messagePayload {
            try encodeContainer.encode(messagePayload, forKey: .messagePayload)
        }
        if let senderClientId = self.senderClientId {
            try encodeContainer.encode(senderClientId, forKey: .senderClientId)
        }
    }
}

extension SendAlexaOfferToMasterInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/v1/send-alexa-offer-to-master"
    }
}

public struct SendAlexaOfferToMasterInput: Swift.Equatable {
    /// The ARN of the signaling channel by which Alexa and the master peer communicate.
    /// This member is required.
    public var channelARN: Swift.String?
    /// The base64-encoded SDP offer content.
    /// This member is required.
    public var messagePayload: Swift.String?
    /// The unique identifier for the sender client.
    /// This member is required.
    public var senderClientId: Swift.String?

    public init(
        channelARN: Swift.String? = nil,
        messagePayload: Swift.String? = nil,
        senderClientId: Swift.String? = nil
    )
    {
        self.channelARN = channelARN
        self.messagePayload = messagePayload
        self.senderClientId = senderClientId
    }
}

struct SendAlexaOfferToMasterInputBody: Swift.Equatable {
    let channelARN: Swift.String?
    let senderClientId: Swift.String?
    let messagePayload: Swift.String?
}

extension SendAlexaOfferToMasterInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case channelARN = "ChannelARN"
        case messagePayload = "MessagePayload"
        case senderClientId = "SenderClientId"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let channelARNDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .channelARN)
        channelARN = channelARNDecoded
        let senderClientIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .senderClientId)
        senderClientId = senderClientIdDecoded
        let messagePayloadDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .messagePayload)
        messagePayload = messagePayloadDecoded
    }
}

public enum SendAlexaOfferToMasterOutputError: ClientRuntime.HttpResponseErrorBinding {
    public static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "ClientLimitExceededException": return try await ClientLimitExceededException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidArgumentException": return try await InvalidArgumentException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "NotAuthorizedException": return try await NotAuthorizedException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceNotFoundException": return try await ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension SendAlexaOfferToMasterOutputResponse: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: SendAlexaOfferToMasterOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.answer = output.answer
        } else {
            self.answer = nil
        }
    }
}

public struct SendAlexaOfferToMasterOutputResponse: Swift.Equatable {
    /// The base64-encoded SDP answer content.
    public var answer: Swift.String?

    public init(
        answer: Swift.String? = nil
    )
    {
        self.answer = answer
    }
}

struct SendAlexaOfferToMasterOutputResponseBody: Swift.Equatable {
    let answer: Swift.String?
}

extension SendAlexaOfferToMasterOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case answer = "Answer"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let answerDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .answer)
        answer = answerDecoded
    }
}

extension KinesisVideoSignalingClientTypes {
    public enum Service: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case turn
        case sdkUnknown(Swift.String)

        public static var allCases: [Service] {
            return [
                .turn,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .turn: return "TURN"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = Service(rawValue: rawValue) ?? Service.sdkUnknown(rawValue)
        }
    }
}

extension SessionExpiredException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: SessionExpiredExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// If the client session is expired. Once the client is connected, the session is valid for 45 minutes. Client should reconnect to the channel to continue sending/receiving messages.
public struct SessionExpiredException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "SessionExpiredException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct SessionExpiredExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension SessionExpiredExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}
