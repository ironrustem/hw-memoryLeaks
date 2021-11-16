//
//  CatsInteractor.swift
//  memoryLeaks
//
//  Created by wrustem on 16.11.2021.
//

import Foundation

final class CatsInteractor: CatsBusinessLogic {

    // MARK: - Instance Properties

    private let presenter: CatsPresentationLogic

    // MARK: - Initializers

    init(presenter: CatsPresentationLogic) {
        self.presenter = presenter
    }
}
