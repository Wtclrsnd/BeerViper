//
//  File.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 08.07.2022.
//

import Foundation

enum Beer {
    enum InitForm {
        struct Request {}
        struct Response {
            let name, tagline, firstBrewed, beerEntityDescription: String
            let imageURL: String
            let abv: Double
            let ibu, targetFg: Int
            let targetOg: Double
            let ebc, srm: Double
            let ph, attenuationLevel: Double
            let foodPairing: [String]
        }
        struct ViewModel {
            let name, firstBrewed: String
            let imageURL: String
            let foodPairing: [String]
        }
    }
}
