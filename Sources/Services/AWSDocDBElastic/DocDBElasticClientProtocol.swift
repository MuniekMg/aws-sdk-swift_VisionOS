// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The new Amazon Elastic DocumentDB service endpoint.
public protocol DocDBElasticClientProtocol {
    /// Creates a new Elastic DocumentDB cluster and returns its Cluster structure.
    ///
    /// - Parameter CreateClusterInput : [no documentation found]
    ///
    /// - Returns: `CreateClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `ConflictException` : There was an access conflict.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ServiceQuotaExceededException` : The service quota for the action was exceeded.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutputResponse
    /// Creates a snapshot of a cluster.
    ///
    /// - Parameter CreateClusterSnapshotInput : [no documentation found]
    ///
    /// - Returns: `CreateClusterSnapshotOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `ConflictException` : There was an access conflict.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ServiceQuotaExceededException` : The service quota for the action was exceeded.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func createClusterSnapshot(input: CreateClusterSnapshotInput) async throws -> CreateClusterSnapshotOutputResponse
    /// Delete a Elastic DocumentDB cluster.
    ///
    /// - Parameter DeleteClusterInput : [no documentation found]
    ///
    /// - Returns: `DeleteClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `ConflictException` : There was an access conflict.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func deleteCluster(input: DeleteClusterInput) async throws -> DeleteClusterOutputResponse
    /// Delete a Elastic DocumentDB snapshot.
    ///
    /// - Parameter DeleteClusterSnapshotInput : [no documentation found]
    ///
    /// - Returns: `DeleteClusterSnapshotOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `ConflictException` : There was an access conflict.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func deleteClusterSnapshot(input: DeleteClusterSnapshotInput) async throws -> DeleteClusterSnapshotOutputResponse
    /// Returns information about a specific Elastic DocumentDB cluster.
    ///
    /// - Parameter GetClusterInput : [no documentation found]
    ///
    /// - Returns: `GetClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func getCluster(input: GetClusterInput) async throws -> GetClusterOutputResponse
    /// Returns information about a specific Elastic DocumentDB snapshot
    ///
    /// - Parameter GetClusterSnapshotInput : [no documentation found]
    ///
    /// - Returns: `GetClusterSnapshotOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func getClusterSnapshot(input: GetClusterSnapshotInput) async throws -> GetClusterSnapshotOutputResponse
    /// Returns information about provisioned Elastic DocumentDB clusters.
    ///
    /// - Parameter ListClustersInput : [no documentation found]
    ///
    /// - Returns: `ListClustersOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func listClusters(input: ListClustersInput) async throws -> ListClustersOutputResponse
    /// Returns information about Elastic DocumentDB snapshots for a specified cluster.
    ///
    /// - Parameter ListClusterSnapshotsInput : [no documentation found]
    ///
    /// - Returns: `ListClusterSnapshotsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func listClusterSnapshots(input: ListClusterSnapshotsInput) async throws -> ListClusterSnapshotsOutputResponse
    /// Lists all tags on a Elastic DocumentDB resource
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Restores a Elastic DocumentDB cluster from a snapshot.
    ///
    /// - Parameter RestoreClusterFromSnapshotInput : [no documentation found]
    ///
    /// - Returns: `RestoreClusterFromSnapshotOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `ConflictException` : There was an access conflict.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ServiceQuotaExceededException` : The service quota for the action was exceeded.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func restoreClusterFromSnapshot(input: RestoreClusterFromSnapshotInput) async throws -> RestoreClusterFromSnapshotOutputResponse
    /// Adds metadata tags to a Elastic DocumentDB resource
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes metadata tags to a Elastic DocumentDB resource
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Modifies a Elastic DocumentDB cluster. This includes updating admin-username/password, upgrading API version setting up a backup window and maintenance window
    ///
    /// - Parameter UpdateClusterInput : [no documentation found]
    ///
    /// - Returns: `UpdateClusterOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : An exception that occurs when there are not sufficient permissions to perform an action.
    /// - `ConflictException` : There was an access conflict.
    /// - `InternalServerException` : There was an internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be located.
    /// - `ThrottlingException` : ThrottlingException will be thrown when request was denied due to request throttling.
    /// - `ValidationException` : A structure defining a validation exception.
    func updateCluster(input: UpdateClusterInput) async throws -> UpdateClusterOutputResponse
}

public enum DocDBElasticClientTypes {}
