//
//  ProductsList.swift
//  WeekURLSession
//
//  Created by 양호준 on 2022/01/15.
//

import Foundation

struct ProductsList: Decodable {
    var page_no: Int
    var items_per_page: Int
    var total_count: Int
    var offset: Int
    var limit: Int
    var last_page: Int
    var has_next: Bool
    var has_prev: Bool
    var pages: [Product]
}
