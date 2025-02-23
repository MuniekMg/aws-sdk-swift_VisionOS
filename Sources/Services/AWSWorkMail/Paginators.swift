// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WorkMailClient {
    /// Paginate over `[ListAliasesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAliasesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAliasesOutputResponse`
    public func listAliasesPaginated(input: ListAliasesInput) -> ClientRuntime.PaginatorSequence<ListAliasesInput, ListAliasesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAliasesInput, ListAliasesOutputResponse>(input: input, inputKey: \ListAliasesInput.nextToken, outputKey: \ListAliasesOutputResponse.nextToken, paginationFunction: self.listAliases(input:))
    }
}

extension ListAliasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAliasesInput {
        return ListAliasesInput(
            entityId: self.entityId,
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListAvailabilityConfigurationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAvailabilityConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAvailabilityConfigurationsOutputResponse`
    public func listAvailabilityConfigurationsPaginated(input: ListAvailabilityConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListAvailabilityConfigurationsInput, ListAvailabilityConfigurationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAvailabilityConfigurationsInput, ListAvailabilityConfigurationsOutputResponse>(input: input, inputKey: \ListAvailabilityConfigurationsInput.nextToken, outputKey: \ListAvailabilityConfigurationsOutputResponse.nextToken, paginationFunction: self.listAvailabilityConfigurations(input:))
    }
}

extension ListAvailabilityConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAvailabilityConfigurationsInput {
        return ListAvailabilityConfigurationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}

extension PaginatorSequence where Input == ListAvailabilityConfigurationsInput, Output == ListAvailabilityConfigurationsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAvailabilityConfigurationsPaginated`
    /// to access the nested member `[WorkMailClientTypes.AvailabilityConfiguration]`
    /// - Returns: `[WorkMailClientTypes.AvailabilityConfiguration]`
    public func availabilityConfigurations() async throws -> [WorkMailClientTypes.AvailabilityConfiguration] {
        return try await self.asyncCompactMap { item in item.availabilityConfigurations }
    }
}
extension WorkMailClient {
    /// Paginate over `[ListGroupMembersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGroupMembersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGroupMembersOutputResponse`
    public func listGroupMembersPaginated(input: ListGroupMembersInput) -> ClientRuntime.PaginatorSequence<ListGroupMembersInput, ListGroupMembersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGroupMembersInput, ListGroupMembersOutputResponse>(input: input, inputKey: \ListGroupMembersInput.nextToken, outputKey: \ListGroupMembersOutputResponse.nextToken, paginationFunction: self.listGroupMembers(input:))
    }
}

extension ListGroupMembersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupMembersInput {
        return ListGroupMembersInput(
            groupId: self.groupId,
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGroupsOutputResponse`
    public func listGroupsPaginated(input: ListGroupsInput) -> ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutputResponse>(input: input, inputKey: \ListGroupsInput.nextToken, outputKey: \ListGroupsOutputResponse.nextToken, paginationFunction: self.listGroups(input:))
    }
}

extension ListGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupsInput {
        return ListGroupsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListGroupsForEntityOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGroupsForEntityInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGroupsForEntityOutputResponse`
    public func listGroupsForEntityPaginated(input: ListGroupsForEntityInput) -> ClientRuntime.PaginatorSequence<ListGroupsForEntityInput, ListGroupsForEntityOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGroupsForEntityInput, ListGroupsForEntityOutputResponse>(input: input, inputKey: \ListGroupsForEntityInput.nextToken, outputKey: \ListGroupsForEntityOutputResponse.nextToken, paginationFunction: self.listGroupsForEntity(input:))
    }
}

extension ListGroupsForEntityInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupsForEntityInput {
        return ListGroupsForEntityInput(
            entityId: self.entityId,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListImpersonationRolesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListImpersonationRolesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListImpersonationRolesOutputResponse`
    public func listImpersonationRolesPaginated(input: ListImpersonationRolesInput) -> ClientRuntime.PaginatorSequence<ListImpersonationRolesInput, ListImpersonationRolesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListImpersonationRolesInput, ListImpersonationRolesOutputResponse>(input: input, inputKey: \ListImpersonationRolesInput.nextToken, outputKey: \ListImpersonationRolesOutputResponse.nextToken, paginationFunction: self.listImpersonationRoles(input:))
    }
}

extension ListImpersonationRolesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListImpersonationRolesInput {
        return ListImpersonationRolesInput(
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListMailboxExportJobsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMailboxExportJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMailboxExportJobsOutputResponse`
    public func listMailboxExportJobsPaginated(input: ListMailboxExportJobsInput) -> ClientRuntime.PaginatorSequence<ListMailboxExportJobsInput, ListMailboxExportJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMailboxExportJobsInput, ListMailboxExportJobsOutputResponse>(input: input, inputKey: \ListMailboxExportJobsInput.nextToken, outputKey: \ListMailboxExportJobsOutputResponse.nextToken, paginationFunction: self.listMailboxExportJobs(input:))
    }
}

