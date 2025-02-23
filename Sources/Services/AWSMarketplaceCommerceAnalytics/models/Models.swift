// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension MarketplaceCommerceAnalyticsClientTypes {
    public enum DataSetType: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case customerProfileByGeography
        case customerProfileByIndustry
        case customerProfileByRevenue
        case customerSubscriberAnnualSubscriptions
        case customerSubscriberHourlyMonthlySubscriptions
        case dailyBusinessCanceledProductSubscribers
        case dailyBusinessFees
        case dailyBusinessFreeTrialConversions
        case dailyBusinessNewInstances
        case dailyBusinessNewProductSubscribers
        case dailyBusinessUsageByInstanceType
        case disbursedAmountByAgeOfDisbursedFunds
        case disbursedAmountByAgeOfPastDueFunds
        case disbursedAmountByAgeOfUncollectedFunds
        case disbursedAmountByCustomerGeo
        case disbursedAmountByInstanceHours
        case disbursedAmountByProduct
        case disbursedAmountByProductWithUncollectedFunds
        case disbursedAmountByUncollectedFundsBreakdown
        case monthlyRevenueAnnualSubscriptions
        case monthlyRevenueBillingAndRevenueData
        case monthlyRevenueFieldDemonstrationUsage
        case monthlyRevenueFlexiblePaymentSchedule
        case salesCompensationBilledRevenue
        case usSalesAndUseTaxRecords
        case sdkUnknown(Swift.String)

        public static var allCases: [DataSetType] {
            return [
                .customerProfileByGeography,
                .customerProfileByIndustry,
                .customerProfileByRevenue,
                .customerSubscriberAnnualSubscriptions,
                .customerSubscriberHourlyMonthlySubscriptions,
                .dailyBusinessCanceledProductSubscribers,
                .dailyBusinessFees,
                .dailyBusinessFreeTrialConversions,
                .dailyBusinessNewInstances,
                .dailyBusinessNewProductSubscribers,
                .dailyBusinessUsageByInstanceType,
                .disbursedAmountByAgeOfDisbursedFunds,
                .disbursedAmountByAgeOfPastDueFunds,
                .disbursedAmountByAgeOfUncollectedFunds,
                .disbursedAmountByCustomerGeo,
                .disbursedAmountByInstanceHours,
                .disbursedAmountByProduct,
                .disbursedAmountByProductWithUncollectedFunds,
                .disbursedAmountByUncollectedFundsBreakdown,
                .monthlyRevenueAnnualSubscriptions,
                .monthlyRevenueBillingAndRevenueData,
                .monthlyRevenueFieldDemonstrationUsage,
                .monthlyRevenueFlexiblePaymentSchedule,
                .salesCompensationBilledRevenue,
                .usSalesAndUseTaxRecords,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .customerProfileByGeography: return "customer_profile_by_geography"
            case .customerProfileByIndustry: return "customer_profile_by_industry"
            case .customerProfileByRevenue: return "customer_profile_by_revenue"
            case .customerSubscriberAnnualSubscriptions: return "customer_subscriber_annual_subscriptions"
            case .customerSubscriberHourlyMonthlySubscriptions: return "customer_subscriber_hourly_monthly_subscriptions"
            case .dailyBusinessCanceledProductSubscribers: return "daily_business_canceled_product_subscribers"
            case .dailyBusinessFees: return "daily_business_fees"
            case .dailyBusinessFreeTrialConversions: return "daily_business_free_trial_conversions"
            case .dailyBusinessNewInstances: return "daily_business_new_instances"
            case .dailyBusinessNewProductSubscribers: return "daily_business_new_product_subscribers"
            case .dailyBusinessUsageByInstanceType: return "daily_business_usage_by_instance_type"
            case .disbursedAmountByAgeOfDisbursedFunds: return "disbursed_amount_by_age_of_disbursed_funds"
            case .disbursedAmountByAgeOfPastDueFunds: return "disbursed_amount_by_age_of_past_due_funds"
            case .disbursedAmountByAgeOfUncollectedFunds: return "disbursed_amount_by_age_of_uncollected_funds"
            case .disbursedAmountByCustomerGeo: return "disbursed_amount_by_customer_geo"
            case .disbursedAmountByInstanceHours: return "disbursed_amount_by_instance_hours"
            case .disbursedAmountByProduct: return "disbursed_amount_by_product"
            case .disbursedAmountByProductWithUncollectedFunds: return "disbursed_amount_by_product_with_uncollected_funds"
            case .disbursedAmountByUncollectedFundsBreakdown: return "disbursed_amount_by_uncollected_funds_breakdown"
            case .monthlyRevenueAnnualSubscriptions: return "monthly_revenue_annual_subscriptions"
            case .monthlyRevenueBillingAndRevenueData: return "monthly_revenue_billing_and_revenue_data"
            case .monthlyRevenueFieldDemonstrationUsage: return "monthly_revenue_field_demonstration_usage"
            case .monthlyRevenueFlexiblePaymentSchedule: return "monthly_revenue_flexible_payment_schedule"
            case .salesCompensationBilledRevenue: return "sales_compensation_billed_revenue"
            case .usSalesAndUseTaxRecords: return "us_sales_and_use_tax_records"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = DataSetType(rawValue: rawValue) ?? DataSetType.sdkUnknown(rawValue)
        }
    }
}

