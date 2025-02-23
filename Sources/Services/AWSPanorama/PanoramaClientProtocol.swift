// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Panorama Overview This is the AWS Panorama API Reference. For an introduction to the service, see [What is AWS Panorama?](https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html) in the AWS Panorama Developer Guide.
public protocol PanoramaClientProtocol {
    /// Creates an application instance and deploys it to a device.
    ///
    /// - Parameter CreateApplicationInstanceInput : [no documentation found]
    ///
    /// - Returns: `CreateApplicationInstanceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ServiceQuotaExceededException` : The request would cause a limit to be exceeded.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createApplicationInstance(input: CreateApplicationInstanceInput) async throws -> CreateApplicationInstanceOutputResponse
    /// Creates a job to run on a device. A job can update a device's software or reboot it.
    ///
    /// - Parameter CreateJobForDevicesInput : [no documentation found]
    ///
    /// - Returns: `CreateJobForDevicesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createJobForDevices(input: CreateJobForDevicesInput) async throws -> CreateJobForDevicesOutputResponse
    /// Creates a camera stream node.
    ///
    /// - Parameter CreateNodeFromTemplateJobInput : [no documentation found]
    ///
    /// - Returns: `CreateNodeFromTemplateJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createNodeFromTemplateJob(input: CreateNodeFromTemplateJobInput) async throws -> CreateNodeFromTemplateJobOutputResponse
    /// Creates a package and storage location in an Amazon S3 access point.
    ///
    /// - Parameter CreatePackageInput : [no documentation found]
    ///
    /// - Returns: `CreatePackageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createPackage(input: CreatePackageInput) async throws -> CreatePackageOutputResponse
    /// Imports a node package.
    ///
    /// - Parameter CreatePackageImportJobInput : [no documentation found]
    ///
    /// - Returns: `CreatePackageImportJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createPackageImportJob(input: CreatePackageImportJobInput) async throws -> CreatePackageImportJobOutputResponse
    /// Deletes a device.
    ///
    /// - Parameter DeleteDeviceInput : [no documentation found]
    ///
    /// - Returns: `DeleteDeviceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func deleteDevice(input: DeleteDeviceInput) async throws -> DeleteDeviceOutputResponse
    /// Deletes a package. To delete a package, you need permission to call s3:DeleteObject in addition to permissions for the AWS Panorama API.
    ///
    /// - Parameter DeletePackageInput : [no documentation found]
    ///
    /// - Returns: `DeletePackageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func deletePackage(input: DeletePackageInput) async throws -> DeletePackageOutputResponse
    /// Deregisters a package version.
    ///
    /// - Parameter DeregisterPackageVersionInput : [no documentation found]
    ///
    /// - Returns: `DeregisterPackageVersionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func deregisterPackageVersion(input: DeregisterPackageVersionInput) async throws -> DeregisterPackageVersionOutputResponse
    /// Returns information about an application instance on a device.
    ///
    /// - Parameter DescribeApplicationInstanceInput : [no documentation found]
    ///
    /// - Returns: `DescribeApplicationInstanceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeApplicationInstance(input: DescribeApplicationInstanceInput) async throws -> DescribeApplicationInstanceOutputResponse
    /// Returns information about an application instance's configuration manifest.
    ///
    /// - Parameter DescribeApplicationInstanceDetailsInput : [no documentation found]
    ///
    /// - Returns: `DescribeApplicationInstanceDetailsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeApplicationInstanceDetails(input: DescribeApplicationInstanceDetailsInput) async throws -> DescribeApplicationInstanceDetailsOutputResponse
    /// Returns information about a device.
    ///
    /// - Parameter DescribeDeviceInput : [no documentation found]
    ///
    /// - Returns: `DescribeDeviceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeDevice(input: DescribeDeviceInput) async throws -> DescribeDeviceOutputResponse
    /// Returns information about a device job.
    ///
    /// - Parameter DescribeDeviceJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeDeviceJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeDeviceJob(input: DescribeDeviceJobInput) async throws -> DescribeDeviceJobOutputResponse
    /// Returns information about a node.
    ///
    /// - Parameter DescribeNodeInput : [no documentation found]
    ///
    /// - Returns: `DescribeNodeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeNode(input: DescribeNodeInput) async throws -> DescribeNodeOutputResponse
    /// Returns information about a job to create a camera stream node.
    ///
    /// - Parameter DescribeNodeFromTemplateJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeNodeFromTemplateJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeNodeFromTemplateJob(input: DescribeNodeFromTemplateJobInput) async throws -> DescribeNodeFromTemplateJobOutputResponse
    /// Returns information about a package.
    ///
    /// - Parameter DescribePackageInput : [no documentation found]
    ///
    /// - Returns: `DescribePackageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describePackage(input: DescribePackageInput) async throws -> DescribePackageOutputResponse
    /// Returns information about a package import job.
    ///
    /// - Parameter DescribePackageImportJobInput : [no documentation found]
    ///
    /// - Returns: `DescribePackageImportJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describePackageImportJob(input: DescribePackageImportJobInput) async throws -> DescribePackageImportJobOutputResponse
    /// Returns information about a package version.
    ///
    /// - Parameter DescribePackageVersionInput : [no documentation found]
    ///
    /// - Returns: `DescribePackageVersionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describePackageVersion(input: DescribePackageVersionInput) async throws -> DescribePackageVersionOutputResponse
    /// Returns a list of application instance dependencies.
    ///
    /// - Parameter ListApplicationInstanceDependenciesInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationInstanceDependenciesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    func listApplicationInstanceDependencies(input: ListApplicationInstanceDependenciesInput) async throws -> ListApplicationInstanceDependenciesOutputResponse
    /// Returns a list of application node instances.
    ///
    /// - Parameter ListApplicationInstanceNodeInstancesInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationInstanceNodeInstancesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    func listApplicationInstanceNodeInstances(input: ListApplicationInstanceNodeInstancesInput) async throws -> ListApplicationInstanceNodeInstancesOutputResponse
    /// Returns a list of application instances.
    ///
    /// - Parameter ListApplicationInstancesInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationInstancesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    func listApplicationInstances(input: ListApplicationInstancesInput) async throws -> ListApplicationInstancesOutputResponse
    /// Returns a list of devices.
    ///
    /// - Parameter ListDevicesInput : [no documentation found]
    ///
    /// - Returns: `ListDevicesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listDevices(input: ListDevicesInput) async throws -> ListDevicesOutputResponse
    /// Returns a list of jobs.
    ///
    /// - Parameter ListDevicesJobsInput : [no documentation found]
    ///
    /// - Returns: `ListDevicesJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listDevicesJobs(input: ListDevicesJobsInput) async throws -> ListDevicesJobsOutputResponse
    /// Returns a list of camera stream node jobs.
    ///
    /// - Parameter ListNodeFromTemplateJobsInput : [no documentation found]
    ///
    /// - Returns: `ListNodeFromTemplateJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listNodeFromTemplateJobs(input: ListNodeFromTemplateJobsInput) async throws -> ListNodeFromTemplateJobsOutputResponse
    /// Returns a list of nodes.
    ///
    /// - Parameter ListNodesInput : [no documentation found]
    ///
    /// - Returns: `ListNodesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listNodes(input: ListNodesInput) async throws -> ListNodesOutputResponse
    /// Returns a list of package import jobs.
    ///
    /// - Parameter ListPackageImportJobsInput : [no documentation found]
    ///
    /// - Returns: `ListPackageImportJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listPackageImportJobs(input: ListPackageImportJobsInput) async throws -> ListPackageImportJobsOutputResponse
    /// Returns a list of packages.
    ///
    /// - Parameter ListPackagesInput : [no documentation found]
    ///
    /// - Returns: `ListPackagesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listPackages(input: ListPackagesInput) async throws -> ListPackagesOutputResponse
    /// Returns a list of tags for a resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Creates a device and returns a configuration archive. The configuration archive is a ZIP file that contains a provisioning certificate that is valid for 5 minutes. Name the configuration archive certificates-omni_device-name.zip and transfer it to the device within 5 minutes. Use the included USB storage device and connect it to the USB 3.0 port next to the HDMI output.
    ///
    /// - Parameter ProvisionDeviceInput : [no documentation found]
    ///
    /// - Returns: `ProvisionDeviceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ServiceQuotaExceededException` : The request would cause a limit to be exceeded.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func provisionDevice(input: ProvisionDeviceInput) async throws -> ProvisionDeviceOutputResponse
    /// Registers a package version.
    ///
    /// - Parameter RegisterPackageVersionInput : [no documentation found]
    ///
    /// - Returns: `RegisterPackageVersionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func registerPackageVersion(input: RegisterPackageVersionInput) async throws -> RegisterPackageVersionOutputResponse
    /// Removes an application instance.
    ///
    /// - Parameter RemoveApplicationInstanceInput : [no documentation found]
    ///
    /// - Returns: `RemoveApplicationInstanceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func removeApplicationInstance(input: RemoveApplicationInstanceInput) async throws -> RemoveApplicationInstanceOutputResponse
    /// Signal camera nodes to stop or resume.
    ///
    /// - Parameter SignalApplicationInstanceNodeInstancesInput : [no documentation found]
    ///
    /// - Returns: `SignalApplicationInstanceNodeInstancesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ServiceQuotaExceededException` : The request would cause a limit to be exceeded.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func signalApplicationInstanceNodeInstances(input: SignalApplicationInstanceNodeInstancesInput) async throws -> SignalApplicationInstanceNodeInstancesOutputResponse
    /// Tags a resource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from a resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a device's metadata.
    ///
    /// - Parameter UpdateDeviceMetadataInput : [no documentation found]
    ///
    /// - Returns: `UpdateDeviceMetadataOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func updateDeviceMetadata(input: UpdateDeviceMetadataInput) async throws -> UpdateDeviceMetadataOutputResponse
}

public enum PanoramaClientTypes {}
