//
// Artist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct Artist: Codable {

    /** Unique identifier of this resource. Taken from the source system. */
    public let _id: Int

    /** REST API resource type or endpoint */
    public let apiModel: String

    /** REST API link for this resource */
    public let apiLink: String

    /** The name of this resource */
    public let title: String

    /** Whether the artist will display multiple names */
    public let hasAlsoKnownAs: Bool

    /** Description of the artist */
    public let introCopy: String?

    /** Unique identifier of the CITI agent records this artist represents */
    public let agentId: Int?

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
        case hasAlsoKnownAs = "has_also_known_as"
        case introCopy = "intro_copy"
        case agentId = "agent_id"
        case lastUpdatedSource = "last_updated_source"
        case lastUpdated = "last_updated"
        case timestamp
    }

}