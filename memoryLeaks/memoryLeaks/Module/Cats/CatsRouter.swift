//
//  CatsRouter.swift
//  memoryLeaks
//
//  Created by wrustem on 16.11.2021.
//

import UIKit

final class CatsRouter: CatsRoutingLogic {

    // MARK: - Instance Properties

    private var viewController: UIViewController!

    // MARK: - Initializers

    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}
