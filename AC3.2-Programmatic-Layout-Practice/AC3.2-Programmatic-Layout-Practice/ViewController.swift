//
//  ViewController.swift
//  AC3.2-Programmatic-Layout-Practice
//
//  Created by Louis Tur on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .green
    
    // 1. Add Scroll View 
    self.view.addSubview(scrollView)
    self.scrollView.translatesAutoresizingMaskIntoConstraints = false
    // 2. Add Scroll Constraints


    //self.edgesForExtendedLayout = []
    let _ = [
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0),
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.0),
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0),
        scrollView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 8.0)
        ].map { $0.isActive = true }
    
    // 3. Add View
    self.scrollView.addSubview(redView)
    self.redView.translatesAutoresizingMaskIntoConstraints = false
    
    // 4. Add View Contraints
    let _ = [
      redView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 2.0),
      redView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 2.0),
      
      // 5. Make it scroll
      redView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
      redView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
      redView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor),
      redView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
      ].map{ $0.isActive = true }
  
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  lazy var scrollView: UIScrollView = {
    let view: UIScrollView = UIScrollView()
    view.backgroundColor = .blue
    view.showsVerticalScrollIndicator = true
    view.showsHorizontalScrollIndicator = true
    view.accessibilityIdentifier = "SCROLL"
//    view.alwaysBounceHorizontal = true
//    view.alwaysBounceVertical = true
    return view
  }()
  
  lazy var redView: UIView = {
    let view: UIView = UIView()
    view.backgroundColor = .red
    view.accessibilityIdentifier = "RED"
    return view
  }()

}

