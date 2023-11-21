//
//  SessionController.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
