//
//  FirstViewController.swift
//  AnimateTabbarBadgeView
//
//  Created by Ali Adam on 7/26/17.
//  Copyright © 2017 Ali Adam. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItem.badgeValue = "5"
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tabBarController?.animateTabBarBadgeView()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

