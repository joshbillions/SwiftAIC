//
// Product.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct Product: Codable {

    /** Unique identifier of this resource. Taken from the source system. */
    public let _id: Int

    /** REST API resource type or endpoint */
    public let apiModel: String

    /** REST API link for this resource */
    public let apiLink: String

    /** The name of this resource */
    public let title: String

    /** The sortable version of the name of this product */
    public let titleSort: String?

    /** Whether this product is currently available on the shop&#x27;s website */
    public let isActive: Bool?

    /** Unique identifier of this product&#x27;s parent */
    public let parentId: Int?

    /** Identifier of this product&#x27;s category */
    public let categoryId: Int?

    /** Numeric product identification code of a machine-readable barcode */
    public let sku: String?

    /** Numeric product identification code of a machine-readable barcode, when the customer sku differs from our internal one */
    public let externalSku: String?

    /** URL of an image for this product */
    public let imageUrl: URL?

    /** URL of this product in the shop */
    public let webUrl: String?

    /** Explanation of what this product is */
    public let _description: String?

    /** Used for sorting in the shop&#x27;s website, specifically in the &#x27;Featured&#x27; sort mode, which is the default. This sort mode is two-part: first, items are sorted by their &#x60;priority&#x60; ascending; then as a secondary step, items are sorted by the number of items sold, descending. */
    public let priority: Int?

    /** Number indicating how much the product costs the customer */
    public let price: Double?

    /** Whether the item is an AIC product */
    public let aicCollection: Bool?

    /** Whether the item can be wrapped in a gift box */
    public let giftBox: Bool?

    /** Whether the product is a holiday item */
    public let holiday: Bool?

    /** Whether the product is an architectural item */
    public let architecture: Bool?

    /** Whether the item is glass */
    public let glass: Bool?

    /** Unique identifiers of the artists represented in this item */
    public let artistIds: [Int]?

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
        case titleSort = "title_sort"
        case isActive = "is_active"
        case parentId = "parent_id"
        case categoryId = "category_id"
        case sku
        case externalSku = "external_sku"
        case imageUrl = "image_url"
        case webUrl = "web_url"
        case _description = "description"
        case priority
        case price
        case aicCollection = "aic_collection"
        case giftBox = "gift_box"
        case holiday
        case architecture
        case glass
        case artistIds = "artist_ids"
        case lastUpdatedSource = "last_updated_source"
        case lastUpdated = "last_updated"
        case timestamp
    }

}
