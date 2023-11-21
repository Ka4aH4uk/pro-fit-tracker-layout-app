//
//  SessionController.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

class SessionController: BaseController {
    private let timerView: TimerView = {
        let view = TimerView()
        return view
    }()
}

extension SessionController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(timerView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        self.navigationItem.title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: Tabs.session)
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarRight)
    }
    
    override func navBarLeftButtonHandler() {
        print("<- Session left button tapped")
    }
    
    override func navBarRightButtonHandler() {
        print("-> Session right button tapped")
    }
}
