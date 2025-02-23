// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LexModelsV2Client {
    /// Paginate over `[ListAggregatedUtterancesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAggregatedUtterancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAggregatedUtterancesOutputResponse`
    public func listAggregatedUtterancesPaginated(input: ListAggregatedUtterancesInput) -> ClientRuntime.PaginatorSequence<ListAggregatedUtterancesInput, ListAggregatedUtterancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAggregatedUtterancesInput, ListAggregatedUtterancesOutputResponse>(input: input, inputKey: \ListAggregatedUtterancesInput.nextToken, outputKey: \ListAggregatedUtterancesOutputResponse.nextToken, paginationFunction: self.listAggregatedUtterances(input:))
    }
}

extension ListAggregatedUtterancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAggregatedUtterancesInput {
        return ListAggregatedUtterancesInput(
            aggregationDuration: self.aggregationDuration,
            botAliasId: self.botAliasId,
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListBotAliasesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBotAliasesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBotAliasesOutputResponse`
    public func listBotAliasesPaginated(input: ListBotAliasesInput) -> ClientRuntime.PaginatorSequence<ListBotAliasesInput, ListBotAliasesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBotAliasesInput, ListBotAliasesOutputResponse>(input: input, inputKey: \ListBotAliasesInput.nextToken, outputKey: \ListBotAliasesOutputResponse.nextToken, paginationFunction: self.listBotAliases(input:))
    }
}

extension ListBotAliasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBotAliasesInput {
        return ListBotAliasesInput(
            botId: self.botId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListBotLocalesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBotLocalesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBotLocalesOutputResponse`
    public func listBotLocalesPaginated(input: ListBotLocalesInput) -> ClientRuntime.PaginatorSequence<ListBotLocalesInput, ListBotLocalesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBotLocalesInput, ListBotLocalesOutputResponse>(input: input, inputKey: \ListBotLocalesInput.nextToken, outputKey: \ListBotLocalesOutputResponse.nextToken, paginationFunction: self.listBotLocales(input:))
    }
}

extension ListBotLocalesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBotLocalesInput {
        return ListBotLocalesInput(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListBotRecommendationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBotRecommendationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBotRecommendationsOutputResponse`
    public func listBotRecommendationsPaginated(input: ListBotRecommendationsInput) -> ClientRuntime.PaginatorSequence<ListBotRecommendationsInput, ListBotRecommendationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBotRecommendationsInput, ListBotRecommendationsOutputResponse>(input: input, inputKey: \ListBotRecommendationsInput.nextToken, outputKey: \ListBotRecommendationsOutputResponse.nextToken, paginationFunction: self.listBotRecommendations(input:))
    }
}

extension ListBotRecommendationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBotRecommendationsInput {
        return ListBotRecommendationsInput(
            botId: self.botId,
            botVersion: self.botVersion,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListBotsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBotsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBotsOutputResponse`
    public func listBotsPaginated(input: ListBotsInput) -> ClientRuntime.PaginatorSequence<ListBotsInput, ListBotsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBotsInput, ListBotsOutputResponse>(input: input, inputKey: \ListBotsInput.nextToken, outputKey: \ListBotsOutputResponse.nextToken, paginationFunction: self.listBots(input:))
    }
}

extension ListBotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBotsInput {
        return ListBotsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListBotVersionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBotVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBotVersionsOutputResponse`
    public func listBotVersionsPaginated(input: ListBotVersionsInput) -> ClientRuntime.PaginatorSequence<ListBotVersionsInput, ListBotVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBotVersionsInput, ListBotVersionsOutputResponse>(input: input, inputKey: \ListBotVersionsInput.nextToken, outputKey: \ListBotVersionsOutputResponse.nextToken, paginationFunction: self.listBotVersions(input:))
    }
}

extension ListBotVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBotVersionsInput {
        return ListBotVersionsInput(
            botId: self.botId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListBuiltInIntentsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBuiltInIntentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBuiltInIntentsOutputResponse`
    public func listBuiltInIntentsPaginated(input: ListBuiltInIntentsInput) -> ClientRuntime.PaginatorSequence<ListBuiltInIntentsInput, ListBuiltInIntentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBuiltInIntentsInput, ListBuiltInIntentsOutputResponse>(input: input, inputKey: \ListBuiltInIntentsInput.nextToken, outputKey: \ListBuiltInIntentsOutputResponse.nextToken, paginationFunction: self.listBuiltInIntents(input:))
    }
}

