//
//  FloatingTabBarController.swift
//  custom-tab-bar
//
//  Created by kaww on 17/04/2020.
//  Copyright © 2020 KAWRANTIN LE GOFF. All rights reserved.
//

import UIKit

class FloatingTabBarController : UIViewController {

    // container view properties
    var containerView = UIViewController()
    var viewControllers = [UIViewController]()
    
    // tabBar properties
    var tabBarButtons = [UIButton]()
    var tabBar = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupContainerView()
        setupSubViewControllers()
        presentVC(viewControllers[0])
        setupTabBar()
    }
    
    private func setupContainerView() {
        addChild(containerView)
        view.addSubview(containerView.view)
        containerView.didMove(toParent: self)
        containerView.view.fillView(self.view)
    }
    
    private func setupSubViewControllers() {
        let leftViewController = LeftViewController()
        leftViewController.title = "Left view"

        let rightViewController = RightViewController()
        rightViewController.title = "Right view"

        viewControllers = [leftViewController, rightViewController]
    }
    
    private func presentVC(_ vc: UIViewController) {
        containerView.addChild(vc)
        containerView.view.addSubview(vc.view)
        vc.didMove(toParent: containerView)
        vc.view.fillView(containerView.view)
    }
    
}



// MARK: TabBar Setup

extension FloatingTabBarController {
    
    private func setupTabBar() {
        setupTabBarButtons()
        
        tabBar = UIStackView(arrangedSubviews: tabBarButtons)
        tabBar.axis = .horizontal
        tabBar.distribution = .equalSpacing
        view.addSubview(tabBar)
        
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        
        tabBar.heightAnchor.constraint(equalToConstant: 70.0).isActive = true
        tabBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 35.0).isActive = true
        tabBar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -35.0).isActive = true
        tabBar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -35).isActive = true
    }
    
    private func setupTabBarButtons() {
        let leftButton = UIButton()
        leftButton.setTitle("Left", for: .normal)
        leftButton.addTarget(self, action: #selector(leftButtonTapped), for: .touchUpInside)
        tabBarButtons.append(leftButton)
        
        let middleButton = UIButton()
        middleButton.setTitle("Mid", for: .normal)
        middleButton.addTarget(self, action: #selector(middleButtonTapped), for: .touchUpInside)
        tabBarButtons.append(middleButton)
        
        let rightButton = UIButton()
        rightButton.setTitle("Right", for: .normal)
        rightButton.addTarget(self, action: #selector(rightButtonTapped), for: .touchUpInside)
        tabBarButtons.append(rightButton)
        
        for button in tabBarButtons {
            button.titleLabel?.textColor = .white
            button.backgroundColor = .darkGray
            button.heightAnchor.constraint(equalToConstant: 70.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 70.0).isActive = true
            button.layer.cornerRadius = 35
        }
    }
    
    @objc private func leftButtonTapped() {
        presentVC(viewControllers[0])
    }
    
    @objc private func middleButtonTapped() {
        print("Middle button tapped !")
    }
    
    @objc private func rightButtonTapped() {
        presentVC(viewControllers[1])
    }
    
}
