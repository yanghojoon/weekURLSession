//
//  Product.swift
//  WeekURLSession
//
//  Created by 양호준 on 2022/01/15.
//

import Foundation

struct Product: Decodable {
    var id: Int
    var vendor_id: Int
    var name: String
    var thumnail: String
    var currency: Currency
    var price: Int
    var bargain_price: Int
    var discounted_price: Int
    var stock: Int
    var created_at: Date
    var issued_at: Date
}

enum Currency: String, Decodable {
    case krw = "KRW"
    case usd = "USD"
}
