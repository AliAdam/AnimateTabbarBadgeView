//
//  ThirdViewController.swift
//  AnimateTabbarBadgeView
//
//  Created by Ali Adam on 7/26/17.
//  Copyright © 2017 Ali Adam. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.tabBarItem.badgeValue = "8"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

