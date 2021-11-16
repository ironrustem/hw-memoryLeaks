//
//  CatsControllerConfigurator.swift
//  memoryLeaks
//
//  Created by wrustem on 16.11.2021.
//

import Foundation

final class CatsControllerConfigurator {

    // MARK: - Instance Methods

    func setupModule() -> CatsViewController {
        let viewController = CatsViewController()
        let presenter = CatsPresenter(viewController: viewController)
        let interactor = CatsInteractor(presenter: presenter)
        let router = CatsRouter(viewController: viewController)
        viewController.setupComponents(
            interactor: interactor,
            router: router
        )
        return viewController
    }
}
