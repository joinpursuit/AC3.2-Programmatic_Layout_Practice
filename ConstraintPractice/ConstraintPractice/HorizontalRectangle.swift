//
//  HorizontalRectangle.swift
//  ConstraintPractice
//
//  Created by Ana Ma on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class HorizontalRectangle: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.purple
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: 150).isActive = true
        self.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
