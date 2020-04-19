//
//  LeftViewController.swift
//  custom-tab-bar
//
//  Created by kaww on 17/04/2020.
//  Copyright © 2020 KAWRANTIN LE GOFF. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        print("Left VC Loaded")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }

}

