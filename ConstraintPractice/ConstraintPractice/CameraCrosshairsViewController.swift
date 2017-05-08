//
//  ViewController.swift
//  ConstraintPractice
//
//  Created by Ana Ma on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class CameraCrosshairsViewController: UIViewController {

    var centerView = DoubleRectangle()
    var topLeftView = DoubleRectangle()
    var topRightView = DoubleRectangle()
    var bottomLeftView = DoubleRectangle()
    var bottomRightView = DoubleRectangle()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.topLeftView.translatesAutoresizingMaskIntoConstraints = false
        self.centerView.translatesAutoresizingMaskIntoConstraints = false
        self.topRightView.translatesAutoresizingMaskIntoConstraints = false
        self.bottomLeftView.translatesAutoresizingMaskIntoConstraints = false
        self.bottomRightView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.topLeftView)
        self.view.addSubview(self.topRightView)
        self.view.addSubview(self.bottomLeftView)
        self.view.addSubview(self.bottomRightView)
        self.view.addSubview(self.centerView)
        setupConstraint()
        
    }
    
    func setupConstraint() {
        let _ = [
            topLeftView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor),
            topLeftView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            topLeftView.horizontalRectangle.topAnchor.constraint(equalTo: self.view.topAnchor),
            topLeftView.horizontalRectangle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            topLeftView.verticleRectangle.topAnchor.constraint(equalTo: self.view.topAnchor),
            topLeftView.verticleRectangle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
            ].map { $0.isActive = true }
        let _ = [
            topRightView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor),
            topRightView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            topRightView.horizontalRectangle.topAnchor.constraint(equalTo: self.view.topAnchor),
            topRightView.horizontalRectangle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            topRightView.verticleRectangle.topAnchor.constraint(equalTo: self.view.topAnchor),
            topRightView.verticleRectangle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
            ].map { $0.isActive = true }
        let _ = [
            bottomLeftView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            bottomLeftView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bottomLeftView.horizontalRectangle.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            bottomLeftView.horizontalRectangle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bottomLeftView.verticleRectangle.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            bottomLeftView.verticleRectangle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
            ].map { $0.isActive = true }
        let _ = [
            bottomRightView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            bottomRightView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bottomRightView.horizontalRectangle.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            bottomRightView.horizontalRectangle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bottomRightView.verticleRectangle.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            bottomRightView.verticleRectangle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
            ].map { $0.isActive = true }
        let _ = [
            centerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            centerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            centerView.horizontalRectangle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            centerView.horizontalRectangle.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            centerView.verticleRectangle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            centerView.verticleRectangle.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ].map { $0.isActive = true }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

