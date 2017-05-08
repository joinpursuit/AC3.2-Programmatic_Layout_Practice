//
//  DoubleRectangle.swift
//  ConstraintPractice
//
//  Created by Ana Ma on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DoubleRectangle: UIView {
    let verticleRectangle = VerticleRectangle()
    let horizontalRectangle = HorizontalRectangle()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(verticleRectangle)
        self.addSubview(horizontalRectangle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
