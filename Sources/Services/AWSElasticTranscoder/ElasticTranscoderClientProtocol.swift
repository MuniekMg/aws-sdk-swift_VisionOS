// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Elastic Transcoder Service The AWS Elastic Transcoder Service.
public protocol ElasticTranscoderClientProtocol {
    /// The CancelJob operation cancels an unfinished job. You can only cancel a job that has a status of Submitted. To prevent a pipeline from starting to process a job while you're getting the job identifier, use [UpdatePipelineStatus] to temporarily pause the pipeline.
    ///
    /// - Parameter CancelJobInput : The CancelJobRequest structure.
    ///
    /// - Returns: `CancelJobOutputResponse` : The response body contains a JSON object. If the job is successfully canceled, the value of Success is true.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceInUseException` : The resource you are attempting to change is in use. For example, you are attempting to delete a pipeline that is currently in use.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func cancelJob(input: CancelJobInput) async throws -> CancelJobOutputResponse
    /// When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified plus information about the job that is created. If you have specified more than one output for your jobs (for example, one output for the Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to list the jobs (as opposed to the AWS Console).
    ///
    /// - Parameter CreateJobInput : The CreateJobRequest structure.
    ///
    /// - Returns: `CreateJobOutputResponse` : The CreateJobResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `LimitExceededException` : Too many operations for a given AWS account. For example, the number of pipelines exceeds the maximum allowed.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func createJob(input: CreateJobInput) async throws -> CreateJobOutputResponse
    /// The CreatePipeline operation creates a pipeline with settings that you specify.
    ///
    /// - Parameter CreatePipelineInput : The CreatePipelineRequest structure.
    ///
    /// - Returns: `CreatePipelineOutputResponse` : When you create a pipeline, Elastic Transcoder returns the values that you specified in the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `LimitExceededException` : Too many operations for a given AWS account. For example, the number of pipelines exceeds the maximum allowed.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func createPipeline(input: CreatePipelineInput) async throws -> CreatePipelineOutputResponse
    /// The CreatePreset operation creates a preset with settings that you specify. Elastic Transcoder checks the CreatePreset settings to ensure that they meet Elastic Transcoder requirements and to determine whether they comply with H.264 standards. If your settings are not valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response (ValidationException) and does not create the preset. If the settings are valid for Elastic Transcoder but aren't strictly compliant with the H.264 standard, Elastic Transcoder creates the preset and returns a warning message in the response. This helps you determine whether your settings comply with the H.264 standard while giving you greater flexibility with respect to the video that Elastic Transcoder produces. Elastic Transcoder uses the H.264 video-compression format. For more information, see the International Telecommunication Union publication Recommendation ITU-T H.264: Advanced video coding for generic audiovisual services.
    ///
    /// - Parameter CreatePresetInput : The CreatePresetRequest structure.
    ///
    /// - Returns: `CreatePresetOutputResponse` : The CreatePresetResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `LimitExceededException` : Too many operations for a given AWS account. For example, the number of pipelines exceeds the maximum allowed.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func createPreset(input: CreatePresetInput) async throws -> CreatePresetOutputResponse
    /// The DeletePipeline operation removes a pipeline. You can only delete a pipeline that has never been used or that is not currently in use (doesn't contain any active jobs). If the pipeline is currently in use, DeletePipeline returns an error.
    ///
    /// - Parameter DeletePipelineInput : The DeletePipelineRequest structure.
    ///
    /// - Returns: `DeletePipelineOutputResponse` : The DeletePipelineResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceInUseException` : The resource you are attempting to change is in use. For example, you are attempting to delete a pipeline that is currently in use.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func deletePipeline(input: DeletePipelineInput) async throws -> DeletePipelineOutputResponse
    /// The DeletePreset operation removes a preset that you've added in an AWS region. You can't delete the default presets that are included with Elastic Transcoder.
    ///
    /// - Parameter DeletePresetInput : The DeletePresetRequest structure.
    ///
    /// - Returns: `DeletePresetOutputResponse` : The DeletePresetResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func deletePreset(input: DeletePresetInput) async throws -> DeletePresetOutputResponse
    /// The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline. Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains one element for each job that satisfies the search criteria.
    ///
    /// - Parameter ListJobsByPipelineInput : The ListJobsByPipelineRequest structure.
    ///
    /// - Returns: `ListJobsByPipelineOutputResponse` : The ListJobsByPipelineResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func listJobsByPipeline(input: ListJobsByPipelineInput) async throws -> ListJobsByPipelineOutputResponse
    /// The ListJobsByStatus operation gets a list of jobs that have a specified status. The response body contains one element for each job that satisfies the search criteria.
    ///
    /// - Parameter ListJobsByStatusInput : The ListJobsByStatusRequest structure.
    ///
    /// - Returns: `ListJobsByStatusOutputResponse` : The ListJobsByStatusResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func listJobsByStatus(input: ListJobsByStatusInput) async throws -> ListJobsByStatusOutputResponse
    /// The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
    ///
    /// - Parameter ListPipelinesInput : The ListPipelineRequest structure.
    ///
    /// - Returns: `ListPipelinesOutputResponse` : A list of the pipelines associated with the current AWS account.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func listPipelines(input: ListPipelinesInput) async throws -> ListPipelinesOutputResponse
    /// The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region.
    ///
    /// - Parameter ListPresetsInput : The ListPresetsRequest structure.
    ///
    /// - Returns: `ListPresetsOutputResponse` : The ListPresetsResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func listPresets(input: ListPresetsInput) async throws -> ListPresetsOutputResponse
    /// The ReadJob operation returns detailed information about a job.
    ///
    /// - Parameter ReadJobInput : The ReadJobRequest structure.
    ///
    /// - Returns: `ReadJobOutputResponse` : The ReadJobResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func readJob(input: ReadJobInput) async throws -> ReadJobOutputResponse
    /// The ReadPipeline operation gets detailed information about a pipeline.
    ///
    /// - Parameter ReadPipelineInput : The ReadPipelineRequest structure.
    ///
    /// - Returns: `ReadPipelineOutputResponse` : The ReadPipelineResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func readPipeline(input: ReadPipelineInput) async throws -> ReadPipelineOutputResponse
    /// The ReadPreset operation gets detailed information about a preset.
    ///
    /// - Parameter ReadPresetInput : The ReadPresetRequest structure.
    ///
    /// - Returns: `ReadPresetOutputResponse` : The ReadPresetResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func readPreset(input: ReadPresetInput) async throws -> ReadPresetOutputResponse
    /// The TestRole operation tests the IAM role used to create the pipeline. The TestRole action lets you determine whether the IAM role you are using has sufficient permissions to let Elastic Transcoder perform tasks associated with the transcoding process. The action attempts to assume the specified IAM role, checks read access to the input and output buckets, and tries to send a test notification to Amazon SNS topics that you specify.
    @available(*, deprecated)
    ///
    /// - Parameter TestRoleInput : The TestRoleRequest structure.
    ///
    /// - Returns: `TestRoleOutputResponse` : The TestRoleResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func testRole(input: TestRoleInput) async throws -> TestRoleOutputResponse
    /// Use the UpdatePipeline operation to update settings for a pipeline. When you change pipeline settings, your changes take effect immediately. Jobs that you have already submitted and that Elastic Transcoder has not started to process are affected in addition to jobs that you submit after you change settings.
    ///
    /// - Parameter UpdatePipelineInput : The UpdatePipelineRequest structure.
    ///
    /// - Returns: `UpdatePipelineOutputResponse` : When you update a pipeline, Elastic Transcoder returns the values that you specified in the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceInUseException` : The resource you are attempting to change is in use. For example, you are attempting to delete a pipeline that is currently in use.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func updatePipeline(input: UpdatePipelineInput) async throws -> UpdatePipelineOutputResponse
    /// With the UpdatePipelineNotifications operation, you can update Amazon Simple Notification Service (Amazon SNS) notifications for a pipeline. When you update notifications for a pipeline, Elastic Transcoder returns the values that you specified in the request.
    ///
    /// - Parameter UpdatePipelineNotificationsInput : The UpdatePipelineNotificationsRequest structure.
    ///
    /// - Returns: `UpdatePipelineNotificationsOutputResponse` : The UpdatePipelineNotificationsResponse structure.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceInUseException` : The resource you are attempting to change is in use. For example, you are attempting to delete a pipeline that is currently in use.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func updatePipelineNotifications(input: UpdatePipelineNotificationsInput) async throws -> UpdatePipelineNotificationsOutputResponse
    /// The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the pipeline stops or restarts the processing of jobs. Changing the pipeline status is useful if you want to cancel one or more jobs. You can't cancel jobs after Elastic Transcoder has started processing them; if you pause the pipeline to which you submitted the jobs, you have more time to get the job IDs for the jobs that you want to cancel, and to send a [CancelJob] request.
    ///
    /// - Parameter UpdatePipelineStatusInput : The UpdatePipelineStatusRequest structure.
    ///
    /// - Returns: `UpdatePipelineStatusOutputResponse` : When you update status for a pipeline, Elastic Transcoder returns the values that you specified in the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request was not signed correctly.
    /// - `IncompatibleVersionException` : [no documentation found]
    /// - `InternalServiceException` : Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    /// - `ResourceInUseException` : The resource you are attempting to change is in use. For example, you are attempting to delete a pipeline that is currently in use.
    /// - `ResourceNotFoundException` : The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.
    /// - `ValidationException` : One or more required parameter values were not provided in the request.
    func updatePipelineStatus(input: UpdatePipelineStatusInput) async throws -> UpdatePipelineStatusOutputResponse
}

public enum ElasticTranscoderClientTypes {}
