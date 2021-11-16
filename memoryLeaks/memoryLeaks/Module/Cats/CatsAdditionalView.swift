//
//  CatsAdditionalView.swift
//  memoryLeaks
//
//  Created by wrustem on 16.11.2021.
//

import Foundation
import UIKit

protocol CatsAdditionalViewDelegate: AnyObject { }

class CatsAdditionalView: UIView {
    
    weak var delegate: CatsAdditionalViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        NotificationCenter.default.removeObserver(self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been used")
    }
}
