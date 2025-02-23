// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class ApplicationCostProfilerClient {
    public static let clientName = "ApplicationCostProfilerClient"
    let client: ClientRuntime.SdkHttpClient
    let config: ApplicationCostProfilerClient.ApplicationCostProfilerClientConfiguration
    let serviceName = "ApplicationCostProfiler"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: ApplicationCostProfilerClient.ApplicationCostProfilerClientConfiguration) {
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
        let config = try ApplicationCostProfilerClient.ApplicationCostProfilerClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await ApplicationCostProfilerClient.ApplicationCostProfilerClientConfiguration()
        self.init(config: config)
    }
}

extension ApplicationCostProfilerClient {
    public typealias ApplicationCostProfilerClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "ApplicationCostProfiler" }
        public var clientName: String { "ApplicationCostProfilerClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct ApplicationCostProfilerClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "ApplicationCostProfilerClient"
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

extension ApplicationCostProfilerClient: ApplicationCostProfilerClientProtocol {
    /// Deletes the specified report definition in AWS Application Cost Profiler. This stops the report from being generated.
    ///
    /// - Parameter DeleteReportDefinitionInput : [no documentation found]
    ///
    /// - Returns: `DeleteReportDefinitionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this action.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The calls to AWS Application Cost Profiler API are throttled. The request was denied.
    /// - `ValidationException` : The input fails to satisfy the constraints for the API.
    public func deleteReportDefinition(input: DeleteReportDefinitionInput) async throws -> DeleteReportDefinitionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(id: "deleteReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteReportDefinitionInput, DeleteReportDefinitionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteReportDefinitionOutputResponse, DeleteReportDefinitionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Retrieves the definition of a report already configured in AWS Application Cost Profiler.
    ///
    /// - Parameter GetReportDefinitionInput : [no documentation found]
    ///
    /// - Returns: `GetReportDefinitionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this action.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The calls to AWS Application Cost Profiler API are throttled. The request was denied.
    /// - `ValidationException` : The input fails to satisfy the constraints for the API.
    public func getReportDefinition(input: GetReportDefinitionInput) async throws -> GetReportDefinitionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetReportDefinitionInput, GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>(id: "getReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetReportDefinitionInput, GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetReportDefinitionInput, GetReportDefinitionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetReportDefinitionOutputResponse, GetReportDefinitionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Ingests application usage data from Amazon Simple Storage Service (Amazon S3). The data must already exist in the S3 location. As part of the action, AWS Application Cost Profiler copies the object from your S3 bucket to an S3 bucket owned by Amazon for processing asynchronously.
    ///
    /// - Parameter ImportApplicationUsageInput : [no documentation found]
    ///
    /// - Returns: `ImportApplicationUsageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this action.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The calls to AWS Application Cost Profiler API are throttled. The request was denied.
    /// - `ValidationException` : The input fails to satisfy the constraints for the API.
    public func importApplicationUsage(input: ImportApplicationUsageInput) async throws -> ImportApplicationUsageOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "importApplicationUsage")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ImportApplicationUsageInput, ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>(id: "importApplicationUsage")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ImportApplicationUsageInput, ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ImportApplicationUsageInput, ImportApplicationUsageOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ImportApplicationUsageInput, ImportApplicationUsageOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<ImportApplicationUsageInput, ImportApplicationUsageOutputResponse>(xmlName: "ImportApplicationUsageRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ImportApplicationUsageOutputResponse, ImportApplicationUsageOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Retrieves a list of all reports and their configurations for your AWS account. The maximum number of reports is one.
    ///
    /// - Parameter ListReportDefinitionsInput : [no documentation found]
    ///
    /// - Returns: `ListReportDefinitionsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this action.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The calls to AWS Application Cost Profiler API are throttled. The request was denied.
    /// - `ValidationException` : The input fails to satisfy the constraints for the API.
    public func listReportDefinitions(input: ListReportDefinitionsInput) async throws -> ListReportDefinitionsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listReportDefinitions")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListReportDefinitionsInput, ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>(id: "listReportDefinitions")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListReportDefinitionsInput, ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListReportDefinitionsInput, ListReportDefinitionsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<ListReportDefinitionsInput, ListReportDefinitionsOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListReportDefinitionsOutputResponse, ListReportDefinitionsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Creates the report definition for a report in Application Cost Profiler.
    ///
    /// - Parameter PutReportDefinitionInput : [no documentation found]
    ///
    /// - Returns: `PutReportDefinitionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this action.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ServiceQuotaExceededException` : Your request exceeds one or more of the service quotas.
    /// - `ThrottlingException` : The calls to AWS Application Cost Profiler API are throttled. The request was denied.
    /// - `ValidationException` : The input fails to satisfy the constraints for the API.
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
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<PutReportDefinitionInput, PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(id: "putReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<PutReportDefinitionInput, PutReportDefinitionOutputResponse>(xmlName: "PutReportDefinitionRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<PutReportDefinitionOutputResponse, PutReportDefinitionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Updates existing report in AWS Application Cost Profiler.
    ///
    /// - Parameter UpdateReportDefinitionInput : [no documentation found]
    ///
    /// - Returns: `UpdateReportDefinitionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this action.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ThrottlingException` : The calls to AWS Application Cost Profiler API are throttled. The request was denied.
    /// - `ValidationException` : The input fails to satisfy the constraints for the API.
    public func updateReportDefinition(input: UpdateReportDefinitionInput) async throws -> UpdateReportDefinitionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .put)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateReportDefinition")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "application-cost-profiler")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateReportDefinitionInput, UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>(id: "updateReportDefinition")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateReportDefinitionInput, UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateReportDefinitionInput, UpdateReportDefinitionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateReportDefinitionInput, UpdateReportDefinitionOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateReportDefinitionInput, UpdateReportDefinitionOutputResponse>(xmlName: "UpdateReportDefinitionRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateReportDefinitionOutputResponse, UpdateReportDefinitionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
