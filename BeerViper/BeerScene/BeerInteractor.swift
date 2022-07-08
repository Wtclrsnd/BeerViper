//
//  BeerInteractor.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import Foundation

final class BeerInteractor: BeerInteractorProtocol {
    var manager: BeerAPIProtocol!
    var presenter: BeerPresenterProtocol!

    init(presenter: BeerPresenterProtocol, manager: BeerAPIProtocol) {
        self.presenter = presenter
        self.manager = manager
    }

    func getData() {
        let urlString = "https://api.punkapi.com/v2/beers?page=2&per_page=80"
        guard let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        manager.getData(request: request, completion: { rawBeer in
            var response: [Beer.InitForm.Response] = []
            for beer in rawBeer {
                response.append(Beer.InitForm.Response(name: beer.name ?? "", tagline: beer.tagline ?? "", firstBrewed: beer.firstBrewed ?? "", beerEntityDescription: beer.beerEntityDescription ?? "", imageURL: beer.imageURL ?? "", abv: beer.abv ?? 0, ibu: beer.ibu ?? 0, targetFg: beer.targetFg ?? 0, targetOg: beer.targetOg ?? 0, ebc: beer.ebc ?? 0, srm: beer.srm ?? 0, ph: beer.ph ?? 0, attenuationLevel: beer.attenuationLevel ?? 0, foodPairing: beer.foodPairing ?? []))
            }
            DispatchQueue.main.async {
                self.presenter.performData(response: response)
            }
        })
    }
}
