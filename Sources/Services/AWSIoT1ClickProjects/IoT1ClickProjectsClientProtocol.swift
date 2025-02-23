// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The AWS IoT 1-Click Projects API Reference
public protocol IoT1ClickProjectsClientProtocol {
    /// Associates a physical device with a placement.
    ///
    /// - Parameter AssociateDeviceWithPlacementInput : [no documentation found]
    ///
    /// - Returns: `AssociateDeviceWithPlacementOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceConflictException` :
    /// - `ResourceNotFoundException` :
    func associateDeviceWithPlacement(input: AssociateDeviceWithPlacementInput) async throws -> AssociateDeviceWithPlacementOutputResponse
    /// Creates an empty placement.
    ///
    /// - Parameter CreatePlacementInput : [no documentation found]
    ///
    /// - Returns: `CreatePlacementOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceConflictException` :
    /// - `ResourceNotFoundException` :
    func createPlacement(input: CreatePlacementInput) async throws -> CreatePlacementOutputResponse
    /// Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
    ///
    /// - Parameter CreateProjectInput : [no documentation found]
    ///
    /// - Returns: `CreateProjectOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceConflictException` :
    func createProject(input: CreateProjectInput) async throws -> CreateProjectOutputResponse
    /// Deletes a placement. To delete a placement, it must not have any devices associated with it. When you delete a placement, all associated data becomes irretrievable.
    ///
    /// - Parameter DeletePlacementInput : [no documentation found]
    ///
    /// - Returns: `DeletePlacementOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `TooManyRequestsException` :
    func deletePlacement(input: DeletePlacementInput) async throws -> DeletePlacementOutputResponse
    /// Deletes a project. To delete a project, it must not have any placements associated with it. When you delete a project, all associated data becomes irretrievable.
    ///
    /// - Parameter DeleteProjectInput : [no documentation found]
    ///
    /// - Returns: `DeleteProjectOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `TooManyRequestsException` :
    func deleteProject(input: DeleteProjectInput) async throws -> DeleteProjectOutputResponse
    /// Describes a placement in a project.
    ///
    /// - Parameter DescribePlacementInput : [no documentation found]
    ///
    /// - Returns: `DescribePlacementOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    func describePlacement(input: DescribePlacementInput) async throws -> DescribePlacementOutputResponse
    /// Returns an object describing a project.
    ///
    /// - Parameter DescribeProjectInput : [no documentation found]
    ///
    /// - Returns: `DescribeProjectOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    func describeProject(input: DescribeProjectInput) async throws -> DescribeProjectOutputResponse
    /// Removes a physical device from a placement.
    ///
    /// - Parameter DisassociateDeviceFromPlacementInput : [no documentation found]
    ///
    /// - Returns: `DisassociateDeviceFromPlacementOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `TooManyRequestsException` :
    func disassociateDeviceFromPlacement(input: DisassociateDeviceFromPlacementInput) async throws -> DisassociateDeviceFromPlacementOutputResponse
    /// Returns an object enumerating the devices in a placement.
    ///
    /// - Parameter GetDevicesInPlacementInput : [no documentation found]
    ///
    /// - Returns: `GetDevicesInPlacementOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    func getDevicesInPlacement(input: GetDevicesInPlacementInput) async throws -> GetDevicesInPlacementOutputResponse
    /// Lists the placement(s) of a project.
    ///
    /// - Parameter ListPlacementsInput : [no documentation found]
    ///
    /// - Returns: `ListPlacementsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    func listPlacements(input: ListPlacementsInput) async throws -> ListPlacementsOutputResponse
    /// Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    ///
    /// - Parameter ListProjectsInput : [no documentation found]
    ///
    /// - Returns: `ListProjectsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    func listProjects(input: ListProjectsInput) async throws -> ListProjectsOutputResponse
    /// Lists the tags (metadata key/value pairs) which you have assigned to the resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see [AWS Tagging Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags (metadata key/value pairs) from a resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
    ///
    /// - Parameter UpdatePlacementInput : [no documentation found]
    ///
    /// - Returns: `UpdatePlacementOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `TooManyRequestsException` :
    func updatePlacement(input: UpdatePlacementInput) async throws -> UpdatePlacementOutputResponse
    /// Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
    ///
    /// - Parameter UpdateProjectInput : [no documentation found]
    ///
    /// - Returns: `UpdateProjectOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` :
    /// - `InvalidRequestException` :
    /// - `ResourceNotFoundException` :
    /// - `TooManyRequestsException` :
    func updateProject(input: UpdateProjectInput) async throws -> UpdateProjectOutputResponse
}

public enum IoT1ClickProjectsClientTypes {}
