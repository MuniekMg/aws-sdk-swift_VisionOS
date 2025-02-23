// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EntityResolutionClient {
    /// Paginate over `[ListMatchingJobsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMatchingJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMatchingJobsOutputResponse`
    public func listMatchingJobsPaginated(input: ListMatchingJobsInput) -> ClientRuntime.PaginatorSequence<ListMatchingJobsInput, ListMatchingJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMatchingJobsInput, ListMatchingJobsOutputResponse>(input: input, inputKey: \ListMatchingJobsInput.nextToken, outputKey: \ListMatchingJobsOutputResponse.nextToken, paginationFunction: self.listMatchingJobs(input:))
    }
}

extension ListMatchingJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMatchingJobsInput {
        return ListMatchingJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            workflowName: self.workflowName
        )}
}

extension PaginatorSequence where Input == ListMatchingJobsInput, Output == ListMatchingJobsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listMatchingJobsPaginated`
    /// to access the nested member `[EntityResolutionClientTypes.JobSummary]`
    /// - Returns: `[EntityResolutionClientTypes.JobSummary]`
    public func jobs() async throws -> [EntityResolutionClientTypes.JobSummary] {
        return try await self.asyncCompactMap { item in item.jobs }
    }
}
extension EntityResolutionClient {
    /// Paginate over `[ListMatchingWorkflowsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMatchingWorkflowsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMatchingWorkflowsOutputResponse`
    public func listMatchingWorkflowsPaginated(input: ListMatchingWorkflowsInput) -> ClientRuntime.PaginatorSequence<ListMatchingWorkflowsInput, ListMatchingWorkflowsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMatchingWorkflowsInput, ListMatchingWorkflowsOutputResponse>(input: input, inputKey: \ListMatchingWorkflowsInput.nextToken, outputKey: \ListMatchingWorkflowsOutputResponse.nextToken, paginationFunction: self.listMatchingWorkflows(input:))
    }
}

extension ListMatchingWorkflowsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMatchingWorkflowsInput {
        return ListMatchingWorkflowsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListMatchingWorkflowsInput, Output == ListMatchingWorkflowsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listMatchingWorkflowsPaginated`
    /// to access the nested member `[EntityResolutionClientTypes.MatchingWorkflowSummary]`
    /// - Returns: `[EntityResolutionClientTypes.MatchingWorkflowSummary]`
    public func workflowSummaries() async throws -> [EntityResolutionClientTypes.MatchingWorkflowSummary] {
        return try await self.asyncCompactMap { item in item.workflowSummaries }
    }
}
extension EntityResolutionClient {
    /// Paginate over `[ListSchemaMappingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSchemaMappingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSchemaMappingsOutputResponse`
    public func listSchemaMappingsPaginated(input: ListSchemaMappingsInput) -> ClientRuntime.PaginatorSequence<ListSchemaMappingsInput, ListSchemaMappingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSchemaMappingsInput, ListSchemaMappingsOutputResponse>(input: input, inputKey: \ListSchemaMappingsInput.nextToken, outputKey: \ListSchemaMappingsOutputResponse.nextToken, paginationFunction: self.listSchemaMappings(input:))
    }
}

extension ListSchemaMappingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchemaMappingsInput {
        return ListSchemaMappingsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListSchemaMappingsInput, Output == ListSchemaMappingsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listSchemaMappingsPaginated`
    /// to access the nested member `[EntityResolutionClientTypes.SchemaMappingSummary]`
    /// - Returns: `[EntityResolutionClientTypes.SchemaMappingSummary]`
    public func schemaList() async throws -> [EntityResolutionClientTypes.SchemaMappingSummary] {
        return try await self.asyncCompactMap { item in item.schemaList }
    }
}
