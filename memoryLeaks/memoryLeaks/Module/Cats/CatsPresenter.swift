//
//  CatsPresenter.swift
//  memoryLeaks
//
//  Created by wrustem on 16.11.2021.
//

import Foundation

final class CatsPresenter: CatsPresentationLogic {

    // MARK: - Instance Properties

    private var viewController: CatsViewDisplayLogic!

    // MARK: - Initializers

    init(viewController: CatsViewDisplayLogic) {
        self.viewController = viewController
    }
}
