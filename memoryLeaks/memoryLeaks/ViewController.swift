//
//  ViewController.swift
//  memoryLeaks
//
//  Created by wrustem on 16.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var createMemoryLeakButton: UIButton = {
        let button = UIButton()
        button.setTitle("Создать утечку памяти", for: .normal)
        button.addTarget(self, action: #selector(createMemoryLeak), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
        NotificationCenter.default.removeObserver(self)
    }
    
    private func setButton() {
        view.addSubview(createMemoryLeakButton)
        createMemoryLeakButton.translatesAutoresizingMaskIntoConstraints = false
        createMemoryLeakButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        createMemoryLeakButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    @objc func createMemoryLeak() {
        let catsViewController = CatsControllerConfigurator().setupModule()
        self.present(catsViewController, animated: true, completion: nil)
    }
}


