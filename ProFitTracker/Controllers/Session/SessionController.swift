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
        
        self.navigationItem.title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }
    
    override func navBarLeftButtonHandler() {
        print("<- Session left button tapped")
    }
    
    override func navBarRightButtonHandler() {
        print("-> Session right button tapped")
    }
}
