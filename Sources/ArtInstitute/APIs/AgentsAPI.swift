//
// AgentsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class AgentsAPI {
    /**
     A list of all agents sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func agentsGet(completion: @escaping ((_ data: [Agent]?,_ error: Error?) -> Void)) {
        agentsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all agents sorted by last updated date in descending order.
     - GET /agents
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "site_ids" : { },
  "sort_title" : { },
  "agent_type_id" : { },
  "birth_date" : { },
  "birth_place" : { },
  "description" : { },
  "alt_titles" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "agent_type_title" : { },
  "death_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "is_artist" : { },
  "api_link" : { },
  "ulan_uri" : { },
  "artwork_ids" : { },
  "id" : { },
  "death_place" : { },
  "last_updated_source" : { },
  "is_licensing_restricted" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "site_ids" : { },
  "sort_title" : { },
  "agent_type_id" : { },
  "birth_date" : { },
  "birth_place" : { },
  "description" : { },
  "alt_titles" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "agent_type_title" : { },
  "death_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "is_artist" : { },
  "api_link" : { },
  "ulan_uri" : { },
  "artwork_ids" : { },
  "id" : { },
  "death_place" : { },
  "last_updated_source" : { },
  "is_licensing_restricted" : { },
  "timestamp" : { }
} ]}]

     - returns: RequestBuilder<[Agent]> 
     */
    open class func agentsGetWithRequestBuilder() -> RequestBuilder<[Agent]> {
        let path = "/agents"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Agent]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single agent by the given identifier. {id} is the identifier from our collections management system.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func agentsIdGet(_id: String, completion: @escaping ((_ data: [Agent]?,_ error: Error?) -> Void)) {
        agentsIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single agent by the given identifier. {id} is the identifier from our collections management system.
     - GET /agents/{id}
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "site_ids" : { },
  "sort_title" : { },
  "agent_type_id" : { },
  "birth_date" : { },
  "birth_place" : { },
  "description" : { },
  "alt_titles" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "agent_type_title" : { },
  "death_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "is_artist" : { },
  "api_link" : { },
  "ulan_uri" : { },
  "artwork_ids" : { },
  "id" : { },
  "death_place" : { },
  "last_updated_source" : { },
  "is_licensing_restricted" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "site_ids" : { },
  "sort_title" : { },
  "agent_type_id" : { },
  "birth_date" : { },
  "birth_place" : { },
  "description" : { },
  "alt_titles" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "agent_type_title" : { },
  "death_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "is_artist" : { },
  "api_link" : { },
  "ulan_uri" : { },
  "artwork_ids" : { },
  "id" : { },
  "death_place" : { },
  "last_updated_source" : { },
  "is_licensing_restricted" : { },
  "timestamp" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[Agent]> 
     */
    open class func agentsIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[Agent]> {
        var path = "/agents/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Agent]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search agents data in the aggregator. 
     - parameter q: (query) Your search query (optional)     - parameter query: (query) For complex queries, you can pass Elasticsearch domain syntax queries here (optional)     - parameter sort: (query) Used in conjunction with &#x60;query&#x60; (optional)     - parameter from: (query) Starting point of results. Pagination via Elasticsearch conventions (optional)     - parameter size: (query) Number of results to return. Pagination via Elasticsearch conventions (optional)     - parameter facets: (query) A comma-separated list of &#x27;count&#x27; aggregation facets to include in the results. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func agentsSearchGet(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil, completion: @escaping ((_ data: [SearchResult]?,_ error: Error?) -> Void)) {
        agentsSearchGetWithRequestBuilder(q: q, query: query, sort: sort, from: from, size: size, facets: facets).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search agents data in the aggregator. 
     - GET /agents/search
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
    open class func agentsSearchGetWithRequestBuilder(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil) -> RequestBuilder<[SearchResult]> {
        let path = "/agents/search"
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
     A list of all artists sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func artistsGet(completion: @escaping ((_ data: [Agent]?,_ error: Error?) -> Void)) {
        artistsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all artists sorted by last updated date in descending order.
     - GET /artists
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "site_ids" : { },
  "sort_title" : { },
  "agent_type_id" : { },
  "birth_date" : { },
  "birth_place" : { },
  "description" : { },
  "alt_titles" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "agent_type_title" : { },
  "death_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "is_artist" : { },
  "api_link" : { },
  "ulan_uri" : { },
  "artwork_ids" : { },
  "id" : { },
  "death_place" : { },
  "last_updated_source" : { },
  "is_licensing_restricted" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "site_ids" : { },
  "sort_title" : { },
  "agent_type_id" : { },
  "birth_date" : { },
  "birth_place" : { },
  "description" : { },
  "alt_titles" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "agent_type_title" : { },
  "death_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "is_artist" : { },
  "api_link" : { },
  "ulan_uri" : { },
  "artwork_ids" : { },
  "id" : { },
  "death_place" : { },
  "last_updated_source" : { },
  "is_licensing_restricted" : { },
  "timestamp" : { }
} ]}]

     - returns: RequestBuilder<[Agent]> 
     */
    open class func artistsGetWithRequestBuilder() -> RequestBuilder<[Agent]> {
        let path = "/artists"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Agent]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single artist by the given identifier. {id} is the identifier from our collections management system.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func artistsIdGet(_id: String, completion: @escaping ((_ data: [Agent]?,_ error: Error?) -> Void)) {
        artistsIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single artist by the given identifier. {id} is the identifier from our collections management system.
     - GET /artists/{id}
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "site_ids" : { },
  "sort_title" : { },
  "agent_type_id" : { },
  "birth_date" : { },
  "birth_place" : { },
  "description" : { },
  "alt_titles" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "agent_type_title" : { },
  "death_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "is_artist" : { },
  "api_link" : { },
  "ulan_uri" : { },
  "artwork_ids" : { },
  "id" : { },
  "death_place" : { },
  "last_updated_source" : { },
  "is_licensing_restricted" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "site_ids" : { },
  "sort_title" : { },
  "agent_type_id" : { },
  "birth_date" : { },
  "birth_place" : { },
  "description" : { },
  "alt_titles" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "agent_type_title" : { },
  "death_date" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "is_artist" : { },
  "api_link" : { },
  "ulan_uri" : { },
  "artwork_ids" : { },
  "id" : { },
  "death_place" : { },
  "last_updated_source" : { },
  "is_licensing_restricted" : { },
  "timestamp" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[Agent]> 
     */
    open class func artistsIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[Agent]> {
        var path = "/artists/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Agent]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
