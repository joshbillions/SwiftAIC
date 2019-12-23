//
// WebExhibitionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class WebExhibitionsAPI {
    /**
     A list of all web-exhibitions sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webExhibitionsGet(completion: @escaping ((_ data: [Exhibition]?,_ error: Error?) -> Void)) {
        webExhibitionsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all web-exhibitions sorted by last updated date in descending order.
     - GET /web-exhibitions
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "is_published" : { },
  "header_copy" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "exhibition_message" : { },
  "list_description" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "exhibition_id" : { },
  "api_link" : { },
  "id" : { },
  "last_updated_source" : { },
  "is_featured" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "is_published" : { },
  "header_copy" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "exhibition_message" : { },
  "list_description" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "exhibition_id" : { },
  "api_link" : { },
  "id" : { },
  "last_updated_source" : { },
  "is_featured" : { },
  "timestamp" : { }
} ]}]

     - returns: RequestBuilder<[Exhibition]> 
     */
    open class func webExhibitionsGetWithRequestBuilder() -> RequestBuilder<[Exhibition]> {
        let path = "/web-exhibitions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Exhibition]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single web-exhibition by the given identifier.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webExhibitionsIdGet(_id: String, completion: @escaping ((_ data: [Exhibition]?,_ error: Error?) -> Void)) {
        webExhibitionsIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single web-exhibition by the given identifier.
     - GET /web-exhibitions/{id}
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "is_published" : { },
  "header_copy" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "exhibition_message" : { },
  "list_description" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "exhibition_id" : { },
  "api_link" : { },
  "id" : { },
  "last_updated_source" : { },
  "is_featured" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "is_published" : { },
  "header_copy" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "exhibition_message" : { },
  "list_description" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "exhibition_id" : { },
  "api_link" : { },
  "id" : { },
  "last_updated_source" : { },
  "is_featured" : { },
  "timestamp" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[Exhibition]> 
     */
    open class func webExhibitionsIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[Exhibition]> {
        var path = "/web-exhibitions/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Exhibition]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search web-exhibitions data in the aggregator. 
     - parameter q: (query) Your search query (optional)     - parameter query: (query) For complex queries, you can pass Elasticsearch domain syntax queries here (optional)     - parameter sort: (query) Used in conjunction with &#x60;query&#x60; (optional)     - parameter from: (query) Starting point of results. Pagination via Elasticsearch conventions (optional)     - parameter size: (query) Number of results to return. Pagination via Elasticsearch conventions (optional)     - parameter facets: (query) A comma-separated list of &#x27;count&#x27; aggregation facets to include in the results. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func webExhibitionsSearchGet(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil, completion: @escaping ((_ data: [SearchResult]?,_ error: Error?) -> Void)) {
        webExhibitionsSearchGetWithRequestBuilder(q: q, query: query, sort: sort, from: from, size: size, facets: facets).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search web-exhibitions data in the aggregator. 
     - GET /web-exhibitions/search
     - examples: [{contentType=application/json, example=[ {
  "api_id" : { },
  "thumbnail" : { },
  "api_model" : { },
  "is_boosted" : { },
  "api_link" : { },
  "id" : { },
  "_score" : { },
  "title" : { },
  "timestamp" : { }
}, {
  "api_id" : { },
  "thumbnail" : { },
  "api_model" : { },
  "is_boosted" : { },
  "api_link" : { },
  "id" : { },
  "_score" : { },
  "title" : { },
  "timestamp" : { }
} ]}]
     - parameter q: (query) Your search query (optional)     - parameter query: (query) For complex queries, you can pass Elasticsearch domain syntax queries here (optional)     - parameter sort: (query) Used in conjunction with &#x60;query&#x60; (optional)     - parameter from: (query) Starting point of results. Pagination via Elasticsearch conventions (optional)     - parameter size: (query) Number of results to return. Pagination via Elasticsearch conventions (optional)     - parameter facets: (query) A comma-separated list of &#x27;count&#x27; aggregation facets to include in the results. (optional)

     - returns: RequestBuilder<[SearchResult]> 
     */
    open class func webExhibitionsSearchGetWithRequestBuilder(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil) -> RequestBuilder<[SearchResult]> {
        let path = "/web-exhibitions/search"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "q": q, 
                        "query": query, 
                        "sort": sort, 
                        "from": from, 
                        "size": size, 
                        "facets": facets
        ])

        let requestBuilder: RequestBuilder<[SearchResult]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
