//
// DefaultAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class DefaultAPI {
    /**
     A list of all sites sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sitesGet(completion: @escaping ((_ data: [Site]?,_ error: Error?) -> Void)) {
        sitesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all sites sorted by last updated date in descending order.
     - GET /sites
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "exhibition_ids" : { },
  "description" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "artist_ids" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "artist_titles" : { },
  "api_link" : { },
  "exhibition_titles" : { },
  "artwork_titles" : { },
  "artwork_ids" : { },
  "id" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "exhibition_ids" : { },
  "description" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "artist_ids" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "artist_titles" : { },
  "api_link" : { },
  "exhibition_titles" : { },
  "artwork_titles" : { },
  "artwork_ids" : { },
  "id" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]

     - returns: RequestBuilder<[Site]> 
     */
    open class func sitesGetWithRequestBuilder() -> RequestBuilder<[Site]> {
        let path = "/sites"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Site]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single site by the given identifier.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sitesIdGet(_id: String, completion: @escaping ((_ data: [Site]?,_ error: Error?) -> Void)) {
        sitesIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single site by the given identifier.
     - GET /sites/{id}
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "exhibition_ids" : { },
  "description" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "artist_ids" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "artist_titles" : { },
  "api_link" : { },
  "exhibition_titles" : { },
  "artwork_titles" : { },
  "artwork_ids" : { },
  "id" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "exhibition_ids" : { },
  "description" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "artist_ids" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "artist_titles" : { },
  "api_link" : { },
  "exhibition_titles" : { },
  "artwork_titles" : { },
  "artwork_ids" : { },
  "id" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[Site]> 
     */
    open class func sitesIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[Site]> {
        var path = "/sites/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Site]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search sites data in the aggregator. 
     - parameter q: (query) Your search query (optional)     - parameter query: (query) For complex queries, you can pass Elasticsearch domain syntax queries here (optional)     - parameter sort: (query) Used in conjunction with &#x60;query&#x60; (optional)     - parameter from: (query) Starting point of results. Pagination via Elasticsearch conventions (optional)     - parameter size: (query) Number of results to return. Pagination via Elasticsearch conventions (optional)     - parameter facets: (query) A comma-separated list of &#x27;count&#x27; aggregation facets to include in the results. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sitesSearchGet(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil, completion: @escaping ((_ data: [SearchResult]?,_ error: Error?) -> Void)) {
        sitesSearchGetWithRequestBuilder(q: q, query: query, sort: sort, from: from, size: size, facets: facets).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search sites data in the aggregator. 
     - GET /sites/search
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
    open class func sitesSearchGetWithRequestBuilder(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil) -> RequestBuilder<[SearchResult]> {
        let path = "/sites/search"
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