//
//  File.swift
//  
//
//  Created by Josh Billions on 12/14/19.
//

import Foundation
import Combine

class API {

    private var session: URLSession = .shared
    private var decoder: JSONDecoder

    public init() {
        decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
    }

    public func getArtworks(ids: [Int]? = nil, limit: Int? = nil, page: Int? = nil, fields: [String]? = nil, include: [SubresourceType]? = nil) -> AnyPublisher<ArtworkResponse, Error> {

        var urlComponents = URLComponents(string:"https://aggregator-data.artic.edu/api/v1/artworks")!

        let items: [String: Any?] = [
            "ids": ids,
            "limit": limit,
            "page": page,
            "fields": fields,
            "include": include
        ]

        urlComponents.queryItems = queryItems(withItems: items)

        guard let url = urlComponents.url else {
            return Fail(error: ArtInstituteError.badURL).eraseToAnyPublisher()
        }

        let urlRequest = URLRequest(url: url)
        return session.dataTaskPublisher(for: urlRequest)
            .tryMap { output in
                if let response = output.response as? HTTPURLResponse, response.statusCode != 200 {
                    throw ArtInstituteError.badResponse
                }
                return output.data
        }
        .decode(type: ArtworkResponse.self, decoder: decoder)
        .eraseToAnyPublisher()
    }

    private func queryItems(withItems items: [String: Any?]) -> [URLQueryItem] {
        var queryItems = [URLQueryItem]()

        for (key, value) in items {
            guard let value = value else { continue }
            if let intValue = value as? Int {
                queryItems.append(URLQueryItem(name: key, value: "\(intValue)"))
            } else if let stringArray = value as? [String] {
                // AIC is expecting CSV
                var csvString = ""
                stringArray.forEach({csvString.append("\($0),")})
                queryItems.append(URLQueryItem(name: key, value: csvString))
            } else if let subresourceArray = value as? [SubresourceType] {
                var csvString = ""
                subresourceArray.forEach({csvString.append("\($0.rawValue),")})
                csvString = "\(csvString.dropLast())"
                queryItems.append(URLQueryItem(name: key, value: csvString))
            }
        }

        return queryItems
    }

}
