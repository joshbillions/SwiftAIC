//
// ArticlesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ArticlesAPI {
    /**
     A list of all articles sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func articlesGet(completion: @escaping ((_ data: [Article]?,_ error: Error?) -> Void)) {
        articlesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all articles sorted by last updated date in descending order.
     - GET /articles
     - examples: [{contentType=application/json, example=[ {
  "date" : { },
  "last_updated" : { },
  "is_published" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "publish_end_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "publish_start_date" : { },
  "api_link" : { },
  "id" : { },
  "copy" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "date" : { },
  "last_updated" : { },
  "is_published" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "publish_end_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "publish_start_date" : { },
  "api_link" : { },
  "id" : { },
  "copy" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]

     - returns: RequestBuilder<[Article]> 
     */
    open class func articlesGetWithRequestBuilder() -> RequestBuilder<[Article]> {
        let path = "/articles"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Article]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single article by the given identifier.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func articlesIdGet(_id: String, completion: @escaping ((_ data: [Article]?,_ error: Error?) -> Void)) {
        articlesIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single article by the given identifier.
     - GET /articles/{id}
     - examples: [{contentType=application/json, example=[ {
  "date" : { },
  "last_updated" : { },
  "is_published" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "publish_end_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "publish_start_date" : { },
  "api_link" : { },
  "id" : { },
  "copy" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "date" : { },
  "last_updated" : { },
  "is_published" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "publish_end_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "publish_start_date" : { },
  "api_link" : { },
  "id" : { },
  "copy" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[Article]> 
     */
    open class func articlesIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[Article]> {
        var path = "/articles/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Article]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search articles data in the aggregator. 
     - parameter q: (query) Your search query (optional)     - parameter query: (query) For complex queries, you can pass Elasticsearch domain syntax queries here (optional)     - parameter sort: (query) Used in conjunction with &#x60;query&#x60; (optional)     - parameter from: (query) Starting point of results. Pagination via Elasticsearch conventions (optional)     - parameter size: (query) Number of results to return. Pagination via Elasticsearch conventions (optional)     - parameter facets: (query) A comma-separated list of &#x27;count&#x27; aggregation facets to include in the results. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func articlesSearchGet(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil, completion: @escaping ((_ data: [SearchResult]?,_ error: Error?) -> Void)) {
        articlesSearchGetWithRequestBuilder(q: q, query: query, sort: sort, from: from, size: size, facets: facets).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search articles data in the aggregator. 
     - GET /articles/search
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
    open class func articlesSearchGetWithRequestBuilder(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil) -> RequestBuilder<[SearchResult]> {
        let path = "/articles/search"
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
