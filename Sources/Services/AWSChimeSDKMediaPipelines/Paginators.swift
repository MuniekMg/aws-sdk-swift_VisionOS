// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ChimeSDKMediaPipelinesClient {
    /// Paginate over `[ListMediaCapturePipelinesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMediaCapturePipelinesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMediaCapturePipelinesOutputResponse`
    public func listMediaCapturePipelinesPaginated(input: ListMediaCapturePipelinesInput) -> ClientRuntime.PaginatorSequence<ListMediaCapturePipelinesInput, ListMediaCapturePipelinesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMediaCapturePipelinesInput, ListMediaCapturePipelinesOutputResponse>(input: input, inputKey: \ListMediaCapturePipelinesInput.nextToken, outputKey: \ListMediaCapturePipelinesOutputResponse.nextToken, paginationFunction: self.listMediaCapturePipelines(input:))
    }
}

extension ListMediaCapturePipelinesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMediaCapturePipelinesInput {
        return ListMediaCapturePipelinesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ChimeSDKMediaPipelinesClient {
    /// Paginate over `[ListMediaInsightsPipelineConfigurationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMediaInsightsPipelineConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMediaInsightsPipelineConfigurationsOutputResponse`
    public func listMediaInsightsPipelineConfigurationsPaginated(input: ListMediaInsightsPipelineConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListMediaInsightsPipelineConfigurationsInput, ListMediaInsightsPipelineConfigurationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMediaInsightsPipelineConfigurationsInput, ListMediaInsightsPipelineConfigurationsOutputResponse>(input: input, inputKey: \ListMediaInsightsPipelineConfigurationsInput.nextToken, outputKey: \ListMediaInsightsPipelineConfigurationsOutputResponse.nextToken, paginationFunction: self.listMediaInsightsPipelineConfigurations(input:))
    }
}

extension ListMediaInsightsPipelineConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMediaInsightsPipelineConfigurationsInput {
        return ListMediaInsightsPipelineConfigurationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ChimeSDKMediaPipelinesClient {
    /// Paginate over `[ListMediaPipelineKinesisVideoStreamPoolsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMediaPipelineKinesisVideoStreamPoolsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMediaPipelineKinesisVideoStreamPoolsOutputResponse`
    public func listMediaPipelineKinesisVideoStreamPoolsPaginated(input: ListMediaPipelineKinesisVideoStreamPoolsInput) -> ClientRuntime.PaginatorSequence<ListMediaPipelineKinesisVideoStreamPoolsInput, ListMediaPipelineKinesisVideoStreamPoolsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMediaPipelineKinesisVideoStreamPoolsInput, ListMediaPipelineKinesisVideoStreamPoolsOutputResponse>(input: input, inputKey: \ListMediaPipelineKinesisVideoStreamPoolsInput.nextToken, outputKey: \ListMediaPipelineKinesisVideoStreamPoolsOutputResponse.nextToken, paginationFunction: self.listMediaPipelineKinesisVideoStreamPools(input:))
    }
}

extension ListMediaPipelineKinesisVideoStreamPoolsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMediaPipelineKinesisVideoStreamPoolsInput {
        return ListMediaPipelineKinesisVideoStreamPoolsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ChimeSDKMediaPipelinesClient {
    /// Paginate over `[ListMediaPipelinesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMediaPipelinesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMediaPipelinesOutputResponse`
    public func listMediaPipelinesPaginated(input: ListMediaPipelinesInput) -> ClientRuntime.PaginatorSequence<ListMediaPipelinesInput, ListMediaPipelinesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMediaPipelinesInput, ListMediaPipelinesOutputResponse>(input: input, inputKey: \ListMediaPipelinesInput.nextToken, outputKey: \ListMediaPipelinesOutputResponse.nextToken, paginationFunction: self.listMediaPipelines(input:))
    }
}

extension ListMediaPipelinesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMediaPipelinesInput {
        return ListMediaPipelinesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
