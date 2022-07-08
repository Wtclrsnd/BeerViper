//
//  BeerProtocols.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import Foundation

protocol BeerViewProtocol: AnyObject {
    var presenter: BeerPresenterProtocol! { get set }
}

protocol BeerInteractorProtocol: AnyObject {
    var manager: BeerAPIProtocol! { get set }
}

protocol BeerPresenterProtocol: AnyObject {
    var view: BeerViewProtocol! { get set }
    var interactor: BeerInteractorProtocol! { get set }
    var router: BeerRouterProtocol! { get set }
}

protocol BeerRouterProtocol: AnyObject {}

protocol BeerAPIProtocol: AnyObject {}

