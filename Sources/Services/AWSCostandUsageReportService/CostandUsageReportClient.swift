// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class CostandUsageReportClient {
    public static let clientName = "CostandUsageReportClient"
    let client: ClientRuntime.SdkHttpClient
    let config: CostandUsageReportClient.CostandUsageReportClientConfiguration
    let serviceName = "Cost and Usage Report"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: CostandUsageReportClient.CostandUsageReportClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try CostandUsageReportClient.CostandUsageReportClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await CostandUsageReportClient.CostandUsageReportClientConfiguration()
        self.init(config: config)
    }
}

extension CostandUsageReportClient {
    public typealias CostandUsageReportClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Cost and Usage Report Service" }
        public var clientName: String { "CostandUsageReportClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct CostandUsageReportClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "CostandUsageReportClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension CostandUsageReportClient: CostandUsageReportClientProtocol {
    /// Deletes the specified report.
    ///
    /// - Parameter DeleteReportDefinitionInput : Deletes the specified report.
    ///
    /// - Returns: `DeleteReportDefinitionOutputResponse` : If the action is successful, the service sends back an HTTP 200 response.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    public func deleteReportDefinition(input: DeleteReportDefinitionInput) async throws -> DeleteReportDefinitionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(id: "deleteReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse>(xAmzTarget: "AWSOrigamiServiceGatewayService.DeleteReportDefinition"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse>(xmlName: "DeleteReportDefinitionRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Lists the AWS Cost and Usage reports available to this account.
    ///
    /// - Parameter DescribeReportDefinitionsInput : Requests a list of AWS Cost and Usage reports owned by the account.
    ///
    /// - Returns: `DescribeReportDefinitionsOutputResponse` : If the action is successful, the service sends back an HTTP 200 response.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    public func describeReportDefinitions(input: DescribeReportDefinitionsInput) async throws -> DescribeReportDefinitionsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeReportDefinitions")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutputResponse, DescribeReportDefinitionsOutputError>(id: "describeReportDefinitions")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutputResponse, DescribeReportDefinitionsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeReportDefinitionsOutputResponse, DescribeReportDefinitionsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutputResponse>(xAmzTarget: "AWSOrigamiServiceGatewayService.DescribeReportDefinitions"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutputResponse>(xmlName: "DescribeReportDefinitionsRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DescribeReportDefinitionsInput, DescribeReportDefinitionsOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DescribeReportDefinitionsOutputResponse, DescribeReportDefinitionsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeReportDefinitionsOutputResponse, DescribeReportDefinitionsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeReportDefinitionsOutputResponse, DescribeReportDefinitionsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeReportDefinitionsOutputResponse, DescribeReportDefinitionsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Allows you to programatically update your report preferences.
    ///
    /// - Parameter ModifyReportDefinitionInput : [no documentation found]
    ///
    /// - Returns: `ModifyReportDefinitionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    public func modifyReportDefinition(input: ModifyReportDefinitionInput) async throws -> ModifyReportDefinitionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "modifyReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ModifyReportDefinitionInput, ModifyReportDefinitionOutputResponse, ModifyReportDefinitionOutputError>(id: "modifyReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutputResponse, ModifyReportDefinitionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ModifyReportDefinitionOutputResponse, ModifyReportDefinitionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutputResponse>(xAmzTarget: "AWSOrigamiServiceGatewayService.ModifyReportDefinition"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutputResponse>(xmlName: "ModifyReportDefinitionRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ModifyReportDefinitionInput, ModifyReportDefinitionOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ModifyReportDefinitionOutputResponse, ModifyReportDefinitionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ModifyReportDefinitionOutputResponse, ModifyReportDefinitionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ModifyReportDefinitionOutputResponse, ModifyReportDefinitionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ModifyReportDefinitionOutputResponse, ModifyReportDefinitionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Creates a new report using the description that you provide.
    ///
    /// - Parameter PutReportDefinitionInput : Creates a Cost and Usage Report.
    ///
    /// - Returns: `PutReportDefinitionOutputResponse` : If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateReportNameException` : A report with the specified name already exists in the account. Specify a different report name.
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ReportLimitReachedException` : This account already has five reports defined. To define a new report, you must delete an existing report.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    public func putReportDefinition(input: PutReportDefinitionInput) async throws -> PutReportDefinitionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cur")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<PutReportDefinitionInput, PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(id: "putReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse>(xAmzTarget: "AWSOrigamiServiceGatewayService.PutReportDefinition"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse>(xmlName: "PutReportDefinitionRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
