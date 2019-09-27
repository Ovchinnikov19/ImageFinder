//
//  NetworkService.swift
//  ImageFinder
//
//  Created by Eduard Ovchinnikov on 26/09/2019.
//  Copyright © 2019 Eduard Ovchinnikov. All rights reserved.
//

import Foundation

class NetworkService {
    
    func request(searchTerm: String, completion: (Data?, Error?) -> Void) {
        
        let parameters = prepareParameters(searchTerm: searchTerm)
        let url = createUrl(params: parameters)
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = prepareHeader()
        request.httpMethod = "GET"
    }
    
    private func prepareHeader() -> [String: String]? {
        let accessKey = "5633a37ac9c6eaaca6d84613936a4560d8e816a62fac4f42e395402029a4193e"
        var header = [String: String]()
        header["Authorization"] = "Client-ID \(accessKey)"
        return header
    }
    
    private func prepareParameters(searchTerm: String) -> [String: String] {
        var parameters = [String: String]()
        parameters["query"] = searchTerm
        parameters["page"] = String(1)
        parameters["per_page"] = String(30)

        return parameters
    }
    
    private func createUrl(params: [String: String]) -> URL  {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.unsplash.com"
        components.path = "/search/photos"
        components.queryItems = params.map { URLQueryItem(name: $0, value: $1)}
        return components.url!
    }
}
