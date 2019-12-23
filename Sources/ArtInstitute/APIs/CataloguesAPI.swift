//
// CataloguesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CataloguesAPI {
    /**
     A list of all catalogues sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cataloguesGet(completion: @escaping ((_ data: [Catalogue]?,_ error: Error?) -> Void)) {
        cataloguesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all catalogues sorted by last updated date in descending order.
     - GET /catalogues
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

     - returns: RequestBuilder<[Catalogue]> 
     */
    open class func cataloguesGetWithRequestBuilder() -> RequestBuilder<[Catalogue]> {
        let path = "/catalogues"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Catalogue]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single catalogue by the given identifier. {id} is the identifier from our collections management system.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cataloguesIdGet(_id: String, completion: @escaping ((_ data: [Catalogue]?,_ error: Error?) -> Void)) {
        cataloguesIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single catalogue by the given identifier. {id} is the identifier from our collections management system.
     - GET /catalogues/{id}
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

     - returns: RequestBuilder<[Catalogue]> 
     */
    open class func cataloguesIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[Catalogue]> {
        var path = "/catalogues/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Catalogue]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}