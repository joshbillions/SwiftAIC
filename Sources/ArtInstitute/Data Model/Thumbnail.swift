//
//  File.swift
//  
//
//  Created by Josh Billions on 12/23/19.
//

import Foundation

public struct Thumbnail: Codable {
    let url: String
    let type: ThumbnailType
    let lqip: String
    let width, height: Int
    let altText: String

    enum CodingKeys: String, CodingKey {
        case url, type, lqip, width, height
        case altText = "alt_text"
    }
    
}

enum ThumbnailType: String, Codable {
    case iiif = "iiif"
}
