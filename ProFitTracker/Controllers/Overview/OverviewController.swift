//
//  OverviewController.swift
//  ProFitTracker
//
//  Created by K4 on 18.11.2023.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()

}

extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
    }
}
