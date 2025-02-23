// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Amplify Admin API
public protocol AmplifyBackendClientProtocol {
    /// This operation clones an existing backend.
    ///
    /// - Parameter CloneBackendInput : The request body for CloneBackend.
    ///
    /// - Returns: `CloneBackendOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func cloneBackend(input: CloneBackendInput) async throws -> CloneBackendOutputResponse
    /// This operation creates a backend for an Amplify app. Backends are automatically created at the time of app creation.
    ///
    /// - Parameter CreateBackendInput : The request body for CreateBackend.
    ///
    /// - Returns: `CreateBackendOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func createBackend(input: CreateBackendInput) async throws -> CreateBackendOutputResponse
    /// Creates a new backend API resource.
    ///
    /// - Parameter CreateBackendAPIInput : The request body for CreateBackendAPI.
    ///
    /// - Returns: `CreateBackendAPIOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func createBackendAPI(input: CreateBackendAPIInput) async throws -> CreateBackendAPIOutputResponse
    /// Creates a new backend authentication resource.
    ///
    /// - Parameter CreateBackendAuthInput : The request body for CreateBackendAuth.
    ///
    /// - Returns: `CreateBackendAuthOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func createBackendAuth(input: CreateBackendAuthInput) async throws -> CreateBackendAuthOutputResponse
    /// Creates a config object for a backend.
    ///
    /// - Parameter CreateBackendConfigInput : The request body for CreateBackendConfig.
    ///
    /// - Returns: `CreateBackendConfigOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func createBackendConfig(input: CreateBackendConfigInput) async throws -> CreateBackendConfigOutputResponse
    /// Creates a backend storage resource.
    ///
    /// - Parameter CreateBackendStorageInput : The request body for CreateBackendStorage.
    ///
    /// - Returns: `CreateBackendStorageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func createBackendStorage(input: CreateBackendStorageInput) async throws -> CreateBackendStorageOutputResponse
    /// Generates a one-time challenge code to authenticate a user into your Amplify Admin UI.
    ///
    /// - Parameter CreateTokenInput : [no documentation found]
    ///
    /// - Returns: `CreateTokenOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func createToken(input: CreateTokenInput) async throws -> CreateTokenOutputResponse
    /// Removes an existing environment from your Amplify project.
    ///
    /// - Parameter DeleteBackendInput : [no documentation found]
    ///
    /// - Returns: `DeleteBackendOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func deleteBackend(input: DeleteBackendInput) async throws -> DeleteBackendOutputResponse
    /// Deletes an existing backend API resource.
    ///
    /// - Parameter DeleteBackendAPIInput : The request body for DeleteBackendAPI.
    ///
    /// - Returns: `DeleteBackendAPIOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func deleteBackendAPI(input: DeleteBackendAPIInput) async throws -> DeleteBackendAPIOutputResponse
    /// Deletes an existing backend authentication resource.
    ///
    /// - Parameter DeleteBackendAuthInput : The request body for DeleteBackendAuth.
    ///
    /// - Returns: `DeleteBackendAuthOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func deleteBackendAuth(input: DeleteBackendAuthInput) async throws -> DeleteBackendAuthOutputResponse
    /// Removes the specified backend storage resource.
    ///
    /// - Parameter DeleteBackendStorageInput : The request body for DeleteBackendStorage.
    ///
    /// - Returns: `DeleteBackendStorageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func deleteBackendStorage(input: DeleteBackendStorageInput) async throws -> DeleteBackendStorageOutputResponse
    /// Deletes the challenge token based on the given appId and sessionId.
    ///
    /// - Parameter DeleteTokenInput : [no documentation found]
    ///
    /// - Returns: `DeleteTokenOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func deleteToken(input: DeleteTokenInput) async throws -> DeleteTokenOutputResponse
    /// Generates a model schema for an existing backend API resource.
    ///
    /// - Parameter GenerateBackendAPIModelsInput : The request body for GenerateBackendAPIModels.
    ///
    /// - Returns: `GenerateBackendAPIModelsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func generateBackendAPIModels(input: GenerateBackendAPIModelsInput) async throws -> GenerateBackendAPIModelsOutputResponse
    /// Provides project-level details for your Amplify UI project.
    ///
    /// - Parameter GetBackendInput : The request body for GetBackend.
    ///
    /// - Returns: `GetBackendOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func getBackend(input: GetBackendInput) async throws -> GetBackendOutputResponse
    /// Gets the details for a backend API.
    ///
    /// - Parameter GetBackendAPIInput : The request body for GetBackendAPI.
    ///
    /// - Returns: `GetBackendAPIOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func getBackendAPI(input: GetBackendAPIInput) async throws -> GetBackendAPIOutputResponse
    /// Gets a model introspection schema for an existing backend API resource.
    ///
    /// - Parameter GetBackendAPIModelsInput : The request body for GetBackendAPIModels.
    ///
    /// - Returns: `GetBackendAPIModelsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func getBackendAPIModels(input: GetBackendAPIModelsInput) async throws -> GetBackendAPIModelsOutputResponse
    /// Gets a backend auth details.
    ///
    /// - Parameter GetBackendAuthInput : The request body for GetBackendAuth.
    ///
    /// - Returns: `GetBackendAuthOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func getBackendAuth(input: GetBackendAuthInput) async throws -> GetBackendAuthOutputResponse
    /// Returns information about a specific job.
    ///
    /// - Parameter GetBackendJobInput : [no documentation found]
    ///
    /// - Returns: `GetBackendJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func getBackendJob(input: GetBackendJobInput) async throws -> GetBackendJobOutputResponse
    /// Gets details for a backend storage resource.
    ///
    /// - Parameter GetBackendStorageInput : The request body for GetBackendStorage.
    ///
    /// - Returns: `GetBackendStorageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func getBackendStorage(input: GetBackendStorageInput) async throws -> GetBackendStorageOutputResponse
    /// Gets the challenge token based on the given appId and sessionId.
    ///
    /// - Parameter GetTokenInput : [no documentation found]
    ///
    /// - Returns: `GetTokenOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func getToken(input: GetTokenInput) async throws -> GetTokenOutputResponse
    /// Imports an existing backend authentication resource.
    ///
    /// - Parameter ImportBackendAuthInput : The request body for ImportBackendAuth.
    ///
    /// - Returns: `ImportBackendAuthOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func importBackendAuth(input: ImportBackendAuthInput) async throws -> ImportBackendAuthOutputResponse
    /// Imports an existing backend storage resource.
    ///
    /// - Parameter ImportBackendStorageInput : The request body for ImportBackendStorage.
    ///
    /// - Returns: `ImportBackendStorageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func importBackendStorage(input: ImportBackendStorageInput) async throws -> ImportBackendStorageOutputResponse
    /// Lists the jobs for the backend of an Amplify app.
    ///
    /// - Parameter ListBackendJobsInput : The request body for ListBackendJobs.
    ///
    /// - Returns: `ListBackendJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func listBackendJobs(input: ListBackendJobsInput) async throws -> ListBackendJobsOutputResponse
    /// The list of S3 buckets in your account.
    ///
    /// - Parameter ListS3BucketsInput : The request body for S3Buckets.
    ///
    /// - Returns: `ListS3BucketsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func listS3Buckets(input: ListS3BucketsInput) async throws -> ListS3BucketsOutputResponse
    /// Removes all backend environments from your Amplify project.
    ///
    /// - Parameter RemoveAllBackendsInput : The request body for RemoveAllBackends.
    ///
    /// - Returns: `RemoveAllBackendsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func removeAllBackends(input: RemoveAllBackendsInput) async throws -> RemoveAllBackendsOutputResponse
    /// Removes the AWS resources required to access the Amplify Admin UI.
    ///
    /// - Parameter RemoveBackendConfigInput : [no documentation found]
    ///
    /// - Returns: `RemoveBackendConfigOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func removeBackendConfig(input: RemoveBackendConfigInput) async throws -> RemoveBackendConfigOutputResponse
    /// Updates an existing backend API resource.
    ///
    /// - Parameter UpdateBackendAPIInput : The request body for UpdateBackendAPI.
    ///
    /// - Returns: `UpdateBackendAPIOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func updateBackendAPI(input: UpdateBackendAPIInput) async throws -> UpdateBackendAPIOutputResponse
    /// Updates an existing backend authentication resource.
    ///
    /// - Parameter UpdateBackendAuthInput : The request body for UpdateBackendAuth.
    ///
    /// - Returns: `UpdateBackendAuthOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func updateBackendAuth(input: UpdateBackendAuthInput) async throws -> UpdateBackendAuthOutputResponse
    /// Updates the AWS resources required to access the Amplify Admin UI.
    ///
    /// - Parameter UpdateBackendConfigInput : The request body for UpdateBackendConfig.
    ///
    /// - Returns: `UpdateBackendConfigOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func updateBackendConfig(input: UpdateBackendConfigInput) async throws -> UpdateBackendConfigOutputResponse
    /// Updates a specific job.
    ///
    /// - Parameter UpdateBackendJobInput : The request body for GetBackendJob.
    ///
    /// - Returns: `UpdateBackendJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func updateBackendJob(input: UpdateBackendJobInput) async throws -> UpdateBackendJobOutputResponse
    /// Updates an existing backend storage resource.
    ///
    /// - Parameter UpdateBackendStorageInput : The request body for UpdateBackendStorage.
    ///
    /// - Returns: `UpdateBackendStorageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : An error returned if a request is not formed properly.
    /// - `GatewayTimeoutException` : An error returned if there's a temporary issue with the service.
    /// - `NotFoundException` : An error returned when a specific resource type is not found.
    /// - `TooManyRequestsException` : An error that is returned when a limit of a specific type has been exceeded.
    func updateBackendStorage(input: UpdateBackendStorageInput) async throws -> UpdateBackendStorageOutputResponse
}

public enum AmplifyBackendClientTypes {}
