//
//  BeerAPIManager.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import Foundation

final class BeerManager: BeerAPIProtocol {
    func getData(request: URLRequest, completion: @escaping (_ beer: BeerEntity) -> Void) {
        URLSession.shared.dataTask(with: request) { data, _, error in
            guard error == nil else {
                print(String(describing: error?.localizedDescription))
                return
            }
            guard let data = data else { return }
            let jsonDecoder = JSONDecoder()
            do {
                let responseObject = try jsonDecoder.decode(
                    BeerEntity.self,
                    from: data
                )
                completion(responseObject)
            } catch let error {
                print(String(describing: error.localizedDescription))
            }
        }
        .resume()
    }
}
