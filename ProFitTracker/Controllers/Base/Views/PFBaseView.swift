//
//  PFBaseView.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

class PFBaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension PFBaseView {
    func setupViews() {}
    
    func constraintViews() {}
    
    func configureAppearance() {
        backgroundColor = .white
    }
}

