//
//  SearchResults.swift
//  ImageFinder
//
//  Created by Eduard Ovchinnikov on 27/09/2019.
//  Copyright © 2019 Eduard Ovchinnikov. All rights reserved.
//

import Foundation

struct SearchResults: Decodable {
    let total: Int
    let results: [UnsplashPhoto]
}

struct UnsplashPhoto: Decodable{
    let width: Int
    let height: Int
    let urls: [URLKind.RawValue:String]
    
    enum URLKind: String {
        case raw
        case full
        case regular
        case small
        case thumb
    }
    
}
