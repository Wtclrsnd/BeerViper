//
//  BeerPresenter.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import Foundation

final class BeerPresenter: BeerPresenterProtocol {

    weak var view: BeerViewProtocol!

    var interactor: BeerInteractorProtocol!

    var router: BeerRouterProtocol!

    init(view: BeerViewProtocol, router: BeerRouterProtocol) {
        self.view = view
        self.router = router
    }

    func getData() {
        interactor.getData()
    }

    func performData(response: [Beer.InitForm.Response]) {
        var viewModel: [Beer.InitForm.ViewModel] = []
        for beer in response {
            viewModel.append(Beer.InitForm.ViewModel(name: beer.name, firstBrewed: beer.firstBrewed, imageURL: beer.imageURL, foodPairing: beer.foodPairing))
        }

        view.presentData(vm: viewModel)
    }

    func moveToDetail(data: Beer.InitForm.ViewModel) {
        router.moveToDetail(data: data)
    }
}