extension ListBuiltInIntentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBuiltInIntentsInput {
        return ListBuiltInIntentsInput(
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListBuiltInSlotTypesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBuiltInSlotTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBuiltInSlotTypesOutputResponse`
    public func listBuiltInSlotTypesPaginated(input: ListBuiltInSlotTypesInput) -> ClientRuntime.PaginatorSequence<ListBuiltInSlotTypesInput, ListBuiltInSlotTypesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBuiltInSlotTypesInput, ListBuiltInSlotTypesOutputResponse>(input: input, inputKey: \ListBuiltInSlotTypesInput.nextToken, outputKey: \ListBuiltInSlotTypesOutputResponse.nextToken, paginationFunction: self.listBuiltInSlotTypes(input:))
    }
}

extension ListBuiltInSlotTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBuiltInSlotTypesInput {
        return ListBuiltInSlotTypesInput(
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListCustomVocabularyItemsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomVocabularyItemsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomVocabularyItemsOutputResponse`
    public func listCustomVocabularyItemsPaginated(input: ListCustomVocabularyItemsInput) -> ClientRuntime.PaginatorSequence<ListCustomVocabularyItemsInput, ListCustomVocabularyItemsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCustomVocabularyItemsInput, ListCustomVocabularyItemsOutputResponse>(input: input, inputKey: \ListCustomVocabularyItemsInput.nextToken, outputKey: \ListCustomVocabularyItemsOutputResponse.nextToken, paginationFunction: self.listCustomVocabularyItems(input:))
    }
}

extension ListCustomVocabularyItemsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomVocabularyItemsInput {
        return ListCustomVocabularyItemsInput(
            botId: self.botId,
            botVersion: self.botVersion,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListExportsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListExportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListExportsOutputResponse`
    public func listExportsPaginated(input: ListExportsInput) -> ClientRuntime.PaginatorSequence<ListExportsInput, ListExportsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListExportsInput, ListExportsOutputResponse>(input: input, inputKey: \ListExportsInput.nextToken, outputKey: \ListExportsOutputResponse.nextToken, paginationFunction: self.listExports(input:))
    }
}

extension ListExportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListExportsInput {
        return ListExportsInput(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListImportsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListImportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListImportsOutputResponse`
    public func listImportsPaginated(input: ListImportsInput) -> ClientRuntime.PaginatorSequence<ListImportsInput, ListImportsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListImportsInput, ListImportsOutputResponse>(input: input, inputKey: \ListImportsInput.nextToken, outputKey: \ListImportsOutputResponse.nextToken, paginationFunction: self.listImports(input:))
    }
}

extension ListImportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListImportsInput {
        return ListImportsInput(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListIntentMetricsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListIntentMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListIntentMetricsOutputResponse`
    public func listIntentMetricsPaginated(input: ListIntentMetricsInput) -> ClientRuntime.PaginatorSequence<ListIntentMetricsInput, ListIntentMetricsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListIntentMetricsInput, ListIntentMetricsOutputResponse>(input: input, inputKey: \ListIntentMetricsInput.nextToken, outputKey: \ListIntentMetricsOutputResponse.nextToken, paginationFunction: self.listIntentMetrics(input:))
    }
}

extension ListIntentMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIntentMetricsInput {
        return ListIntentMetricsInput(
            binBy: self.binBy,
            botId: self.botId,
            endDateTime: self.endDateTime,
            filters: self.filters,
            groupBy: self.groupBy,
            maxResults: self.maxResults,
            metrics: self.metrics,
            nextToken: token,
            startDateTime: self.startDateTime
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListIntentsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListIntentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListIntentsOutputResponse`
    public func listIntentsPaginated(input: ListIntentsInput) -> ClientRuntime.PaginatorSequence<ListIntentsInput, ListIntentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListIntentsInput, ListIntentsOutputResponse>(input: input, inputKey: \ListIntentsInput.nextToken, outputKey: \ListIntentsOutputResponse.nextToken, paginationFunction: self.listIntents(input:))
    }
}

