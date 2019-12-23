//
// DigitalCatalog.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct DigitalCatalog: Codable {

    /** Unique identifier of this resource. Taken from the source system. */
    public let _id: Int

    /** REST API resource type or endpoint */
    public let apiModel: String

    /** REST API link for this resource */
    public let apiLink: String

    /** The name of this resource */
    public let title: String

    /** Whether the page has been published */
    public let isPublished: Bool?

    /** The type of page this record represents */
    public let type: String?

    /** The URL to this page on our website */
    public let webUrl: String?

    /** A human-readable string used in the URL */
    public let slug: String?

    /** The URL of an image representing this page */
    public let imageUrl: URL?

    /** A brief description of the page used in listings */
    public let listingDescription: String?

    /** A brief description of the page used in mobile and meta tags */
    public let shortDescription: String?

    /** The text of the page */
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
        case type
        case webUrl = "web_url"
        case slug
        case imageUrl = "image_url"
        case listingDescription = "listing_description"
        case shortDescription = "short_description"
        case copy
        case publishStartDate = "publish_start_date"
        case publishEndDate = "publish_end_date"
        case lastUpdatedSource = "last_updated_source"
        case lastUpdated = "last_updated"
        case timestamp
    }

}