extension GenerateDataSetInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case customerDefinedValues
        case dataSetPublicationDate
        case dataSetType
        case destinationS3BucketName
        case destinationS3Prefix
        case roleNameArn
        case snsTopicArn
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let customerDefinedValues = customerDefinedValues {
            var customerDefinedValuesContainer = encodeContainer.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: .customerDefinedValues)
            for (dictKey0, customerDefinedValues0) in customerDefinedValues {
                try customerDefinedValuesContainer.encode(customerDefinedValues0, forKey: ClientRuntime.Key(stringValue: dictKey0))
            }
        }
        if let dataSetPublicationDate = self.dataSetPublicationDate {
            try encodeContainer.encodeTimestamp(dataSetPublicationDate, format: .epochSeconds, forKey: .dataSetPublicationDate)
        }
        if let dataSetType = self.dataSetType {
            try encodeContainer.encode(dataSetType.rawValue, forKey: .dataSetType)
        }
        if let destinationS3BucketName = self.destinationS3BucketName {
            try encodeContainer.encode(destinationS3BucketName, forKey: .destinationS3BucketName)
        }
        if let destinationS3Prefix = self.destinationS3Prefix {
            try encodeContainer.encode(destinationS3Prefix, forKey: .destinationS3Prefix)
        }
        if let roleNameArn = self.roleNameArn {
            try encodeContainer.encode(roleNameArn, forKey: .roleNameArn)
        }
        if let snsTopicArn = self.snsTopicArn {
            try encodeContainer.encode(snsTopicArn, forKey: .snsTopicArn)
        }
    }
}

extension GenerateDataSetInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/"
    }
}

/// Container for the parameters to the GenerateDataSet operation.
public struct GenerateDataSetInput: Swift.Equatable {
    /// (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file. These key-value pairs can be used to correlated responses with tracking information from other systems.
    public var customerDefinedValues: [Swift.String:Swift.String]?
    /// The date a data set was published. For daily data sets, provide a date with day-level granularity for the desired day. For monthly data sets except those with prefix disbursed_amount, provide a date with month-level granularity for the desired month (the day value will be ignored). For data sets with prefix disbursed_amount, provide a date with day-level granularity for the desired day. For these data sets we will look backwards in time over the range of 31 days until the first data set is found (the latest one).
    /// This member is required.
    public var dataSetPublicationDate: ClientRuntime.Date?
    /// The desired data set type.
    ///
    /// * customer_subscriber_hourly_monthly_subscriptions From 2017-09-15 to present: Available daily by 24:00 UTC.
    ///
    /// * customer_subscriber_annual_subscriptions From 2017-09-15 to present: Available daily by 24:00 UTC.
    ///
    /// * daily_business_usage_by_instance_type From 2017-09-15 to present: Available daily by 24:00 UTC.
    ///
    /// * daily_business_fees From 2017-09-15 to present: Available daily by 24:00 UTC.
    ///
    /// * daily_business_free_trial_conversions From 2017-09-15 to present: Available daily by 24:00 UTC.
    ///
    /// * daily_business_new_instances From 2017-09-15 to present: Available daily by 24:00 UTC.
    ///
    /// * daily_business_new_product_subscribers From 2017-09-15 to present: Available daily by 24:00 UTC.
    ///
    /// * daily_business_canceled_product_subscribers From 2017-09-15 to present: Available daily by 24:00 UTC.
    ///
    /// * monthly_revenue_billing_and_revenue_data From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior.
    ///
    /// * monthly_revenue_annual_subscriptions From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes up-front software charges (e.g. annual) from one month prior.
    ///
    /// * monthly_revenue_field_demonstration_usage From 2018-03-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.
    ///
    /// * monthly_revenue_flexible_payment_schedule From 2018-11-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.
    ///
    /// * disbursed_amount_by_product From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    ///
    /// * disbursed_amount_by_instance_hours From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    ///
    /// * disbursed_amount_by_customer_geo From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    ///
    /// * disbursed_amount_by_age_of_uncollected_funds From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    ///
    /// * disbursed_amount_by_age_of_disbursed_funds From 2017-09-15 to present: Available every 30 days by 24:00 UTC.
    ///
    /// * disbursed_amount_by_age_of_past_due_funds From 2018-04-07 to present: Available every 30 days by 24:00 UTC.
    ///
    /// * disbursed_amount_by_uncollected_funds_breakdown From 2019-10-04 to present: Available every 30 days by 24:00 UTC.
    ///
    /// * sales_compensation_billed_revenue From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.
    ///
    /// * us_sales_and_use_tax_records From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.
    ///
    /// * disbursed_amount_by_product_with_uncollected_funds This data set is deprecated. Download related reports from AMMP instead!
    ///
    /// * customer_profile_by_industry This data set is deprecated. Download related reports from AMMP instead!
    ///
    /// * customer_profile_by_revenue This data set is deprecated. Download related reports from AMMP instead!
    ///
    /// * customer_profile_by_geography This data set is deprecated. Download related reports from AMMP instead!
    /// This member is required.
    public var dataSetType: MarketplaceCommerceAnalyticsClientTypes.DataSetType?
    /// The name (friendly name, not ARN) of the destination S3 bucket.
    /// This member is required.
    public var destinationS3BucketName: Swift.String?
    /// (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
    public var destinationS3Prefix: Swift.String?
    /// The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
    /// This member is required.
    public var roleNameArn: Swift.String?
    /// Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
    /// This member is required.
    public var snsTopicArn: Swift.String?

