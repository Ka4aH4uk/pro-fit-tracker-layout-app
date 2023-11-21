//
//  ProgressController.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

class ProgressController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        
        addNavBarButton(at: .left, with: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.navBarRight)
    }
}
