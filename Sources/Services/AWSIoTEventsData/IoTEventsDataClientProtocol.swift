// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. You can use IoT Events Data API commands to send inputs to detectors, list detectors, and view or update a detector's status. For more information, see [What is IoT Events?](https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html) in the IoT Events Developer Guide.
public protocol IoTEventsDataClientProtocol {
    /// Acknowledges one or more alarms. The alarms change to the ACKNOWLEDGED state after you acknowledge them.
    ///
    /// - Parameter BatchAcknowledgeAlarmInput : [no documentation found]
    ///
    /// - Returns: `BatchAcknowledgeAlarmOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func batchAcknowledgeAlarm(input: BatchAcknowledgeAlarmInput) async throws -> BatchAcknowledgeAlarmOutputResponse
    /// Deletes one or more detectors that were created. When a detector is deleted, its state will be cleared and the detector will be removed from the list of detectors. The deleted detector will no longer appear if referenced in the [ListDetectors](https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_ListDetectors.html) API call.
    ///
    /// - Parameter BatchDeleteDetectorInput : [no documentation found]
    ///
    /// - Returns: `BatchDeleteDetectorOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func batchDeleteDetector(input: BatchDeleteDetectorInput) async throws -> BatchDeleteDetectorOutputResponse
    /// Disables one or more alarms. The alarms change to the DISABLED state after you disable them.
    ///
    /// - Parameter BatchDisableAlarmInput : [no documentation found]
    ///
    /// - Returns: `BatchDisableAlarmOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func batchDisableAlarm(input: BatchDisableAlarmInput) async throws -> BatchDisableAlarmOutputResponse
    /// Enables one or more alarms. The alarms change to the NORMAL state after you enable them.
    ///
    /// - Parameter BatchEnableAlarmInput : [no documentation found]
    ///
    /// - Returns: `BatchEnableAlarmOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func batchEnableAlarm(input: BatchEnableAlarmInput) async throws -> BatchEnableAlarmOutputResponse
    /// Sends a set of messages to the IoT Events system. Each message payload is transformed into the input you specify ("inputName") and ingested into any detectors that monitor that input. If multiple messages are sent, the order in which the messages are processed isn't guaranteed. To guarantee ordering, you must send messages one at a time and wait for a successful response.
    ///
    /// - Parameter BatchPutMessageInput : [no documentation found]
    ///
    /// - Returns: `BatchPutMessageOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func batchPutMessage(input: BatchPutMessageInput) async throws -> BatchPutMessageOutputResponse
    /// Resets one or more alarms. The alarms return to the NORMAL state after you reset them.
    ///
    /// - Parameter BatchResetAlarmInput : [no documentation found]
    ///
    /// - Returns: `BatchResetAlarmOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func batchResetAlarm(input: BatchResetAlarmInput) async throws -> BatchResetAlarmOutputResponse
    /// Changes one or more alarms to the snooze mode. The alarms change to the SNOOZE_DISABLED state after you set them to the snooze mode.
    ///
    /// - Parameter BatchSnoozeAlarmInput : [no documentation found]
    ///
    /// - Returns: `BatchSnoozeAlarmOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func batchSnoozeAlarm(input: BatchSnoozeAlarmInput) async throws -> BatchSnoozeAlarmOutputResponse
    /// Updates the state, variable values, and timer settings of one or more detectors (instances) of a specified detector model.
    ///
    /// - Parameter BatchUpdateDetectorInput : [no documentation found]
    ///
    /// - Returns: `BatchUpdateDetectorOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func batchUpdateDetector(input: BatchUpdateDetectorInput) async throws -> BatchUpdateDetectorOutputResponse
    /// Retrieves information about an alarm.
    ///
    /// - Parameter DescribeAlarmInput : [no documentation found]
    ///
    /// - Returns: `DescribeAlarmOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ResourceNotFoundException` : The resource was not found.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func describeAlarm(input: DescribeAlarmInput) async throws -> DescribeAlarmOutputResponse
    /// Returns information about the specified detector (instance).
    ///
    /// - Parameter DescribeDetectorInput : [no documentation found]
    ///
    /// - Returns: `DescribeDetectorOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ResourceNotFoundException` : The resource was not found.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func describeDetector(input: DescribeDetectorInput) async throws -> DescribeDetectorOutputResponse
    /// Lists one or more alarms. The operation returns only the metadata associated with each alarm.
    ///
    /// - Parameter ListAlarmsInput : [no documentation found]
    ///
    /// - Returns: `ListAlarmsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ResourceNotFoundException` : The resource was not found.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func listAlarms(input: ListAlarmsInput) async throws -> ListAlarmsOutputResponse
    /// Lists detectors (the instances of a detector model).
    ///
    /// - Parameter ListDetectorsInput : [no documentation found]
    ///
    /// - Returns: `ListDetectorsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailureException` : An internal failure occurred.
    /// - `InvalidRequestException` : The request was invalid.
    /// - `ResourceNotFoundException` : The resource was not found.
    /// - `ServiceUnavailableException` : The service is currently unavailable.
    /// - `ThrottlingException` : The request could not be completed due to throttling.
    func listDetectors(input: ListDetectorsInput) async throws -> ListDetectorsOutputResponse
}

public enum IoTEventsDataClientTypes {}
