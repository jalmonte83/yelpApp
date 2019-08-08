//
//  BusinessModel.swift
//  YelpApp
//
//  Created by Jeffrey Almonte on 8/5/19.
//  Copyright © 2019 Jeffrey Almonte. All rights reserved.
//

import Foundation

struct BusinessesSearch: Codable {
    let businesses: [Business]
}

struct Business: Codable {
    let id: String
    let alias: String
    let name: String
    let image_url: String
    let is_closed: Bool
    let url: String
    let categories: [Category]
    let rating: Double
    let location: Location
    let phone: String
    let coordinates: Coordinate
}
struct Category: Codable {
    let alias: String
    let title:String
}
struct Coordinate: Codable {
    let latitude: Double
    let longitude: Double
}

struct Location: Codable {
    let address1: String
    let city: String
    let zip_code: String
    let country: String
    let state: String
}
