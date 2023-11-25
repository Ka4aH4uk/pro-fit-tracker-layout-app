//
//  SettingsController.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

class SettingsController: PFBaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = R.Strings.NavBar.settings
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: Tabs.settings)
    }
}
