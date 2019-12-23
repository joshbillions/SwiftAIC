//
// PrintedCatalogsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class PrintedCatalogsAPI {
    /**
     A list of all printed-catalogs sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func printedCatalogsGet(completion: @escaping ((_ data: [PrintedCatalog]?,_ error: Error?) -> Void)) {
        printedCatalogsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all printed-catalogs sorted by last updated date in descending order.
     - GET /printed-catalogs
     - examples: [{contentType=application/json, example=[ {
  "short_description" : { },
  "last_updated" : { },
  "listing_description" : { },
  "is_published" : { },
  "image_url" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "type" : { },
  "publish_end_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "publish_start_date" : { },
  "api_link" : { },
  "id" : { },
  "copy" : { },
  "last_updated_source" : { },
  "slug" : { },
  "timestamp" : { }
}, {
  "short_description" : { },
  "last_updated" : { },
  "listing_description" : { },
  "is_published" : { },
  "image_url" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "type" : { },
  "publish_end_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "publish_start_date" : { },
  "api_link" : { },
  "id" : { },
  "copy" : { },
  "last_updated_source" : { },
  "slug" : { },
  "timestamp" : { }
} ]}]

     - returns: RequestBuilder<[PrintedCatalog]> 
     */
    open class func printedCatalogsGetWithRequestBuilder() -> RequestBuilder<[PrintedCatalog]> {
        let path = "/printed-catalogs"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[PrintedCatalog]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single printed-catalog by the given identifier.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func printedCatalogsIdGet(_id: String, completion: @escaping ((_ data: [PrintedCatalog]?,_ error: Error?) -> Void)) {
        printedCatalogsIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single printed-catalog by the given identifier.
     - GET /printed-catalogs/{id}
     - examples: [{contentType=application/json, example=[ {
  "short_description" : { },
  "last_updated" : { },
  "listing_description" : { },
  "is_published" : { },
  "image_url" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "type" : { },
  "publish_end_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "publish_start_date" : { },
  "api_link" : { },
  "id" : { },
  "copy" : { },
  "last_updated_source" : { },
  "slug" : { },
  "timestamp" : { }
}, {
  "short_description" : { },
  "last_updated" : { },
  "listing_description" : { },
  "is_published" : { },
  "image_url" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "type" : { },
  "publish_end_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "publish_start_date" : { },
  "api_link" : { },
  "id" : { },
  "copy" : { },
  "last_updated_source" : { },
  "slug" : { },
  "timestamp" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[PrintedCatalog]> 
     */
    open class func printedCatalogsIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[PrintedCatalog]> {
        var path = "/printed-catalogs/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[PrintedCatalog]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search printed-catalogs data in the aggregator. 
     - parameter q: (query) Your search query (optional)     - parameter query: (query) For complex queries, you can pass Elasticsearch domain syntax queries here (optional)     - parameter sort: (query) Used in conjunction with &#x60;query&#x60; (optional)     - parameter from: (query) Starting point of results. Pagination via Elasticsearch conventions (optional)     - parameter size: (query) Number of results to return. Pagination via Elasticsearch conventions (optional)     - parameter facets: (query) A comma-separated list of &#x27;count&#x27; aggregation facets to include in the results. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func printedCatalogsSearchGet(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil, completion: @escaping ((_ data: [SearchResult]?,_ error: Error?) -> Void)) {
        printedCatalogsSearchGetWithRequestBuilder(q: q, query: query, sort: sort, from: from, size: size, facets: facets).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search printed-catalogs data in the aggregator. 
     - GET /printed-catalogs/search
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
    open class func printedCatalogsSearchGetWithRequestBuilder(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil) -> RequestBuilder<[SearchResult]> {
        let path = "/printed-catalogs/search"
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
