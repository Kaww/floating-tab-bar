//
//  RightViewController.swift
//  custom-tab-bar
//
//  Created by kaww on 17/04/2020.
//  Copyright © 2020 KAWRANTIN LE GOFF. All rights reserved.
//

import UIKit

class RightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        print("Right VC Loaded")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
