//
//  Network.swift
//  WeekURLSession
//
//  Created by 양호준 on 2022/01/15.
//

import Foundation

struct Network {
    let jsonParsor: JSONParser
    
    func requestProductsList(pageNumber: Int,
                             itemsPerPage: Int,
                             completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let url = "https://market-training.yagom-academy.kr/api/products?page-no=\(pageNumber)&items-per-page=\(itemsPerPage)"
        guard let url = URL(string: url) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request, completionHandler: completionHandler)
        task.resume()
    }
}