extension ListIntentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIntentsInput {
        return ListIntentsInput(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListIntentStageMetricsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListIntentStageMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListIntentStageMetricsOutputResponse`
    public func listIntentStageMetricsPaginated(input: ListIntentStageMetricsInput) -> ClientRuntime.PaginatorSequence<ListIntentStageMetricsInput, ListIntentStageMetricsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListIntentStageMetricsInput, ListIntentStageMetricsOutputResponse>(input: input, inputKey: \ListIntentStageMetricsInput.nextToken, outputKey: \ListIntentStageMetricsOutputResponse.nextToken, paginationFunction: self.listIntentStageMetrics(input:))
    }
}

extension ListIntentStageMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIntentStageMetricsInput {
        return ListIntentStageMetricsInput(
            binBy: self.binBy,
            botId: self.botId,
            endDateTime: self.endDateTime,
            filters: self.filters,
            groupBy: self.groupBy,
            maxResults: self.maxResults,
            metrics: self.metrics,
            nextToken: token,
            startDateTime: self.startDateTime
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListRecommendedIntentsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecommendedIntentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecommendedIntentsOutputResponse`
    public func listRecommendedIntentsPaginated(input: ListRecommendedIntentsInput) -> ClientRuntime.PaginatorSequence<ListRecommendedIntentsInput, ListRecommendedIntentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRecommendedIntentsInput, ListRecommendedIntentsOutputResponse>(input: input, inputKey: \ListRecommendedIntentsInput.nextToken, outputKey: \ListRecommendedIntentsOutputResponse.nextToken, paginationFunction: self.listRecommendedIntents(input:))
    }
}

extension ListRecommendedIntentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendedIntentsInput {
        return ListRecommendedIntentsInput(
            botId: self.botId,
            botRecommendationId: self.botRecommendationId,
            botVersion: self.botVersion,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListSessionAnalyticsDataOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSessionAnalyticsDataInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSessionAnalyticsDataOutputResponse`
    public func listSessionAnalyticsDataPaginated(input: ListSessionAnalyticsDataInput) -> ClientRuntime.PaginatorSequence<ListSessionAnalyticsDataInput, ListSessionAnalyticsDataOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSessionAnalyticsDataInput, ListSessionAnalyticsDataOutputResponse>(input: input, inputKey: \ListSessionAnalyticsDataInput.nextToken, outputKey: \ListSessionAnalyticsDataOutputResponse.nextToken, paginationFunction: self.listSessionAnalyticsData(input:))
    }
}

extension ListSessionAnalyticsDataInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSessionAnalyticsDataInput {
        return ListSessionAnalyticsDataInput(
            botId: self.botId,
            endDateTime: self.endDateTime,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            startDateTime: self.startDateTime
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListSessionMetricsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSessionMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSessionMetricsOutputResponse`
    public func listSessionMetricsPaginated(input: ListSessionMetricsInput) -> ClientRuntime.PaginatorSequence<ListSessionMetricsInput, ListSessionMetricsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSessionMetricsInput, ListSessionMetricsOutputResponse>(input: input, inputKey: \ListSessionMetricsInput.nextToken, outputKey: \ListSessionMetricsOutputResponse.nextToken, paginationFunction: self.listSessionMetrics(input:))
    }
}

extension ListSessionMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSessionMetricsInput {
        return ListSessionMetricsInput(
            binBy: self.binBy,
            botId: self.botId,
            endDateTime: self.endDateTime,
            filters: self.filters,
            groupBy: self.groupBy,
            maxResults: self.maxResults,
            metrics: self.metrics,
            nextToken: token,
            startDateTime: self.startDateTime
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListSlotsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSlotsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSlotsOutputResponse`
    public func listSlotsPaginated(input: ListSlotsInput) -> ClientRuntime.PaginatorSequence<ListSlotsInput, ListSlotsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSlotsInput, ListSlotsOutputResponse>(input: input, inputKey: \ListSlotsInput.nextToken, outputKey: \ListSlotsOutputResponse.nextToken, paginationFunction: self.listSlots(input:))
    }
}

extension ListSlotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSlotsInput {
        return ListSlotsInput(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            intentId: self.intentId,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListSlotTypesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSlotTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSlotTypesOutputResponse`
    public func listSlotTypesPaginated(input: ListSlotTypesInput) -> ClientRuntime.PaginatorSequence<ListSlotTypesInput, ListSlotTypesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSlotTypesInput, ListSlotTypesOutputResponse>(input: input, inputKey: \ListSlotTypesInput.nextToken, outputKey: \ListSlotTypesOutputResponse.nextToken, paginationFunction: self.listSlotTypes(input:))
    }
}

