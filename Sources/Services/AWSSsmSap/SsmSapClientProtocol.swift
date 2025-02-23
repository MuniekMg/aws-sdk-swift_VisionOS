// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This API reference provides descriptions, syntax, and other details about each of the actions and data types for AWS Systems Manager for SAP. The topic for each action shows the API request parameters and responses.
public protocol SsmSapClientProtocol {
    /// Removes permissions associated with the target database.
    ///
    /// - Parameter DeleteResourcePermissionInput : [no documentation found]
    ///
    /// - Returns: `DeleteResourcePermissionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteResourcePermission(input: DeleteResourcePermissionInput) async throws -> DeleteResourcePermissionOutputResponse
    /// Deregister an SAP application with AWS Systems Manager for SAP. This action does not aﬀect the existing setup of your SAP workloads on Amazon EC2.
    ///
    /// - Parameter DeregisterApplicationInput : [no documentation found]
    ///
    /// - Returns: `DeregisterApplicationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deregisterApplication(input: DeregisterApplicationInput) async throws -> DeregisterApplicationOutputResponse
    /// Gets an application registered with AWS Systems Manager for SAP. It also returns the components of the application.
    ///
    /// - Parameter GetApplicationInput : [no documentation found]
    ///
    /// - Returns: `GetApplicationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutputResponse
    /// Gets the component of an application registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter GetComponentInput : [no documentation found]
    ///
    /// - Returns: `GetComponentOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getComponent(input: GetComponentInput) async throws -> GetComponentOutputResponse
    /// Gets the SAP HANA database of an application registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter GetDatabaseInput : [no documentation found]
    ///
    /// - Returns: `GetDatabaseOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getDatabase(input: GetDatabaseInput) async throws -> GetDatabaseOutputResponse
    /// Gets the details of an operation by specifying the operation ID.
    ///
    /// - Parameter GetOperationInput : [no documentation found]
    ///
    /// - Returns: `GetOperationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getOperation(input: GetOperationInput) async throws -> GetOperationOutputResponse
    /// Gets permissions associated with the target database.
    ///
    /// - Parameter GetResourcePermissionInput : [no documentation found]
    ///
    /// - Returns: `GetResourcePermissionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getResourcePermission(input: GetResourcePermissionInput) async throws -> GetResourcePermissionOutputResponse
    /// Lists all the applications registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter ListApplicationsInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    /// Lists all the components registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter ListComponentsInput : [no documentation found]
    ///
    /// - Returns: `ListComponentsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listComponents(input: ListComponentsInput) async throws -> ListComponentsOutputResponse
    /// Lists the SAP HANA databases of an application registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter ListDatabasesInput : [no documentation found]
    ///
    /// - Returns: `ListDatabasesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listDatabases(input: ListDatabasesInput) async throws -> ListDatabasesOutputResponse
    /// Lists the operations performed by AWS Systems Manager for SAP.
    ///
    /// - Parameter ListOperationsInput : [no documentation found]
    ///
    /// - Returns: `ListOperationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listOperations(input: ListOperationsInput) async throws -> ListOperationsOutputResponse
    /// Lists all tags on an SAP HANA application and/or database registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds permissions to the target database.
    ///
    /// - Parameter PutResourcePermissionInput : [no documentation found]
    ///
    /// - Returns: `PutResourcePermissionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func putResourcePermission(input: PutResourcePermissionInput) async throws -> PutResourcePermissionOutputResponse
    /// Register an SAP application with AWS Systems Manager for SAP. You must meet the following requirements before registering. The SAP application you want to register with AWS Systems Manager for SAP is running on Amazon EC2. AWS Systems Manager Agent must be setup on an Amazon EC2 instance along with the required IAM permissions. Amazon EC2 instance(s) must have access to the secrets created in AWS Secrets Manager to manage SAP applications and components.
    ///
    /// - Parameter RegisterApplicationInput : [no documentation found]
    ///
    /// - Returns: `RegisterApplicationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func registerApplication(input: RegisterApplicationInput) async throws -> RegisterApplicationOutputResponse
    /// Refreshes a registered application.
    ///
    /// - Parameter StartApplicationRefreshInput : [no documentation found]
    ///
    /// - Returns: `StartApplicationRefreshOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func startApplicationRefresh(input: StartApplicationRefreshInput) async throws -> StartApplicationRefreshOutputResponse
    /// Creates tag for a resource by specifying the ARN.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Delete the tags for a resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the settings of an application registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter UpdateApplicationSettingsInput : [no documentation found]
    ///
    /// - Returns: `UpdateApplicationSettingsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateApplicationSettings(input: UpdateApplicationSettingsInput) async throws -> UpdateApplicationSettingsOutputResponse
}

public enum SsmSapClientTypes {}
