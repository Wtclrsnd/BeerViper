//
//  BeerAssembly.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import UIKit

enum BeerAssembly {
    static func build() -> UIViewController {
        let view = BeerViewController()
        let manger = BeerManager()
        let router = BeerRouter()
        let presenter = BeerPresenter(view: view, router: router)
        let interactor = BeerInteractor(presenter: presenter, manager: manger)

        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        
        return view
    }
}
