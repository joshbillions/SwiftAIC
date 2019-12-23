//
// Section.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct Section: Codable {

    /** Unique identifier of this resource. Taken from the source system. */
    public let _id: Int

    /** REST API resource type or endpoint */
    public let apiModel: String

    /** REST API link for this resource */
    public let apiLink: String

    /** The name of this resource */
    public let title: String

    /** URL to the section */
    public let webUrl: String?

    /** An accession number parsed from the title or tombstone */
    public let accession: String?

    /** Version identifier as provided by Drupal */
    public let revision: Int?

    /** Drupal node id, unique only within the site of this publication */
    public let sourceId: Int?

    /** Number representing this section&#x27;s sort order */
    public let weight: Double?

    /** Unique identifier of the page on the website that represents the publication this section belongs to */
    public let genericPageId: Int?

    /** Unique identifier of the artwork with which this section is associated */
    public let artworkId: Int?

    /** Uniquer identifier of the parent section */
    public let parentId: Int?

    /** Name of the publication this section belongs to */
    public let publicationTitle: String?

    /** Unique identifier of the publication this section belongs to */
    public let publicationId: Int?

    /** Content of this section in plaintext */
    public let content: String?

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
        case webUrl = "web_url"
        case accession
        case revision
        case sourceId = "source_id"
        case weight
        case genericPageId = "generic_page_id"
        case artworkId = "artwork_id"
        case parentId = "parent_id"
        case publicationTitle = "publication_title"
        case publicationId = "publication_id"
        case content
        case lastUpdatedSource = "last_updated_source"
        case lastUpdated = "last_updated"
        case timestamp
    }

}