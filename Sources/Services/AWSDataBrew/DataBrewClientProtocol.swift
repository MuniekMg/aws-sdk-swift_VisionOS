// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Glue DataBrew is a visual, cloud-scale data-preparation service. DataBrew simplifies data preparation tasks, targeting data issues that are hard to spot and time-consuming to fix. DataBrew empowers users of all technical levels to visualize the data and perform one-click data transformations, with no coding required.
public protocol DataBrewClientProtocol {
    /// Deletes one or more versions of a recipe at a time. The entire request will be rejected if:
    ///
    /// * The recipe does not exist.
    ///
    /// * There is an invalid version identifier in the list of versions.
    ///
    /// * The version list is empty.
    ///
    /// * The version list size exceeds 50.
    ///
    /// * The version list contains duplicate entries.
    ///
    ///
    /// The request will complete successfully, but with partial failures, if:
    ///
    /// * A version does not exist.
    ///
    /// * A version is being used by a job.
    ///
    /// * You specify LATEST_WORKING, but it's being used by a project.
    ///
    /// * The version fails to be deleted.
    ///
    ///
    /// The LATEST_WORKING version will only be deleted if the recipe has no other versions. If you try to delete LATEST_WORKING while other versions exist (or if they can't be deleted), then LATEST_WORKING will be listed as partial failure in the response.
    ///
    /// - Parameter BatchDeleteRecipeVersionInput : [no documentation found]
    ///
    /// - Returns: `BatchDeleteRecipeVersionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func batchDeleteRecipeVersion(input: BatchDeleteRecipeVersionInput) async throws -> BatchDeleteRecipeVersionOutputResponse
    /// Creates a new DataBrew dataset.
    ///
    /// - Parameter CreateDatasetInput : [no documentation found]
    ///
    /// - Returns: `CreateDatasetOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access to the specified resource was denied.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func createDataset(input: CreateDatasetInput) async throws -> CreateDatasetOutputResponse
    /// Creates a new job to analyze a dataset and create its data profile.
    ///
    /// - Parameter CreateProfileJobInput : [no documentation found]
    ///
    /// - Returns: `CreateProfileJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access to the specified resource was denied.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func createProfileJob(input: CreateProfileJobInput) async throws -> CreateProfileJobOutputResponse
    /// Creates a new DataBrew project.
    ///
    /// - Parameter CreateProjectInput : [no documentation found]
    ///
    /// - Returns: `CreateProjectOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal service failure occurred.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func createProject(input: CreateProjectInput) async throws -> CreateProjectOutputResponse
    /// Creates a new DataBrew recipe.
    ///
    /// - Parameter CreateRecipeInput : [no documentation found]
    ///
    /// - Returns: `CreateRecipeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func createRecipe(input: CreateRecipeInput) async throws -> CreateRecipeOutputResponse
    /// Creates a new job to transform input data, using steps defined in an existing Glue DataBrew recipe
    ///
    /// - Parameter CreateRecipeJobInput : [no documentation found]
    ///
    /// - Returns: `CreateRecipeJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access to the specified resource was denied.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func createRecipeJob(input: CreateRecipeJobInput) async throws -> CreateRecipeJobOutputResponse
    /// Creates a new ruleset that can be used in a profile job to validate the data quality of a dataset.
    ///
    /// - Parameter CreateRulesetInput : [no documentation found]
    ///
    /// - Returns: `CreateRulesetOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func createRuleset(input: CreateRulesetInput) async throws -> CreateRulesetOutputResponse
    /// Creates a new schedule for one or more DataBrew jobs. Jobs can be run at a specific date and time, or at regular intervals.
    ///
    /// - Parameter CreateScheduleInput : [no documentation found]
    ///
    /// - Returns: `CreateScheduleOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func createSchedule(input: CreateScheduleInput) async throws -> CreateScheduleOutputResponse
    /// Deletes a dataset from DataBrew.
    ///
    /// - Parameter DeleteDatasetInput : [no documentation found]
    ///
    /// - Returns: `DeleteDatasetOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func deleteDataset(input: DeleteDatasetInput) async throws -> DeleteDatasetOutputResponse
    /// Deletes the specified DataBrew job.
    ///
    /// - Parameter DeleteJobInput : [no documentation found]
    ///
    /// - Returns: `DeleteJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func deleteJob(input: DeleteJobInput) async throws -> DeleteJobOutputResponse
    /// Deletes an existing DataBrew project.
    ///
    /// - Parameter DeleteProjectInput : [no documentation found]
    ///
    /// - Returns: `DeleteProjectOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func deleteProject(input: DeleteProjectInput) async throws -> DeleteProjectOutputResponse
    /// Deletes a single version of a DataBrew recipe.
    ///
    /// - Parameter DeleteRecipeVersionInput : [no documentation found]
    ///
    /// - Returns: `DeleteRecipeVersionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func deleteRecipeVersion(input: DeleteRecipeVersionInput) async throws -> DeleteRecipeVersionOutputResponse
    /// Deletes a ruleset.
    ///
    /// - Parameter DeleteRulesetInput : [no documentation found]
    ///
    /// - Returns: `DeleteRulesetOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func deleteRuleset(input: DeleteRulesetInput) async throws -> DeleteRulesetOutputResponse
    /// Deletes the specified DataBrew schedule.
    ///
    /// - Parameter DeleteScheduleInput : [no documentation found]
    ///
    /// - Returns: `DeleteScheduleOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func deleteSchedule(input: DeleteScheduleInput) async throws -> DeleteScheduleOutputResponse
    /// Returns the definition of a specific DataBrew dataset.
    ///
    /// - Parameter DescribeDatasetInput : [no documentation found]
    ///
    /// - Returns: `DescribeDatasetOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func describeDataset(input: DescribeDatasetInput) async throws -> DescribeDatasetOutputResponse
    /// Returns the definition of a specific DataBrew job.
    ///
    /// - Parameter DescribeJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func describeJob(input: DescribeJobInput) async throws -> DescribeJobOutputResponse
    /// Represents one run of a DataBrew job.
    ///
    /// - Parameter DescribeJobRunInput : [no documentation found]
    ///
    /// - Returns: `DescribeJobRunOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func describeJobRun(input: DescribeJobRunInput) async throws -> DescribeJobRunOutputResponse
    /// Returns the definition of a specific DataBrew project.
    ///
    /// - Parameter DescribeProjectInput : [no documentation found]
    ///
    /// - Returns: `DescribeProjectOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func describeProject(input: DescribeProjectInput) async throws -> DescribeProjectOutputResponse
    /// Returns the definition of a specific DataBrew recipe corresponding to a particular version.
    ///
    /// - Parameter DescribeRecipeInput : [no documentation found]
    ///
    /// - Returns: `DescribeRecipeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func describeRecipe(input: DescribeRecipeInput) async throws -> DescribeRecipeOutputResponse
    /// Retrieves detailed information about the ruleset.
    ///
    /// - Parameter DescribeRulesetInput : [no documentation found]
    ///
    /// - Returns: `DescribeRulesetOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func describeRuleset(input: DescribeRulesetInput) async throws -> DescribeRulesetOutputResponse
    /// Returns the definition of a specific DataBrew schedule.
    ///
    /// - Parameter DescribeScheduleInput : [no documentation found]
    ///
    /// - Returns: `DescribeScheduleOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func describeSchedule(input: DescribeScheduleInput) async throws -> DescribeScheduleOutputResponse
    /// Lists all of the DataBrew datasets.
    ///
    /// - Parameter ListDatasetsInput : [no documentation found]
    ///
    /// - Returns: `ListDatasetsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ValidationException` : The input parameters for this request failed validation.
    func listDatasets(input: ListDatasetsInput) async throws -> ListDatasetsOutputResponse
    /// Lists all of the previous runs of a particular DataBrew job.
    ///
    /// - Parameter ListJobRunsInput : [no documentation found]
    ///
    /// - Returns: `ListJobRunsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func listJobRuns(input: ListJobRunsInput) async throws -> ListJobRunsOutputResponse
    /// Lists all of the DataBrew jobs that are defined.
    ///
    /// - Parameter ListJobsInput : [no documentation found]
    ///
    /// - Returns: `ListJobsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ValidationException` : The input parameters for this request failed validation.
    func listJobs(input: ListJobsInput) async throws -> ListJobsOutputResponse
    /// Lists all of the DataBrew projects that are defined.
    ///
    /// - Parameter ListProjectsInput : [no documentation found]
    ///
    /// - Returns: `ListProjectsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ValidationException` : The input parameters for this request failed validation.
    func listProjects(input: ListProjectsInput) async throws -> ListProjectsOutputResponse
    /// Lists all of the DataBrew recipes that are defined.
    ///
    /// - Parameter ListRecipesInput : [no documentation found]
    ///
    /// - Returns: `ListRecipesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ValidationException` : The input parameters for this request failed validation.
    func listRecipes(input: ListRecipesInput) async throws -> ListRecipesOutputResponse
    /// Lists the versions of a particular DataBrew recipe, except for LATEST_WORKING.
    ///
    /// - Parameter ListRecipeVersionsInput : [no documentation found]
    ///
    /// - Returns: `ListRecipeVersionsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ValidationException` : The input parameters for this request failed validation.
    func listRecipeVersions(input: ListRecipeVersionsInput) async throws -> ListRecipeVersionsOutputResponse
    /// List all rulesets available in the current account or rulesets associated with a specific resource (dataset).
    ///
    /// - Parameter ListRulesetsInput : [no documentation found]
    ///
    /// - Returns: `ListRulesetsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func listRulesets(input: ListRulesetsInput) async throws -> ListRulesetsOutputResponse
    /// Lists the DataBrew schedules that are defined.
    ///
    /// - Parameter ListSchedulesInput : [no documentation found]
    ///
    /// - Returns: `ListSchedulesOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ValidationException` : The input parameters for this request failed validation.
    func listSchedules(input: ListSchedulesInput) async throws -> ListSchedulesOutputResponse
    /// Lists all the tags for a DataBrew resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service failure occurred.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Publishes a new version of a DataBrew recipe.
    ///
    /// - Parameter PublishRecipeInput : [no documentation found]
    ///
    /// - Returns: `PublishRecipeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func publishRecipe(input: PublishRecipeInput) async throws -> PublishRecipeOutputResponse
    /// Performs a recipe step within an interactive DataBrew session that's currently open.
    ///
    /// - Parameter SendProjectSessionActionInput : [no documentation found]
    ///
    /// - Returns: `SendProjectSessionActionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func sendProjectSessionAction(input: SendProjectSessionActionInput) async throws -> SendProjectSessionActionOutputResponse
    /// Runs a DataBrew job.
    ///
    /// - Parameter StartJobRunInput : [no documentation found]
    ///
    /// - Returns: `StartJobRunOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func startJobRun(input: StartJobRunInput) async throws -> StartJobRunOutputResponse
    /// Creates an interactive session, enabling you to manipulate data in a DataBrew project.
    ///
    /// - Parameter StartProjectSessionInput : [no documentation found]
    ///
    /// - Returns: `StartProjectSessionOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func startProjectSession(input: StartProjectSessionInput) async throws -> StartProjectSessionOutputResponse
    /// Stops a particular run of a job.
    ///
    /// - Parameter StopJobRunInput : [no documentation found]
    ///
    /// - Returns: `StopJobRunOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func stopJobRun(input: StopJobRunInput) async throws -> StopJobRunOutputResponse
    /// Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe, job, or schedule.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service failure occurred.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes metadata tags from a DataBrew resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service failure occurred.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Modifies the definition of an existing DataBrew dataset.
    ///
    /// - Parameter UpdateDatasetInput : [no documentation found]
    ///
    /// - Returns: `UpdateDatasetOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access to the specified resource was denied.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func updateDataset(input: UpdateDatasetInput) async throws -> UpdateDatasetOutputResponse
    /// Modifies the definition of an existing profile job.
    ///
    /// - Parameter UpdateProfileJobInput : [no documentation found]
    ///
    /// - Returns: `UpdateProfileJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access to the specified resource was denied.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func updateProfileJob(input: UpdateProfileJobInput) async throws -> UpdateProfileJobOutputResponse
    /// Modifies the definition of an existing DataBrew project.
    ///
    /// - Parameter UpdateProjectInput : [no documentation found]
    ///
    /// - Returns: `UpdateProjectOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func updateProject(input: UpdateProjectInput) async throws -> UpdateProjectOutputResponse
    /// Modifies the definition of the LATEST_WORKING version of a DataBrew recipe.
    ///
    /// - Parameter UpdateRecipeInput : [no documentation found]
    ///
    /// - Returns: `UpdateRecipeOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func updateRecipe(input: UpdateRecipeInput) async throws -> UpdateRecipeOutputResponse
    /// Modifies the definition of an existing DataBrew recipe job.
    ///
    /// - Parameter UpdateRecipeJobInput : [no documentation found]
    ///
    /// - Returns: `UpdateRecipeJobOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access to the specified resource was denied.
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func updateRecipeJob(input: UpdateRecipeJobInput) async throws -> UpdateRecipeJobOutputResponse
    /// Updates specified ruleset.
    ///
    /// - Parameter UpdateRulesetInput : [no documentation found]
    ///
    /// - Returns: `UpdateRulesetOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func updateRuleset(input: UpdateRulesetInput) async throws -> UpdateRulesetOutputResponse
    /// Modifies the definition of an existing DataBrew schedule.
    ///
    /// - Parameter UpdateScheduleInput : [no documentation found]
    ///
    /// - Returns: `UpdateScheduleOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : One or more resources can't be found.
    /// - `ServiceQuotaExceededException` : A service quota is exceeded.
    /// - `ValidationException` : The input parameters for this request failed validation.
    func updateSchedule(input: UpdateScheduleInput) async throws -> UpdateScheduleOutputResponse
}

public enum DataBrewClientTypes {}
