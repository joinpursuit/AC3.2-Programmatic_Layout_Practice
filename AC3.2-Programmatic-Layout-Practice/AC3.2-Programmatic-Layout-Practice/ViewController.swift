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
    
    // 1. Add Scroll View 
    
    // 2. Add Scroll Constraints
    
    // 3. Add View 
    
    // 4. Add View Contraints
    
    // 5. Make it scroll
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  lazy var scrollView: UIScrollView = {
    let view: UIScrollView = UIScrollView()
    view.backgroundColor = .green
    view.showsVerticalScrollIndicator = true
    view.showsHorizontalScrollIndicator = true
    view.alwaysBounceHorizontal = true
    view.alwaysBounceVertical = true
    return view
  }()
  
  lazy var redView: UIView = {
    let view: UIView = UIView()
    view.backgroundColor = .red
    return view
  }()

}

