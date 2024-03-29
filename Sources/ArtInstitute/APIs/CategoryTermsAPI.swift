//
// CategoryTermsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CategoryTermsAPI {
    /**
     A list of all category-terms sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func categoryTermsGet(completion: @escaping ((_ data: [Category]?,_ error: Error?) -> Void)) {
        categoryTermsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all category-terms sorted by last updated date in descending order.
     - GET /category-terms
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "child_ids" : { },
  "child_titles" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "parent_id" : { },
  "api_link" : { },
  "id" : { },
  "parent_title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "child_ids" : { },
  "child_titles" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "parent_id" : { },
  "api_link" : { },
  "id" : { },
  "parent_title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]

     - returns: RequestBuilder<[Category]> 
     */
    open class func categoryTermsGetWithRequestBuilder() -> RequestBuilder<[Category]> {
        let path = "/category-terms"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Category]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single category-term by the given identifier. {id} is the identifier from our collections management system.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func categoryTermsIdGet(_id: String, completion: @escaping ((_ data: [Category]?,_ error: Error?) -> Void)) {
        categoryTermsIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single category-term by the given identifier. {id} is the identifier from our collections management system.
     - GET /category-terms/{id}
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "child_ids" : { },
  "child_titles" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "parent_id" : { },
  "api_link" : { },
  "id" : { },
  "parent_title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "child_ids" : { },
  "child_titles" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "parent_id" : { },
  "api_link" : { },
  "id" : { },
  "parent_title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[Category]> 
     */
    open class func categoryTermsIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[Category]> {
        var path = "/category-terms/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Category]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search category-terms data in the aggregator. 
     - parameter q: (query) Your search query (optional)     - parameter query: (query) For complex queries, you can pass Elasticsearch domain syntax queries here (optional)     - parameter sort: (query) Used in conjunction with &#x60;query&#x60; (optional)     - parameter from: (query) Starting point of results. Pagination via Elasticsearch conventions (optional)     - parameter size: (query) Number of results to return. Pagination via Elasticsearch conventions (optional)     - parameter facets: (query) A comma-separated list of &#x27;count&#x27; aggregation facets to include in the results. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func categoryTermsSearchGet(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil, completion: @escaping ((_ data: [SearchResult]?,_ error: Error?) -> Void)) {
        categoryTermsSearchGetWithRequestBuilder(q: q, query: query, sort: sort, from: from, size: size, facets: facets).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search category-terms data in the aggregator. 
     - GET /category-terms/search
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
    open class func categoryTermsSearchGetWithRequestBuilder(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil) -> RequestBuilder<[SearchResult]> {
        let path = "/category-terms/search"
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

    /**
     A list of all departments sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func departmentsGet(completion: @escaping ((_ data: [Category]?,_ error: Error?) -> Void)) {
        departmentsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all departments sorted by last updated date in descending order.
     - GET /departments
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "child_ids" : { },
  "child_titles" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "parent_id" : { },
  "api_link" : { },
  "id" : { },
  "parent_title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "child_ids" : { },
  "child_titles" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "parent_id" : { },
  "api_link" : { },
  "id" : { },
  "parent_title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]

     - returns: RequestBuilder<[Category]> 
     */
    open class func departmentsGetWithRequestBuilder() -> RequestBuilder<[Category]> {
        let path = "/departments"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Category]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single department by the given identifier. {id} is the identifier from our collections management system.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func departmentsIdGet(_id: String, completion: @escaping ((_ data: [Category]?,_ error: Error?) -> Void)) {
        departmentsIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single department by the given identifier. {id} is the identifier from our collections management system.
     - GET /departments/{id}
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "child_ids" : { },
  "child_titles" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "parent_id" : { },
  "api_link" : { },
  "id" : { },
  "parent_title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "child_ids" : { },
  "child_titles" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "web_url" : { },
  "parent_id" : { },
  "api_link" : { },
  "id" : { },
  "parent_title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[Category]> 
     */
    open class func departmentsIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[Category]> {
        var path = "/departments/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Category]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