extension ListSlotTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSlotTypesInput {
        return ListSlotTypesInput(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListTestExecutionResultItemsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTestExecutionResultItemsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTestExecutionResultItemsOutputResponse`
    public func listTestExecutionResultItemsPaginated(input: ListTestExecutionResultItemsInput) -> ClientRuntime.PaginatorSequence<ListTestExecutionResultItemsInput, ListTestExecutionResultItemsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTestExecutionResultItemsInput, ListTestExecutionResultItemsOutputResponse>(input: input, inputKey: \ListTestExecutionResultItemsInput.nextToken, outputKey: \ListTestExecutionResultItemsOutputResponse.nextToken, paginationFunction: self.listTestExecutionResultItems(input:))
    }
}

extension ListTestExecutionResultItemsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTestExecutionResultItemsInput {
        return ListTestExecutionResultItemsInput(
            maxResults: self.maxResults,
            nextToken: token,
            resultFilterBy: self.resultFilterBy,
            testExecutionId: self.testExecutionId
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListTestExecutionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTestExecutionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTestExecutionsOutputResponse`
    public func listTestExecutionsPaginated(input: ListTestExecutionsInput) -> ClientRuntime.PaginatorSequence<ListTestExecutionsInput, ListTestExecutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTestExecutionsInput, ListTestExecutionsOutputResponse>(input: input, inputKey: \ListTestExecutionsInput.nextToken, outputKey: \ListTestExecutionsOutputResponse.nextToken, paginationFunction: self.listTestExecutions(input:))
    }
}

extension ListTestExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTestExecutionsInput {
        return ListTestExecutionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListTestSetRecordsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTestSetRecordsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTestSetRecordsOutputResponse`
    public func listTestSetRecordsPaginated(input: ListTestSetRecordsInput) -> ClientRuntime.PaginatorSequence<ListTestSetRecordsInput, ListTestSetRecordsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTestSetRecordsInput, ListTestSetRecordsOutputResponse>(input: input, inputKey: \ListTestSetRecordsInput.nextToken, outputKey: \ListTestSetRecordsOutputResponse.nextToken, paginationFunction: self.listTestSetRecords(input:))
    }
}

extension ListTestSetRecordsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTestSetRecordsInput {
        return ListTestSetRecordsInput(
            maxResults: self.maxResults,
            nextToken: token,
            testSetId: self.testSetId
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListTestSetsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTestSetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTestSetsOutputResponse`
    public func listTestSetsPaginated(input: ListTestSetsInput) -> ClientRuntime.PaginatorSequence<ListTestSetsInput, ListTestSetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTestSetsInput, ListTestSetsOutputResponse>(input: input, inputKey: \ListTestSetsInput.nextToken, outputKey: \ListTestSetsOutputResponse.nextToken, paginationFunction: self.listTestSets(input:))
    }
}

extension ListTestSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTestSetsInput {
        return ListTestSetsInput(
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListUtteranceAnalyticsDataOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUtteranceAnalyticsDataInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUtteranceAnalyticsDataOutputResponse`
    public func listUtteranceAnalyticsDataPaginated(input: ListUtteranceAnalyticsDataInput) -> ClientRuntime.PaginatorSequence<ListUtteranceAnalyticsDataInput, ListUtteranceAnalyticsDataOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListUtteranceAnalyticsDataInput, ListUtteranceAnalyticsDataOutputResponse>(input: input, inputKey: \ListUtteranceAnalyticsDataInput.nextToken, outputKey: \ListUtteranceAnalyticsDataOutputResponse.nextToken, paginationFunction: self.listUtteranceAnalyticsData(input:))
    }
}

extension ListUtteranceAnalyticsDataInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUtteranceAnalyticsDataInput {
        return ListUtteranceAnalyticsDataInput(
            botId: self.botId,
            endDateTime: self.endDateTime,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            startDateTime: self.startDateTime
        )}
}
extension LexModelsV2Client {
    /// Paginate over `[ListUtteranceMetricsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUtteranceMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUtteranceMetricsOutputResponse`
    public func listUtteranceMetricsPaginated(input: ListUtteranceMetricsInput) -> ClientRuntime.PaginatorSequence<ListUtteranceMetricsInput, ListUtteranceMetricsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListUtteranceMetricsInput, ListUtteranceMetricsOutputResponse>(input: input, inputKey: \ListUtteranceMetricsInput.nextToken, outputKey: \ListUtteranceMetricsOutputResponse.nextToken, paginationFunction: self.listUtteranceMetrics(input:))
    }
}

extension ListUtteranceMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUtteranceMetricsInput {
        return ListUtteranceMetricsInput(
            attributes: self.attributes,
            binBy: self.binBy,
            botId: self.botId,
            endDateTime: self.endDateTime,
            filters: self.filters,
            groupBy: self.groupBy,
            maxResults: self.maxResults,
            metrics: self.metrics,
            nextToken: token,
            startDateTime: self.startDateTime
        )}
}
