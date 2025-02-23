// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Provide APIs to create and manage Amazon Connect Campaigns.
public protocol ConnectCampaignsClientProtocol {
    /// Creates a campaign for the specified Amazon Connect account. This API is idempotent.
    ///
    /// - Parameter CreateCampaignInput : The request for Create Campaign API.
    ///
    /// - Returns: `CreateCampaignOutputResponse` : The response for Create Campaign API
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ServiceQuotaExceededException` : Request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func createCampaign(input: CreateCampaignInput) async throws -> CreateCampaignOutputResponse
    /// Deletes a campaign from the specified Amazon Connect account.
    ///
    /// - Parameter DeleteCampaignInput : DeleteCampaignRequest
    ///
    /// - Returns: `DeleteCampaignOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteCampaign(input: DeleteCampaignInput) async throws -> DeleteCampaignOutputResponse
    /// Deletes a connect instance config from the specified AWS account.
    ///
    /// - Parameter DeleteConnectInstanceConfigInput : DeleteCampaignRequest
    ///
    /// - Returns: `DeleteConnectInstanceConfigOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidStateException` : The request could not be processed because of conflict in the current state.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteConnectInstanceConfig(input: DeleteConnectInstanceConfigInput) async throws -> DeleteConnectInstanceConfigOutputResponse
    /// Delete the Connect Campaigns onboarding job for the specified Amazon Connect instance.
    ///
    /// - Parameter DeleteInstanceOnboardingJobInput : The request for DeleteInstanceOnboardingJob API.
    ///
    /// - Returns: `DeleteInstanceOnboardingJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidStateException` : The request could not be processed because of conflict in the current state.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteInstanceOnboardingJob(input: DeleteInstanceOnboardingJobInput) async throws -> DeleteInstanceOnboardingJobOutputResponse
    /// Describes the specific campaign.
    ///
    /// - Parameter DescribeCampaignInput : DescribeCampaignRequests
    ///
    /// - Returns: `DescribeCampaignOutputResponse` : DescribeCampaignResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func describeCampaign(input: DescribeCampaignInput) async throws -> DescribeCampaignOutputResponse
    /// Get state of a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter GetCampaignStateInput : GetCampaignStateRequest
    ///
    /// - Returns: `GetCampaignStateOutputResponse` : GetCampaignStateResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getCampaignState(input: GetCampaignStateInput) async throws -> GetCampaignStateOutputResponse
    /// Get state of campaigns for the specified Amazon Connect account.
    ///
    /// - Parameter GetCampaignStateBatchInput : GetCampaignStateBatchRequest
    ///
    /// - Returns: `GetCampaignStateBatchOutputResponse` : GetCampaignStateBatchResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getCampaignStateBatch(input: GetCampaignStateBatchInput) async throws -> GetCampaignStateBatchOutputResponse
    /// Get the specific Connect instance config.
    ///
    /// - Parameter GetConnectInstanceConfigInput : GetConnectInstanceConfigRequest
    ///
    /// - Returns: `GetConnectInstanceConfigOutputResponse` : GetConnectInstanceConfigResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getConnectInstanceConfig(input: GetConnectInstanceConfigInput) async throws -> GetConnectInstanceConfigOutputResponse
    /// Get the specific instance onboarding job status.
    ///
    /// - Parameter GetInstanceOnboardingJobStatusInput : GetInstanceOnboardingJobStatusRequest
    ///
    /// - Returns: `GetInstanceOnboardingJobStatusOutputResponse` : GetInstanceOnboardingJobStatusResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getInstanceOnboardingJobStatus(input: GetInstanceOnboardingJobStatusInput) async throws -> GetInstanceOnboardingJobStatusOutputResponse
    /// Provides summary information about the campaigns under the specified Amazon Connect account.
    ///
    /// - Parameter ListCampaignsInput : ListCampaignsRequest
    ///
    /// - Returns: `ListCampaignsOutputResponse` : ListCampaignsResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listCampaigns(input: ListCampaignsInput) async throws -> ListCampaignsOutputResponse
    /// List tags for a resource.
    ///
    /// - Parameter ListTagsForResourceInput : ListTagsForResource
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : ListTagsForResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Pauses a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter PauseCampaignInput : PauseCampaignRequest
    ///
    /// - Returns: `PauseCampaignOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func pauseCampaign(input: PauseCampaignInput) async throws -> PauseCampaignOutputResponse
    /// Creates dials requests for the specified campaign Amazon Connect account. This API is idempotent.
    ///
    /// - Parameter PutDialRequestBatchInput : PutDialRequestBatchRequest
    ///
    /// - Returns: `PutDialRequestBatchOutputResponse` : PutDialRequestBatchResponse
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func putDialRequestBatch(input: PutDialRequestBatchInput) async throws -> PutDialRequestBatchOutputResponse
    /// Stops a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter ResumeCampaignInput : ResumeCampaignRequest
    ///
    /// - Returns: `ResumeCampaignOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func resumeCampaign(input: ResumeCampaignInput) async throws -> ResumeCampaignOutputResponse
    /// Starts a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter StartCampaignInput : StartCampaignRequest
    ///
    /// - Returns: `StartCampaignOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func startCampaign(input: StartCampaignInput) async throws -> StartCampaignOutputResponse
    /// Onboard the specific Amazon Connect instance to Connect Campaigns.
    ///
    /// - Parameter StartInstanceOnboardingJobInput : The request for StartInstanceOnboardingJob API.
    ///
    /// - Returns: `StartInstanceOnboardingJobOutputResponse` : The response for StartInstanceOnboardingJob API.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func startInstanceOnboardingJob(input: StartInstanceOnboardingJobInput) async throws -> StartInstanceOnboardingJobOutputResponse
    /// Stops a campaign for the specified Amazon Connect account.
    ///
    /// - Parameter StopCampaignInput : StopCampaignRequest
    ///
    /// - Returns: `StopCampaignOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `InvalidCampaignStateException` : The request could not be processed because of conflict in the current state of the campaign.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func stopCampaign(input: StopCampaignInput) async throws -> StopCampaignOutputResponse
    /// Tag a resource.
    ///
    /// - Parameter TagResourceInput : TagResourceRequest
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Untag a resource.
    ///
    /// - Parameter UntagResourceInput : UntagResourceRequest
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the dialer config of a campaign. This API is idempotent.
    ///
    /// - Parameter UpdateCampaignDialerConfigInput : UpdateCampaignDialerConfigRequest
    ///
    /// - Returns: `UpdateCampaignDialerConfigOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateCampaignDialerConfig(input: UpdateCampaignDialerConfigInput) async throws -> UpdateCampaignDialerConfigOutputResponse
    /// Updates the name of a campaign. This API is idempotent.
    ///
    /// - Parameter UpdateCampaignNameInput : UpdateCampaignNameRequest
    ///
    /// - Returns: `UpdateCampaignNameOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateCampaignName(input: UpdateCampaignNameInput) async throws -> UpdateCampaignNameOutputResponse
    /// Updates the outbound call config of a campaign. This API is idempotent.
    ///
    /// - Parameter UpdateCampaignOutboundCallConfigInput : UpdateCampaignOutboundCallConfigRequest
    ///
    /// - Returns: `UpdateCampaignOutboundCallConfigOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : The request could not be processed because of conflict in the current state of the resource.
    /// - `InternalServerException` : Request processing failed because of an error or failure with the service.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateCampaignOutboundCallConfig(input: UpdateCampaignOutboundCallConfigInput) async throws -> UpdateCampaignOutboundCallConfigOutputResponse
}

public enum ConnectCampaignsClientTypes {}
