//
//  CatsViewController.swift
//  memoryLeaks
//
//  Created by wrustem on 16.11.2021.
//

import UIKit

final class CatsViewController: UIViewController {

    // MARK: - Instance Properties
    
    private var interactor: CatsBusinessLogic!
    private var router: CatsRoutingLogic!
    private var additionalView: CatsAdditionalView!

    // MARK: - Instance Methods

    func setupComponents(
        interactor: CatsBusinessLogic,
        router: CatsRoutingLogic
    ) {
        self.interactor = interactor
        self.router = router
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange
        NotificationCenter.default.removeObserver(self)
    }

    private func setAdditionalView() {
        additionalView = CatsAdditionalView(frame: CGRect())
        additionalView.delegate = self
    }
}

// MARK: - CatsViewDisplayLogic

extension CatsViewController: CatsViewDisplayLogic { }

// MARK: - CatsAdditionalViewDelegate

extension CatsViewController: CatsAdditionalViewDelegate { }
