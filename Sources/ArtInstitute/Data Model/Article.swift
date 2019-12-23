//
// Article.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct Article: Codable {

    /** Unique identifier of this resource. Taken from the source system. */
    public let _id: Int

    /** REST API resource type or endpoint */
    public let apiModel: String

    /** REST API link for this resource */
    public let apiLink: String

    /** The name of this resource */
    public let title: String

    /** Whether the article has been published */
    public let isPublished: Bool

    /** The date the article was published */
    public let date: Date?

    /** The text of the article */
    public let copy: String?

    /** The date a page was, or will be, published */
    public let publishStartDate: Date?

    /** The date a page was, or will be, unpublished */
    public let publishEndDate: Date?

    /** Date and time the resource was updated in the source system */
    public let lastUpdatedSource: Date?

    /** Date and time the record was updated in the aggregator database */
    public let lastUpdated: Date?

    /** Date and time the record was updated in the aggregator search index */
    public let timestamp: Date?

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case apiModel = "api_model"
        case apiLink = "api_link"
        case title
        case isPublished = "is_published"
        case date
        case copy
        case publishStartDate = "publish_start_date"
        case publishEndDate = "publish_end_date"
        case lastUpdatedSource = "last_updated_source"
        case lastUpdated = "last_updated"
        case timestamp
    }

}