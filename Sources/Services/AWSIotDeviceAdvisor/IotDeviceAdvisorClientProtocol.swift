// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Web Services IoT Core Device Advisor is a cloud-based, fully managed test capability for validating IoT devices during device software development. Device Advisor provides pre-built tests that you can use to validate IoT devices for reliable and secure connectivity with Amazon Web Services IoT Core before deploying devices to production. By using Device Advisor, you can confirm that your devices can connect to Amazon Web Services IoT Core, follow security best practices and, if applicable, receive software updates from IoT Device Management. You can also download signed qualification reports to submit to the Amazon Web Services Partner Network to get your device qualified for the Amazon Web Services Partner Device Catalog without the need to send your device in and wait for it to be tested.
public protocol IotDeviceAdvisorClientProtocol {
    /// Creates a Device Advisor test suite. Requires permission to access the [CreateSuiteDefinition](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter CreateSuiteDefinitionInput : [no documentation found]
    ///
    /// - Returns: `CreateSuiteDefinitionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ValidationException` : Sends a validation exception.
    func createSuiteDefinition(input: CreateSuiteDefinitionInput) async throws -> CreateSuiteDefinitionOutputResponse
    /// Deletes a Device Advisor test suite. Requires permission to access the [DeleteSuiteDefinition](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter DeleteSuiteDefinitionInput : [no documentation found]
    ///
    /// - Returns: `DeleteSuiteDefinitionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ValidationException` : Sends a validation exception.
    func deleteSuiteDefinition(input: DeleteSuiteDefinitionInput) async throws -> DeleteSuiteDefinitionOutputResponse
    /// Gets information about an Device Advisor endpoint.
    ///
    /// - Parameter GetEndpointInput : [no documentation found]
    ///
    /// - Returns: `GetEndpointOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ResourceNotFoundException` : Sends a Resource Not Found exception.
    /// - `ValidationException` : Sends a validation exception.
    func getEndpoint(input: GetEndpointInput) async throws -> GetEndpointOutputResponse
    /// Gets information about a Device Advisor test suite. Requires permission to access the [GetSuiteDefinition](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter GetSuiteDefinitionInput : [no documentation found]
    ///
    /// - Returns: `GetSuiteDefinitionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ResourceNotFoundException` : Sends a Resource Not Found exception.
    /// - `ValidationException` : Sends a validation exception.
    func getSuiteDefinition(input: GetSuiteDefinitionInput) async throws -> GetSuiteDefinitionOutputResponse
    /// Gets information about a Device Advisor test suite run. Requires permission to access the [GetSuiteRun](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter GetSuiteRunInput : [no documentation found]
    ///
    /// - Returns: `GetSuiteRunOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ResourceNotFoundException` : Sends a Resource Not Found exception.
    /// - `ValidationException` : Sends a validation exception.
    func getSuiteRun(input: GetSuiteRunInput) async throws -> GetSuiteRunOutputResponse
    /// Gets a report download link for a successful Device Advisor qualifying test suite run. Requires permission to access the [GetSuiteRunReport](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter GetSuiteRunReportInput : [no documentation found]
    ///
    /// - Returns: `GetSuiteRunReportOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ResourceNotFoundException` : Sends a Resource Not Found exception.
    /// - `ValidationException` : Sends a validation exception.
    func getSuiteRunReport(input: GetSuiteRunReportInput) async throws -> GetSuiteRunReportOutputResponse
    /// Lists the Device Advisor test suites you have created. Requires permission to access the [ListSuiteDefinitions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter ListSuiteDefinitionsInput : [no documentation found]
    ///
    /// - Returns: `ListSuiteDefinitionsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ValidationException` : Sends a validation exception.
    func listSuiteDefinitions(input: ListSuiteDefinitionsInput) async throws -> ListSuiteDefinitionsOutputResponse
    /// Lists runs of the specified Device Advisor test suite. You can list all runs of the test suite, or the runs of a specific version of the test suite. Requires permission to access the [ListSuiteRuns](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter ListSuiteRunsInput : [no documentation found]
    ///
    /// - Returns: `ListSuiteRunsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ValidationException` : Sends a validation exception.
    func listSuiteRuns(input: ListSuiteRunsInput) async throws -> ListSuiteRunsOutputResponse
    /// Lists the tags attached to an IoT Device Advisor resource. Requires permission to access the [ListTagsForResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ResourceNotFoundException` : Sends a Resource Not Found exception.
    /// - `ValidationException` : Sends a validation exception.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Starts a Device Advisor test suite run. Requires permission to access the [StartSuiteRun](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter StartSuiteRunInput : [no documentation found]
    ///
    /// - Returns: `StartSuiteRunOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Sends a Conflict Exception.
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ValidationException` : Sends a validation exception.
    func startSuiteRun(input: StartSuiteRunInput) async throws -> StartSuiteRunOutputResponse
    /// Stops a Device Advisor test suite run that is currently running. Requires permission to access the [StopSuiteRun](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter StopSuiteRunInput : [no documentation found]
    ///
    /// - Returns: `StopSuiteRunOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ResourceNotFoundException` : Sends a Resource Not Found exception.
    /// - `ValidationException` : Sends a validation exception.
    func stopSuiteRun(input: StopSuiteRunInput) async throws -> StopSuiteRunOutputResponse
    /// Adds to and modifies existing tags of an IoT Device Advisor resource. Requires permission to access the [TagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ResourceNotFoundException` : Sends a Resource Not Found exception.
    /// - `ValidationException` : Sends a validation exception.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from an IoT Device Advisor resource. Requires permission to access the [UntagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ResourceNotFoundException` : Sends a Resource Not Found exception.
    /// - `ValidationException` : Sends a validation exception.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a Device Advisor test suite. Requires permission to access the [UpdateSuiteDefinition](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    ///
    /// - Parameter UpdateSuiteDefinitionInput : [no documentation found]
    ///
    /// - Returns: `UpdateSuiteDefinitionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Sends an Internal Failure exception.
    /// - `ValidationException` : Sends a validation exception.
    func updateSuiteDefinition(input: UpdateSuiteDefinitionInput) async throws -> UpdateSuiteDefinitionOutputResponse
}

public enum IotDeviceAdvisorClientTypes {}
