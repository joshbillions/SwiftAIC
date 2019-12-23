//
// ArtworksAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ArtworksAPI {
    /**
     A list of all artworks sorted by last updated date in descending order.

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func artworksGet(completion: @escaping ((_ data: [Artwork]?,_ error: Error?) -> Void)) {
        artworksGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A list of all artworks sorted by last updated date in descending order.
     - GET /artworks
     - examples: [{contentType=application/json, example=[ {
  "category_titles" : { },
  "classification_titles" : { },
  "subject_titles" : { },
  "site_ids" : { },
  "suggest_autocomplete_all" : { },
  "alt_style_ids" : { },
  "video_ids" : { },
  "publication_history" : { },
  "alt_technique_ids" : { },
  "classification_ids" : { },
  "credit_line" : { },
  "copyright_notice" : { },
  "latlon" : { },
  "text_ids" : { },
  "fiscal_year" : { },
  "section_ids" : { },
  "is_on_view" : { },
  "alt_image_ids" : { },
  "term_titles" : { },
  "classification_id" : { },
  "id" : { },
  "category_ids" : { },
  "last_updated_source" : { },
  "main_reference_number" : { },
  "material_titles" : { },
  "classification_title" : { },
  "longitude" : { },
  "alt_subject_ids" : { },
  "internal_department_id" : { },
  "document_ids" : { },
  "section_titles" : { },
  "thumbnail" : { },
  "last_updated" : { },
  "alt_classification_ids" : { },
  "is_boosted" : { },
  "alt_artist_ids" : { },
  "artist_display" : { },
  "alt_material_ids" : { },
  "date_end" : { },
  "style_title" : { },
  "artist_id" : { },
  "date_start" : { },
  "suggest_autocomplete_boosted" : { },
  "artist_titles" : { },
  "style_ids" : { },
  "subject_ids" : { },
  "publishing_verification_level" : { },
  "date_display" : { },
  "has_multimedia_resources" : { },
  "image_id" : { },
  "fiscal_year_deaccession" : { },
  "subject_id" : { },
  "is_public_domain" : { },
  "medium_display" : { },
  "colorfulness" : { },
  "color" : { },
  "latitude" : { },
  "is_zoomable" : { },
  "description" : { },
  "artist_title" : { },
  "exhibition_history" : { },
  "provenance_text" : { },
  "material_ids" : { },
  "technique_ids" : { },
  "title" : { },
  "place_of_origin" : { },
  "artist_ids" : { },
  "collection_status" : { },
  "pageviews" : { },
  "style_titles" : { },
  "department_title" : { },
  "has_not_been_viewed_much" : { },
  "api_link" : { },
  "technique_titles" : { },
  "gallery_id" : { },
  "timestamp" : { },
  "pageviews_recent" : { },
  "department_id" : { },
  "inscriptions" : { },
  "has_educational_resources" : { },
  "alt_titles" : { },
  "theme_titles" : { },
  "gallery_title" : { },
  "boost_rank" : { },
  "artwork_type_title" : { },
  "api_model" : { },
  "sound_ids" : { },
  "max_zoom_window_size" : { },
  "artwork_catalogue_ids" : { },
  "material_id" : { },
  "technique_id" : { },
  "style_id" : { },
  "artwork_type_id" : { },
  "dimensions" : { }
}, {
  "category_titles" : { },
  "classification_titles" : { },
  "subject_titles" : { },
  "site_ids" : { },
  "suggest_autocomplete_all" : { },
  "alt_style_ids" : { },
  "video_ids" : { },
  "publication_history" : { },
  "alt_technique_ids" : { },
  "classification_ids" : { },
  "credit_line" : { },
  "copyright_notice" : { },
  "latlon" : { },
  "text_ids" : { },
  "fiscal_year" : { },
  "section_ids" : { },
  "is_on_view" : { },
  "alt_image_ids" : { },
  "term_titles" : { },
  "classification_id" : { },
  "id" : { },
  "category_ids" : { },
  "last_updated_source" : { },
  "main_reference_number" : { },
  "material_titles" : { },
  "classification_title" : { },
  "longitude" : { },
  "alt_subject_ids" : { },
  "internal_department_id" : { },
  "document_ids" : { },
  "section_titles" : { },
  "thumbnail" : { },
  "last_updated" : { },
  "alt_classification_ids" : { },
  "is_boosted" : { },
  "alt_artist_ids" : { },
  "artist_display" : { },
  "alt_material_ids" : { },
  "date_end" : { },
  "style_title" : { },
  "artist_id" : { },
  "date_start" : { },
  "suggest_autocomplete_boosted" : { },
  "artist_titles" : { },
  "style_ids" : { },
  "subject_ids" : { },
  "publishing_verification_level" : { },
  "date_display" : { },
  "has_multimedia_resources" : { },
  "image_id" : { },
  "fiscal_year_deaccession" : { },
  "subject_id" : { },
  "is_public_domain" : { },
  "medium_display" : { },
  "colorfulness" : { },
  "color" : { },
  "latitude" : { },
  "is_zoomable" : { },
  "description" : { },
  "artist_title" : { },
  "exhibition_history" : { },
  "provenance_text" : { },
  "material_ids" : { },
  "technique_ids" : { },
  "title" : { },
  "place_of_origin" : { },
  "artist_ids" : { },
  "collection_status" : { },
  "pageviews" : { },
  "style_titles" : { },
  "department_title" : { },
  "has_not_been_viewed_much" : { },
  "api_link" : { },
  "technique_titles" : { },
  "gallery_id" : { },
  "timestamp" : { },
  "pageviews_recent" : { },
  "department_id" : { },
  "inscriptions" : { },
  "has_educational_resources" : { },
  "alt_titles" : { },
  "theme_titles" : { },
  "gallery_title" : { },
  "boost_rank" : { },
  "artwork_type_title" : { },
  "api_model" : { },
  "sound_ids" : { },
  "max_zoom_window_size" : { },
  "artwork_catalogue_ids" : { },
  "material_id" : { },
  "technique_id" : { },
  "style_id" : { },
  "artwork_type_id" : { },
  "dimensions" : { }
} ]}]

     - returns: RequestBuilder<[Artwork]> 
     */
    open class func artworksGetWithRequestBuilder() -> RequestBuilder<[Artwork]> {
        let path = "/artworks"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Artwork]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     A single artwork by the given identifier. {id} is the identifier from our collections management system.
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func artworksIdGet(_id: String, completion: @escaping ((_ data: [Artwork]?,_ error: Error?) -> Void)) {
        artworksIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     A single artwork by the given identifier. {id} is the identifier from our collections management system.
     - GET /artworks/{id}
     - examples: [{contentType=application/json, example=[ {
  "category_titles" : { },
  "classification_titles" : { },
  "subject_titles" : { },
  "site_ids" : { },
  "suggest_autocomplete_all" : { },
  "alt_style_ids" : { },
  "video_ids" : { },
  "publication_history" : { },
  "alt_technique_ids" : { },
  "classification_ids" : { },
  "credit_line" : { },
  "copyright_notice" : { },
  "latlon" : { },
  "text_ids" : { },
  "fiscal_year" : { },
  "section_ids" : { },
  "is_on_view" : { },
  "alt_image_ids" : { },
  "term_titles" : { },
  "classification_id" : { },
  "id" : { },
  "category_ids" : { },
  "last_updated_source" : { },
  "main_reference_number" : { },
  "material_titles" : { },
  "classification_title" : { },
  "longitude" : { },
  "alt_subject_ids" : { },
  "internal_department_id" : { },
  "document_ids" : { },
  "section_titles" : { },
  "thumbnail" : { },
  "last_updated" : { },
  "alt_classification_ids" : { },
  "is_boosted" : { },
  "alt_artist_ids" : { },
  "artist_display" : { },
  "alt_material_ids" : { },
  "date_end" : { },
  "style_title" : { },
  "artist_id" : { },
  "date_start" : { },
  "suggest_autocomplete_boosted" : { },
  "artist_titles" : { },
  "style_ids" : { },
  "subject_ids" : { },
  "publishing_verification_level" : { },
  "date_display" : { },
  "has_multimedia_resources" : { },
  "image_id" : { },
  "fiscal_year_deaccession" : { },
  "subject_id" : { },
  "is_public_domain" : { },
  "medium_display" : { },
  "colorfulness" : { },
  "color" : { },
  "latitude" : { },
  "is_zoomable" : { },
  "description" : { },
  "artist_title" : { },
  "exhibition_history" : { },
  "provenance_text" : { },
  "material_ids" : { },
  "technique_ids" : { },
  "title" : { },
  "place_of_origin" : { },
  "artist_ids" : { },
  "collection_status" : { },
  "pageviews" : { },
  "style_titles" : { },
  "department_title" : { },
  "has_not_been_viewed_much" : { },
  "api_link" : { },
  "technique_titles" : { },
  "gallery_id" : { },
  "timestamp" : { },
  "pageviews_recent" : { },
  "department_id" : { },
  "inscriptions" : { },
  "has_educational_resources" : { },
  "alt_titles" : { },
  "theme_titles" : { },
  "gallery_title" : { },
  "boost_rank" : { },
  "artwork_type_title" : { },
  "api_model" : { },
  "sound_ids" : { },
  "max_zoom_window_size" : { },
  "artwork_catalogue_ids" : { },
  "material_id" : { },
  "technique_id" : { },
  "style_id" : { },
  "artwork_type_id" : { },
  "dimensions" : { }
}, {
  "category_titles" : { },
  "classification_titles" : { },
  "subject_titles" : { },
  "site_ids" : { },
  "suggest_autocomplete_all" : { },
  "alt_style_ids" : { },
  "video_ids" : { },
  "publication_history" : { },
  "alt_technique_ids" : { },
  "classification_ids" : { },
  "credit_line" : { },
  "copyright_notice" : { },
  "latlon" : { },
  "text_ids" : { },
  "fiscal_year" : { },
  "section_ids" : { },
  "is_on_view" : { },
  "alt_image_ids" : { },
  "term_titles" : { },
  "classification_id" : { },
  "id" : { },
  "category_ids" : { },
  "last_updated_source" : { },
  "main_reference_number" : { },
  "material_titles" : { },
  "classification_title" : { },
  "longitude" : { },
  "alt_subject_ids" : { },
  "internal_department_id" : { },
  "document_ids" : { },
  "section_titles" : { },
  "thumbnail" : { },
  "last_updated" : { },
  "alt_classification_ids" : { },
  "is_boosted" : { },
  "alt_artist_ids" : { },
  "artist_display" : { },
  "alt_material_ids" : { },
  "date_end" : { },
  "style_title" : { },
  "artist_id" : { },
  "date_start" : { },
  "suggest_autocomplete_boosted" : { },
  "artist_titles" : { },
  "style_ids" : { },
  "subject_ids" : { },
  "publishing_verification_level" : { },
  "date_display" : { },
  "has_multimedia_resources" : { },
  "image_id" : { },
  "fiscal_year_deaccession" : { },
  "subject_id" : { },
  "is_public_domain" : { },
  "medium_display" : { },
  "colorfulness" : { },
  "color" : { },
  "latitude" : { },
  "is_zoomable" : { },
  "description" : { },
  "artist_title" : { },
  "exhibition_history" : { },
  "provenance_text" : { },
  "material_ids" : { },
  "technique_ids" : { },
  "title" : { },
  "place_of_origin" : { },
  "artist_ids" : { },
  "collection_status" : { },
  "pageviews" : { },
  "style_titles" : { },
  "department_title" : { },
  "has_not_been_viewed_much" : { },
  "api_link" : { },
  "technique_titles" : { },
  "gallery_id" : { },
  "timestamp" : { },
  "pageviews_recent" : { },
  "department_id" : { },
  "inscriptions" : { },
  "has_educational_resources" : { },
  "alt_titles" : { },
  "theme_titles" : { },
  "gallery_title" : { },
  "boost_rank" : { },
  "artwork_type_title" : { },
  "api_model" : { },
  "sound_ids" : { },
  "max_zoom_window_size" : { },
  "artwork_catalogue_ids" : { },
  "material_id" : { },
  "technique_id" : { },
  "style_id" : { },
  "artwork_type_id" : { },
  "dimensions" : { }
} ]}]
     - parameter _id: (path)  

     - returns: RequestBuilder<[Artwork]> 
     */
    open class func artworksIdGetWithRequestBuilder(_id: String) -> RequestBuilder<[Artwork]> {
        var path = "/artworks/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Artwork]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search artworks data in the aggregator. Artworks in the groups of essentials are boosted so they'll show up higher in results.
     - parameter q: (query) Your search query (optional)     - parameter query: (query) For complex queries, you can pass Elasticsearch domain syntax queries here (optional)     - parameter sort: (query) Used in conjunction with &#x60;query&#x60; (optional)     - parameter from: (query) Starting point of results. Pagination via Elasticsearch conventions (optional)     - parameter size: (query) Number of results to return. Pagination via Elasticsearch conventions (optional)     - parameter facets: (query) A comma-separated list of &#x27;count&#x27; aggregation facets to include in the results. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func artworksSearchGet(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil, completion: @escaping ((_ data: [SearchResult]?,_ error: Error?) -> Void)) {
        artworksSearchGetWithRequestBuilder(q: q, query: query, sort: sort, from: from, size: size, facets: facets).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search artworks data in the aggregator. Artworks in the groups of essentials are boosted so they'll show up higher in results.
     - GET /artworks/search
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
    open class func artworksSearchGetWithRequestBuilder(q: String? = nil, query: String? = nil, sort: String? = nil, from: Int? = nil, size: Int? = nil, facets: String? = nil) -> RequestBuilder<[SearchResult]> {
        let path = "/artworks/search"
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