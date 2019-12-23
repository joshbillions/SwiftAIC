//
// AgentTypesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class AgentTypesAPI {
    /**
     A list of all agent-types sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func agentTypesGet(completion: @escaping ((_ data: [AgentType]?,_ error: Error?) -> Void)) {
        agentTypesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all agent-types sorted by last updated date in descending order.
     - GET /agent-types
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "api_link" : { },
  "id" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "api_link" : { },
  "id" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]

     - returns: RequestBuilder<[AgentType]> 
     */
    open class func agentTypesGetWithRequestBuilder() -> RequestBuilder<[AgentType]> {
        let path = "/agent-types"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[AgentType]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single agent-type by the given identifier. {id} is the identifier from our collections management system.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func agentTypesIdGet(_id: String, completion: @escaping ((_ data: [AgentType]?,_ error: Error?) -> Void)) {
        agentTypesIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single agent-type by the given identifier. {id} is the identifier from our collections management system.
     - GET /agent-types/{id}
     - examples: [{contentType=application/json, example=[ {
  "last_updated" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "api_link" : { },
  "id" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
}, {
  "last_updated" : { },
  "suggest_autocomplete_boosted" : { },
  "api_model" : { },
  "api_link" : { },
  "id" : { },
  "suggest_autocomplete_all" : { },
  "title" : { },
  "last_updated_source" : { },
  "timestamp" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[AgentType]> 
     */
    open class func agentTypesIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[AgentType]> {
        var path = "/agent-types/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[AgentType]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}