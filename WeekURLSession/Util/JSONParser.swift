//
//  JSONParser.swift
//  WeekURLSession
//
//  Created by 양호준 on 2022/01/15.
//

import Foundation

struct JSONParser: Decodable {
    func decode<T: Decodable>(from data: Data) -> T? {
        let decoder  = JSONDecoder()
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SS"
        decoder.dateDecodingStrategy = .formatted(dateformatter)
        let decodedData = try? decoder.decode(T.self, from: data)
        
        return decodedData
    }
}
