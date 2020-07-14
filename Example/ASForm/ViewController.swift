//
//  ViewController.swift
//  ASForm
//
//  Created by amitpstu1@gmail.com on 07/14/2020.
//  Copyright (c) 2020 amitpstu1@gmail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var myScrollView: UIScrollView?
    private var myStackView: UIStackView?
    private var signUpView: SignUpView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadScrollView()
        loadStackView()
        loadContainer()
    }
    
    func loadScrollView() {
        self.myScrollView = UIScrollView()
        self.view.addSubview(self.myScrollView.unsafelyUnwrapped)
        self.myScrollView?.isUserInteractionEnabled = true
        self.myScrollView?.backgroundColor=UIColor.clear
        self.myScrollView?.showsHorizontalScrollIndicator = false
        self.myScrollView?.showsVerticalScrollIndicator = false
        self.myScrollView?.bounces=true
        self.myScrollView?.isScrollEnabled=true
        self.myScrollView?.bounces = true
        self.myScrollView?.bouncesZoom = true
        self.myScrollView?.alwaysBounceVertical = true
        
        self.myScrollView?.translatesAutoresizingMaskIntoConstraints = false
        self.myScrollView?.topAnchor.constraint(equalTo: self.view.unsafelyUnwrapped.topAnchor).isActive = true
        self.myScrollView?.leftAnchor.constraint(equalTo: self.view.unsafelyUnwrapped.leftAnchor).isActive = true
        self.myScrollView?.rightAnchor.constraint(equalTo: self.view.unsafelyUnwrapped.rightAnchor).isActive = true
        self.myScrollView?.bottomAnchor.constraint(equalTo: self.view.unsafelyUnwrapped.bottomAnchor).isActive = true
    }
    
    func loadStackView() {
        self.myStackView = UIStackView()
        self.myScrollView?.addSubview(self.myStackView.unsafelyUnwrapped)
        self.myStackView?.backgroundColor=UIColor.clear
        self.myStackView?.axis = .vertical
        
        self.myStackView?.translatesAutoresizingMaskIntoConstraints = false
        self.myStackView?.topAnchor.constraint(equalTo: self.myScrollView.unsafelyUnwrapped.topAnchor).isActive = true
        self.myStackView?.leftAnchor.constraint(equalTo: self.myScrollView.unsafelyUnwrapped.leftAnchor).isActive = true
        self.myStackView?.rightAnchor.constraint(equalTo: self.myScrollView.unsafelyUnwrapped.rightAnchor).isActive = true
        self.myStackView?.bottomAnchor.constraint(equalTo: self.myScrollView.unsafelyUnwrapped.bottomAnchor).isActive = true
        self.myStackView?.widthAnchor.constraint(equalTo: self.myScrollView.unsafelyUnwrapped.widthAnchor).isActive = true
        let heightConstraint = self.myStackView?.heightAnchor.constraint(equalTo: self.myScrollView.unsafelyUnwrapped.heightAnchor)
        heightConstraint?.priority = UILayoutPriority(rawValue: 250)
        heightConstraint?.isActive = true
    }
    
    func loadContainer() {
        signUpView=SignUpView()
        myStackView?.addArrangedSubview(signUpView.unsafelyUnwrapped)
        signUpView?.backgroundColor=UIColor.clear
        signUpView?.translatesAutoresizingMaskIntoConstraints = false
        signUpView?.widthAnchor.constraint(equalTo: self.myStackView.unsafelyUnwrapped.widthAnchor).isActive = true
        let subBackViewHeightConstraint = signUpView?.heightAnchor.constraint(lessThanOrEqualTo: self.myScrollView.unsafelyUnwrapped.heightAnchor)
        subBackViewHeightConstraint?.priority = UILayoutPriority(rawValue: 250)
        subBackViewHeightConstraint?.isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