    public init(
        customerDefinedValues: [Swift.String:Swift.String]? = nil,
        dataSetPublicationDate: ClientRuntime.Date? = nil,
        dataSetType: MarketplaceCommerceAnalyticsClientTypes.DataSetType? = nil,
        destinationS3BucketName: Swift.String? = nil,
        destinationS3Prefix: Swift.String? = nil,
        roleNameArn: Swift.String? = nil,
        snsTopicArn: Swift.String? = nil
    )
    {
        self.customerDefinedValues = customerDefinedValues
        self.dataSetPublicationDate = dataSetPublicationDate
        self.dataSetType = dataSetType
        self.destinationS3BucketName = destinationS3BucketName
        self.destinationS3Prefix = destinationS3Prefix
        self.roleNameArn = roleNameArn
        self.snsTopicArn = snsTopicArn
    }
}

struct GenerateDataSetInputBody: Swift.Equatable {
    let dataSetType: MarketplaceCommerceAnalyticsClientTypes.DataSetType?
    let dataSetPublicationDate: ClientRuntime.Date?
    let roleNameArn: Swift.String?
    let destinationS3BucketName: Swift.String?
    let destinationS3Prefix: Swift.String?
    let snsTopicArn: Swift.String?
    let customerDefinedValues: [Swift.String:Swift.String]?
}

extension GenerateDataSetInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case customerDefinedValues
        case dataSetPublicationDate
        case dataSetType
        case destinationS3BucketName
        case destinationS3Prefix
        case roleNameArn
        case snsTopicArn
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSetTypeDecoded = try containerValues.decodeIfPresent(MarketplaceCommerceAnalyticsClientTypes.DataSetType.self, forKey: .dataSetType)
        dataSetType = dataSetTypeDecoded
        let dataSetPublicationDateDecoded = try containerValues.decodeTimestampIfPresent(.epochSeconds, forKey: .dataSetPublicationDate)
        dataSetPublicationDate = dataSetPublicationDateDecoded
        let roleNameArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .roleNameArn)
        roleNameArn = roleNameArnDecoded
        let destinationS3BucketNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .destinationS3BucketName)
        destinationS3BucketName = destinationS3BucketNameDecoded
        let destinationS3PrefixDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .destinationS3Prefix)
        destinationS3Prefix = destinationS3PrefixDecoded
        let snsTopicArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .snsTopicArn)
        snsTopicArn = snsTopicArnDecoded
        let customerDefinedValuesContainer = try containerValues.decodeIfPresent([Swift.String: Swift.String?].self, forKey: .customerDefinedValues)
        var customerDefinedValuesDecoded0: [Swift.String:Swift.String]? = nil
        if let customerDefinedValuesContainer = customerDefinedValuesContainer {
            customerDefinedValuesDecoded0 = [Swift.String:Swift.String]()
            for (key0, optionalvalue0) in customerDefinedValuesContainer {
                if let optionalvalue0 = optionalvalue0 {
                    customerDefinedValuesDecoded0?[key0] = optionalvalue0
                }
            }
        }
        customerDefinedValues = customerDefinedValuesDecoded0
    }
}

