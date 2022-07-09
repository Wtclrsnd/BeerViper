//
//  BeerRouter.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import UIKit

final class BeerRouter: BeerRouterProtocol {
    weak var viewController: UIViewController?

    func moveToDetail(data: Beer.InitForm.ViewModel) {
        let detailVC = DetailBeerAssembly.build(data: data)
        viewController?.navigationController?.pushViewController(detailVC, animated: true)
    }
}
