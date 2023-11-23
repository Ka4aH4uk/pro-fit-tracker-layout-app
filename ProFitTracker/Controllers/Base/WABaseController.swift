//
//  WABaseController.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

enum NavBarPosition {
    case left, right
}

class WABaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
}

@objc extension WABaseController {
    func setupViews() {}
    
    func constraintViews() {}
    
    func configureAppearance() {
        view.backgroundColor = R.Colors.background
    }
    
    func navBarLeftButtonHandler() {
        print("Left <- navBarLeftButtonHandler tapped")
    }
    
    func navBarRightButtonHandler() {
        print("Right -> navBarRightButtonHandler tapped")
    }
}

extension WABaseController {
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inactive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