extension ListMailboxExportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMailboxExportJobsInput {
        return ListMailboxExportJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListMailboxPermissionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMailboxPermissionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMailboxPermissionsOutputResponse`
    public func listMailboxPermissionsPaginated(input: ListMailboxPermissionsInput) -> ClientRuntime.PaginatorSequence<ListMailboxPermissionsInput, ListMailboxPermissionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMailboxPermissionsInput, ListMailboxPermissionsOutputResponse>(input: input, inputKey: \ListMailboxPermissionsInput.nextToken, outputKey: \ListMailboxPermissionsOutputResponse.nextToken, paginationFunction: self.listMailboxPermissions(input:))
    }
}

extension ListMailboxPermissionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMailboxPermissionsInput {
        return ListMailboxPermissionsInput(
            entityId: self.entityId,
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListMailDomainsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMailDomainsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMailDomainsOutputResponse`
    public func listMailDomainsPaginated(input: ListMailDomainsInput) -> ClientRuntime.PaginatorSequence<ListMailDomainsInput, ListMailDomainsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMailDomainsInput, ListMailDomainsOutputResponse>(input: input, inputKey: \ListMailDomainsInput.nextToken, outputKey: \ListMailDomainsOutputResponse.nextToken, paginationFunction: self.listMailDomains(input:))
    }
}

extension ListMailDomainsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMailDomainsInput {
        return ListMailDomainsInput(
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListMobileDeviceAccessOverridesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMobileDeviceAccessOverridesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMobileDeviceAccessOverridesOutputResponse`
    public func listMobileDeviceAccessOverridesPaginated(input: ListMobileDeviceAccessOverridesInput) -> ClientRuntime.PaginatorSequence<ListMobileDeviceAccessOverridesInput, ListMobileDeviceAccessOverridesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMobileDeviceAccessOverridesInput, ListMobileDeviceAccessOverridesOutputResponse>(input: input, inputKey: \ListMobileDeviceAccessOverridesInput.nextToken, outputKey: \ListMobileDeviceAccessOverridesOutputResponse.nextToken, paginationFunction: self.listMobileDeviceAccessOverrides(input:))
    }
}

extension ListMobileDeviceAccessOverridesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMobileDeviceAccessOverridesInput {
        return ListMobileDeviceAccessOverridesInput(
            deviceId: self.deviceId,
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId,
            userId: self.userId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListOrganizationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOrganizationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOrganizationsOutputResponse`
    public func listOrganizationsPaginated(input: ListOrganizationsInput) -> ClientRuntime.PaginatorSequence<ListOrganizationsInput, ListOrganizationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOrganizationsInput, ListOrganizationsOutputResponse>(input: input, inputKey: \ListOrganizationsInput.nextToken, outputKey: \ListOrganizationsOutputResponse.nextToken, paginationFunction: self.listOrganizations(input:))
    }
}

extension ListOrganizationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrganizationsInput {
        return ListOrganizationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListResourceDelegatesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourceDelegatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourceDelegatesOutputResponse`
    public func listResourceDelegatesPaginated(input: ListResourceDelegatesInput) -> ClientRuntime.PaginatorSequence<ListResourceDelegatesInput, ListResourceDelegatesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResourceDelegatesInput, ListResourceDelegatesOutputResponse>(input: input, inputKey: \ListResourceDelegatesInput.nextToken, outputKey: \ListResourceDelegatesOutputResponse.nextToken, paginationFunction: self.listResourceDelegates(input:))
    }
}

extension ListResourceDelegatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourceDelegatesInput {
        return ListResourceDelegatesInput(
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId,
            resourceId: self.resourceId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListResourcesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourcesOutputResponse`
    public func listResourcesPaginated(input: ListResourcesInput) -> ClientRuntime.PaginatorSequence<ListResourcesInput, ListResourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResourcesInput, ListResourcesOutputResponse>(input: input, inputKey: \ListResourcesInput.nextToken, outputKey: \ListResourcesOutputResponse.nextToken, paginationFunction: self.listResources(input:))
    }
}

extension ListResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourcesInput {
        return ListResourcesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
extension WorkMailClient {
    /// Paginate over `[ListUsersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListUsersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListUsersOutputResponse`
    public func listUsersPaginated(input: ListUsersInput) -> ClientRuntime.PaginatorSequence<ListUsersInput, ListUsersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListUsersInput, ListUsersOutputResponse>(input: input, inputKey: \ListUsersInput.nextToken, outputKey: \ListUsersOutputResponse.nextToken, paginationFunction: self.listUsers(input:))
    }
}

extension ListUsersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUsersInput {
        return ListUsersInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            organizationId: self.organizationId
        )}
}