public enum GenerateDataSetOutputError: ClientRuntime.HttpResponseErrorBinding {
    public static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "MarketplaceCommerceAnalyticsException": return try await MarketplaceCommerceAnalyticsException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension GenerateDataSetOutputResponse: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: GenerateDataSetOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.dataSetRequestId = output.dataSetRequestId
        } else {
            self.dataSetRequestId = nil
        }
    }
}

/// Container for the result of the GenerateDataSet operation.
public struct GenerateDataSetOutputResponse: Swift.Equatable {
    /// A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be used to correlate a request with notifications from the SNS topic.
    public var dataSetRequestId: Swift.String?

    public init(
        dataSetRequestId: Swift.String? = nil
    )
    {
        self.dataSetRequestId = dataSetRequestId
    }
}

struct GenerateDataSetOutputResponseBody: Swift.Equatable {
    let dataSetRequestId: Swift.String?
}

extension GenerateDataSetOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case dataSetRequestId
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSetRequestIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .dataSetRequestId)
        dataSetRequestId = dataSetRequestIdDecoded
    }
}

extension MarketplaceCommerceAnalyticsException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: MarketplaceCommerceAnalyticsExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// This exception is thrown when an internal service error occurs.
public struct MarketplaceCommerceAnalyticsException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// This message describes details of the error.
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "MarketplaceCommerceAnalyticsException" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct MarketplaceCommerceAnalyticsExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension MarketplaceCommerceAnalyticsExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension StartSupportDataExportInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case customerDefinedValues
        case dataSetType
        case destinationS3BucketName
        case destinationS3Prefix
        case fromDate
        case roleNameArn
        case snsTopicArn
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let customerDefinedValues = customerDefinedValues {
            var customerDefinedValuesContainer = encodeContainer.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: .customerDefinedValues)
            for (dictKey0, customerDefinedValues0) in customerDefinedValues {
                try customerDefinedValuesContainer.encode(customerDefinedValues0, forKey: ClientRuntime.Key(stringValue: dictKey0))
            }
        }
        if let dataSetType = self.dataSetType {
            try encodeContainer.encode(dataSetType.rawValue, forKey: .dataSetType)
        }
        if let destinationS3BucketName = self.destinationS3BucketName {
            try encodeContainer.encode(destinationS3BucketName, forKey: .destinationS3BucketName)
        }
        if let destinationS3Prefix = self.destinationS3Prefix {
            try encodeContainer.encode(destinationS3Prefix, forKey: .destinationS3Prefix)
        }
        if let fromDate = self.fromDate {
            try encodeContainer.encodeTimestamp(fromDate, format: .epochSeconds, forKey: .fromDate)
        }
        if let roleNameArn = self.roleNameArn {
            try encodeContainer.encode(roleNameArn, forKey: .roleNameArn)
        }
        if let snsTopicArn = self.snsTopicArn {
            try encodeContainer.encode(snsTopicArn, forKey: .snsTopicArn)
        }
    }
}

extension StartSupportDataExportInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/"
    }
}

/// Container for the parameters to the StartSupportDataExport operation.
public struct StartSupportDataExportInput: Swift.Equatable {
    /// (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file.
    public var customerDefinedValues: [Swift.String:Swift.String]?
    /// Specifies the data set type to be written to the output csv file. The data set types customer_support_contacts_data and test_customer_support_contacts_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid, Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title, Country Code, ZIP Code, Operation Type, and Operation Time.
    ///
    /// * customer_support_contacts_data Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from_date parameter.
    ///
    /// * test_customer_support_contacts_data An example data set containing static test data in the same format as customer_support_contacts_data
    /// This member is required.
    public var dataSetType: MarketplaceCommerceAnalyticsClientTypes.SupportDataSetType?
    /// The name (friendly name, not ARN) of the destination S3 bucket.
    /// This member is required.
    public var destinationS3BucketName: Swift.String?
    /// (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
    public var destinationS3Prefix: Swift.String?
    /// The start date from which to retrieve the data set in UTC. This parameter only affects the customer_support_contacts_data data set type.
    /// This member is required.
    public var fromDate: ClientRuntime.Date?
    /// The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
    /// This member is required.
    public var roleNameArn: Swift.String?
    /// Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
    /// This member is required.
    public var snsTopicArn: Swift.String?

