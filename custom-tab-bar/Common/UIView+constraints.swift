//
//  UIView+constraints.swift
//  custom-tab-bar
//
//  Created by kaww on 19/04/2020.
//  Copyright © 2020 KAWRANTIN LE GOFF. All rights reserved.
//

import UIKit

extension UIView {
    
    func fillView(_ parentView: UIView) {
        if !self.isDescendant(of: parentView) {
            parentView.addSubview(self)
        }
        self.translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: parentView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: parentView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: parentView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: parentView.bottomAnchor).isActive = true
    }
}
