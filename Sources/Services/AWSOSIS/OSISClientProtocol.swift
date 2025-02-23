// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Use the Amazon OpenSearch Ingestion API to create and manage ingestion pipelines. OpenSearch Ingestion is a fully managed data collector that delivers real-time log and trace data to OpenSearch Service domains. For more information, see [Getting data into your cluster using OpenSearch Ingestion](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ingestion.html).
public protocol OSISClientProtocol {
    /// Creates an OpenSearch Ingestion pipeline. For more information, see [Creating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).
    ///
    /// - Parameter CreatePipelineInput : [no documentation found]
    ///
    /// - Returns: `CreatePipelineOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `LimitExceededException` : You attempted to create more than the allowed number of tags.
    /// - `ResourceAlreadyExistsException` : You attempted to create a resource that already exists.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func createPipeline(input: CreatePipelineInput) async throws -> CreatePipelineOutputResponse
    /// Deletes an OpenSearch Ingestion pipeline. For more information, see [Deleting Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html).
    ///
    /// - Parameter DeletePipelineInput : [no documentation found]
    ///
    /// - Returns: `DeletePipelineOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `ConflictException` : The client attempted to remove a resource that is currently in use.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func deletePipeline(input: DeletePipelineInput) async throws -> DeletePipelineOutputResponse
    /// Retrieves information about an OpenSearch Ingestion pipeline.
    ///
    /// - Parameter GetPipelineInput : [no documentation found]
    ///
    /// - Returns: `GetPipelineOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func getPipeline(input: GetPipelineInput) async throws -> GetPipelineOutputResponse
    /// Retrieves information about a specific blueprint for OpenSearch Ingestion. Blueprints are templates for the configuration needed for a CreatePipeline request. For more information, see [Using blueprints to create a pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).
    ///
    /// - Parameter GetPipelineBlueprintInput : [no documentation found]
    ///
    /// - Returns: `GetPipelineBlueprintOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func getPipelineBlueprint(input: GetPipelineBlueprintInput) async throws -> GetPipelineBlueprintOutputResponse
    /// Returns progress information for the current change happening on an OpenSearch Ingestion pipeline. Currently, this operation only returns information when a pipeline is being created. For more information, see [Tracking the status of pipeline creation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#get-pipeline-progress).
    ///
    /// - Parameter GetPipelineChangeProgressInput : [no documentation found]
    ///
    /// - Returns: `GetPipelineChangeProgressOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func getPipelineChangeProgress(input: GetPipelineChangeProgressInput) async throws -> GetPipelineChangeProgressOutputResponse
    /// Retrieves a list of all available blueprints for Data Prepper. For more information, see [Using blueprints to create a pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).
    ///
    /// - Parameter ListPipelineBlueprintsInput : [no documentation found]
    ///
    /// - Returns: `ListPipelineBlueprintsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `InvalidPaginationTokenException` : An invalid pagination token provided in the request.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func listPipelineBlueprints(input: ListPipelineBlueprintsInput) async throws -> ListPipelineBlueprintsOutputResponse
    /// Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services account and Region. For more information, see [Viewing Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html).
    ///
    /// - Parameter ListPipelinesInput : [no documentation found]
    ///
    /// - Returns: `ListPipelinesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `InvalidPaginationTokenException` : An invalid pagination token provided in the request.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func listPipelines(input: ListPipelinesInput) async throws -> ListPipelinesOutputResponse
    /// Lists all resource tags associated with an OpenSearch Ingestion pipeline. For more information, see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Starts an OpenSearch Ingestion pipeline. For more information, see [Starting an OpenSearch Ingestion pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--start).
    ///
    /// - Parameter StartPipelineInput : [no documentation found]
    ///
    /// - Returns: `StartPipelineOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `ConflictException` : The client attempted to remove a resource that is currently in use.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func startPipeline(input: StartPipelineInput) async throws -> StartPipelineOutputResponse
    /// Stops an OpenSearch Ingestion pipeline. For more information, see [Stopping an OpenSearch Ingestion pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop).
    ///
    /// - Parameter StopPipelineInput : [no documentation found]
    ///
    /// - Returns: `StopPipelineOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `ConflictException` : The client attempted to remove a resource that is currently in use.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func stopPipeline(input: StopPipelineInput) async throws -> StopPipelineOutputResponse
    /// Tags an OpenSearch Ingestion pipeline. For more information, see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `LimitExceededException` : You attempted to create more than the allowed number of tags.
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from an OpenSearch Ingestion pipeline. For more information, see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an OpenSearch Ingestion pipeline. For more information, see [Updating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html).
    ///
    /// - Parameter UpdatePipelineInput : [no documentation found]
    ///
    /// - Returns: `UpdatePipelineOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `ConflictException` : The client attempted to remove a resource that is currently in use.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ResourceNotFoundException` : You attempted to access or delete a resource that does not exist.
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func updatePipeline(input: UpdatePipelineInput) async throws -> UpdatePipelineOutputResponse
    /// Checks whether an OpenSearch Ingestion pipeline configuration is valid prior to creation. For more information, see [Creating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).
    ///
    /// - Parameter ValidatePipelineInput : [no documentation found]
    ///
    /// - Returns: `ValidatePipelineOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to access the resource.
    /// - `InternalException` : The request failed because of an unknown error, exception, or failure (the failure is internal to the service).
    /// - `ValidationException` : An exception for missing or invalid input fields.
    func validatePipeline(input: ValidatePipelineInput) async throws -> ValidatePipelineOutputResponse
}

public enum OSISClientTypes {}