    public init(
        customerDefinedValues: [Swift.String:Swift.String]? = nil,
        dataSetType: MarketplaceCommerceAnalyticsClientTypes.SupportDataSetType? = nil,
        destinationS3BucketName: Swift.String? = nil,
        destinationS3Prefix: Swift.String? = nil,
        fromDate: ClientRuntime.Date? = nil,
        roleNameArn: Swift.String? = nil,
        snsTopicArn: Swift.String? = nil
    )
    {
        self.customerDefinedValues = customerDefinedValues
        self.dataSetType = dataSetType
        self.destinationS3BucketName = destinationS3BucketName
        self.destinationS3Prefix = destinationS3Prefix
        self.fromDate = fromDate
        self.roleNameArn = roleNameArn
        self.snsTopicArn = snsTopicArn
    }
}

struct StartSupportDataExportInputBody: Swift.Equatable {
    let dataSetType: MarketplaceCommerceAnalyticsClientTypes.SupportDataSetType?
    let fromDate: ClientRuntime.Date?
    let roleNameArn: Swift.String?
    let destinationS3BucketName: Swift.String?
    let destinationS3Prefix: Swift.String?
    let snsTopicArn: Swift.String?
    let customerDefinedValues: [Swift.String:Swift.String]?
}

extension StartSupportDataExportInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case customerDefinedValues
        case dataSetType
        case destinationS3BucketName
        case destinationS3Prefix
        case fromDate
        case roleNameArn
        case snsTopicArn
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSetTypeDecoded = try containerValues.decodeIfPresent(MarketplaceCommerceAnalyticsClientTypes.SupportDataSetType.self, forKey: .dataSetType)
        dataSetType = dataSetTypeDecoded
        let fromDateDecoded = try containerValues.decodeTimestampIfPresent(.epochSeconds, forKey: .fromDate)
        fromDate = fromDateDecoded
        let roleNameArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .roleNameArn)
        roleNameArn = roleNameArnDecoded
        let destinationS3BucketNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .destinationS3BucketName)
        destinationS3BucketName = destinationS3BucketNameDecoded
        let destinationS3PrefixDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .destinationS3Prefix)
        destinationS3Prefix = destinationS3PrefixDecoded
        let snsTopicArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .snsTopicArn)
        snsTopicArn = snsTopicArnDecoded
        let customerDefinedValuesContainer = try containerValues.decodeIfPresent([Swift.String: Swift.String?].self, forKey: .customerDefinedValues)
        var customerDefinedValuesDecoded0: [Swift.String:Swift.String]? = nil
        if let customerDefinedValuesContainer = customerDefinedValuesContainer {
            customerDefinedValuesDecoded0 = [Swift.String:Swift.String]()
            for (key0, optionalvalue0) in customerDefinedValuesContainer {
                if let optionalvalue0 = optionalvalue0 {
                    customerDefinedValuesDecoded0?[key0] = optionalvalue0
                }
            }
        }
        customerDefinedValues = customerDefinedValuesDecoded0
    }
}

public enum StartSupportDataExportOutputError: ClientRuntime.HttpResponseErrorBinding {
    public static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "MarketplaceCommerceAnalyticsException": return try await MarketplaceCommerceAnalyticsException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension StartSupportDataExportOutputResponse: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: StartSupportDataExportOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.dataSetRequestId = output.dataSetRequestId
        } else {
            self.dataSetRequestId = nil
        }
    }
}

/// Container for the result of the StartSupportDataExport operation.
public struct StartSupportDataExportOutputResponse: Swift.Equatable {
    /// A unique identifier representing a specific request to the StartSupportDataExport operation. This identifier can be used to correlate a request with notifications from the SNS topic.
    public var dataSetRequestId: Swift.String?

    public init(
        dataSetRequestId: Swift.String? = nil
    )
    {
        self.dataSetRequestId = dataSetRequestId
    }
}

struct StartSupportDataExportOutputResponseBody: Swift.Equatable {
    let dataSetRequestId: Swift.String?
}

extension StartSupportDataExportOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case dataSetRequestId
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSetRequestIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .dataSetRequestId)
        dataSetRequestId = dataSetRequestIdDecoded
    }
}

extension MarketplaceCommerceAnalyticsClientTypes {
    public enum SupportDataSetType: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case customerSupportContactsData
        case testCustomerSupportContactsData
        case sdkUnknown(Swift.String)

        public static var allCases: [SupportDataSetType] {
            return [
                .customerSupportContactsData,
                .testCustomerSupportContactsData,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .customerSupportContactsData: return "customer_support_contacts_data"
            case .testCustomerSupportContactsData: return "test_customer_support_contacts_data"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = SupportDataSetType(rawValue: rawValue) ?? SupportDataSetType.sdkUnknown(rawValue)
        }
    }
}
