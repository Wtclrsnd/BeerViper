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
}
